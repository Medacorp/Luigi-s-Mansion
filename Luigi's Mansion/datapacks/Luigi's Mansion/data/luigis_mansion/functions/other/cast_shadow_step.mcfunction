scoreboard players add #temp Time 1
execute if entity @e[dx=0,dy=0,dz=0,tag=me,limit=1] run tag @s add can_cast_shadow
execute unless block ^ ^ ^0.1 #luigis_mansion:flashlight_path if entity @s[tag=can_cast_shadow] run function luigis_mansion:other/cast_shadow_position
execute if score #temp Time matches ..150 positioned ^ ^ ^0.1 if block ~ ~ ~ #luigis_mansion:flashlight_path run function luigis_mansion:other/cast_shadow_step