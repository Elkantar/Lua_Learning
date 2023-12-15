--[[
    Exercice : Recherche de nombres pairs

Le but de cet exercice est d'écrire un programme en Lua qui recherche et affiche tous les nombres pairs dans une plage de nombres donnée par l'utilisateur.

Instructions :

    Demandez à l'utilisateur d'entrer deux nombres entiers, représentant une plage de nombres (un début et une fin).
    Écrivez un algorithme qui recherche et affiche tous les nombres pairs dans cette plage de nombres (inclusivement).
    Affichez les nombres pairs trouvés.

Exemple :

Si l'utilisateur entre 3 comme début et 10 comme fin, le programme devrait afficher tous les nombres pairs entre 3 et 10, soit : 4, 6, 8, 10.
]]--

print("Veuillez entrer 2 chiffre le 1er est le minimum le 2eme est le maximum")
local input = io.read()

local minimum, maximum = input:match("(%S+)%s+(%S+)")
if maximum < minimum then 
    print("la valeur maximum est plus petite que la valeur d'entré")
    return
end

function Pair(minimum, maximum)
    local result = {}
    for i= minimum, maximum do
        if i%2 == 0 then
            table.insert(result,i)
        end
    end
    return result
end

local concatenatedValues = table.concat(Pair(minimum, maximum), " ")

print(concatenatedValues)