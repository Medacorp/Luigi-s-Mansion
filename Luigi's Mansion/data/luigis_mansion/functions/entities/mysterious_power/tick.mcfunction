execute facing entity @p[tag=same_room,gamemode=!spectator] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s run function luigis_mansion:animations/boo/idle
execute if entity @s[scores={Room=1..}] run function #luigis_mansion:entities/mysterious_power/dialog

scoreboard players operation #temp Room = @s Room
execute as @e[tag=ghost] if score #temp Room = @s Room run tag @s add same_room_ghost
scoreboard players reset #temp Room
tag @e[tag=hidden,tag=same_room_ghost] add remove_from_existence
scoreboard players set @e[tag=same_room_ghost,tag=!vanish] ActionTime 0
scoreboard players set @e[tag=same_room_ghost,tag=!vanish] AnimationProg 0
tag @e[tag=same_room_ghost] add vanish
tag @e[tag=same_room_ghost] remove laugh
tag @e[tag=same_room_ghost] remove complain
tag @e[tag=same_room_ghost] remove attack
tag @e[tag=same_room_ghost] remove appear
tag @e[tag=same_room_ghost] remove same_room_ghost
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/1_tall