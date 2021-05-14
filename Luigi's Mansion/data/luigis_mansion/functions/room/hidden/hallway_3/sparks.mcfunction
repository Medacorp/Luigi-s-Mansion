summon minecraft:marker 714 21 -7 {Tags:["choice"]}
summon minecraft:marker 714 21 5 {Tags:["choice"]}
summon minecraft:marker 714 21 28 {Tags:["choice"]}
summon minecraft:marker 714 21 46 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s store result score @s Move if entity @e[distance=..1,tag=spark]
kill @e[type=minecraft:marker,tag=choice,scores={Move=2}]
tag @e[type=minecraft:marker,tag=choice,limit=1,sort=random] add selected
execute at @e[type=minecraft:marker,tag=choice,tag=selected,limit=1] run function luigis_mansion:spawn_entities/vacuumable/spark
kill @e[type=minecraft:marker,tag=choice]