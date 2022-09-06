execute if entity @s[tag=face_me,scores={RotX=0..}] run function luigis_mansion:entities/furniture/save_rotation
execute if entity @s[tag=face_me] store result score #temp Time run data get entity @a[tag=searcher,limit=1] Rotation[0]
scoreboard players add #temp Time 180
execute if entity @s[tag=face_me] if score #temp Time < @s RotX run tag @a[tag=searcher,limit=1] add not_facing
execute if entity @s[tag=face_me] if score #temp Time > @s RotY run tag @a[tag=searcher,limit=1] add not_facing
scoreboard players reset #temp Time
execute if entity @s[scores={InteractionType=-2}] as @a[tag=searcher,tag=!not_facing,limit=1] run function luigis_mansion:entities/player/animation/set/enthusiastic
execute if entity @s[scores={InteractionType=-1}] as @a[tag=searcher,tag=!not_facing,limit=1] run function luigis_mansion:entities/player/animation/set/inspect
execute if entity @s[scores={InteractionType=1}] run scoreboard players set @a[tag=searcher,tag=!not_facing,limit=1] InteractionType 1
execute if entity @s[scores={InteractionType=2}] run scoreboard players set @a[tag=searcher,tag=!not_facing,limit=1] InteractionType 2
execute if entity @s[scores={InteractionType=3}] run scoreboard players set @a[tag=searcher,tag=!not_facing,limit=1] InteractionType 3
execute if entity @s[scores={InteractionType=4}] run scoreboard players set @a[tag=searcher,tag=!not_facing,limit=1] InteractionType 4