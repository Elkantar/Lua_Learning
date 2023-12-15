# Exercice 1 : Somme de paire
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

# Exercice 2 : Palindrome
Exercice : Vérification de palindrome

Le but de cet exercice est de créer un algorithme qui vérifie si une chaîne de caractères est un palindrome ou non.

Un palindrome est une séquence de caractères qui se lit de la même manière de gauche à droite et de droite à gauche, en ignorant la casse, la ponctuation et les espaces.

Instructions :

    Demandez à l'utilisateur d'entrer une chaîne de caractères.
    Écrivez un algorithme qui vérifie si la chaîne de caractères donnée est un palindrome ou non.
    Affichez un message indiquant si la chaîne est un palindrome ou non.

Exemple :

Si l'utilisateur entre "radar", le programme devrait afficher : "La chaîne est un palindrome."

Conseils :

    Vous pouvez ignorer les espaces, la ponctuation et la casse pour comparer les caractères.
    Essayez de parcourir la chaîne depuis les extrémités vers le centre pour comparer les caractères correspondants.

Essayez de résoudre cet exercice sans utiliser de code et assurez-vous de comprendre l'algorithme nécessaire pour vérifier si une chaîne est un palindrome ou non.

# Exercice 3 : Calcul de la factorielle

Le but de cet exercice est d'écrire un programme en Lua pour calculer la factorielle d'un nombre donné par l'utilisateur.

Instructions :

    Demandez à l'utilisateur d'entrer un nombre entier positif.
    Écrivez un algorithme qui calcule la factorielle de ce nombre.
    Affichez le résultat de la factorielle.

La factorielle d'un nombre nn est le produit de tous les entiers positifs inférieurs ou égaux à nn. Par exemple, la factorielle de 5 (5!5!) est égale à 5×4×3×2×15×4×3×2×1.

Exemple :

Si l'utilisateur entre 5, le programme devrait calculer la factorielle de 5 (5!5!) qui est égale à 120, et afficher ce résultat.

Essayez de résoudre cet exercice en utilisant Lua et assurez-vous de gérer les cas où l'utilisateur entre un nombre non entier ou un nombre négatif.

# Exercice 4 : Conversion de température

Le but de cet exercice est d'écrire un programme en Lua qui convertit une température donnée par l'utilisateur d'une échelle à une autre. Les échelles de température à gérer sont Celsius, Fahrenheit et Kelvin.

Instructions :

    Demandez à l'utilisateur d'entrer une température ainsi que l'échelle de cette température (Celsius, Fahrenheit ou Kelvin).
    Écrivez un algorithme qui convertit cette température vers les deux autres échelles de température.
    Affichez les valeurs converties pour les trois échelles de température (Celsius, Fahrenheit et Kelvin).

Formules de conversion :

    De Celsius vers Fahrenheit : F=95C+32F=59​C+32
    De Celsius vers Kelvin : K=C+273.15K=C+273.15
    De Fahrenheit vers Celsius : C=59(F−32)C=95​(F−32)
    De Fahrenheit vers Kelvin : K=59(F−32)+273.15K=95​(F−32)+273.15
    De Kelvin vers Celsius : C=K−273.15C=K−273.15
    De Kelvin vers Fahrenheit : F=95(K−273.15)+32F=59​(K−273.15)+32

Exemple :

Si l'utilisateur entre une température de 25 degrés Celsius, le programme devrait convertir cette température en Fahrenheit et Kelvin, et afficher les valeurs converties pour les trois échelles de température (Celsius, Fahrenheit et Kelvin).

# Exercice 5: Calculatrice de moyenne

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

Essayez d'implémenter cet exercice en utilisant des boucles et des structures de contrôle pour permettre à l'utilisateur de saisir différentes notes et pour calculer la moyenne de ces notes.

# Exercice 6: Vérification des nombres premiers

Le but de cet exercice est d'écrire un programme en Lua pour vérifier si un nombre saisi par l'utilisateur est un nombre premier ou non.

Instructions :

    Demandez à l'utilisateur d'entrer un nombre entier positif.
    Implémentez un algorithme qui vérifie si le nombre saisi est un nombre premier.
    Affichez un message indiquant si le nombre est premier ou non.

Rappel : Un nombre premier est un nombre qui a exactement deux diviseurs : 1 et lui-même.

Exemple :

Si l'utilisateur entre 17, le programme doit indiquer que 17 est un nombre premier car il n'a que deux diviseurs : 1 et 17.

# Exercice 7 : Calcul de la somme des chiffres

