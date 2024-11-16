execute unless data storage luigis_mansion:data macro.namespace run data modify storage luigis_mansion:data macro.namespace set value "luigis_mansion"
execute if entity @s[tag=!spectator_menu] if score #extra_gallery Selected matches 0 run function luigis_mansion:selection_menu/extra_gallery_door/exit
execute if entity @s[tag=!spectator_menu] if entity @s[tag=close_selection_menu] run function luigis_mansion:selection_menu/extra_gallery_door/exit
execute if entity @s[tag=spectator_menu] if score #extra_gallery Selected matches 0 run function luigis_mansion:selection_menu/extra_gallery_door/exit_spectator
execute if entity @s[tag=spectator_menu] if entity @s[tag=close_selection_menu] run function luigis_mansion:selection_menu/extra_gallery_door/exit_spectator