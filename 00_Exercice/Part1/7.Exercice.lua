--[[
    Exercice : Calcul de la somme des chiffres

Le but de cet exercice est d'écrire un programme en Lua qui calcule la somme des chiffres d'un nombre donné par l'utilisateur.

Instructions :

    Demandez à l'utilisateur d'entrer un nombre entier positif.
    Écrivez un algorithme qui calcule la somme de tous les chiffres de ce nombre.
    Affichez la somme des chiffres calculée.

Exemple :

Si l'utilisateur entre 1234, le programme devrait calculer la somme des chiffres de ce nombre, soit 1+2+3+4=101+2+3+4=10, et afficher ce résultat.
]]--

print("Veuillez entrer un nombre")
local input = io.read("*n")

local function separateDigits(number)
    local digits = {} 
    while number > 0 do
        local digit = number % 10 
        table.insert(digits, 1, digit)
        number = math.floor(number / 10) 
    end
    return digits
end

local function sumOfnumber(nombre)
    local result = 0
    local digit = separateDigits(nombre)
    for i = 1, #digit do
        result = result+digit[i]
    end
    return result
end

print(sumOfnumber(input))