--[[
    Mini-Projet : Calculatrice simple

L'objectif est de créer une calculatrice simple en Lua capable de réaliser les opérations basiques 
telles que l'addition, la soustraction, la multiplication et la division sur deux nombres saisis par l'utilisateur.

Fonctionnalités attendues :

    Demander à l'utilisateur de saisir deux nombres.
    Proposer un menu pour l'opération à effectuer (addition, soustraction, multiplication, division).
    Effectuer l'opération sélectionnée sur les deux nombres.
    Afficher le résultat de l'opération.

Exemple :

Si l'utilisateur entre les nombres 10 et 5, et choisit de faire une addition, le programme devrait afficher 15 (10 + 5).
]]
--


local function fractionProche(decimal)
    local tolerance = 0.0001 -- Tolerance pour définir une marge d'erreur

    local numerateur = 1
    local denominateur = 1
    local ecart = math.abs(numerateur / denominateur - decimal)

    for i = 1, 1000 do
        for j = 1, 1000 do
            if math.abs(i / j - decimal) < ecart then
                numerateur = i
                denominateur = j
                ecart = math.abs(i / j - decimal)
            end
        end
    end

    if ecart > tolerance then
        return string.format("%d/%d ≈ %.2f", numerateur, denominateur, numerateur / denominateur)
    else
        return string.format("%d/%d ≈ %.2f", numerateur, denominateur, numerateur / denominateur)
    end
end

print("Veuillez entrez 2 nombres :")

local input = io.read()

local nb1, nb2 = input:match("([+-]?%d+)%s+([+-]?%d+)")

--print(input,nb1, nb2)
if nb1 and nb2 then
    --nb1 = tonumber(nb1)
    --nb2 = tonumber(nb2)
    if nb1 and nb2 then
        print("Veuillez choisir entre :\n1: addition\n2: soustraction\n3: division\n4: multiplication")
        local choix = io.read()
        --print(type(choix), choix)
        if choix == "1" then
            local somme = nb1 + nb2
            local message = string.format("La somme de %d + %d est : %d\n", nb1, nb2, somme)
            io.write(message)
        end
        if choix == "2" then
            local difference = nb1 - nb2
            local message = string.format("La difference de %d - %d est : %d\n", nb1, nb2, difference)
            io.write(message)
        end
        if choix == "3" then
            local quotient = nb1 / nb2
            local message = string.format("Le quotient de %d / %d est : ", nb1, nb2)
            if math.floor(quotient) ~= quotient then
                message = message .. fractionProche(quotient)
            end
            io.write(message,"\n")
        end
        if choix == "4" then
            local produit = nb1 * nb2
            local message = string.format("La produit de %d x %d est : %d\n", nb1, nb2, produit)
            io.write(message)
        end
    else
        print("L'entrée n'est pas un nombre valide.")
    end
else
    print("Veuillez entrer deux nombres séparés par un espace.")
end
