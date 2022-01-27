fill ~ ~ ~ ~ ~ ~ minecraft:light[waterlogged=false,level=1] replace minecraft:barrier
fill ~ ~ ~ ~ ~ ~ minecraft:light[waterlogged=true,level=1] replace minecraft:water[level=0]
scoreboard players remove #temp Time 1
execute if score #temp Time matches 1.. positioned ^ ^ ^1 run function luigis_mansion:entities/flashlight/set_light_reflected/2