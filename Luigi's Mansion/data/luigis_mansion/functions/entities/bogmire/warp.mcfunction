spreadplayers 720.0 -19952.0 0 11 true @s
execute at @s if block ~ 38 ~ minecraft:lime_wool run summon minecraft:lightning_bolt ~ ~ ~
execute at @s if block ~ 38 ~ minecraft:lime_wool run teleport @s ~ 41 ~ 0 0
execute at @s if block ~ 38 ~ minecraft:lime_wool run scoreboard players set @s Dialog 0
execute at @s if block ~ 38 ~ minecraft:lime_wool run function luigis_mansion:entities/bogmire/turn_visible
loot spawn ~ ~ ~ loot luigis_mansion:gameplay/0_90
data modify entity @s Rotation[0] set from entity @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin"}},limit=1] Item.tag.Value
kill @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin"}}]
loot spawn ~ ~ ~ loot luigis_mansion:gameplay/0_3
execute if entity @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin",tag:{Value:1}}}] at @s run teleport @s ~ ~ ~ ~90 ~
execute if entity @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin",tag:{Value:2}}}] at @s run teleport @s ~ ~ ~ ~180 ~
execute if entity @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin",tag:{Value:3}}}] at @s run teleport @s ~ ~ ~ ~-90 ~
kill @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin"}}]
execute at @s if block ~ 38 ~ minecraft:lime_wool run function luigis_mansion:entities/bogmire/spawn_shadow
scoreboard players reset #temp Steps
tag @s remove spawn