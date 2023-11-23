scoreboard players add @s ActionTime 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProgress 0
execute at @s run function luigis_mansion:animations/ghost/attack

teleport @s[scores={ActionTime=1..39},tag=!no_ai] ^ ^ ^0.0125
execute at @s[scores={ActionTime=1..20},tag=!no_ai] positioned ^ ^ ^0.7 unless entity @e[tag=same_room,tag=!spectator,tag=player,distance=..0.7,limit=1] run tag @s add stop_attack
execute if entity @s[scores={ActionTime=41}] run playsound luigis_mansion:entity.ghost.punch hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=41}] run playsound e3_demo:entity.basher.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=41..60}] if score #mirrored Selected matches 0 run teleport @s ~ ~ ~ ~-18 ~
execute if entity @s[scores={ActionTime=41..60}] if score #mirrored Selected matches 1 run teleport @s ~ ~ ~ ~18 ~
execute at @s[scores={ActionTime=41}] as @e[distance=..1,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute at @s[scores={ActionTime=41}] if entity @a[distance=..1,scores={Invulnerable=0},tag=!spectator] run tag @s add laugh
execute at @s[scores={ActionTime=41}] run data modify storage luigis_mansion:data damage set value {method:"luigis_mansion:punch",amount:0,knockback:"large",attacker:-1,no_delete:1b}
execute at @s[scores={ActionTime=41}] run data modify storage luigis_mansion:data damage.amount set from entity @s ArmorItems[3].tag.damage.attack
execute at @s[scores={ActionTime=41}] store result storage luigis_mansion:data damage.attacker int 1 run scoreboard players get @s GhostNr
execute at @s[scores={ActionTime=41}] as @a[distance=..1,gamemode=!spectator] run function luigis_mansion:entities/player/damage
execute at @s[scores={ActionTime=41}] run data remove storage luigis_mansion:data damage
tag @s[scores={ActionTime=41},tag=!laugh] add complain
tag @s[scores={ActionTime=60}] remove attack
scoreboard players set @s[scores={ActionTime=60}] AnimationProgress 0
scoreboard players set @s[scores={ActionTime=60}] ActionTime 0

scoreboard players set @s[tag=stop_attack] ActionTime 0
scoreboard players set @s[tag=stop_attack] AnimationProgress 0
tag @s[tag=stop_attack] remove attack
tag @s[tag=stop_attack] remove stop_attack