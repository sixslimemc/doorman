#> doorman:_/leave/add_player
#--------------------
# ./trigger
#--------------------

data modify storage doorman:_ var.leave.post_players append value {}
data modify storage doorman:_ var.leave.post_players[-1].uuid set from entity @s UUID