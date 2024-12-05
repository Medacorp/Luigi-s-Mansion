function luigis_mansion:entities/ghost/get_target
tag @s[tag=in_vacuum] add flee
execute at @s run function luigis_mansion:entities/ghost/ai

tag @s remove flee
execute if entity @s[scores={TargetTask=0}] unless data entity @s data.path.steps[0] run function luigis_mansion:entities/ghost/set_random_path
scoreboard players set @s TargetTask 5

execute if entity @e[tag=same_room,tag=luigi,distance=..0.7,limit=1] if entity @s[tag=!dead,tag=!removed_from_existence] run function luigis_mansion:entities/pink_flying_fish/collide with entity @s data.entity
