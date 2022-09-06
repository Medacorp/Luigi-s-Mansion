scoreboard players add @s ActionTime 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0
execute at @s run function luigis_mansion:animations/twirler/body_slam

execute if entity @s[scores={ActionTime=1}] run playsound luigis_beta_mansion:entity.body_slammer.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=30}] run playsound luigis_mansion:entity.ghost.charge_up hostile @a[tag=same_room] ~ ~ ~ 1
teleport @s[scores={ActionTime=1..40}] ^ ^ ^0.0125
execute if entity @s[scores={ActionTime=41..60}] if block ~ ~0.75 ~ #luigis_mansion:ghosts_ignore unless block ~ ~0.5 ~ #luigis_mansion:ghosts_ignore run playsound luigis_mansion:entity.ghost.body_slam hostile @a[tag=same_room] ~ ~ ~ 1
execute if block ~ ~0.75 ~ #luigis_mansion:ghosts_ignore run teleport @s[scores={ActionTime=41..60}] ~ ~-0.25 ~
execute at @s[scores={ActionTime=40..60}] as @e[distance=..2,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
execute at @s[scores={ActionTime=40..60}] run effect give @a[distance=..2,scores={Invulnerable=0},tag=!spectator] minecraft:instant_damage 1 0 true
execute at @s[scores={ActionTime=40..60}] run scoreboard players set @a[distance=..2,scores={Invulnerable=0},tag=!spectator] ForcedDamage 4
execute at @s[scores={ActionTime=40..60}] as @a[distance=..2,scores={Invulnerable=0},tag=!spectator] run function luigis_mansion:entities/player/knockback/large
execute at @s[scores={ActionTime=40..60}] if entity @a[distance=..2,scores={Invulnerable=0},tag=!spectator] run tag @s add laugh
tag @s[scores={ActionTime=60},tag=!laugh] add complain
tag @s[scores={ActionTime=60}] remove attack
teleport @s[scores={ActionTime=60}] ~ ~1 ~
scoreboard players set @s[scores={ActionTime=60}] AnimationProg 0
scoreboard players set @s[scores={ActionTime=60}] ActionTime 0