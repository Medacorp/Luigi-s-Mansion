execute if entity @s[tag=!ceiling_ghost] run summon minecraft:armor_stand ~ ~0.5 ~ {CustomName:'{"text":"","color":"light_purple"}',Marker:1b,Invisible:1b,NoGravity:1b,CustomNameVisible:1b,Fire:32767s,Tags:["health_display","this_entity"]}
execute if entity @s[tag=ceiling_ghost] run summon minecraft:armor_stand ~ ~1.5 ~ {CustomName:'{"text":"","color":"light_purple"}',Marker:1b,Invisible:1b,NoGravity:1b,CustomNameVisible:1b,Fire:32767s,Tags:["health_display","this_entity"]}
scoreboard players operation @e[tag=this_entity,limit=1] GhostNr = @s GhostNr
scoreboard players operation #temp Health = @s Health
scoreboard players add #temp Health 98
scoreboard players operation #temp Health /= #100 Constants
scoreboard players operation @e[tag=this_entity,limit=1] Health = #temp Health
setblock 27 0 0 minecraft:oak_sign{Text1:'{"score":{"objective":"Health","name":"#temp"},"color":"light_purple"}'}
data modify entity @e[tag=this_entity,limit=1] CustomName set from block 27 0 0 Text1
setblock 27 0 0 minecraft:bedrock
tag @e[tag=this_entity,limit=1] remove this_entity
tag @s add spawned_health_display