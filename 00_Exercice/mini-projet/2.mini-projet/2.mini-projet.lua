--[[
    Exercice : Gestionnaire de tâches

Le but de cet exercice est de créer un gestionnaire de tâches simple en Lua. Vous devrez implémenter les fonctionnalités suivantes :

    Ajout de tâches :
        Permettre à l'utilisateur d'ajouter des tâches à une liste.

    Affichage des tâches :
        Afficher toutes les tâches actuellement présentes dans la liste.

    Suppression de tâches :
        Permettre à l'utilisateur de supprimer une tâche de la liste en utilisant son numéro d'identification.

Instructions :

    Implémentez un programme qui permet à l'utilisateur d'ajouter des tâches à une liste.
    Affichez un menu offrant des options pour ajouter des tâches, afficher les tâches actuelles et supprimer une tâche.
    Lorsque l'utilisateur choisit d'ajouter une tâche, demandez-lui d'entrer une description de la tâche.
    Lorsque l'utilisateur choisit d'afficher les tâches, montrez la liste des tâches numérotées.
    Lorsque l'utilisateur choisit de supprimer une tâche, demandez-lui de saisir le numéro de la tâche à supprimer et supprimez-la de la liste.

Essayez d'implémenter cet exercice en utilisant des tableaux (ou d'autres structures de données) pour stocker les tâches et les identifiants de
ces tâches. Assurez-vous de gérer correctement les entrées de l'utilisateur et de fournir des messages clairs et compréhensibles pour guider
l'utilisateur tout au long du processus.
]]
--

local sqlite3 = require "luasql.sqlite3"

local env = sqlite3.sqlite3()
local conn = env:connect('database.db')

if not conn then
    print("Erreur lors de la connexion à la base de données")
    return
end

local status, errorString = conn:execute(
    [[CREATE TABLE IF NOT EXISTS ToDoList (id INTEGER PRIMARY KEY AUTOINCREMENT, ToDo TEXT, IsDo BOOLEAN)]])
if not status then
    print("Erreur lors de la création de la table ToDoList :", errorString)
    return
end

print("Connexion à la base de données établie")

-- Fonction pour ajouter une tâche à la base de données
local function addTask(description)
    local cursor, errorString = conn:execute("SELECT * FROM ToDoList")
    if not cursor then
        print("Erreur lors de la récupération des tâches :", errorString)
        return
    end
    local row = cursor:fetch({}, "a")
    local i = 0
    while row do
        i = row.id+1
        row = cursor:fetch(row, "a")
    end


    local query = string.format("INSERT INTO ToDoList (id, ToDo, IsDo) VALUES (%d, '%s', 0)", i, description)
    local status, errorString = conn:execute(query)
    if not status then
        print("Erreur lors de l'ajout de la tâche :", errorString)
    else
        print("Tâche ajoutée avec succès!")
    end
end

-- Fonction pour afficher toutes les tâches actuelles depuis la base de données
local function displayTasks()
    local cursor, errorString = conn:execute("SELECT * FROM ToDoList")
    if not cursor then
        print("Erreur lors de la récupération des tâches :", errorString)
        return
    end

    print("Liste des tâches :")
    local row = cursor:fetch({}, "a")
    local i = 0
    while row do

        print(row.id ,"|" ,row.ToDo)
        
        row = cursor:fetch(row, "a")
    end
    cursor:close()
end

-- Fonction principale pour gérer l'interface utilisateur
local function main()
    while true do
        print("\nMenu :")
        print("1. Ajouter une tâche")
        print("2. Afficher les tâches")
        print("3, Supprimer une tâche")
        print("4. Quitter")
        io.write("Choisissez une option : ")
        local choice = tonumber(io.read("*n"))
        io.read() -- Pour vider la ligne en attente
        if choice then
            if choice == 1 then
                io.write("Entrez la description de la tâche : ")
                local taskDescription = io.read("*l")
                addTask(taskDescription)
            elseif choice == 2 then
                displayTasks()
            elseif choice == 3 then
                displayTasks()
                io.write("Entrez le numéro de la tâche à supprimer : ")
                local taskNumber = tonumber(io.read("*n"))
                local cursor, errorString = conn:execute("SELECT * FROM ToDoList")
                if not cursor then
                    print("Erreur lors de la récupération des tâches :", errorString)
                    return
                end
                local row = cursor:fetch({}, "a")
                local i = 0
                while row do
                    if i-1 == taskNumber then
                        local query = string.format("DELETE FROM ToDoList WHERE id = %d", row.id)
                        local status, errorString = conn:execute(query)
                        if not status then
                            print("Erreur lors de la suppression de la tâche :", errorString)
                        else
                            print("Tâche supprimée avec succès!")
                        end
                        break
                    end
                    i = i + 1
                    row = cursor:fetch(row, "a")
                end
                cursor:close()

            elseif choice == 4 then
                print("Merci d'avoir utilisé le gestionnaire de tâches.")
                break
            else
                print("Option invalide. Veuillez choisir une option valide.")
            end
        end
    end


    conn:close()
    env:close()
end

-- Démarrage du programme
main()
