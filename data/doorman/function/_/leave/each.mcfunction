#> doorman:_/leave/each
#--------------------
# ./trigger
#--------------------

data modify storage doorman:hook on_leave.uuid set from storage doorman:_ var.leave.left[-1].uuid

function #doorman:hook/on_leave
data remove storage doorman:hook on_leave

data remove storage doorman:_ var.leave.left[-1]
execute if data storage doorman:_ var.leave.left[0] run function doorman:_/leave/each