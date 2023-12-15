--[[
Exercice : Comptage des voyelles

Le but de cet exercice est d'écrire un programme en Lua qui compte le nombre de voyelles dans une chaîne de caractères donnée par l'utilisateur.

Instructions :

    Demandez à l'utilisateur d'entrer une chaîne de caractères.
    Écrivez un algorithme qui compte le nombre de voyelles (a, e, i, o, u, y) dans la chaîne de caractères.
    Affichez le nombre total de voyelles dans la chaîne.

Exemple :

Si l'utilisateur entre "Bonjour, comment ça va ?", le programme devrait compter le nombre de voyelles dans cette phrase, ce qui donne : 9 voyelles au total (o, o, o, e, o, a, a, a).
]]
   --

print("Veuillez entre une suite de caractères :")
local caracteres = io.read()
local voyelles = "aeiouAEIOU"

function Voyel(char)
    return string.find(voyelles, char, 1, true) ~= nil
end

function VoyelCount(str)
    local compteur = 0
    for i = 1, #str do
        local caractere = str:sub(i, i)
        if Voyel(caractere) then
            compteur = compteur + 1
        end
    end
    return compteur
end

local nbrVoyelle = VoyelCount(caracteres)
if nbrVoyelle > 1 then
    io.write("Le string ", caracteres, ", contient: ", nbrVoyelle, " voyelles\n")
end
if nbrVoyelle == 1 then
    io.write("Le string ", caracteres, ", contient: ", nbrVoyelle, " voyelle\n")
end

if nbrVoyelle == 0 then
    io.write("Le string: ", caracteres, ", ne contient pas de voyelle\n")
end
