#R
loot spawn ~ ~ ~ loot luigis_mansion:gameplay/1_16
execute store result score #temp Time run data get entity @e[type=minecraft:item,distance=..0.1,limit=1] Item.tag.value
kill @e[type=minecraft:item,distance=..0.1,limit=1]
loot spawn ~ ~ ~ loot luigis_mansion:gameplay/1_16
execute store result score #temp ActionTime run data get entity @e[type=minecraft:item,distance=..0.1,limit=1] Item.tag.value
kill @e[type=minecraft:item,distance=..0.1,limit=1]
scoreboard players operation #temp Time *= #temp ActionTime
scoreboard players remove #temp Time 1
scoreboard players operation #temp Time *= #256 Constants
scoreboard players operation #temp Time *= #256 Constants

#G
loot spawn ~ ~ ~ loot luigis_mansion:gameplay/1_16
execute store result score #temp2 Time run data get entity @e[type=minecraft:item,distance=..0.1,limit=1] Item.tag.value
kill @e[type=minecraft:item,distance=..0.1,limit=1]
loot spawn ~ ~ ~ loot luigis_mansion:gameplay/1_16
execute store result score #temp ActionTime run data get entity @e[type=minecraft:item,distance=..0.1,limit=1] Item.tag.value
kill @e[type=minecraft:item,distance=..0.1,limit=1]
scoreboard players operation #temp2 Time *= #temp ActionTime
scoreboard players remove #temp2 Time 1
scoreboard players operation #temp2 Time *= #256 Constants
scoreboard players operation #temp Time += #temp2 Time

#B
loot spawn ~ ~ ~ loot luigis_mansion:gameplay/1_16
execute store result score #temp2 Time run data get entity @e[type=minecraft:item,distance=..0.1,limit=1] Item.tag.value
kill @e[type=minecraft:item,distance=..0.1,limit=1]
loot spawn ~ ~ ~ loot luigis_mansion:gameplay/1_16
execute store result score #temp ActionTime run data get entity @e[type=minecraft:item,distance=..0.1,limit=1] Item.tag.value
kill @e[type=minecraft:item,distance=..0.1,limit=1]
scoreboard players operation #temp2 Time *= #temp ActionTime
scoreboard players remove #temp2 Time 1
scoreboard players operation #temp Time += #temp2 Time

scoreboard players reset #temp ActionTime
scoreboard players reset #temp2 Time