local allCards = require("allCards")

deck = {}

function getStartingDeck(character)
    for i = 1, #allCards do
        table.insert(deck, allCards[i])
    end    
end

function dump(o)
    if type(o) == 'table' then
       local s = '{ '
       for k,v in pairs(o) do
          if type(k) ~= 'number' then k = '"'..k..'"' end
          s = s .. '['..k..'] = ' .. dump(v) .. ','
       end
       return s .. '} '
    else
       return tostring(o)
    end
 end

--print(dump(deck))

