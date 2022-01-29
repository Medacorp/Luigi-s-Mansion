scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.cinema_ghost.spawn hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=1}] as @e[tag=same_room,tag=gameboy_horror_location,distance=..5] run function luigis_mansion:entities/gameboy_horror_location/scare_player
execute if entity @s[scores={ActionTime=1}] as @a[tag=!spectator,distance=..5] run function luigis_mansion:entities/player/scare
execute if entity @s[scores={ActionTime=1}] run function luigis_mansion:blocks/dust_no_sound
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0
execute at @s run function luigis_mansion:animations/grabbing_ghost/appear
teleport @s[scores={ActionTime=1}] ~ ~2 ~
teleport @s[scores={ActionTime=2..11}] ~ ~-0.2 ~
tag @s[scores={ActionTime=20}] remove appear
scoreboard players set @s[scores={ActionTime=20}] AnimationProg 0
scoreboard players set @s[scores={ActionTime=20}] ActionTime 0
