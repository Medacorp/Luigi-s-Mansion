execute if entity @s[tag=dead] run playsound luigis_mansion:entity.spark.vacuumed hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dead] run loot spawn ~ ~ ~ loot luigis_mansion:entities/vacuumable/spark
execute if entity @s[tag=dead] run particle minecraft:dust 0.7 1 1 1 ~-0.1 ~ ~0.1 0.2 0.2 0.2 1 10
tag @s[tag=dead,tag=!element_death,scores={HurtTime=1..}] add explode

execute if entity @a[gamemode=!spectator,distance=..0.7,limit=1] if entity @s[tag=spawn] run function luigis_mansion:entities/spark/collide

execute if entity @s[tag=!spawn,tag=!turned] run function luigis_mansion:entities/spark/initial_rotation
scoreboard players operation #temp Room = @s Room
execute as @e[tag=spark,tag=spawn] if score @s Room = #temp Room run scoreboard players add #temp ActionTime 1
execute unless score #temp ActionTime matches 4.. unless entity @e[tag=spark,tag=spawn,distance=..0.7] run tag @s add spawn
scoreboard players reset #temp ActionTime
scoreboard players reset #temp Room

tag @s remove fleeing

data merge entity @s[tag=spawn,tag=!vacuumable] {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:87}}]}
tag @s[tag=spawn] add vacuumable
scoreboard players add @s[tag=spawn] SpawnTime 1
execute at @s[scores={SpawnTime=1..20}] if block ^ ^ ^0.3 #luigis_mansion:ghosts_ignore run teleport @s ^ ^ ^0.02
execute at @s[scores={SpawnTime=21..200}] if block ^ ^ ^0.3 #luigis_mansion:ghosts_ignore run teleport @s ^ ^ ^0.01
execute at @s[tag=spawn] if block ~ ~-0.01 ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~-0.01 ~
execute at @s[scores={Turn=0},tag=spawn] run function luigis_mansion:entities/spark/turn
tag @s[scores={SpawnTime=200}] add explode
execute if entity @s[tag=explode,tag=spawn] run summon minecraft:creeper ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.spark"}',Fuse:0s,ExplosionRadius:2b,Invulnerable:1b}
tag @s[tag=explode,tag=spawn] add dead
tag @s[tag=explode,tag=!spawn] remove explode
execute if entity @s[tag=dead] run teleport @s ~ -100 ~
scoreboard players remove @s[scores={Turn=1..},tag=spawn] Turn 1