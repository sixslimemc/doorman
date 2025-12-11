#> doorman:_/main/join/trigger
#--------------------
# @ tick AS joiner
#--------------------

scoreboard players set @s _doorman.join -1

# onjoin:
function #doorman:hook/join

# setup onleave:
scoreboard players add *joined_this_tick _doorman 1

data modify storage doorman:_ data.players append value {uuid:[0,0,0,0]}
data modify storage doorman:_ data.players[-1].uuid set from entity @s UUID