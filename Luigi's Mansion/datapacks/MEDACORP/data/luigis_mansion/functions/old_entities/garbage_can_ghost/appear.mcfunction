scoreboard players add @s ActionTime 1
execute if score #mirrored Selected matches 0 at @s run teleport @s[scores={ActionTime=1}] ~ ~2 ~ ~-80 ~
execute if score #mirrored Selected matches 1 at @s run teleport @s[scores={ActionTime=1}] ~ ~2 ~ ~80 ~
execute if score #mirrored Selected matches 0 at @s run teleport @s[scores={ActionTime=2..11}] ~ ~-0.2 ~ ~8 ~ 
execute if score #mirrored Selected matches 1 at @s run teleport @s[scores={ActionTime=2..11}] ~ ~-0.2 ~ ~-8 ~ 
teleport @s[scores={ActionTime=12..13}] ~ ~0.4 ~
teleport @s[scores={ActionTime=14..15}] ~ ~-0.4 ~
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.garbage_can_ghost.spawn hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=1}] as @e[tag=same_room,tag=game_boy_horror_location,distance=..5] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute if entity @s[scores={ActionTime=1}] as @a[tag=!spectator,distance=..5] run function luigis_mansion:entities/player/animation/set/scare/normal
execute if entity @s[scores={ActionTime=1}] run function luigis_mansion:blocks/dust_no_sound
scoreboard players set @s[scores={ActionTime=1}] AnimationProgress 0
execute at @s run function luigis_mansion:old_animations/garbage_can_ghost/appear
tag @s[scores={ActionTime=20}] add attack
tag @s[scores={ActionTime=20}] remove appear
scoreboard players set @s[scores={ActionTime=20}] AnimationProgress 0
scoreboard players set @s[scores={ActionTime=20}] ActionTime 0
