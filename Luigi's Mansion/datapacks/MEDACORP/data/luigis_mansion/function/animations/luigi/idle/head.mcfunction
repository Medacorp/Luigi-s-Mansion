scoreboard players add @s Time 1
execute if data storage luigis_mansion:data luigi{tags:["dark_room"]} run function luigis_mansion:animations/luigi/idle/head_dark_room
execute unless data storage luigis_mansion:data luigi{tags:["dark_room"]} run data modify entity @s[tag=!low_health,tag=!poltergust_grabbed] item merge from entity @s item.components."minecraft:custom_data".model_data.default
execute unless entity @s[tag=!low_health,tag=!poltergust_grabbed] run data modify entity @s item merge from entity @s item.components."minecraft:custom_data".model_data.scared
scoreboard players set @s[scores={Time=40}] Time 0