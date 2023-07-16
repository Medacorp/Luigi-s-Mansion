teleport @s ~ ~1.1875 ~
execute at @s[tag=vacuumable,tag=!spit,tag=!can_spit_2] run particle minecraft:dust 1 0 0 1 ~ ~ ~ 0 0 0 1 1 normal @a[tag=same_room]
execute at @s[tag=vacuumable,tag=spit,tag=!can_spit_2] run particle minecraft:dust 0 1 0 1 ~ ~ ~ 0 0 0 1 1 normal @a[tag=same_room]
scoreboard players set #temp Move 20
scoreboard players set @s[tag=!vacuumable,tag=!move] SpawnTime 0
scoreboard players add @s[tag=vacuumable] SpawnTime 1
scoreboard players add @s[tag=move] SpawnTime 1
execute at @s[scores={SpawnTime=1},tag=vacuumable] run function luigis_mansion:entities/billiards_ball/rotate
execute at @s[tag=!in_vacuum,tag=vacuumable] run function luigis_mansion:entities/billiards_ball/move_forward
execute at @s[tag=move] run function luigis_mansion:entities/billiards_ball/move_forward
execute at @s[tag=move] run function luigis_mansion:entities/billiards_ball/move_forward
execute store result score @s HomeRotation run data get entity @s Pose.Head[0] 1
execute if entity @s[tag=!can_spit_2,tag=vacuumable] store result entity @s Pose.Head[0] float 1 run scoreboard players add @s HomeRotation 10
execute if entity @s[tag=move] store result entity @s Pose.Head[0] float 1 run scoreboard players add @s HomeRotation 20
execute at @s[tag=move,scores={SpawnTime=8}] run tag @e[tag=billiards_ball,distance=..2] add vacuumable
tag @s[tag=move,scores={SpawnTime=8}] add dead

execute at @s if entity @e[tag=same_room,tag=!spectator,tag=player,distance=..0.7,limit=1] if entity @s[tag=vacuumable,tag=!in_vacuum,tag=!can_spit_2,tag=!spit,tag=!dying,tag=!dead,tag=!captured,tag=!removed_from_existence] run function luigis_mansion:entities/billiards_ball/collide

execute at @s[tag=collision] run function luigis_mansion:entities/billiards_ball/back_to_start
execute at @s[tag=in_vacuum] unless entity @a[distance=..1.5,tag=!spectator,tag=vacuuming] facing entity @p[tag=!spectator,tag=player,tag=vacuuming] feet if block ^ ^ ^0.3 #luigis_mansion:all_ignore run teleport @s ^ ^ ^0.3 ~ ~
execute at @s[tag=in_vacuum] unless entity @a[distance=..1.5,tag=!spectator,tag=vacuuming] facing entity @p[tag=!spectator,tag=player,tag=vacuuming] feet unless block ^ ^ ^0.3 #luigis_mansion:all_ignore rotated ~ 0 if block ^ ^ ^0.3 #luigis_mansion:all_ignore run teleport @s ^ ^ ^0.3 ~ ~
execute at @s[tag=in_vacuum] unless entity @a[distance=..1.5,tag=!spectator,tag=vacuuming] facing entity @p[tag=!spectator,tag=player,tag=vacuuming] feet unless block ^ ^ ^0.3 #luigis_mansion:all_ignore rotated ~ 0 unless block ^ ^ ^0.3 #luigis_mansion:all_ignore run teleport @s ~ ~ ~ ~ ~
execute at @s[tag=in_vacuum] at @p[distance=..1.5,tag=!spectator,tag=player,tag=vacuuming] positioned ~ ~0.5 ~ run teleport @s ^ ^ ^0.2 ~ ~
execute at @s if entity @p[distance=..1.5,tag=!spectator,tag=player,tag=vacuuming] run tag @s[tag=in_vacuum] add can_spit
execute at @s if entity @p[distance=..1.5,tag=!spectator,tag=player,tag=vacuuming] run tag @s[tag=in_vacuum] add can_spit_2
tag @s[tag=!can_spit] remove can_spit_2
tag @s[tag=!in_vacuum,tag=can_spit_2] add spit
tag @s[tag=!in_vacuum] remove can_spit
tag @s[tag=in_vacuum] remove in_vacuum
execute at @s run teleport @s ~ ~-1.1875 ~
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/1_tall