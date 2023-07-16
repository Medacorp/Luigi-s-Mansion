fill ~ ~ ~ ~ ~ ~ minecraft:light[waterlogged=false,level=9] replace minecraft:barrier
fill ~ ~ ~ ~ ~ ~ minecraft:light[waterlogged=true,level=9] replace minecraft:water[level=0]
scoreboard players remove #temp Time 1
execute if score #temp Time matches 1.. positioned ^ ^ ^1 run function luigis_mansion:entities/flashlight/set_light_reflected/10