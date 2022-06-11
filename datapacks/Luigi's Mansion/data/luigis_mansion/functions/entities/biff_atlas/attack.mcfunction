scoreboard players add @s ActionTime 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.biff_atlas.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=5}] run playsound luigis_mansion:entity.biff_atlas.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute as @e[distance=..1.6,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
effect give @a[distance=..1.6,scores={Invulnerable=0},tag=!spectator] minecraft:instant_damage 1 0 true
scoreboard players set @a[distance=..1.6,scores={Invulnerable=0},tag=!spectator] ForcedDamage 14
execute as @a[distance=..1.6,scores={Invulnerable=0},tag=!spectator] run function luigis_mansion:entities/player/knockback/large
execute if entity @a[distance=..1.6,scores={Invulnerable=0},tag=!spectator] run tag @s add laugh
function luigis_mansion:animations/biff_atlas/attack
tag @s[scores={ActionTime=10}] remove attack
scoreboard players set @s[scores={ActionTime=10}] ActionTime 0