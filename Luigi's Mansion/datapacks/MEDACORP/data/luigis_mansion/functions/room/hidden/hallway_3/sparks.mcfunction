summon minecraft:marker 714 11 -7 {Tags:["choice"]}
summon minecraft:marker 714 11 5 {Tags:["choice"]}
summon minecraft:marker 714 11 28 {Tags:["choice"]}
summon minecraft:marker 714 11 46 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s store result score @s Move if entity @e[distance=..1,nbt={data:{entity:{namespace:"luigis_mansion",id:"spark"}}}]
kill @e[type=minecraft:marker,tag=choice,scores={Move=2}]
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run function luigis_mansion:spawn_entities/vacuumable/spark
kill @e[type=minecraft:marker,tag=choice]