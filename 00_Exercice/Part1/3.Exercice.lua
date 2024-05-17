--[[# Exercice : Calcul de la factorielle

Le but de cet exercice est d'écrire un programme en Lua pour calculer la factorielle d'un nombre donné par l'utilisateur.

Instructions :

    Demandez à l'utilisateur d'entrer un nombre entier positif.
    Écrivez un algorithme qui calcule la factorielle de ce nombre.
    Affichez le résultat de la factorielle.

La factorielle d'un nombre nn est le produit de tous les entiers positifs inférieurs ou égaux à nn. Par exemple, la factorielle de 5 (5!5!) est égale à 5×4×3×2×15×4×3×2×1.

Exemple :

Si l'utilisateur entre 5, le programme devrait calculer la factorielle de 5 (5!5!) qui est égale à 120, et afficher ce résultat.

Essayez de résoudre cet exercice en utilisant Lua et assurez-vous de gérer les cas où l'utilisateur entre un nombre non entier ou un nombre négatif.
]]
--

print("Veuillez entrer un chiffre :")
local int = io.read("*n")

local function factorial(int)
    local result = 1
    for i = 1, int do
        result = result * i
    end
    return result
end

local result = factorial(int)
print(result)

--correction \/

--[[
print("Veuillez entrer un chiffre :")
local int = io.read("*n")

if int and type(int) == "number" and int >= 0 and math.floor(int) == int then
    -- Si l'entrée est un nombre valide et positif ou nul
    function factorial(n)
        local result = 1
        for i = 2, n do
            result = result * i
        end
        return result
    end

    local result = factorial(int)
    print("Le résultat de la factorielle de", int, "est :", result)
else
    -- Si l'entrée n'est pas un nombre valide
    print("L'entrée n'est pas un nombre entier positif.")
end
]]--