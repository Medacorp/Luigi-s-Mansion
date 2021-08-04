data modify storage luigis_mansion:data these_colors set from storage luigis_mansion:data luigi_colors
execute in minecraft:overworld run setblock 27 0 0 minecraft:shulker_box{Items:[{id:"minecraft:stone",Count:1b,tag:{value:[I;]}}]}
execute in minecraft:overworld run setblock 27 1 0 minecraft:shulker_box{Items:[{id:"minecraft:stone",Count:1b,tag:{value:[I;]}}]}
execute in minecraft:overworld run data modify block 27 0 0 Items[0].tag.value set from entity @s UUID
execute if data storage luigis_mansion:data these_colors[-1] in minecraft:overworld run function luigis_mansion:other/get_my_color
execute store result score #temp Time run data get storage luigis_mansion:data this_color.color
execute store result score #temp2 Time run data get storage luigis_mansion:data this_color.variant
data modify storage luigis_mansion:data new_colors append from storage luigis_mansion:data this_color
data modify storage luigis_mansion:data luigi_colors set from storage luigis_mansion:data new_colors
data remove storage luigis_mansion:data these_colors
data remove storage luigis_mansion:data this_color
data remove storage luigis_mansion:data new_colors
scoreboard players reset #matches Time
execute in minecraft:overworld run setblock 27 0 0 minecraft:bedrock
execute in minecraft:overworld run setblock 27 1 0 minecraft:stone