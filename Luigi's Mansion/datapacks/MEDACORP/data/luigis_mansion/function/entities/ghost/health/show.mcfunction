scoreboard players operation #temp GhostNr = @s GhostNr
execute as @e[tag=health_display] if score @s GhostNr = #temp GhostNr run tag @s add this_health_display
scoreboard players reset #temp GhostNr
execute if entity @s[scores={StunTime=0},tag=!hurt,tag=!element_hurt,tag=!show_health,tag=spawned_health_display] run tag @e[tag=this_health_display,limit=1] add dead
execute if entity @s[tag=dying] run tag @e[tag=this_health_display,limit=1] add dead
execute unless entity @s[tag=!dead,tag=!remove_from_existence] run tag @e[tag=this_health_display,limit=1] add dead
data modify storage luigis_mansion:data macro set value {up:0d}
scoreboard players operation #temp Time = @s HeartOffset
scoreboard players operation #temp2 Time = @s EntityYOffset
execute store result storage luigis_mansion:data macro.up double 0.1 run scoreboard players operation #temp2 Time -= #temp Time
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
scoreboard players operation #temp Health = @s Health
scoreboard players operation #temp Room = @s Room
execute unless entity @s[scores={StunTime=0},tag=!hurt,tag=!element_hurt,tag=!show_health] as @e[tag=this_health_display,limit=1] run function luigis_mansion:entities/ghost/health/update with storage luigis_mansion:data macro
execute unless entity @s[scores={StunTime=0},tag=!hurt,tag=!element_hurt,tag=!show_health] if entity @s[tag=!dying] unless entity @e[tag=this_health_display,limit=1] run function luigis_mansion:entities/ghost/health/spawn with storage luigis_mansion:data macro
execute unless entity @e[tag=this_health_display,limit=1] run tag @s remove spawned_health_display
tag @e[tag=this_health_display,limit=1] remove this_health_display
scoreboard players reset #temp Health
scoreboard players reset #temp Room