scoreboard players add #global_mirror_reflections Selected 1
execute if score #global_mirror_reflections Selected matches 2 run scoreboard players set #global_mirror_reflections Selected 0
execute if score #global_mirror_reflections Selected matches 0 at @e[tag=reflection] positioned ~ ~1.4 ~ run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 minecraft:barrier replace minecraft:light
execute if score #global_mirror_reflections Selected matches 0 run tag @e[tag=reflection] add dead
execute if score #global_mirror_reflections Selected matches 0 run scoreboard players reset @e MirrorX
execute if score #global_mirror_reflections Selected matches 0 run scoreboard players reset @e MirrorZ

execute as @a[nbt={Inventory:[{components:{"minecraft:custom_data":{option:{update_global_variables:1b}}}}]}] run function luigis_mansion:selection_menu/game_boy_horror/show_settings/toggle/global_mirror_reflections_update