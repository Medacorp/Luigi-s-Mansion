spreadplayers 803.0 14.0 0 11 under 19 true @s
loot spawn ~ ~ ~ loot luigis_mansion:gameplay/0_90
data modify entity @s Rotation[0] set from entity @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin"}},limit=1] Item.tag.Value
kill @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin"}}]
loot spawn ~ ~ ~ loot luigis_mansion:gameplay/0_3
execute if entity @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin",tag:{Value:0}}}] at @s run teleport @s ~ 18 ~ ~ ~
execute if entity @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin",tag:{Value:1}}}] at @s run teleport @s ~ 18 ~ ~90 ~
execute if entity @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin",tag:{Value:2}}}] at @s run teleport @s ~ 18 ~ ~180 ~
execute if entity @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin",tag:{Value:3}}}] at @s run teleport @s ~ 18 ~ ~-90 ~
kill @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin"}}]
execute at @s if block ~ 15 ~ minecraft:lime_wool if block ^ ^ ^1 #luigis_mansion:all_ignore run summon minecraft:lightning_bolt ~ 40 ~
execute at @s if block ~ 15 ~ minecraft:lime_wool if block ^ ^ ^1 #luigis_mansion:all_ignore run scoreboard players set @s Dialog 0
execute at @s if block ~ 15 ~ minecraft:lime_wool if block ^ ^ ^1 #luigis_mansion:all_ignore run function luigis_mansion:entities/bogmire/turn_visible
execute at @s if block ~ 15 ~ minecraft:lime_wool if block ^ ^ ^1 #luigis_mansion:all_ignore run function luigis_mansion:entities/bogmire/spawn_shadow
scoreboard players reset #temp Steps
tag @s remove spawn