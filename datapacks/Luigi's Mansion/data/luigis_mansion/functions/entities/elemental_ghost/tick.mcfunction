execute if entity @s[tag=dead,tag=fire] as @p[tag=!spectator,tag=vacuuming] run function luigis_mansion:items/poltergust_3000/fire_element
execute if entity @s[tag=dead,tag=water] as @p[tag=!spectator,tag=vacuuming] run function luigis_mansion:items/poltergust_3000/water_element
execute if entity @s[tag=dead,tag=ice] as @p[tag=!spectator,tag=vacuuming] run function luigis_mansion:items/poltergust_3000/ice_element
execute if entity @s[tag=dead] run function luigis_mansion:entities/elemental_ghost/drop_loot
scoreboard players add @s SpawnTime 1
execute if entity @s[scores={SpawnTime=1}] run function luigis_mansion:entities/elemental_ghost/initial_rotation
execute at @s[scores={SpawnTime=1..20}] run function luigis_mansion:animations/elemental_ghost/spawn
execute at @s[scores={SpawnTime=1..20}] if block ~ ~0.4 ~ #luigis_mansion:item_pull_ignore run teleport @s ~ ~0.1 ~
execute at @s[scores={SpawnTime=1..20}] if block ^ ^ ^0.3 #luigis_mansion:item_pull_ignore run teleport @s ^ ^ ^0.02
execute at @s[scores={SpawnTime=21..60}] if block ^ ^ ^0.3 #luigis_mansion:item_pull_ignore run teleport @s ^ ^ ^0.01
execute at @s[scores={SpawnTime=21..40}] if block ~ ~0.4 ~ #luigis_mansion:item_pull_ignore run teleport @s ~ ~-0.01 ~
execute at @s[scores={SpawnTime=41..60}] if block ~ ~0.4 ~ #luigis_mansion:item_pull_ignore run teleport @s ~ ~0.01 ~
execute at @s[scores={SpawnTime=21..60,Turn=0}] run function luigis_mansion:entities/elemental_ghost/turn
execute at @s[tag=fire,scores={SpawnTime=..60}] run particle minecraft:flame ~ ~0.8 ~ 0 0 0 0 1
execute at @s[tag=water,scores={SpawnTime=..60}] run particle minecraft:rain ~ ~0.8 ~ 0 0 0 0 1
execute at @s[tag=ice,scores={SpawnTime=..60}] run particle minecraft:firework ~ ~0.8 ~ 0 0 0 0 1
execute if entity @s[tag=hurt_elemental_ghost,tag=!was_hurt] run scoreboard players set @s SpawnTime 80
execute if entity @s[tag=fire,tag=hurt_elemental_ghost,tag=!was_hurt] run playsound luigis_mansion:entity.fire_elemental_ghost.hurt hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=water,tag=hurt_elemental_ghost,tag=!was_hurt] run playsound luigis_mansion:entity.water_elemental_ghost.hurt hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=ice,tag=hurt_elemental_ghost,tag=!was_hurt] run playsound luigis_mansion:entity.ice_elemental_ghost.hurt hostile @a[tag=same_room] ~ ~ ~ 1
data merge entity @s[tag=fire,tag=hurt_elemental_ghost,tag=!was_hurt] {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:108}}]}
data merge entity @s[tag=water,tag=hurt_elemental_ghost,tag=!was_hurt] {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:110}}]}
data merge entity @s[tag=ice,tag=hurt_elemental_ghost,tag=!was_hurt] {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:112}}]}
tag @s[tag=hurt_elemental_ghost] add was_hurt
execute at @s[scores={SpawnTime=80..},tag=!bounce] if block ~ ~-0.1 ~ #luigis_mansion:item_pull_ignore run teleport @s ~ ~-0.1 ~
execute at @s[scores={SpawnTime=80..},tag=bounce] if block ~ ~0.4 ~ #luigis_mansion:item_pull_ignore run teleport @s ~ ~0.1 ~
execute at @s[scores={SpawnTime=80..}] if block ~ ~-0.7 ~ #luigis_mansion:item_pull_ignore run tag @s remove bounce
execute at @s[scores={SpawnTime=80..},tag=fire,tag=!bounce] unless block ~ ~-0.1 ~ #luigis_mansion:item_pull_ignore run playsound luigis_mansion:entity.fire_elemental_ghost.bounce hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={SpawnTime=80..},tag=water,tag=!bounce] unless block ~ ~-0.1 ~ #luigis_mansion:item_pull_ignore run playsound luigis_mansion:entity.water_elemental_ghost.bounce hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={SpawnTime=80..},tag=ice,tag=!bounce] unless block ~ ~-0.1 ~ #luigis_mansion:item_pull_ignore run playsound luigis_mansion:entity.ice_elemental_ghost.bounce hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={SpawnTime=80..}] unless block ~ ~-0.1 ~ #luigis_mansion:item_pull_ignore run tag @s add bounce
tag @s[scores={SpawnTime=280},tag=!normal_death] add dead
scoreboard players set @s[scores={SpawnTime=60}] SpawnTime 20
scoreboard players remove @s Turn 1
execute if entity @s[tag=!dead,tag=!was_hurt,scores={SpawnTime=21..}] positioned ~ ~0.8 ~ if entity @e[tag=same_room,tag=!spectator,distance=..0.7,limit=1] run function luigis_mansion:entities/elemental_ghost/attack
execute if entity @s[tag=!dead,tag=!was_hurt,scores={SpawnTime=21..}] positioned ~ ~-0.2 ~ if entity @e[tag=same_room,tag=!spectator,distance=..0.7,limit=1] run function luigis_mansion:entities/elemental_ghost/attack
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/1_tall