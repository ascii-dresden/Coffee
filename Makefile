#

SHELL     = /bin/bash
SOURCES   = $(filter-out Makefile %.md,$(wildcard *))
TARGETS   = $(basename $(SOURCES))

run_sh    = bash $(1)
run_bas   = echo quit | bwbasic $(1) | sed '5p;d'
run_rb    = ruby $(1)

# creates rules like
#  Filterkaffee: Filterkaffee.bas
#  
define template_rule =
ifdef run_$(1:$(basename $(1)).%=%)
$(basename $(1)): ext = $(1:$(basename $(1)).%=%)
$(basename $(1)): $(1)
	@ echo $(1)
	@ echo
	@ cat -n $(1)
	@ echo
	@ echo "     $$$$  $$(call run_$$(ext),$(1))"
	@ echo
	@ $$(call run_$$(ext),$(1))
	@ echo
endif
endef

.PHONY: all

all: $(TARGETS)

$(foreach source,$(SOURCES),$(eval $(call template_rule,$(source))))

%:
	@ echo "I don't know how to make $@."
