--[[
Bien sûr, voici la consigne pour l'exercice en Lua pour les débutants :

Consigne : Calcul de la somme des nombres pairs

Écrivez un programme en Lua qui demande à l'utilisateur d'entrer un nombre. Ensuite, le programme devra calculer et afficher la somme de tous les nombres pairs de 1 jusqu'au nombre donné inclusivement.

Vous devrez créer une fonction nommée sommeNombresPairs qui prendra comme argument le nombre donné par l'utilisateur et qui retournera la somme des nombres pairs jusqu'à ce nombre. Utilisez une boucle pour parcourir les nombres de 1 jusqu'au nombre donné et additionnez uniquement les nombres pairs.

Exemple de sortie attendue :

yaml

Entrez un nombre :
8
La somme des nombres pairs jusqu'à 8 est : 20

Note : Assurez-vous de gérer les cas où l'utilisateur entre un nombre invalide ou non entier pour une meilleure expérience utilisateur.
]]--

local function returnint(int)
    print(int%2)
    local result = 0
    for i=1,int do
        if i%2 == 0 then
            result = result + i
        end
    end


    return result
end

print("Entrez un nombre :")
local int = io.read("n") -- correction : int = io.read("*n")
local ret = returnint(int)
io.write("La somme des nombres pairs jusqu'à ",int, " est : ", ret,"\n")