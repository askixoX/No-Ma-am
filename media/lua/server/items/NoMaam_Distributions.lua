require "Items/Distributions"

local function addNoMaamLoot()
    local distributionTable = ProceduralDistributions.list
    
    if not distributionTable then return end

    local places = {
        "WardrobeMan", 
        "WardrobeManClassy", 
        "ClothingStoresMen", 
        "ClothingStoresCasual"
    }

    for _, location in ipairs(places) do
        if distributionTable[location] and distributionTable[location].items then
            table.insert(distributionTable[location].items, "NoMaam.Tshirt_NoMaam_EN")
            table.insert(distributionTable[location].items, 0.1)
        end
    end
end

Events.OnPreDistributionMerge.Add(addNoMaamLoot)