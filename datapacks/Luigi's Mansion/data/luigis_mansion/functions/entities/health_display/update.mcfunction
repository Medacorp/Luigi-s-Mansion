teleport @s ~ ~0.8 ~ ~ ~
execute at @e[tag=this_ghost,tag=body,limit=1] run teleport @s ~ ~0.8 ~ ~ ~
scoreboard players set #temp Time 0
scoreboard players operation #temp Time = @e[tag=this_ghost,tag=!body,limit=1] HeartOffset
execute unless score #temp Time matches 0 at @s run function luigis_mansion:entities/health_display/move
scoreboard players operation #temp Health = @e[tag=this_ghost,tag=!body] Health
scoreboard players add #temp Health 98
scoreboard players operation #temp Health /= #100 Constants
execute unless score @s Health = #temp Health in minecraft:overworld run setblock 27 0 0 minecraft:oak_sign{Text1:'{"score":{"objective":"Health","name":"#temp"},"color":"light_purple"}'}
execute unless score @s Health = #temp Health in minecraft:overworld run data modify entity @s CustomName set from block 27 0 0 Text1
execute unless score @s Health = #temp Health in minecraft:overworld run setblock 27 0 0 minecraft:bedrock
scoreboard players operation @s Health = #temp Health
scoreboard players reset #temp Health
scoreboard players reset #temp Time