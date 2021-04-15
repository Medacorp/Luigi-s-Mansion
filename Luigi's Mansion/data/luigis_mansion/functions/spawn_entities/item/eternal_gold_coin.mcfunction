summon minecraft:armor_stand ~ ~-1.4 ~ {Pose:{Head:[-90.0f,0.0f,0.01f]},Marker:0b,NoGravity:1b,Invisible:1b,Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:5,CustomModelData:11}}],Tags:["item","eternal_gold_coin","gold_coin","vacuumable","bounce","this_entity"],DisabledSlots:2039583}
execute if predicate luigis_mansion:50_50 run data modify entity @e[tag=this_entity,limit=1] Pose.Head[0] set value 90.0f
loot spawn ~ ~ ~ loot luigis_mansion:gameplay/0_90
execute as @e[tag=this_entity,limit=1] run data modify entity @s Rotation[0] set from entity @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin"}},limit=1] Item.tag.Value
kill @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin"}}]
loot spawn ~ ~ ~ loot luigis_mansion:gameplay/0_3
execute if entity @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin",tag:{Value:1}}}] as @e[tag=this_entity,limit=1] at @s run teleport @s ~ ~ ~ ~90 ~
execute if entity @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin",tag:{Value:2}}}] as @e[tag=this_entity,limit=1] at @s run teleport @s ~ ~ ~ ~180 ~
execute if entity @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin",tag:{Value:3}}}] as @e[tag=this_entity,limit=1] at @s run teleport @s ~ ~ ~ ~-90 ~
kill @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin"}}]
scoreboard players set @e[tag=this_entity,limit=1] ActionTime 4
tag @e[tag=this_entity,limit=1] remove this_entity