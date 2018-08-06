-- Original Espresso

function NameWithPrice(price)
    return "Espresso - " .. price
end

local description = NameWithPrice("0,80€")
print(description)
