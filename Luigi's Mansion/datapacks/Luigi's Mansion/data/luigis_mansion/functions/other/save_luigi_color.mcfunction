execute store result score #temp ID run data get storage luigis_mansion:data luigi_colors
scoreboard players set #temp2 Time 0
execute if score #temp ID matches 0 run scoreboard players set #temp Time 37129
execute if score #temp ID matches 1 run scoreboard players set #temp Time 4882943
execute if score #temp ID matches 2 run scoreboard players set #temp Time 16726271
execute if score #temp ID matches 3 run scoreboard players set #temp Time 16756001
execute if score #temp ID matches 4..7 run scoreboard players set #temp2 Time 1
execute if score #temp ID matches 4 run scoreboard players set #temp Time 37129
execute if score #temp ID matches 5 run scoreboard players set #temp Time 4882943
execute if score #temp ID matches 6 run scoreboard players set #temp Time 16726271
execute if score #temp ID matches 7 run scoreboard players set #temp Time 16756001
execute if score #temp ID matches 8.. if predicate luigis_mansion:50_50 run scoreboard players set #temp2 Time 1
execute if score #temp ID matches 8.. run function luigis_mansion:other/generate_color

data modify storage luigis_mansion:data these_colors set from storage luigis_mansion:data luigi_colors
execute in minecraft:overworld run setblock 27 0 0 minecraft:shulker_box{Items:[{id:"minecraft:stone",Count:1b,tag:{value:[I;]}}]}
execute in minecraft:overworld run setblock 27 1 0 minecraft:shulker_box{Items:[{id:"minecraft:stone",Count:1b,tag:{value:[I;]}}]}
execute in minecraft:overworld run data modify block 27 0 0 Items[0].tag.value set from entity @s UUID
data modify storage luigis_mansion:data this_color set value {uuid:[I;],color:0,variant:0}
data modify storage luigis_mansion:data this_color.uuid set from entity @s UUID
execute store result storage luigis_mansion:data this_color.color int 1 run scoreboard players get #temp Time
execute store result storage luigis_mansion:data this_color.variant int 1 run scoreboard players get #temp2 Time
execute if data storage luigis_mansion:data these_colors[-1] in minecraft:overworld run function luigis_mansion:other/get_my_color
data modify storage luigis_mansion:data new_colors append from storage luigis_mansion:data this_color
data modify storage luigis_mansion:data luigi_colors set from storage luigis_mansion:data new_colors
data remove storage luigis_mansion:data these_colors
data remove storage luigis_mansion:data this_color
data remove storage luigis_mansion:data new_colors
scoreboard players reset #matches Time
execute in minecraft:overworld run setblock 27 0 0 minecraft:bedrock
execute in minecraft:overworld run setblock 27 1 0 minecraft:stone