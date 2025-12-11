#> doorman:_/main/leave/trigger
#--------------------
# @ tick
#--------------------

execute as @a run function doorman:_/main/leave/add_player

data modify storage six:in difference.a set from storage doorman:_ t.leave.post_players
data modify storage six:in difference.b set from storage doorman:_ data.players
function six:set/difference
data modify storage doorman:_ t.leave.left set from storage six:out difference.b

execute if data storage doorman:_ t.leave.left[0] run function doorman:_/main/leave/each

data modify storage doorman:_ data.players set from storage doorman:_ t.leave.post_players
data remove storage doorman:_ t.leave