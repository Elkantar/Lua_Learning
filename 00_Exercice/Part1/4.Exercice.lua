--[[Exercice : Conversion de température

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
]] --

print("Veuillez entrez une température\n Exemple : 0 C")
local input = io.read()

local temperature, echelle = input:match("(%S+)%s+(%S+)")

function CelsiusToFahrenheit(Celsius)
    local result = Celsius + 32
    return result
end

function CelsiusToFahrenheit(Celsius)
    local result = (Celsius * 9 / 5) + 32
    return result
end

function CelsiusToKelvin(Celsius)
    local result = Celsius + 273.15
    return result
end

function FahrenheitToCelsius(Fahrenheit)
    local result = (Fahrenheit - 32) * 5 / 9
    return result
end

function FahrenheitToKelvin(Fahrenheit)
    local result = (Fahrenheit - 32) * 5 / 9 + 273.15
    return result
end

function KelvinToCelsius(Kelvin)
    local result = Kelvin - 273.15
    return result
end

function KelvinToFahrenheit(Kelvin)
    local result = (Kelvin - 273.15) * 9 / 5 + 32
    return result
end

if echelle == "C" then
    local CtoF = CelsiusToFahrenheit(temperature)
    local CtoK = CelsiusToKelvin(temperature)
    print(CtoF, CtoK)
end
if echelle  == "F" then
    local FtoC = FahrenheitToCelsius(temperature)
    local FtoK = FahrenheitToKelvin(temperature)
    print(FtoC, FtoK)
end
if echelle  == "K" then
    local KtoC = KelvinToCelsius(temperature)
    local KtoF = KelvinToFahrenheit(temperature)
    print(KtoC, KtoF)
end