execute if entity @s[tag=!stop_model] if score #extra_gallery Selected matches 0 run function luigis_mansion:selection_menu/extra_gallery_door/exit
execute if entity @s[tag=!stop_model] if entity @s[tag=close_selection_menu] run function luigis_mansion:selection_menu/extra_gallery_door/exit
execute if entity @s[tag=stop_model] if score #extra_gallery Selected matches 0 run function luigis_mansion:selection_menu/extra_gallery_door/exit_spectator
execute if entity @s[tag=stop_model] if entity @s[tag=close_selection_menu] run function luigis_mansion:selection_menu/extra_gallery_door/exit_spectator

teleport @s[tag=stop_model] ~ -3 ~