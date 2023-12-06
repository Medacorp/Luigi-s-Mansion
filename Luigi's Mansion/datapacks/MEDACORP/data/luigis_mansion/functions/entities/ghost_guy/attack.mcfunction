scoreboard players add @s ActionTime 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProgress 0
execute at @s[scores={AttackType=0}] run function luigis_mansion:old_animations/ghost_guy/stab_attack
execute at @s[scores={AttackType=1}] run function luigis_mansion:old_animations/ghost_guy/spin_attack

execute if entity @s[scores={ActionTime=20,AttackType=1}] run playsound luigis_mansion:entity.ghost_guy.spin_attack hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=20,AttackType=0}] run playsound luigis_mansion:entity.ghost_guy.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #mirrored Selected matches 0 run teleport @s[scores={ActionTime=20..29,AttackType=1}] ~ ~ ~ ~-36 ~
execute if score #mirrored Selected matches 1 run teleport @s[scores={ActionTime=20..29,AttackType=1}] ~ ~ ~ ~36 ~
execute at @s[scores={ActionTime=20,AttackType=1}] as @e[distance=..2,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute at @s[scores={ActionTime=20,AttackType=1},tag=stop_dancing] unless entity @a[distance=..2,scores={Invulnerable=0},tag=!spectator] run tag @s add complain
execute at @s[scores={ActionTime=20,AttackType=1},tag=stop_dancing] if entity @a[distance=..2,scores={Invulnerable=0},tag=!spectator] run scoreboard players set @s WaitTime 40
execute at @s[scores={ActionTime=20,AttackType=1}] run data modify storage luigis_mansion:data damage set value {method:"luigis_mansion:cut",amount:0,knockback:"large",attacker:-1,no_delete:1b}
execute at @s[scores={ActionTime=20,AttackType=1}] run data modify storage luigis_mansion:data damage.amount set from entity @s ArmorItems[3].tag.luigis_mansion.damage.attack
execute at @s[scores={ActionTime=20,AttackType=1}] store result storage luigis_mansion:data damage.attacker int 1 run scoreboard players get @s GhostNr
execute at @s[scores={ActionTime=20,AttackType=1}] as @a[distance=..2,gamemode=!spectator] run function luigis_mansion:entities/player/damage
execute at @s[scores={ActionTime=20,AttackType=1}] run data remove storage luigis_mansion:data damage
execute at @s[scores={ActionTime=20,AttackType=0}] positioned ^ ^ ^0.7 as @e[distance=..1,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute at @s[scores={ActionTime=20,AttackType=0},tag=stop_dancing] positioned ^ ^ ^0.7 unless entity @a[distance=..1,scores={Invulnerable=0},tag=!spectator] run tag @s add complain
execute at @s[scores={ActionTime=20,AttackType=0},tag=stop_dancing] positioned ^ ^ ^0.7 if entity @a[distance=..1,scores={Invulnerable=0},tag=!spectator] run scoreboard players set @s WaitTime 40
execute at @s[scores={ActionTime=20,AttackType=0}] run data modify storage luigis_mansion:data damage set value {method:"luigis_mansion:stab",amount:0,knockback:"large",attacker:-1,no_delete:1b}
execute at @s[scores={ActionTime=20,AttackType=0}] run data modify storage luigis_mansion:data damage.amount set from entity @s ArmorItems[3].tag.luigis_mansion.damage.attack
execute at @s[scores={ActionTime=20,AttackType=0}] store result storage luigis_mansion:data damage.attacker int 1 run scoreboard players get @s GhostNr
execute at @s[scores={ActionTime=20,AttackType=0}] positioned ^ ^ ^0.7 as @a[distance=..1,gamemode=!spectator] run function luigis_mansion:entities/player/damage
execute at @s[scores={ActionTime=20,AttackType=0}] run data remove storage luigis_mansion:data damage
tag @s[scores={ActionTime=30}] remove attack
scoreboard players set @s[scores={ActionTime=30}] AnimationProgress 0
scoreboard players set @s[scores={ActionTime=30}] ActionTime 0