scoreboard players add @s ActionTime 1

execute if entity @s[scores={ActionTime=20}] run playsound luigis_mansion:entity.clockwork_soldier.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={ActionTime=20}] positioned ^ ^ ^0.7 run effect give @a[distance=..1,gamemode=!spectator] minecraft:instant_damage 1 0 true
execute at @s[scores={ActionTime=20}] positioned ^ ^ ^0.7 run scoreboard players set @a[distance=..1,gamemode=!spectator] ForcedDamage 4
execute at @s[scores={ActionTime=20}] positioned ^ ^ ^0.7 unless entity @a[distance=..1,gamemode=!spectator] run tag @s add complain
execute at @s[scores={ActionTime=20}] positioned ^ ^ ^0.7 if entity @a[distance=..1,gamemode=!spectator] run scoreboard players set @s WaitTime 40
tag @s[scores={ActionTime=30}] remove attack
scoreboard players set @s[scores={ActionTime=30}] ActionTime 0