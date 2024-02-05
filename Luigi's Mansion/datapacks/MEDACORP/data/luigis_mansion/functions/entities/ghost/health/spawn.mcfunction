$summon minecraft:armor_stand ~ ~$(up) ~ {CustomName:'{"type":"text","text":"∞","color":"light_purple"}',Marker:1b,Invisible:1b,NoGravity:1b,CustomNameVisible:1b,Fire:32767s,Tags:["health_display","this_health_display"]}
scoreboard players operation @e[tag=this_health_display,limit=1] Room = #temp Room
scoreboard players operation @e[tag=this_health_display,limit=1] GhostNr = @s GhostNr
scoreboard players add #temp Health 99
scoreboard players operation #temp Health /= #100 Constants
scoreboard players operation @e[tag=this_health_display,limit=1] Health = #temp Health
execute if entity @s[tag=!infinite_health] in minecraft:overworld run setblock 0 0 0 minecraft:oak_sign{front_text:{messages:['{"type":"score","score":{"objective":"Health","name":"#temp"},"color":"light_purple"}','{"type":"text","text":""}','{"type":"text","text":""}','{"type":"text","text":""}']}}
execute if entity @s[tag=!infinite_health] in minecraft:overworld run data modify entity @e[tag=this_health_display,limit=1] CustomName set from block 0 0 0 front_text.messages[0]
execute if entity @s[tag=!infinite_health] in minecraft:overworld run setblock 0 0 0 minecraft:bedrock
execute unless entity @s[tag=!infinite_health] run tag @e[tag=this_health_display,limit=1] add infinite_health
execute unless entity @s[tag=!infinite_health] run tag @e[tag=this_health_display,limit=1] add was_infinite_health
tag @s add spawned_health_display