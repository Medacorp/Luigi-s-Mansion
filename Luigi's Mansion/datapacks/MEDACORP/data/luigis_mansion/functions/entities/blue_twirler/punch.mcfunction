scoreboard players add @s ActionTime 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProgress 0
execute at @s run function luigis_mansion:old_animations/twirler/punch

teleport @s[scores={ActionTime=1..39}] ^ ^ ^0.0125
execute if entity @s[scores={ActionTime=41}] run playsound luigis_mansion:entity.ghost.punch hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=41}] run playsound luigis_mansion:entity.blue_twirler.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=41..60}] if score #mirrored Selected matches 0 run teleport @s ~ ~ ~ ~-18 ~
execute if entity @s[scores={ActionTime=41..60}] if score #mirrored Selected matches 1 run teleport @s ~ ~ ~ ~18 ~
execute at @s[scores={ActionTime=41}] as @e[distance=..1,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute at @s[scores={ActionTime=41}] if entity @a[distance=..1,scores={Invulnerable=0},tag=!spectator] run tag @s add laugh
execute at @s[scores={ActionTime=41}] run data modify storage luigis_mansion:data damage set value {method:"luigis_mansion:punch",amount:0,knockback:"large",attacker:-1,no_delete:1b}
execute at @s[scores={ActionTime=41}] run data modify storage luigis_mansion:data damage.amount set from entity @s ArmorItems[3].tag.luigis_mansion.damage.attack
execute at @s[scores={ActionTime=41}] store result storage luigis_mansion:data damage.attacker int 1 run scoreboard players get @s GhostNr
execute at @s[scores={ActionTime=41}] as @a[distance=..1,gamemode=!spectator] run function luigis_mansion:entities/player/damage
execute at @s[scores={ActionTime=41}] run data remove storage luigis_mansion:data damage
tag @s[scores={ActionTime=41},tag=!laugh] add complain
tag @s[scores={ActionTime=60}] remove attack
scoreboard players set @s[scores={ActionTime=60}] AnimationProgress 0
scoreboard players set @s[scores={ActionTime=60}] ActionTime 0