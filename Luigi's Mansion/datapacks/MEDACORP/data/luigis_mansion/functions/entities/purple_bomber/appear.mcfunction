scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.purple_bomber.spawn hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=1}] as @e[tag=same_room,tag=game_boy_horror_location,distance=..5] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute if entity @s[scores={ActionTime=1}] as @a[tag=!spectator,distance=..5] run function luigis_mansion:entities/player/scare/normal
execute if entity @s[scores={ActionTime=1}] positioned ~ ~-3 ~ run function luigis_mansion:blocks/dust_no_sound
scoreboard players set @s[scores={ActionTime=1}] AnimationProgress 0
execute at @s run function luigis_mansion:old_animations/ceiling_ghost/appear
teleport @s[scores={ActionTime=1}] ^ ^5.1 ^2.24
teleport @s[scores={ActionTime=5..}] ^ ^-0.3 ^-0.14
tag @s[scores={ActionTime=20,AttackType=0}] add laugh
tag @s[scores={ActionTime=20,AttackType=1}] add attack
tag @s[scores={ActionTime=20}] remove appear
scoreboard players set @s[scores={ActionTime=20}] AnimationProgress 0
scoreboard players set @s[scores={ActionTime=20}] ActionTime 0