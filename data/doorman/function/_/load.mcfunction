#> doorman:_/load
# @ LOAD

scoreboard objectives add _doorman dummy



# DEBUG
scoreboard players reset *init _doorman

execute unless score *init _doorman matches 1 run function doorman:_/init