scoreboard players add @s ActionTime 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0
execute at @s[tag=!spin_attack] run function luigis_mansion:animations/ghost_guy/stab_attack
execute at @s[tag=spin_attack] run function luigis_mansion:animations/ghost_guy/spin_attack

execute if entity @s[scores={ActionTime=20},tag=spin_attack] run playsound luigis_mansion:entity.ghost_guy.spin_attack hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=20},tag=!spin_attack] run playsound luigis_mansion:entity.ghost_guy.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #mirrored Selected matches 0 run teleport @s[scores={ActionTime=20..29},tag=spin_attack] ~ ~ ~ ~-36 ~
execute if score #mirrored Selected matches 1 run teleport @s[scores={ActionTime=20..29},tag=spin_attack] ~ ~ ~ ~36 ~
execute at @s[scores={ActionTime=20},tag=spin_attack] as @e[distance=..2,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
execute at @s[scores={ActionTime=20},tag=spin_attack] run effect give @a[distance=..2,tag=!spectator] minecraft:instant_damage 1 0 true
execute at @s[scores={ActionTime=20},tag=spin_attack] run scoreboard players set @a[distance=..2,tag=!spectator] ForcedDamage 4
execute at @s[scores={ActionTime=20},tag=spin_attack,tag=stop_dancing] unless entity @a[distance=..2,tag=!spectator] run tag @s add complain
execute at @s[scores={ActionTime=20},tag=spin_attack,tag=stop_dancing] if entity @a[distance=..2,tag=!spectator] run scoreboard players set @s WaitTime 40
execute at @s[scores={ActionTime=20},tag=!spin_attack] positioned ^ ^ ^0.7 as @e[distance=..1,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
execute at @s[scores={ActionTime=20},tag=!spin_attack] positioned ^ ^ ^0.7 run effect give @a[distance=..1,tag=!spectator] minecraft:instant_damage 1 0 true
execute at @s[scores={ActionTime=20},tag=!spin_attack] positioned ^ ^ ^0.7 run scoreboard players set @a[distance=..1,tag=!spectator] ForcedDamage 4
execute at @s[scores={ActionTime=20},tag=!spin_attack,tag=stop_dancing] positioned ^ ^ ^0.7 unless entity @a[distance=..1,tag=!spectator] run tag @s add complain
execute at @s[scores={ActionTime=20},tag=!spin_attack,tag=stop_dancing] positioned ^ ^ ^0.7 if entity @a[distance=..1,tag=!spectator] run scoreboard players set @s WaitTime 40
tag @s[scores={ActionTime=30}] remove attack
scoreboard players set @s[scores={ActionTime=30}] AnimationProg 0
scoreboard players set @s[scores={ActionTime=30}] ActionTime 0