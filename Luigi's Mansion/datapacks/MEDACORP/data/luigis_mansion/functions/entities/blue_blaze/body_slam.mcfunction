scoreboard players add @s ActionTime 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProgress 0
execute at @s run function luigis_mansion:animations/twirler/body_slam

execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.blue_blaze.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=30}] run playsound luigis_mansion:entity.ghost.charge_up hostile @a[tag=same_room] ~ ~ ~ 1
teleport @s[scores={ActionTime=1..40}] ^ ^ ^0.0125
execute if entity @s[scores={ActionTime=41..60}] if block ~ ~0.75 ~ #luigis_mansion:ghosts_ignore unless block ~ ~0.5 ~ #luigis_mansion:ghosts_ignore run playsound luigis_mansion:entity.ghost.body_slam hostile @a[tag=same_room] ~ ~ ~ 1
execute if block ~ ~0.75 ~ #luigis_mansion:ghosts_ignore run teleport @s[scores={ActionTime=41..60}] ~ ~-0.25 ~
execute at @s[scores={ActionTime=40..60}] as @e[distance=..2,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute at @s[scores={ActionTime=40..60}] if entity @a[distance=..2,scores={Invulnerable=0},tag=!spectator] run tag @s add laugh
execute at @s[scores={ActionTime=40..60}] run data modify storage luigis_mansion:data damage set value {method:"luigis_mansion:body_slam",amount:0,knockback:"large",attacker:-1,no_delete:1b}
execute at @s[scores={ActionTime=40..60}] run data modify storage luigis_mansion:data damage.amount set from entity @s ArmorItems[3].tag.damage.attack
execute at @s[scores={ActionTime=40..60}] store result storage luigis_mansion:data damage.attacker int 1 run scoreboard players get @s GhostNr
execute at @s[scores={ActionTime=40..60}] as @a[distance=..2,gamemode=!spectator] run function luigis_mansion:entities/player/damage
execute at @s[scores={ActionTime=40..60}] run data remove storage luigis_mansion:data damage
tag @s[scores={ActionTime=60},tag=!laugh] add complain
tag @s[scores={ActionTime=60}] remove attack
teleport @s[scores={ActionTime=60}] ~ ~1 ~
scoreboard players set @s[scores={ActionTime=60}] AnimationProgress 0
scoreboard players set @s[scores={ActionTime=60}] ActionTime 0