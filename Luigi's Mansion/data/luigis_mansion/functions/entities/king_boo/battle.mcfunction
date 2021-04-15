scoreboard players add @s Wave 1
execute if entity @s[tag=fleeing] run function luigis_mansion:entities/boo/flee
execute at @s[scores={Wave=1..120}] facing entity @e[tag=bowser_body,limit=1] feet rotated ~-180 0 run teleport @s ~ ~ ~ ~ ~
execute at @s[scores={Wave=121..}] facing entity @e[tag=bowser_body,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s[tag=!fleeing,tag=!boo_hurt,scores={Wave=1..120}] if score #temp Move matches 1.. run function luigis_mansion:entities/king_boo/move_forward
execute at @s[tag=!fleeing,tag=!boo_hurt,scores={Wave=121..}] if score #temp Move matches 1.. run function luigis_mansion:entities/king_boo/move_back

scoreboard players set @s[tag=!boo_hurt,tag=!fleeing,tag=!dying] ActionTime 0
scoreboard players reset @s[tag=!boo_hurt,tag=!fleeing,tag=!dying] HurtTime
tag @s remove vanish
execute if entity @s[scores={Wave=121..,Health=..25000}] if entity @e[tag=bowser_body,distance=..2,limit=1] run tag @e[tag=bowser,limit=1] add headless_run
execute if entity @s[scores={Wave=121..}] if entity @e[tag=bowser_body,distance=..2,limit=1] run scoreboard players reset @e[tag=bowser,limit=1] ActionTime
execute if entity @s[scores={Wave=121..}] if entity @e[tag=bowser_body,distance=..2,limit=1] run tag @s add vanish
execute if entity @s[scores={Wave=121..}] at @e[tag=bowser_body,distance=..2,limit=1] run teleport @e[tag=bowser,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Wave=121..,Health=..25000}] positioned ~ ~-4 ~ if entity @e[tag=bowser_body,distance=..2,limit=1] run tag @e[tag=bowser,limit=1] add headless_run
execute if entity @s[scores={Wave=121..}] positioned ~ ~-4 ~ if entity @e[tag=bowser_body,distance=..2,limit=1] run scoreboard players reset @e[tag=bowser,limit=1] ActionTime
execute if entity @s[scores={Wave=121..}] positioned ~ ~-4 ~ if entity @e[tag=bowser_body,distance=..2,limit=1] run tag @s add vanish
execute if entity @s[scores={Wave=121..}] positioned ~ ~-4 ~ at @e[tag=bowser_body,distance=..2,limit=1] run teleport @e[tag=bowser,limit=1] ~ ~ ~ ~ ~