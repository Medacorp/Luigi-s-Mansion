tag @s remove play_opening
tag @s add in_dialog
tag @s add was_in_dialog
$execute unless data storage luigis_mansion:data dialogs[{save:1b}] run function $(namespace):room/exterior/opening/$(id)
execute if data storage luigis_mansion:data dialogs[{save:1b,room:0}] run function luigis_mansion:room/exterior/warp with storage luigis_mansion:data loaded_exterior
execute if data storage luigis_mansion:data dialogs[{save:1b,room:-1}] run function luigis_mansion:room/underground_lab/warp_to
execute if data storage luigis_mansion:data dialogs[{save:1b,room:-3}] run function luigis_mansion:room/ghost_portrificationizer_room/warp_to