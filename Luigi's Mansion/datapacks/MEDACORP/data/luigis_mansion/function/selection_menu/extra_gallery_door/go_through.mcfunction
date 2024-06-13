function luigis_mansion:selection_menu/extra_gallery_door/exit
tag @e[tag=extra_gallery_door,limit=1] add open_door
execute at @e[tag=extra_gallery_door,limit=1] positioned ^ ^ ^0.5 rotated ~-180 ~ align xz run teleport @s ~0.5 ~ ~0.5 ~ ~
execute at @e[tag=extra_gallery_door,limit=1] if entity @e[distance=..0.1,tag=extra_gallery_door,limit=1,tag=!pull] at @s run function luigis_mansion:entities/player/animation/set/door/open/push
execute at @e[tag=extra_gallery_door,limit=1] if entity @e[distance=..0.1,tag=extra_gallery_door,limit=1,tag=pull] at @s run function luigis_mansion:entities/player/animation/set/door/open/pull
data modify entity @e[tag=extra_gallery_door,limit=1] ArmorItems[3].components."minecraft:custom_data".other_end set from storage luigis_mansion:data selected_option.other_end
data modify entity @e[tag=extra_gallery_door,limit=1] ArmorItems[3].components."minecraft:custom_data".go_through_command set from storage luigis_mansion:data selected_option.go_through_command