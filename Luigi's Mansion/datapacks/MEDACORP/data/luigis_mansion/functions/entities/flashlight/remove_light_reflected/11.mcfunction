fill ~ ~ ~ ~ ~ ~ minecraft:barrier replace minecraft:light[waterlogged=false,level=11]
fill ~ ~ ~ ~ ~ ~ minecraft:water[level=0] replace minecraft:light[waterlogged=true,level=11]
scoreboard players remove #temp Time 1
execute if score #temp Time matches 1.. positioned ^ ^ ^1 run function luigis_mansion:entities/flashlight/remove_light_reflected/12