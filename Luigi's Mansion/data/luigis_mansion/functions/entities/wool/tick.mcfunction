teleport @s ~ ~1.1875 ~
execute if entity @s[tag=spit] run scoreboard players set #temp Move 6
execute if entity @s[tag=!spit] run scoreboard players set #temp Move 2
scoreboard players set @s[tag=!vacuumable] SpawnTime 0
scoreboard players add @s[tag=vacuumable] SpawnTime 1
execute at @s[tag=spit] run function luigis_mansion:entities/wool/spit
execute at @s[tag=!in_vacuum,tag=!can_spit_2,tag=vacuumable,tag=!spit] run function luigis_mansion:entities/wool/path
execute store result score @s HomeRot run data get entity @s Pose.Head[0] 1
execute if entity @s[tag=!can_spit_2,tag=vacuumable] store result entity @s Pose.Head[0] float 1 run scoreboard players add @s HomeRot 10
tag @s[tag=collision,tag=spit] add dead
tag @s[tag=collision] remove spit
tag @s[tag=collision] remove collision
execute at @s[tag=in_vacuum] at @p[distance=..1.5,gamemode=!spectator,tag=vacuuming] positioned ~ ~0.5 ~ unless block ~ ~ ~ #minecraft:doors run teleport @s ^ ^ ^0.2 ~ ~
execute at @s if entity @p[distance=..1.5,gamemode=!spectator,tag=vacuuming] run tag @s[tag=in_vacuum] add can_spit
execute at @s if entity @p[distance=..1.5,gamemode=!spectator,tag=vacuuming] run tag @s[tag=in_vacuum] add can_spit_2
tag @s[tag=!can_spit] remove can_spit_2
tag @s[tag=!in_vacuum,tag=can_spit_2] add spit
tag @s[tag=!in_vacuum] remove can_spit
tag @s[tag=in_vacuum] remove in_vacuum
execute at @s run teleport @s ~ ~-1.1875 ~