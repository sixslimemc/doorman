#> doorman:_/main/join/trigger
# AS [joiner]
#--------------------
# _/main/tick
#--------------------

scoreboard players set @s _doorman.join -1

data modify storage doorman:_ t.join.uuid set from entity @s UUID

# HOOK : join
data modify storage doorman:hook join.uuid set from storage doorman:_ t.join.uuid
function #doorman:hook/join
data remove storage doorman:hook join

# setup onleave:
scoreboard players add *joined_this_tick _doorman 1

data modify storage doorman:_ data.players append value {uuid:[0,0,0,0]}
data modify storage doorman:_ data.players[-1].uuid set from storage doorman:_ t.join.uuid

data remove storage doorman:_ t.join