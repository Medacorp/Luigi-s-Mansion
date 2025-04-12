function luigis_mansion:items/poltergust_3000/remove_element
function luigis_mansion:entities/player/camera/reset
scoreboard players set @s Room 1
function luigis_mansion:entities/player/run_command_as_model {command:"scoreboard players set @s Room 1"}
function luigis_mansion:entities/player/run_command_as_model {command:"function luigis_mansion:entities/luigi/animation/set/none"}
title @s subtitle ""
function luigis_mansion:other/music/set/force/silence
execute if entity @s[tag=using_selection_menu] run function luigis_mansion:selection_menu/close
tag @s[nbt=!{Dimension:"minecraft:overworld"}] remove loaded_chunks
scoreboard players set @s[nbt=!{Dimension:"minecraft:overworld"}] LoadedChunks 0
function luigis_mansion:entities/luigi/move/execute {execute:"in minecraft:overworld",teleport:"790 77 15 45 0"}