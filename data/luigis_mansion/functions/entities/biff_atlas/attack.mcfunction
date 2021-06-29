scoreboard players add @s ActionTime 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.biff_atlas.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute as @e[distance=..1.6,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
effect give @a[distance=..1.6,gamemode=!spectator] minecraft:instant_damage 1 0 true
scoreboard players set @a[distance=..1.6,gamemode=!spectator] ForcedDamage 4
execute if entity @a[distance=..1.6,gamemode=!spectator] run tag @s add laugh
function luigis_mansion:animations/biff_atlas/attack
tag @s[scores={ActionTime=10}] remove attack
scoreboard players set @s[scores={ActionTime=10}] ActionTime 0