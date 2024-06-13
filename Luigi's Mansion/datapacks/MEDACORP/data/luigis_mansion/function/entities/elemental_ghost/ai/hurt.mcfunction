scoreboard players set @s TargetTask 0
scoreboard players add @s SpawnTime 1
execute at @s[tag=!bounce] run teleport @s ~ ~-0.1 ~
execute at @s[tag=bounce] if block ~ ~0.8 ~ #luigis_mansion:item_pull_ignore run teleport @s ~ ~0.1 ~
execute at @s if block ~ ~ ~ #luigis_mansion:item_pull_ignore unless block ~ ~ ~ #minecraft:slabs[type=bottom] run tag @s remove bounce
execute at @s if block ~ ~ ~ #minecraft:slabs[type=bottom] if block ~ ~-0.4 ~ #minecraft:slabs[type=bottom] run tag @s remove bounce
execute at @s[tag=fire,tag=!bounce] unless block ~ ~0.4 ~ #luigis_mansion:item_pull_ignore unless block ~ ~0.4 ~ #minecraft:slabs run playsound luigis_mansion:entity.fire_elemental_ghost.bounce hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s[tag=fire,tag=!bounce] if block ~ ~0.4 ~ #minecraft:slabs[type=bottom] unless block ~ ~-0.1 ~ #minecraft:slabs[type=bottom] run playsound luigis_mansion:entity.fire_elemental_ghost.bounce hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s[tag=water,tag=!bounce] unless block ~ ~0.4 ~ #luigis_mansion:item_pull_ignore unless block ~ ~0.4 ~ #minecraft:slabs run playsound luigis_mansion:entity.water_elemental_ghost.bounce hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s[tag=water,tag=!bounce] if block ~ ~0.4 ~ #minecraft:slabs[type=bottom] unless block ~ ~-0.1 ~ #minecraft:slabs[type=bottom] run playsound luigis_mansion:entity.water_elemental_ghost.bounce hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s[tag=ice,tag=!bounce] unless block ~ ~0.4 ~ #luigis_mansion:item_pull_ignore unless block ~ ~0.4 ~ #minecraft:slabs run playsound luigis_mansion:entity.ice_elemental_ghost.bounce hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s[tag=ice,tag=!bounce] if block ~ ~0.4 ~ #minecraft:slabs[type=bottom] unless block ~ ~-0.1 ~ #minecraft:slabs[type=bottom] run playsound luigis_mansion:entity.ice_elemental_ghost.bounce hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s unless block ~ ~0.4 ~ #luigis_mansion:item_pull_ignore unless block ~ ~0.4 ~ #minecraft:slabs run tag @s add bounce
execute at @s if block ~ ~0.4 ~ #minecraft:slabs[type=bottom] unless block ~ ~-0.1 ~ #minecraft:slabs[type=bottom] run tag @s add bounce
tag @s[scores={SpawnTime=280}] add remove_from_existence
execute if entity @s[tag=dead,tag=fire] as @p[tag=!spectator,tag=player,tag=vacuuming] run function luigis_mansion:items/poltergust_3000/fire_element
execute if entity @s[tag=dead,tag=water] as @p[tag=!spectator,tag=player,tag=vacuuming] run function luigis_mansion:items/poltergust_3000/water_element
execute if entity @s[tag=dead,tag=ice] as @p[tag=!spectator,tag=player,tag=vacuuming] run function luigis_mansion:items/poltergust_3000/ice_element