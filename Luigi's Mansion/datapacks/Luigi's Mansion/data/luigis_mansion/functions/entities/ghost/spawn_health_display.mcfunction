summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"text":"","color":"light_purple"}',HasVisualFire:1b,Marker:1b,Invisible:1b,NoGravity:1b,CustomNameVisible:1b,Tags:["health_display","this_entity"]}
scoreboard players operation @e[tag=this_entity,limit=1] Room = @s Room
scoreboard players operation @e[tag=this_entity,limit=1] GhostNr = @s GhostNr
scoreboard players operation #temp Health = @s Health
scoreboard players add #temp Health 98
scoreboard players operation #temp Health /= #100 Constants
scoreboard players operation @e[tag=this_entity,limit=1] Health = #temp Health
execute in minecraft:overworld run setblock 27 0 0 minecraft:oak_sign{Text1:'{"score":{"objective":"Health","name":"#temp"},"color":"light_purple"}'}
execute in minecraft:overworld run data modify entity @e[tag=this_entity,limit=1] CustomName set from block 27 0 0 Text1
execute in minecraft:overworld run setblock 27 0 0 minecraft:bedrock
tag @e[tag=this_entity,limit=1] remove this_entity
tag @s add spawned_health_display