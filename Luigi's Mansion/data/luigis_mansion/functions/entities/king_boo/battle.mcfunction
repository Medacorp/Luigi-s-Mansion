scoreboard players add @s Wave 1
execute if entity @s[tag=fleeing] run function luigis_mansion:entities/king_boo/flee
execute at @s[scores={Wave=1..120}] facing entity @e[tag=bowser_body,limit=1] feet rotated ~-180 0 run teleport @s ~ ~ ~ ~ ~
execute at @s[tag=!fleeing,tag=!boo_hurt,scores={Wave=1..120}] if score #temp Move matches 1.. run function luigis_mansion:entities/king_boo/move_forward

scoreboard players set @s[tag=!boo_hurt,tag=!fleeing,tag=!dying] ActionTime 0
scoreboard players reset @s[tag=!boo_hurt,tag=!fleeing,tag=!dying] HurtTime
tag @s remove vanish
execute if entity @s[scores={Wave=121..}] run function luigis_mansion:entities/king_boo/battle_to_bowser