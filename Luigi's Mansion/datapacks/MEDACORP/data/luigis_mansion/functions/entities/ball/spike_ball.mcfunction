data modify entity @s[scores={ActionTime=160}] ArmorItems[3].tag.CustomModelData set value 37
scoreboard players add @s ActionTime 1
tag @s[scores={ActionTime=200}] add explode
execute at @s if entity @a[tag=!spectator,distance=..1,limit=1] run tag @s[tag=!in_vacuum,tag=!can_spit_2,tag=!spit] add explode
execute at @s if entity @e[tag=bowser_model,distance=..2,limit=1] run tag @s[tag=!in_vacuum] add explode
execute at @s[tag=explode] run function luigis_mansion:entities/ball/spike_explode/explode