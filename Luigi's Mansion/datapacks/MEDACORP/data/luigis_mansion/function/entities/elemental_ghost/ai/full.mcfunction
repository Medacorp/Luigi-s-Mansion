scoreboard players add @s SpawnTime 1
scoreboard players set @s TargetTask 4
execute if entity @s[scores={SpawnTime=1}] run function luigis_mansion:entities/elemental_ghost/spawn_sound
data remove entity @s[scores={SpawnTime=21}] data.animation
execute at @s[scores={SpawnTime=1..20}] if block ~ ~2.2 ~ #luigis_mansion:item_pull_ignore run teleport @s ~ ~0.1 ~
execute at @s[scores={SpawnTime=1..20}] if block ^ ^ ^0.3 #luigis_mansion:item_pull_ignore run teleport @s ^ ^ ^0.01
execute at @s[scores={SpawnTime=21..40}] if block ~ ~0.4 ~ #luigis_mansion:item_pull_ignore run teleport @s ~ ~-0.01 ~
execute at @s[scores={SpawnTime=41..}] if block ~ ~2.2 ~ #luigis_mansion:item_pull_ignore run teleport @s ~ ~0.01 ~
scoreboard players set @s[scores={SpawnTime=60}] SpawnTime 20
execute at @s[tag=fire] run particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0 1
execute at @s[tag=water] run particle minecraft:rain ~ ~ ~ 0.1 0.1 0.1 0 1
execute at @s[tag=ice] run particle minecraft:firework ~ ~ ~ 0.1 0.1 0.1 0 1
data modify entity @s[tag=in_vacuum] data.animation set value {namespace:"luigis_mansion",id:"hurt"}
execute if entity @s[tag=in_vacuum] run scoreboard players set @s SpawnTime 80
execute if entity @s[tag=fire,tag=in_vacuum] run playsound luigis_mansion:entity.fire_elemental_ghost.hurt hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=water,tag=in_vacuum] run playsound luigis_mansion:entity.water_elemental_ghost.hurt hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=ice,tag=in_vacuum] run playsound luigis_mansion:entity.ice_elemental_ghost.hurt hostile @a[tag=same_room] ~ ~ ~ 1

execute if entity @s[tag=!dead,tag=!in_vacuum,scores={SpawnTime=20..}] positioned ~ ~0.8 ~ if entity @e[tag=same_room,tag=luigi,distance=..0.7,limit=1] run function luigis_mansion:entities/elemental_ghost/attack
execute if entity @s[tag=!dead,tag=!in_vacuum,scores={SpawnTime=20..}] positioned ~ ~-0.2 ~ if entity @e[tag=same_room,tag=luigi,distance=..0.7,limit=1] run function luigis_mansion:entities/elemental_ghost/attack