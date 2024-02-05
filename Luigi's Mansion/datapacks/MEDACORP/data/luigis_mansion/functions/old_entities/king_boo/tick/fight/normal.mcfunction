scoreboard players add @s Wave 1
execute if entity @s[tag=flee] run function luigis_mansion:old_entities/king_boo/flee
execute at @s[scores={Wave=1..120}] facing entity @e[tag=bowser_body,limit=1] feet rotated ~-180 0 run teleport @s ~ ~ ~ ~ ~
execute at @s[tag=!flee,tag=!boo_hurt,scores={Wave=1..120},tag=!dying] if score #temp Move matches 1.. run function luigis_mansion:old_entities/king_boo/move_forward

scoreboard players set @s[tag=!boo_hurt,tag=!flee,tag=!dying] ActionTime 0
scoreboard players reset @s[tag=!boo_hurt,tag=!flee,tag=!dying] HurtTime
execute if entity @s[tag=dying] run tag @e[tag=bowser,limit=1] add king_boo_dead
tag @s remove vanish
execute if entity @s[scores={Wave=121..},tag=!dying] run function luigis_mansion:old_entities/king_boo/flee_to_bowser