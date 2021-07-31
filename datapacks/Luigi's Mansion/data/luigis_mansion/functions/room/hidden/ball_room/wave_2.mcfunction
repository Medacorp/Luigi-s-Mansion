execute positioned 699 11 69.0 rotated 0 0 run function luigis_mansion:spawn_entities/portrait_ghost/floating_whirlindas
tag @e[scores={Room=17},tag=ball_floor] add enabled
execute as @a[scores={Room=17},gamemode=!spectator] run function luigis_mansion:other/music/set/ball_room
scoreboard players set @a[scores={Room=17},gamemode=!spectator] Music 0
scoreboard players set #ball_room Wave 2