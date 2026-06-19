teleport @s[tag=!hit_floor,tag=!move_up] ^ ^-0.2 ^
teleport @s[tag=hit_floor,tag=!move_up,scores={Move=..9}] ^ ^0.1 ^
teleport @s[tag=move_up] ^ ^0.1 ^
execute at @s run teleport @s[tag=boo] ^ ^ ^0.1
execute at @s if block ~ ~-1.95 ~ #luigis_mansion:ghosts_ignore if block ~ ~-2.95 ~ #luigis_mansion:ghosts_ignore run tag @s[tag=move_up] remove move_up
execute at @s unless block ~ ~-1.55 ~ #luigis_mansion:ghosts_ignore unless block ~ ~-1.35 ~ #luigis_mansion:ghosts_ignore run tag @s add move_up
execute at @s unless block ~ ~-1.55 ~ #luigis_mansion:ghosts_ignore if block ~ ~-1.35 ~ #luigis_mansion:ghosts_ignore run tag @s[tag=!move_up] add hit_floor
scoreboard players set @s[tag=!hit_floor] Move 0
scoreboard players add @s[tag=hit_floor] Move 1
execute if entity @s[tag=!spawned_particle,scores={Move=..10}] run particle minecraft:lava ~ ~-0.45 ~ 0 0 0 0 1
tag @s[tag=spawned_particle] add no_spawned_particle
tag @s remove spawned_particle
tag @s[tag=!spawned_particle,tag=!no_spawned_particle] add spawned_particle
tag @s remove no_spawned_particle
execute unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 5
execute if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 5
data modify storage luigis_mansion:data rotation set value [0.0f,0.0f,0.0f,1.0f]
execute in minecraft:overworld run summon minecraft:marker 0.0 0.0 0.0 {Tags:["temp","remove_from_existence"]}
execute store result entity @e[tag=temp,limit=1] Rotation[0] float -0.05 run scoreboard players get @s AnimationRotationY
execute as @e[tag=temp,limit=1] at @s positioned 0.0 0.0 0.0 run teleport @s ^ ^ ^1
execute store result storage luigis_mansion:data rotation[3] float 0.001 run data get entity @e[tag=temp,limit=1] Pos[2] 1000
execute as @e[tag=temp,limit=1] at @s positioned 0.001 0.0 0.0 run teleport @s ^ ^ ^-1
execute store result storage luigis_mansion:data rotation[1] float 0.001 run data get entity @e[tag=temp,limit=1] Pos[0] 1000
kill @e[tag=temp]
data modify entity @s transformation.left_rotation set from storage luigis_mansion:data rotation
data remove storage luigis_mansion:data rotation
scoreboard players set @s[scores={Move=..10},tag=in_fire] Move 10
tag @s[scores={Move=..10},tag=in_water] add dead
execute positioned ~ ~-1.45 ~ at @s[scores={Move=10},tag=!dead] run function luigis_mansion:entities/bomb/explode
execute if data entity @s[scores={Move=30},tag=hit] data.owner run function luigis_mansion:entities/ghost/owner_laugh with entity @s data
execute if data entity @s[scores={Move=30},tag=!hit] data.owner run function luigis_mansion:entities/ghost/owner_complain with entity @s data
tag @s[scores={Move=30}] add dead