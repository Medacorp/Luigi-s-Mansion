scoreboard players add @s ActionTime 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProgress 0
execute at @s run function luigis_mansion:animations/twirler/attack

execute if entity @s[scores={ActionTime=1}] run playsound e3_demo:entity.body_slammer.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=30}] run playsound luigis_mansion:entity.ghost.short_charge_up hostile @a[tag=same_room] ~ ~ ~ 1
teleport @s[scores={ActionTime=1..38}] ~ ~0.0025 ~
teleport @s[scores={ActionTime=39..40}] ~ ~-0.5475 ~
execute if entity @s[scores={ActionTime=40}] run playsound luigis_mansion:entity.ghost.body_slam hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={ActionTime=41}] run particle minecraft:dust 0.7 0.7 0.7 1 ~-0.5 ~0.5 ~-0.5 1 1 1 0 50 force
execute at @s[scores={ActionTime=41}] as @e[distance=..2,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute at @s[scores={ActionTime=41}] if entity @a[distance=..2,scores={Invulnerable=0},tag=!spectator] run tag @s add laugh
execute at @s[scores={ActionTime=41}] run data modify storage luigis_mansion:data damage set value {method:"luigis_mansion:earthquake",amount:0,knockback:"large",attacker:-1,no_delete:1b}
execute at @s[scores={ActionTime=41}] run data modify storage luigis_mansion:data damage.amount set from entity @s ArmorItems[3].tag.luigis_mansion.damage.attack
execute at @s[scores={ActionTime=41}] store result storage luigis_mansion:data damage.attacker int 1 run scoreboard players get @s GhostNr
execute at @s[scores={ActionTime=41}] as @a[distance=..2,gamemode=!spectator] run function luigis_mansion:entities/player/damage
execute at @s[scores={ActionTime=41}] run data remove storage luigis_mansion:data damage
tag @s[scores={ActionTime=41},tag=!laugh] add complain
tag @s[scores={ActionTime=60}] remove attack
teleport @s[scores={ActionTime=60}] ~ ~1 ~
scoreboard players set @s[scores={ActionTime=60}] AnimationProgress 0
scoreboard players set @s[scores={ActionTime=60}] ActionTime 0