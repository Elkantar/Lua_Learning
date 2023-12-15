--[[
    Exercice : Calculatrice de moyenne

Le but de cet exercice est de créer une calculatrice de moyenne en Lua. Vous devrez implémenter les fonctionnalités suivantes :

    Entrée des notes :
        Permettre à l'utilisateur d'entrer un nombre variable de notes (nombres décimaux).

    Calcul de la moyenne :
        Calculer la moyenne des notes entrées par l'utilisateur.

Instructions :

    Écrivez un programme qui demande à l'utilisateur d'entrer plusieurs notes.
    Utilisez une boucle pour permettre à l'utilisateur d'entrer autant de notes qu'il le souhaite.
    Calculez la moyenne des notes entrées.
    Affichez la moyenne calculée à l'utilisateur.

Essayez d'implémenter cet exercice en utilisant des boucles et des structures de contrôle pour permettre à
l'utilisateur de saisir différentes notes et pour calculer la moyenne de ces notes.
]]--

print("Veuillez entrer une liste de nombre")
local input = io.read()
--print(input)

local nombres = {}

while input ~= "exit" and input ~= "" do
    for numero in input:gmatch("%S+") do
        table.insert(nombres, tonumber(numero))
    end
    input = io.read()
end

for numero in input:gmatch("%S+") do
    table.insert(nombres, tonumber(numero))
end
local nombreDeNombres = #nombres
print(nombreDeNombres)
local calculEntre = 0
for _, nombre in ipairs(nombres) do
    -- print(i, nombre)
    calculEntre = calculEntre + nombre
end

io.write("La moyenne est de: ", calculEntre/nombreDeNombres,"\n")