--[[
Exercice : Vérification de palindrome

Le but de cet exercice est de créer un algorithme qui vérifie si une chaîne de caractères est un palindrome ou non.

Un palindrome est une séquence de caractères qui se lit de la même manière de gauche à droite et de droite à gauche, en ignorant la casse, la ponctuation et les espaces.

Instructions :

    Demandez à l'utilisateur d'entrer une chaîne de caractères.
    Écrivez un algorithme qui vérifie si la chaîne de caractères donnée est un palindrome ou non.
    Affichez un message indiquant si la chaîne est un palindrome ou non.

Exemple :

Si l'utilisateur entre "radar", le programme devrait afficher : "La chaîne est un palindrome."

Conseils :

    Vous pouvez ignorer les espaces, la ponctuation et la casse pour comparer les caractères.
    Essayez de parcourir la chaîne depuis les extrémités vers le centre pour comparer les caractères correspondants.

Essayez de résoudre cet exercice sans utiliser de code et assurez-vous de comprendre l'algorithme nécessaire pour vérifier si une chaîne est un palindrome ou non.
]]
   --

local function deleteWhiteSpace(chaine)
    local nouvelleChaine = ""

    -- Supprimer les espaces en utilisant une boucle
    for i = 1, #chaine do
        if chaine:sub(i, i) ~= " " then
            nouvelleChaine = nouvelleChaine .. chaine:sub(i, i)
        end
    end
    return nouvelleChaine
end

local function Palindrome(caracter)
    --print(caracter)
    local result = deleteWhiteSpace(caracter)
    --print(result)
    local resultrev = string.reverse(result)
    --print(resultrev)
    if result == resultrev then
        return true
    end
    return false
end

print("veillez entrez une chaîne de caractères: ")
local caracter = io.read()

local palin = Palindrome(caracter)

if palin == true then
    print("La chaîne est un palindrome.")
else
    print("La chaîne n'est pas un palindrome.")
end
