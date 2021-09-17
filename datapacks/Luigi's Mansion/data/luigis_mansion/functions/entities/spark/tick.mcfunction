execute if entity @s[tag=dead] run playsound luigis_mansion:entity.spark.vacuumed hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dead] run particle minecraft:dust 0.7 1 1 1 ~-0.1 ~ ~0.1 0.2 0.2 0.2 1 10
execute if entity @s[tag=dead] run function luigis_mansion:entities/spark/drop_loot
tag @s[tag=dead,tag=!element_death,scores={HurtTime=1..}] add explode

execute if entity @e[tag=same_room,tag=!spectator,distance=..0.7,limit=1] if entity @s[tag=visible] run function luigis_mansion:entities/spark/collide

execute if entity @s[tag=!visible,tag=!turned] run function luigis_mansion:entities/spark/initial_rotation
execute store result score #temp Room run scoreboard players get @s Room
execute as @e[tag=spark,tag=visible] if score @s Room = #temp Room run scoreboard players add #temp ActionTime 1
execute unless score #temp ActionTime matches 2.. unless entity @e[tag=spark,tag=visible,distance=..0.7] run tag @s[scores={Room=-2147483648..}] add visible
scoreboard players reset #temp ActionTime
scoreboard players reset #temp Room

tag @s remove fleeing

data modify entity @s[tag=visible,scores={SpawnTime=1}] ArmorItems[3].id set value "minecraft:diamond_pickaxe"
scoreboard players add @s[tag=visible] SpawnTime 1
execute at @s[scores={SpawnTime=1..}] if block ^ ^ ^0.3 #luigis_mansion:ghosts_ignore if block ^ ^1 ^0.3 #luigis_mansion:ghosts_ignore run teleport @s ^ ^ ^0.02
execute at @s[tag=visible] if block ~ ~-0.01 ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~-0.01 ~
execute at @s[scores={Turn=0},tag=visible] run function luigis_mansion:entities/spark/turn
data modify entity @s[scores={SpawnTime=140}] ArmorItems[3].tag.CustomModelData set value 106
tag @s[scores={SpawnTime=200}] add explode
execute if entity @s[tag=explode,tag=visible] run summon minecraft:creeper ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.spark"}',Fuse:0s,ExplosionRadius:2b,Invulnerable:1b,Silent:1b}
execute if entity @s[tag=explode,tag=visible] run playsound minecraft:entity.generic.explode hostile @s ~ ~ ~ 2
tag @s[tag=explode,tag=visible] add dead
tag @s[tag=explode,tag=!visible] remove explode
execute if entity @s[tag=dead] run teleport @s ~ -100 ~
scoreboard players remove @s[scores={Turn=1..},tag=visible] Turn 1
execute at @s[tag=visible,scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/1_tall