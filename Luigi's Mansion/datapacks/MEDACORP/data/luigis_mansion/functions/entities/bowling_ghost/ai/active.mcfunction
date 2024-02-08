function luigis_mansion:entities/ghost/ai

scoreboard players operation #temp GhostNr = @s GhostNr
execute as @e[tag=bowling_ball] if score @s Owner = #temp GhostNr run tag @s add this_bowling_ball

execute unless entity @s[tag=!hurt,tag=!element_hurt,scores={StunTime=0}] run function luigis_mansion:entities/bowling_ghost/ai/hurt with entity @s data.entity
execute if entity @s[tag=!hurt,tag=!element_hurt,scores={StunTime=0}] run function luigis_mansion:entities/bowling_ghost/ai/not_hurt

execute if entity @s[scores={Sound=0,ActionTime=0},tag=!dying] run function luigis_mansion:entities/bowling_ghost/ambient_sound with entity @s data.entity

scoreboard players reset #temp GhostNr
tag @e[tag=this_bowling_ball] remove this_bowling_ball