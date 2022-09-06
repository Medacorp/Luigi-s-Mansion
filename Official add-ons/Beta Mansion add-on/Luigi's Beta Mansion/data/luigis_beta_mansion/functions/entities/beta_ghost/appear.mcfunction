scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_beta_mansion:entity.ghost.spawn hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=1}] as @e[tag=same_room,tag=gameboy_horror_location,distance=..5] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
execute if entity @s[scores={ActionTime=1}] as @a[tag=!spectator,distance=..5] run function luigis_mansion:entities/player/scare/normal
execute if entity @s[scores={ActionTime=1}] run function luigis_mansion:blocks/dust_no_sound
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0
execute at @s run function luigis_mansion:animations/ghost/appear
tag @s[scores={ActionTime=20}] remove appear
scoreboard players set @s[scores={ActionTime=20}] AnimationProg 0
scoreboard players set @s[scores={ActionTime=20}] ActionTime 0
