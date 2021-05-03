execute if entity @s[tag=dead] run playsound luigis_mansion:entity.spark.vacuumed hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dead] run loot spawn ~ ~ ~ loot luigis_mansion:entities/vacuumable/spark
execute if entity @s[tag=dead] run particle minecraft:dust 0.7 1 1 1 ~-0.1 ~ ~0.1 0.2 0.2 0.2 1 10
tag @s[tag=dead,tag=!element_death,scores={HurtTime=1..}] add explode

execute if entity @a[gamemode=!spectator,distance=..0.7,limit=1] if entity @s[tag=visible] run function luigis_mansion:entities/spark/collide

execute if entity @s[tag=!visible,tag=!turned] run function luigis_mansion:entities/spark/initial_rotation
scoreboard players operation #temp Room = @s Room
execute as @e[tag=spark,tag=visible] if score @s Room = #temp Room run scoreboard players add #temp ActionTime 1
execute unless score #temp ActionTime matches 4.. unless entity @e[tag=spark,tag=visible,distance=..0.7] run tag @s add visible
scoreboard players reset #temp ActionTime
scoreboard players reset #temp Room

tag @s remove fleeing

data merge entity @s[tag=visible,scores={SpawnTime=1}] {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:87}}]}
scoreboard players add @s[tag=visible] SpawnTime 1
execute at @s[scores={SpawnTime=1..20}] if block ^ ^ ^0.3 #luigis_mansion:ghosts_ignore run teleport @s ^ ^ ^0.02
execute at @s[scores={SpawnTime=21..200}] if block ^ ^ ^0.3 #luigis_mansion:ghosts_ignore run teleport @s ^ ^ ^0.01
execute at @s[tag=visible] if block ~ ~-0.01 ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~-0.01 ~
execute at @s[scores={Turn=0},tag=visible] run function luigis_mansion:entities/spark/turn
data modify entity @s[scores={SpawnTime=140}] {ArmorItems:[{},{},{},{}]}
data modify entity @s[scores={SpawnTime=142}] {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:87}}]}
data modify entity @s[scores={SpawnTime=144}] {ArmorItems:[{},{},{},{}]}
data modify entity @s[scores={SpawnTime=146}] {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:87}}]}
data modify entity @s[scores={SpawnTime=148}] {ArmorItems:[{},{},{},{}]}
data modify entity @s[scores={SpawnTime=150}] {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:87}}]}
data modify entity @s[scores={SpawnTime=152}] {ArmorItems:[{},{},{},{}]}
data modify entity @s[scores={SpawnTime=154}] {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:87}}]}
data modify entity @s[scores={SpawnTime=156}] {ArmorItems:[{},{},{},{}]}
data modify entity @s[scores={SpawnTime=158}] {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:87}}]}
data modify entity @s[scores={SpawnTime=160}] {ArmorItems:[{},{},{},{}]}
data modify entity @s[scores={SpawnTime=162}] {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:87}}]}
data modify entity @s[scores={SpawnTime=164}] {ArmorItems:[{},{},{},{}]}
data modify entity @s[scores={SpawnTime=166}] {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:87}}]}
data modify entity @s[scores={SpawnTime=168}] {ArmorItems:[{},{},{},{}]}
data modify entity @s[scores={SpawnTime=170}] {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:87}}]}
data modify entity @s[scores={SpawnTime=172}] {ArmorItems:[{},{},{},{}]}
data modify entity @s[scores={SpawnTime=174}] {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:87}}]}
data modify entity @s[scores={SpawnTime=176}] {ArmorItems:[{},{},{},{}]}
data modify entity @s[scores={SpawnTime=178}] {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:87}}]}
data modify entity @s[scores={SpawnTime=180}] {ArmorItems:[{},{},{},{}]}
data modify entity @s[scores={SpawnTime=182}] {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:87}}]}
data modify entity @s[scores={SpawnTime=184}] {ArmorItems:[{},{},{},{}]}
data modify entity @s[scores={SpawnTime=186}] {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:87}}]}
data modify entity @s[scores={SpawnTime=188}] {ArmorItems:[{},{},{},{}]}
data modify entity @s[scores={SpawnTime=190}] {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:87}}]}
data modify entity @s[scores={SpawnTime=192}] {ArmorItems:[{},{},{},{}]}
data modify entity @s[scores={SpawnTime=194}] {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:87}}]}
data modify entity @s[scores={SpawnTime=196}] {ArmorItems:[{},{},{},{}]}
data modify entity @s[scores={SpawnTime=198}] {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:87}}]}
tag @s[scores={SpawnTime=200}] add explode
execute if entity @s[tag=explode,tag=visible] run summon minecraft:creeper ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.spark"}',Fuse:0s,ExplosionRadius:2b,Invulnerable:1b,Silent:1b}
execute if entity @s[tag=explode,tag=visible] run playsound minecraft:entity.generic.explode hostile @s ~ ~ ~ 2
tag @s[tag=explode,tag=visible] add dead
tag @s[tag=explode,tag=!visible] remove explode
execute if entity @s[tag=dead] run teleport @s ~ -100 ~
scoreboard players remove @s[scores={Turn=1..},tag=visible] Turn 1