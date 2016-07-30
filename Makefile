#

SHELL     = /bin/bash
SOURCES   = $(filter-out Makefile %.md,$(wildcard *))
TARGETS   = $(basename $(SOURCES))

run_sh    = bash $(1)
run_bas   = echo quit | bwbasic $(1) | sed '5p;d'
run_rb    = ruby $(1)
run_cpp   = g++ $(1) -o $(2) && ./$(2)
run_rs    = rustc $(1) && ./$(2)
# run_s
# run_erl
run_java  = javac $(1) && ( java $(2); rm $(2).class )
run_lua   = lua $(1)
run_js    = node $(1)
run_pl    = perl $(1)
run_swift = swift $(1)
run_hs    = runhaskell $(1)
run_julia = julia $(1)
run_ss    = tinyscheme $(1)

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
	@ echo "     $$$$  $$(call run_$$(ext),$(1),$(basename $(1)))"
	@ echo
	@ $$(call run_$$(ext),$(1),$(basename $(1)))
	@ echo
endif
endef

.PHONY: all clean

all: clean $(TARGETS)

clean: $(TARGETS)
	@ rm -f $?

$(foreach source,$(SOURCES),$(eval $(call template_rule,$(source))))

%:
	@ echo "I don't know how to make $@."
