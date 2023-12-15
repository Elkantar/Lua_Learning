--[[
    Exercice : Vérification des nombres premiers

Le but de cet exercice est d'écrire un programme en Lua pour vérifier si un nombre saisi par l'utilisateur est un nombre premier ou non.

Instructions :

    Demandez à l'utilisateur d'entrer un nombre entier positif.
    Implémentez un algorithme qui vérifie si le nombre saisi est un nombre premier.
    Affichez un message indiquant si le nombre est premier ou non.

Rappel : Un nombre premier est un nombre qui a exactement deux diviseurs : 1 et lui-même.

Exemple :

Si l'utilisateur entre 17, le programme doit indiquer que 17 est un nombre premier car il n'a que deux diviseurs : 1 et 17.
]]--

print("Veuillez entrée un nombre")
local nombre = io.read("*n")

local function isPrime(nombre)
    if nombre <= 1 then
        return false
    end
    for i = 2,math.sqrt(nombre) do
        if nombre%i == 0 then
            return false
        end
    end
    return true
end

local isPrimal = isPrime(nombre)

if isPrimal == true then
    io.write(nombre, " est un nombre premier\n")
end

if isPrimal == false then
    io.write(nombre, " n'est pas un nombre premier\n")
end

