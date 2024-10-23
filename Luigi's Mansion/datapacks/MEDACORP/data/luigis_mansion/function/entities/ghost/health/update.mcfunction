scoreboard players set #temp Time 0
scoreboard players add #temp Health 98
scoreboard players operation #temp Health /= #100 Constants
execute if entity @s[tag=!infinite_health] run tag @e[tag=this_health_display,limit=1] remove infinite_health
execute unless score @s Health = #temp Health in minecraft:overworld run setblock 0 0 0 minecraft:oak_sign{front_text:{messages:['{"type":"score","score":{"objective":"Health","name":"#temp"},"color":"light_purple"}','{"type":"text","text":""}','{"type":"text","text":""}','{"type":"text","text":""}']}}
execute unless score @s Health = #temp Health in minecraft:overworld run data modify entity @s CustomName set from block 0 0 0 front_text.messages[0]
execute unless score @s Health = #temp Health in minecraft:overworld run setblock 0 0 0 minecraft:bedrock
execute if entity @s[tag=was_infinite_health,tag=!infinite_health] in minecraft:overworld run setblock 0 0 0 minecraft:oak_sign{front_text:{messages:['{"type":"score","score":{"objective":"Health","name":"#temp"},"color":"light_purple"}','{"type":"text","text":""}','{"type":"text","text":""}','{"type":"text","text":""}']}}
execute if entity @s[tag=was_infinite_health,tag=!infinite_health] in minecraft:overworld run data modify entity @s CustomName set from block 0 0 0 front_text.messages[0]
execute if entity @s[tag=was_infinite_health,tag=!infinite_health] in minecraft:overworld run setblock 0 0 0 minecraft:bedrock
tag @s[tag=was_infinite_health,tag=!infinite_health] remove was_infinite_health
$execute positioned ~ ~-0.8 ~ run teleport @s ~ ~$(up) ~ ~ ~
scoreboard players operation @s Health = #temp Health
scoreboard players operation @s Room = #temp Room
scoreboard players reset #temp Time