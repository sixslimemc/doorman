#> doorman:_/main/leave/each
#--------------------
# ./trigger
#--------------------

# HOOK <> leave:
data modify storage doorman:hook leave.uuid set from storage doorman:_ t.leave.left[-1].uuid
function #doorman:hook/leave
data remove storage doorman:hook leave

data remove storage doorman:_ t.leave.left[-1]
execute if data storage doorman:_ t.leave.left[0] run function doorman:_/main/leave/each