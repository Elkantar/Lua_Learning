--[[
    Exercice : Validation de mot de passe

L'objectif est de créer un programme en Lua qui valide la force d'un mot de passe saisi par l'utilisateur selon certains critères prédéfinis.

Fonctionnalités attendues :

    Demander à l'utilisateur de saisir un mot de passe.

    Vérifier si le mot de passe répond aux critères suivants :
        Avoir une longueur minimale de 8 caractères. /
        Contenir au moins une lettre majuscule et une lettre minuscule. 
        Inclure au moins un chiffre. / 
        Contenir au moins un caractère spécial parmi cette liste : !@#$%^&*()-_+= /

    Afficher un message indiquant si le mot de passe est suffisamment fort ou non en fonction des critères.

Exemple :

Si l'utilisateur entre "Mot2DePasse!", le programme devrait afficher un message indiquant que le mot de passe est suffisamment fort car il respecte tous les critères définis.
]]
   --


local function clearConsole()
    io.write("\027[2J\027[1;1H") -- Séquence pour effacer la console
end

local number = "1234567890"
local speChar = "!@#$%^&*()-_+="

local function Numbers(char)
    return string.find(number, char, 1, true) ~= nil
end

function NumberCount(str)
    local compteur = 0
    for i = 1, #str do
        local caractere = str:sub(i, i)
        if Numbers(caractere) then
            compteur = compteur + 1
        end
    end
    if compteur > 0 then
        return true
    end
    return false
end

local function Special(char)
    return string.find(speChar, char, 1, true) ~= nil
end

function SpecialCount(str)
    local compteur = 0
    for i = 1, #str do
        local caractere = str:sub(i, i)
        if Special(caractere) then
            compteur = compteur + 1
        end
    end
    if compteur > 0 then
        return true
    end
    return false
end

local function hasLowerAndUpperCase(str)
    local hasLower = false
    local hasUpper = false

    for i = 1, #str do
        local char = str:sub(i, i)
        if char:match("%a") then -- Vérifie si le caractère est une lettre
            if char:lower() == char then
                hasLower = true -- Vérifie si le caractère est minuscule
            elseif char:upper() == char then
                hasUpper = true -- Vérifie si le caractère est majuscule
            end
        end
    end
    --print(hasLower, hasUpper)
    return hasLower and hasUpper
end

local function readPassWord()
    print("entrée votre mot de passe")
    local password = io.read()
    clearConsole()
    local len = string.len(password)
    local num = NumberCount(password)
    local spe = SpecialCount(password)
    local majmin= hasLowerAndUpperCase(password)
    --print(minuscule, majuscule)
    if len < 8 then
        return "Votre mot de passe doit contenir au moins 8 caractères"
    end
    if num == false then
        return "Votre mot de passe doit au moins contenir un chiffre"
    end
    if spe == false then
        return "Votre mot de passe doit au moins contenir un caractères speciale du type : !@#$%^&*()-_+="
    end
    if majmin == false then
        return "Votre mot de passe doit contenir au minimum une majuscule et une minuscule"
    end
    return "Votre mot de passe est securisé"
end


local verification = readPassWord()
print(verification)
