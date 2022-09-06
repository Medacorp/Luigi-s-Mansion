execute store result score #temp Time run data get entity @s Rotation[0]
loot spawn ~ ~ ~ loot luigis_mansion:gameplay/0_180
execute store result score #temp2 Time run data get entity @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin"}},limit=1] Item.tag.Value
kill @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin"}}]
scoreboard players remove #temp2 Time 90
execute store result entity @s Rotation[0] float 1 run scoreboard players operation #temp Time += #temp2 Time
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
function luigis_mansion:entities/item/bounce