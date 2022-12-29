data modify storage luigis_mansion:data entity{rotation:[0.0f,-90.0f],show_health:0b,room:0,speed:30,other_data:["cutscene","up","down"]}
execute store result storage luigis_mansion:data entity.room int 1 run scoreboard players get @s Room
summon minecraft:marker ~ ~ ~ {Tags:["this_entity","remove_from_existence"]}
loot spawn ~ ~ ~ loot luigis_mansion:gameplay/0_90
data modify entity @e[tag=this_entity,limit=1] Rotation[0] set from entity @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin"}},limit=1] Item.tag.Value
kill @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin"}}]
loot spawn ~ ~ ~ loot luigis_mansion:gameplay/0_3
execute if entity @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin",tag:{Value:1}}}] as @e[tag=this_entity,limit=1] at @s run teleport @s ~ ~ ~ ~90 ~
execute if entity @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin",tag:{Value:2}}}] as @e[tag=this_entity,limit=1] at @s run teleport @s ~ ~ ~ ~180 ~
execute if entity @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin",tag:{Value:3}}}] as @e[tag=this_entity,limit=1] at @s run teleport @s ~ ~ ~ ~-90 ~
kill @e[distance=..0.7,type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin"}}]
data modify storage luigis_mansion:data entity.rotation[0] set from entity @e[tag=this_entity,limit=1] Rotation[0]
kill @e[tag=this_entity,limit=1]
function luigis_mansion:spawn_entities/ghost/boo