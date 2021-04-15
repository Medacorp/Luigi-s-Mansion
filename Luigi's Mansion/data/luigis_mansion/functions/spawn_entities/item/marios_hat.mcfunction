summon minecraft:armor_stand ~ ~-1 ~ {Pose:{Head:[0.0f,0.0f,0.01f]},Marker:1b,Invisible:1b,Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:5,CustomModelData:26}}],Tags:["item","marios_item","hat","vacuumable","this_entity"],DisabledSlots:2039583}
loot spawn ~ ~ ~ loot luigis_mansion:gameplay/0_90
execute as @e[tag=this_entity,limit=1] run data modify entity @s Rotation[0] set from entity @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin"}},limit=1] Item.tag.Value
kill @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin"}}]
loot spawn ~ ~ ~ loot luigis_mansion:gameplay/0_3
execute if entity @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin",tag:{Value:1}}}] as @e[tag=this_entity,limit=1] at @s run teleport @s ~ ~ ~ ~90 ~
execute if entity @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin",tag:{Value:2}}}] as @e[tag=this_entity,limit=1] at @s run teleport @s ~ ~ ~ ~180 ~
execute if entity @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin",tag:{Value:3}}}] as @e[tag=this_entity,limit=1] at @s run teleport @s ~ ~ ~ ~-90 ~
kill @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin"}}]
loot spawn ~ ~ ~ loot luigis_mansion:gameplay/0_90
execute as @e[tag=this_entity,limit=1] run data modify entity @s Rotation[1] set from entity @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin"}},limit=1] Item.tag.Value
kill @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin"}}]
tag @e[tag=this_entity,limit=1] remove this_entity