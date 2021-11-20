scoreboard players add @s ActionTime 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0
function luigis_mansion:animations/clockwork_soldier/attack
execute if entity @s[scores={ActionTime=20}] run playsound luigis_mansion:entity.clockwork_soldier.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={ActionTime=20}] positioned ^ ^-1 ^0.7 as @e[distance=..1,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
execute at @s[scores={ActionTime=20}] positioned ^ ^0.8 ^0.7 run particle minecraft:dust 0.5 0.5 0.5 1.4 ~ ~0.2 ~ 0 0 0 0 1
execute at @s[scores={ActionTime=20}] positioned ^ ^0.8 ^1.4 run particle minecraft:dust 0.5 0.5 0.5 1.4 ~ ~0.2 ~ 0 0 0 0 1
execute at @s[scores={ActionTime=20}] positioned ^ ^-1 ^0.7 run effect give @a[distance=..1,tag=!spectator] minecraft:instant_damage 1 0 true
execute at @s[scores={ActionTime=20}] positioned ^ ^-1 ^0.7 run scoreboard players set @a[distance=..1,tag=!spectator] ForcedDamage 4
execute at @s[scores={ActionTime=20}] positioned ^ ^-1 ^0.7 as @a[distance=..1,tag=!spectator] run function luigis_mansion:entities/player/knockback/large
execute at @s[scores={ActionTime=20}] positioned ^ ^-1 ^0.7 if entity @a[distance=..1,tag=!spectator] run scoreboard players set @s WaitTime 40
tag @s[scores={ActionTime=40}] remove attack
scoreboard players set @s[scores={ActionTime=40}] AnimationProg 0
scoreboard players set @s[scores={ActionTime=40}] ActionTime 0