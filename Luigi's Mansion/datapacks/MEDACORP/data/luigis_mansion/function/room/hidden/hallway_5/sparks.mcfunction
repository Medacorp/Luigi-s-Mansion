summon minecraft:marker 680 11 42 {Tags:["choice"]}
summon minecraft:marker 680 11 21 {Tags:["choice"]}
summon minecraft:marker 680 11 16 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s store result score @s Move if entity @e[distance=..1,nbt={data:{entity:{namespace:"luigis_mansion",id:"spark"}}}]
kill @e[type=minecraft:marker,tag=choice,scores={Move=2}]
data modify storage luigis_mansion:data entity set value {room:13}
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run function luigis_mansion:spawn_entities/vacuumable/spark
kill @e[type=minecraft:marker,tag=choice]