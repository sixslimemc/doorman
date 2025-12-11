#> doorman:_/entrypoints/disable
# ENTRYPOINT: tick
schedule function doorman:_/entrypoints/tick 1t

execute as @a unless score @s _doorman.join matches -1 run function doorman:_/main/join/trigger

execute store result score *pcount _doorman if entity @a
scoreboard players operation *dx_pcount _doorman += *joined_this_tick _doorman

execute if score *pcount _doorman < *dx_pcount _doorman run function doorman:_/main/leave/trigger

scoreboard players operation *dx_pcount _doorman = *pcount _doorman
scoreboard players reset *joined_this_tick