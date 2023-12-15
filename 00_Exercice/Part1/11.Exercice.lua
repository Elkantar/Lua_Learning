--[[
    Exercice : Calcul de factorielle récursivement

L'objectif est de créer un programme en Lua pour calculer la factorielle d'un nombre de manière récursive.

Fonctionnalités attendues :

    Demandez à l'utilisateur de saisir un nombre entier positif.
    Implémentez une fonction récursive pour calculer la factorielle de ce nombre.
    Affichez le résultat de la factorielle.

La factorielle d'un nombre entier positif nn, notée n!n!, est le produit de tous les entiers positifs de 1 à nn. Par exemple, 5!=5×4×3×2×1=1205!=5×4×3×2×1=120.

Votre tâche consiste à écrire un programme qui utilise une fonction récursive pour calculer la factorielle d'un nombre saisi par l'utilisateur.
]]
   --

local function recursiveFactorial(num)
    if num < 0 then
        print("Veuillez saisir un nombre entier positif.")
        return
    end
    if num == 0 then
        return 1
    end
    local result = num * recursiveFactorial(num - 1)
    return result
end

print("Entrée un nombre entier")
local num = io.read("*n")

print(recursiveFactorial(num))
