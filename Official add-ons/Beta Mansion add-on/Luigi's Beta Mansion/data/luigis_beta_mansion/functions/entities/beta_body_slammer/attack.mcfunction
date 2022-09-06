scoreboard players add @s ActionTime 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0
execute at @s run function luigis_mansion:animations/twirler/attack

execute if entity @s[scores={ActionTime=1}] run playsound luigis_beta_mansion:entity.body_slammer.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=30}] run playsound luigis_mansion:entity.ghost.charge_up hostile @a[tag=same_room] ~ ~ ~ 1
teleport @s[scores={ActionTime=1..38}] ~ ~0.0025 ~
teleport @s[scores={ActionTime=39..40}] ~ ~-0.5475 ~
execute if entity @s[scores={ActionTime=40}] run playsound luigis_mansion:entity.ghost.earthquake hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={ActionTime=41}] run particle minecraft:dust 0.7 0.7 0.7 1 ~-0.5 ~0.5 ~-0.5 1 1 1 0 50 force
execute at @s[scores={ActionTime=41}] as @e[distance=..2,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
execute at @s[scores={ActionTime=41}] run effect give @a[distance=..2,scores={Invulnerable=0},tag=!spectator] minecraft:instant_damage 1 0 true
execute at @s[scores={ActionTime=41}] run scoreboard players set @a[distance=..2,scores={Invulnerable=0},tag=!spectator] ForcedDamage 4
execute at @s[scores={ActionTime=41}] as @a[distance=..2,scores={Invulnerable=0},tag=!spectator] run function luigis_mansion:entities/player/knockback/large
execute at @s[scores={ActionTime=41}] if entity @a[distance=..2,scores={Invulnerable=0},tag=!spectator] run tag @s add laugh
tag @s[scores={ActionTime=41},tag=!laugh] add complain
tag @s[scores={ActionTime=60}] remove attack
teleport @s[scores={ActionTime=60}] ~ ~1 ~
scoreboard players set @s[scores={ActionTime=60}] AnimationProg 0
scoreboard players set @s[scores={ActionTime=60}] ActionTime 0