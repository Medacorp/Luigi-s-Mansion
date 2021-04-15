loot spawn ~ ~ ~ loot luigis_mansion:gameplay/0_90
data modify entity @s Rotation[0] set from entity @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin"}},limit=1] Item.tag.Value
execute at @s run teleport @s ~ ~ ~ ~-135 ~
kill @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin"}}]