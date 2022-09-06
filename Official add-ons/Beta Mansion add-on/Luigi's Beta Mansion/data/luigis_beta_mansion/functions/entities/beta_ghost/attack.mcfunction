scoreboard players add @s ActionTime 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0
execute at @s run function luigis_mansion:animations/ghost/attack

teleport @s[scores={ActionTime=1..39},tag=!dialog] ^ ^ ^0.0125
execute at @s[scores={ActionTime=1..20},tag=!dialog] positioned ^ ^ ^0.7 unless entity @e[tag=same_room,tag=!spectator,distance=..0.7,limit=1] run tag @s add stop_attack
execute if entity @s[scores={ActionTime=41}] run playsound luigis_mansion:entity.ghost.punch hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=41}] run playsound luigis_beta_mansion:entity.ghost.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=41..60}] if score #mirrored Selected matches 0 run teleport @s ~ ~ ~ ~-18 ~
execute if entity @s[scores={ActionTime=41..60}] if score #mirrored Selected matches 1 run teleport @s ~ ~ ~ ~18 ~
execute at @s[scores={ActionTime=41}] as @e[distance=..1,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
execute at @s[scores={ActionTime=41}] run effect give @a[distance=..1,scores={Invulnerable=0},tag=!spectator] minecraft:instant_damage 1 0 true
execute at @s[scores={ActionTime=41}] run scoreboard players set @a[distance=..1,scores={Invulnerable=0},tag=!spectator] ForcedDamage 4
execute at @s[scores={ActionTime=41}] as @a[distance=..1,scores={Invulnerable=0},tag=!spectator] run function luigis_mansion:entities/player/knockback/large
execute at @s[scores={ActionTime=41}] if entity @a[distance=..1,scores={Invulnerable=0},tag=!spectator] run tag @s add laugh
tag @s[scores={ActionTime=41},tag=!laugh] add complain
tag @s[scores={ActionTime=60}] remove attack
scoreboard players set @s[scores={ActionTime=60}] AnimationProg 0
scoreboard players set @s[scores={ActionTime=60}] ActionTime 0

scoreboard players set @s[tag=stop_attack] ActionTime 0
scoreboard players set @s[tag=stop_attack] AnimationProg 0
tag @s[tag=stop_attack] remove attack
tag @s[tag=stop_attack] remove stop_attack