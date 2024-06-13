execute if entity @s[tag=must_face] run function luigis_mansion:entities/furniture/save_rotation
execute if entity @s[tag=must_face] store result score #temp Time run data get entity @a[tag=searcher,limit=1] Rotation[0]
scoreboard players add #temp Time 180
execute if score #temp Time matches 180.. run scoreboard players remove #temp Time 360
execute if entity @s[tag=must_face,tag=!inverted_check] if score #temp Time < @s RotationX run tag @a[tag=searcher,limit=1] add not_facing
execute if entity @s[tag=must_face,tag=!inverted_check] if score #temp Time > @s RotationY run tag @a[tag=searcher,limit=1] add not_facing
execute if entity @s[tag=must_face,tag=inverted_check] if score #temp Time < @s RotationX if score #temp Time > @s RotationDifference run tag @a[tag=searcher,limit=1] add not_facing
execute if entity @s[tag=must_face,tag=inverted_check] if score #temp Time > @s RotationY if score #temp Time < @s RotationDifference run tag @a[tag=searcher,limit=1] add not_facing
scoreboard players reset #temp Time
execute if data entity @s ArmorItems[3].components."minecraft:custom_data".interact_animation run function luigis_mansion:entities/furniture/interact_animation_set with entity @s ArmorItems[3].components."minecraft:custom_data".interact_animation