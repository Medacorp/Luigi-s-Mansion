execute if entity @e[tag=this_ghost,tag=!ceiling_ghost] run teleport @s ~ ~0.5 ~
execute if entity @e[tag=this_ghost,tag=ceiling_ghost] run teleport @s ~ ~1.5 ~
scoreboard players operation #temp Health = @e[tag=this_ghost] Health
scoreboard players add #temp Health 98
scoreboard players operation #temp Health /= #100 Constants
execute unless score @s Health = #temp Health run setblock 27 0 0 minecraft:oak_sign{Text1:'{"score":{"objective":"Health","name":"#temp"},"color":"light_purple"}'}
execute unless score @s Health = #temp Health run data modify entity @s CustomName set from block 27 0 0 Text1
execute unless score @s Health = #temp Health run setblock 27 0 0 minecraft:bedrock
scoreboard players operation @s Health = #temp Health
scoreboard players reset #temp Health