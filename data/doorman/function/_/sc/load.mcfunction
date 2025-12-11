#> doorman:_/sc/load
# @ LOAD

scoreboard objectives add _doorman dummy
scoreboard objectives add _doorman.join minecraft.custom:leave_game

execute unless score *init _doorman matches 1 run function doorman:_/sc/init