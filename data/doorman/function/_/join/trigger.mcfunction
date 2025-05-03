#> doorman:_/join/trigger
#--------------------
# ./tick AS [joiner]
#--------------------

scoreboard players set @s _doorman.join -1

# onjoin:
function #doorman:hook/on_join

# setup onleave:
scoreboard players add *joined_this_tick _doorman 1

data modify storage doorman:_ players append value {}
data modify storage doorman:_ players[-1].uuid set from entity @s UUID