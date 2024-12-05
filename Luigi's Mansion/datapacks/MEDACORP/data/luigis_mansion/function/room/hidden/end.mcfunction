execute as @a run function luigis_mansion:entities/player/run_command_as_model {command:"function luigis_mansion:entities/luigi/animation/set/none"}
tag @a remove wall_warp
execute as @a run function luigis_mansion:room/ghost_portrificationizer_room/warp_to
data remove storage luigis_mansion:data dialogs[{room:-3}]
data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"ghost_portrificationizer_room/ending"},room:-3,progress:-1}