--[[
    Exercice : Recherche de nombres parfaits

L'objectif est de créer un programme en Lua qui identifie et affiche tous les nombres parfaits dans une plage donnée par l'utilisateur.

Fonctionnalités attendues :

    Demandez à l'utilisateur de saisir un nombre entier positif.
    Trouvez tous les nombres parfaits dans la plage de 1 à ce nombre (inclusivement).
    Affichez les nombres parfaits trouvés.

Un nombre parfait est un nombre entier positif qui est égal à la somme de ses diviseurs propres (excluant lui-même).
Par exemple, 28 est un nombre parfait car la somme de ses diviseurs propres (1, 2, 4, 7, 14) est égale à 28.

Votre tâche consiste à écrire un programme qui trouve et affiche tous les nombres parfaits dans la plage de 1
jusqu'au nombre saisi par l'utilisateur. Pour résoudre cet exercice, vous devrez développer un algorithme qui
identifie les nombres parfaits dans cette plage.
]]
   --

print("Veuillez entré un nombre :")
local nbr = io.read("*n")

local function parfaits(nbr)
    local compteur = 0
    for i=1,nbr-1 do
        if nbr%i == 0 then
            compteur = compteur + i
        end
    end

    if compteur == nbr then
        return true
    end

    return false 
end

if parfaits(nbr) == false then
    io.write(nbr, " n'est pas un nombre parfait\n")
    return
end
io.write(nbr, " est un nombre parfait\n")

--correction :

--[[
    print("Veuillez entrer un nombre :")
local nbr = io.read("*n")

local function parfaits(nbr)
    local compteur = 0
    for i = 1, nbr - 1 do
        if nbr % i == 0 then
            compteur = compteur + i
        end
    end

    return compteur == nbr -- Vérifie si le compteur est égal au nombre
end

if not parfaits(nbr) then
    io.write(nbr, " n'est pas un nombre parfait\n")
else
    io.write(nbr, " est un nombre parfait\n")
end

]]--