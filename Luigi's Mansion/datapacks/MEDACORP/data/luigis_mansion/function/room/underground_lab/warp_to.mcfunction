tag @s remove wall_warp
title @s subtitle ""
execute if entity @s[tag=using_selection_menu] run function luigis_mansion:selection_menu/close
tag @s[nbt=!{Dimension:"minecraft:overworld"}] remove loaded_chunks
scoreboard players set @s[nbt=!{Dimension:"minecraft:overworld"}] LoadedChunks 0
function luigis_mansion:entities/luigi/move/execute {execute:"in minecraft:overworld",teleport:"41 2 6 -45 0"}
scoreboard players set @s Room 1
function luigis_mansion:entities/player/run_command_as_model {command:"scoreboard players set @s Room 1"}
function luigis_mansion:entities/player/run_command_as_model {command:"function luigis_mansion:entities/luigi/animation/set/none"}
function luigis_mansion:items/poltergust_3000/remove_element