Le but de cet exercice est d'écrire un programme en Lua qui calcule la somme des chiffres d'un nombre donné par l'utilisateur.

Instructions :

    Demandez à l'utilisateur d'entrer un nombre entier positif.
    Écrivez un algorithme qui calcule la somme de tous les chiffres de ce nombre.
    Affichez la somme des chiffres calculée.

Exemple :

Si l'utilisateur entre 1234, le programme devrait calculer la somme des chiffres de ce nombre, soit 1+2+3+4=101+2+3+4=10, et afficher ce résultat.

# Exercice 8 : Comptage des voyelles

Le but de cet exercice est d'écrire un programme en Lua qui compte le nombre de voyelles dans une chaîne de caractères donnée par l'utilisateur.

Instructions :

    Demandez à l'utilisateur d'entrer une chaîne de caractères.
    Écrivez un algorithme qui compte le nombre de voyelles (a, e, i, o, u, y) dans la chaîne de caractères.
    Affichez le nombre total de voyelles dans la chaîne.

Exemple :

Si l'utilisateur entre "Bonjour, comment ça va ?", le programme devrait compter le nombre de voyelles dans cette phrase, ce qui donne : 9 voyelles au total (o, o, o, e, o, a, a, a).

# Exercice 9 : Recherche de nombres pairs

Le but de cet exercice est d'écrire un programme en Lua qui recherche et affiche tous les nombres pairs dans une plage de nombres donnée par l'utilisateur.

Instructions :

    Demandez à l'utilisateur d'entrer deux nombres entiers, représentant une plage de nombres (un début et une fin).
    Écrivez un algorithme qui recherche et affiche tous les nombres pairs dans cette plage de nombres (inclusivement).
    Affichez les nombres pairs trouvés.

Exemple :

Si l'utilisateur entre 3 comme début et 10 comme fin, le programme devrait afficher tous les nombres pairs entre 3 et 10, soit : 4, 6, 8, 10.

# Exercice 10 : Validation de mot de passe

L'objectif est de créer un programme en Lua qui valide la force d'un mot de passe saisi par l'utilisateur selon certains critères prédéfinis.

Fonctionnalités attendues :

    Demander à l'utilisateur de saisir un mot de passe.

    Vérifier si le mot de passe répond aux critères suivants :
        Avoir une longueur minimale de 8 caractères.
        Contenir au moins une lettre majuscule et une lettre minuscule.
        Inclure au moins un chiffre.
        Contenir au moins un caractère spécial parmi cette liste : !@#$%^&*()-_+=

    Afficher un message indiquant si le mot de passe est suffisamment fort ou non en fonction des critères.

Exemple :

Si l'utilisateur entre "Mot2DePasse!", le programme devrait afficher un message indiquant que le mot de passe est suffisamment fort car il respecte tous les critères définis.

# Exercice 11 : Calcul de factorielle récursivement

L'objectif est de créer un programme en Lua pour calculer la factorielle d'un nombre de manière récursive.

Fonctionnalités attendues :

    Demandez à l'utilisateur de saisir un nombre entier positif.
    Implémentez une fonction récursive pour calculer la factorielle de ce nombre.
    Affichez le résultat de la factorielle.

La factorielle d'un nombre entier positif nn, notée n!n!, est le produit de tous les entiers positifs de 1 à nn. Par exemple, 5!=5×4×3×2×1=1205!=5×4×3×2×1=120.

Votre tâche consiste à écrire un programme qui utilise une fonction récursive pour calculer la factorielle d'un nombre saisi par l'utilisateur.

# Exercice 12 : Recherche de nombres parfaits

L'objectif est de créer un programme en Lua qui identifie et affiche tous les nombres parfaits dans une plage donnée par l'utilisateur.

Fonctionnalités attendues :

    Demandez à l'utilisateur de saisir un nombre entier positif.
    Trouvez tous les nombres parfaits dans la plage de 1 à ce nombre (inclusivement).
    Affichez les nombres parfaits trouvés.

Un nombre parfait est un nombre entier positif qui est égal à la somme de ses diviseurs propres (excluant lui-même). Par exemple, 28 est un nombre parfait car la somme de ses diviseurs propres (1, 2, 4, 7, 14) est égale à 28.

Votre tâche consiste à écrire un programme qui trouve et affiche tous les nombres parfaits dans la plage de 1 jusqu'au nombre saisi par l'utilisateur. Pour résoudre cet exercice, vous devrez développer un algorithme qui identifie les nombres parfaits dans cette plage.