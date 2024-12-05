tag @a[tag=this_player,limit=1] remove wall_warp
execute if entity @s[tag=using_selection_menu] run function luigis_mansion:selection_menu/close
tag @a[tag=this_player,limit=1] remove loaded_chunks
scoreboard players set @a[tag=this_player,limit=1] LoadedChunks 0
function luigis_mansion:entities/luigi/move/execute {execute:"in minecraft:overworld",teleport:"790 77 15 45 0"}
function luigis_mansion:entities/player/run_command_as_model {command:"function luigis_mansion:entities/luigi/animation/set/none"}
tag @s add clear_elemental_meter