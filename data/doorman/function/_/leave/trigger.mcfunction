#> doorman:_/leave/trigger
#--------------------
# ../tick
#--------------------

execute as @a run function doorman:_/leave/add_player

data modify storage six:in difference.a set from storage doorman:_ var.leave.post_players
data modify storage six:in difference.b set from storage doorman:_ players
function six:set/difference
data modify storage doorman:_ var.leave.left set from storage six:out difference.b

execute if data storage doorman:_ var.leave.left[0] run function doorman:_/leave/each

data modify storage doorman:_ players set from storage doorman:_ var.leave.post_players
data remove storage doorman:_ var.leave