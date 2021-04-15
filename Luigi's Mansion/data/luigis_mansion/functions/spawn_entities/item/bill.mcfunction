summon minecraft:armor_stand ~ ~-0.4 ~ {Pose:{Head:[0.0f,0.0f,0.01f]},Marker:1b,Invisible:1b,Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:5,CustomModelData:12}}],Tags:["item","bill","this_entity"],DisabledSlots:2039583}
execute if predicate luigis_mansion:50_50 run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.CustomModelData set value 13
loot spawn ~ ~ ~ loot luigis_mansion:gameplay/0_90
execute as @e[tag=this_entity,limit=1] run data modify entity @s Rotation[0] set from entity @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin"}},limit=1] Item.tag.Value
kill @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin"}}]
loot spawn ~ ~ ~ loot luigis_mansion:gameplay/0_3
execute if entity @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin",tag:{Value:1}}}] as @e[tag=this_entity,limit=1] at @s run teleport @s ~ ~ ~ ~90 ~
execute if entity @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin",tag:{Value:2}}}] as @e[tag=this_entity,limit=1] at @s run teleport @s ~ ~ ~ ~180 ~
execute if entity @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin",tag:{Value:3}}}] as @e[tag=this_entity,limit=1] at @s run teleport @s ~ ~ ~ ~-90 ~
kill @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin"}}]
loot spawn ~ ~ ~ loot luigis_mansion:gameplay/0_90
execute as @e[tag=this_entity,limit=1] store result score #temp Time run data get entity @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin"}},limit=1] Item.tag.Value
kill @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin"}}]
loot spawn ~ ~ ~ loot luigis_mansion:gameplay/0_3
execute if entity @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin",tag:{Value:1}}}] as @e[tag=this_entity,limit=1] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 90
execute if entity @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin",tag:{Value:2}}}] as @e[tag=this_entity,limit=1] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 180
execute if entity @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin",tag:{Value:3}}}] as @e[tag=this_entity,limit=1] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 90
kill @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin"}}]
scoreboard players reset #temp Time
loot spawn ~ ~ ~ loot luigis_mansion:gameplay/0_90
execute as @e[tag=this_entity,limit=1] run data modify entity @s Rotation[1] set from entity @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin"}},limit=1] Item.tag.Value
kill @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin"}}]
execute as @e[tag=this_entity,limit=1] at @s run teleport @s[x_rotation=-90..10] ~ ~ ~ ~ ~10
execute as @e[tag=this_entity,limit=1] at @s positioned ~ ~0.4 ~ unless block ~ ~-1 ~ #luigis_mansion:ghosts_ignore run teleport @s[x_rotation=60..90] ~ ~ ~ ~ ~-30
execute as @e[tag=this_entity,limit=1] at @s positioned ~ ~0.4 ~ if block ~1 ~ ~ #luigis_mansion:ghosts_ignore if block ~-1 ~ ~ #luigis_mansion:ghosts_ignore if block ~ ~ ~1 #luigis_mansion:ghosts_ignore if block ~ ~ ~-1 #luigis_mansion:ghosts_ignore if block ~ ~-1 ~ #luigis_mansion:ghosts_ignore at @s run teleport @s[x_rotation=-90..45] ~ ~ ~ ~ ~45
execute as @e[tag=this_entity,limit=1] at @s positioned ~ ~0.4 ~ rotated ~ 0 unless block ^ ^ ^1 #luigis_mansion:ghosts_ignore at @s run tp @s ~ ~ ~ ~-180 ~
execute as @e[tag=this_entity,limit=1] store result entity @s Pose.Head[0] float 1 run data get entity @s Rotation[1]
execute if predicate luigis_mansion:50_50 as @e[tag=this_entity,limit=1] store result entity @s Pose.Head[0] float -1 run data get entity @s Pose.Head[0]
tag @e[tag=this_entity,limit=1] remove this_entity