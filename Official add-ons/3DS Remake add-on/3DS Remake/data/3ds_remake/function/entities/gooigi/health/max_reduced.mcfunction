scoreboard players add @s MaxHealthTime 1
execute if entity @s[scores={MaxHealthTime=1}] if score @s MaxHealth < @s Health run function luigis_mansion:entities/luigi/health/reduce_to_max
execute if entity @s[scores={Health=0}] run scoreboard players set @s MaxHealthTime 200
execute unless entity @s[scores={MaxHealth=50}] unless entity @s[tag=!walking,tag=!running,tag=!sneaking] run scoreboard players add @s MaxHealthTime 1
scoreboard players set @s[scores={MaxHealthTime=200}] MaxHealth 50
scoreboard players reset @s[scores={MaxHealthTime=200}] MaxHealthTime