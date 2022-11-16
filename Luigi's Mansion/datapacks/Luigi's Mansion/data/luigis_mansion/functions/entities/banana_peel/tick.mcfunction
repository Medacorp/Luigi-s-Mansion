teleport @s[tag=!was_in_vacuum] ~ ~0.25 ~
teleport @s[tag=was_in_vacuum] ~ ~0.5 ~
execute unless entity @s[nbt={Pose:{Head:[0.01f]}}] run data merge entity @s {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute store result score @s HomeRot run data get entity @s Pose.Head[1]
execute at @s[tag=!was_in_vacuum] if block ~ ~-0.01 ~ #luigis_mansion:items_ignore store result entity @s Pose.Head[1] float 1 run scoreboard players add @s HomeRot 10
execute if entity @s[tag=was_in_vacuum] run data modify entity @s Pose.Head set value [90.0f,0.0f,0.0f]
scoreboard players add @s ActionTime 1
tag @s remove item_is_pulled
tag @s[scores={ActionTime=90}] add vacuumable
tag @s[scores={ActionTime=600},tag=!eternal] add dead
execute at @s[scores={ActionTime=..19},tag=thrown] unless block ~ ~0.3 ~ #luigis_mansion:items_ignore run scoreboard players set @s ActionTime 20
execute at @s[scores={ActionTime=..19},tag=thrown] if block ~ ~0.3 ~ #luigis_mansion:items_ignore run teleport @s ~ ~0.05 ~
execute at @s unless block ~ ~-0.01 ~ #luigis_mansion:items_ignore unless block ~ ~-0.01 ~ #minecraft:slabs[type=bottom] run tag @s add hit_floor
execute at @s if block ~ ~0.4 ~ #minecraft:slabs[type=bottom] run tag @s add hit_floor
tag @s[tag=hit_floor] remove thrown
execute at @s[tag=!hit_floor,tag=!thrown] run teleport @s ~ ~-0.1 ~
execute at @s[tag=!hit_floor,tag=thrown,scores={ActionTime=20..}] run teleport @s ~ ~-0.1 ~
execute at @s[tag=hit_floor] if block ~ ~0.5 ~ #minecraft:slabs[type=bottom] run teleport @s ~ ~0.01 ~
execute at @s[tag=hit_floor] unless block ~ ~ ~ #luigis_mansion:items_ignore unless block ~ ~0.4 ~ #minecraft:slabs[type=bottom] run teleport @s ~ ~0.01 ~
tag @s remove hit_floor
execute at @s[tag=thrown] if block ^ ^ ^0.3 #luigis_mansion:items_ignore run teleport @s ^ ^ ^0.05
execute at @s[tag=!dead] as @e[tag=same_room,tag=!spectator,distance=..0.7,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute at @s[tag=!dead] as @a[tag=same_room,tag=!spectator,distance=..0.7] rotated as @s rotated ~ 0 positioned ^ ^ ^10 run function luigis_mansion:entities/player/knockback/slip
execute at @s if entity @a[tag=same_room,tag=!spectator,distance=..0.7,limit=1] run tag @s add dead
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/1_tall
execute at @s run teleport @s[tag=!was_in_vacuum] ~ ~-0.25 ~
execute at @s run teleport @s[tag=was_in_vacuum] ~ ~-0.5 ~