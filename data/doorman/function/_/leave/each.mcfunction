#> doorman:_/leave/each
#--------------------
# ./trigger
#--------------------

# HOOK <> leave:
data modify storage doorman:hook leave.uuid set from storage doorman:_ var.leave.left[-1].uuid
function #doorman:hook/leave

data remove storage doorman:hook leave

data remove storage doorman:_ var.leave.left[-1]
execute if data storage doorman:_ var.leave.left[0] run function doorman:_/leave/each