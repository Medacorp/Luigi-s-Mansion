execute if entity @s[tag=!laugh,tag=!complain,scores={WaitTime=20..}] run function luigis_mansion:entities/mr_bones/ai/line_of_sight
execute if entity @s[tag=attack] run function luigis_mansion:entities/mr_bones/attack/throw_bone
scoreboard players reset #temp Steps