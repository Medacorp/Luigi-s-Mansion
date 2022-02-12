scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.ghost_guy.spawn hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=1}] as @e[tag=same_room,tag=gameboy_horror_location,distance=..5] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
execute if entity @s[scores={ActionTime=1}] as @a[tag=!spectator,distance=..5] run function luigis_mansion:entities/player/scare/normal
execute if entity @s[scores={ActionTime=1}] run function luigis_mansion:blocks/dust_no_sound
execute if score #mirrored Selected matches 0 run teleport @s[scores={ActionTime=1}] ~ ~2 ~ ~200 ~
execute if score #mirrored Selected matches 1 run teleport @s[scores={ActionTime=1}] ~ ~2 ~ ~-200 ~
execute if score #mirrored Selected matches 0 at @s run teleport @s ~ ~-0.1 ~ ~-10 ~
execute if score #mirrored Selected matches 1 at @s run teleport @s ~ ~-0.1 ~ ~10 ~
tag @s[scores={ActionTime=20}] remove appear
scoreboard players set @s[scores={ActionTime=20}] AnimationProg 0
scoreboard players set @s[scores={ActionTime=20}] ActionTime 0