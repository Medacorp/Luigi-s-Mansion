execute if entity @s[tag=must_face] run function luigis_mansion:entities/furniture/save_rotation
execute if entity @s[tag=must_face] store result score #temp Time run data get entity @a[tag=searcher,limit=1] Rotation[0]
scoreboard players add #temp Time 180
execute if score #temp Time matches 180.. run scoreboard players remove #temp Time 360
execute if entity @s[tag=must_face,tag=!inverted_check] if score #temp Time < @s RotationX run tag @a[tag=searcher,limit=1] add not_facing
execute if entity @s[tag=must_face,tag=!inverted_check] if score #temp Time > @s RotationY run tag @a[tag=searcher,limit=1] add not_facing
execute if entity @s[tag=must_face,tag=inverted_check] if score #temp Time < @s RotationX if score #temp Time > @s RotationDifference run tag @a[tag=searcher,limit=1] add not_facing
execute if entity @s[tag=must_face,tag=inverted_check] if score #temp Time > @s RotationY if score #temp Time < @s RotationDifference run tag @a[tag=searcher,limit=1] add not_facing
scoreboard players reset #temp Time
execute if entity @s[scores={InteractionTime=-2147483648..}] run scoreboard players operation @a[tag=searcher,tag=!not_facing,limit=1] Animation = @s InteractionTime
execute if entity @s[scores={InteractionTime=-2147483648..}] as @a[tag=searcher,tag=!not_facing,limit=1] run function luigis_mansion:entities/furniture/interact_animation_set