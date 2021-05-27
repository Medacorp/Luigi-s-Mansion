scoreboard players add @s PathStep 1
scoreboard players set @s Move 5
tag @s[scores={PathStep=1}] remove move
execute if entity @s[scores={PathStep=1}] run playsound luigis_mansion:entity.spooky.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={PathStep=1..19}] run function luigis_mansion:entities/ghost/move_forward
tag @s[scores={PathStep=20}] remove attack
tag @s[scores={PathStep=20}] remove bite
tag @s[scores={PathStep=20}] add breathe
scoreboard players set @s[scores={PathStep=20}] Dialog 20
scoreboard players reset @s[scores={PathStep=20}] PathStep
execute at @s[scores={PathStep=1..19}] positioned ^ ^ ^0.3 if entity @e[tag=same_room,tag=!spectator,distance=..0.7,tag=!grabbed,limit=1] run scoreboard players set @s PathStep 30

scoreboard players set @s[scores={PathStep=30}] AnimationProg 0
tag @s[scores={PathStep=30}] remove bite
tag @s[scores={PathStep=30}] add hold
execute if entity @s[scores={PathStep=30}] run playsound luigis_mansion:entity.spooky.hold hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={PathStep=30}] positioned ^ ^ ^0.8 as @e[distance=..0.8,tag=gameboy_horror_location] run function luigis_mansion:gameboy_horror_location/bring_player_back
execute at @s[scores={PathStep=30}] positioned ^ ^ ^0.8 run tag @a[gamemode=!spectator,distance=..0.8,tag=!grabbed,limit=1] add grabbed
execute at @s[scores={PathStep=30..110}] positioned ^ ^ ^0.8 run effect give @a[gamemode=!spectator,distance=..0.7,tag=grabbed,limit=1] minecraft:instant_damage 1 0 true
execute at @s[scores={PathStep=30}] positioned ^ ^ ^0.8 run scoreboard players set @a[gamemode=!spectator,distance=..0.7,tag=grabbed,limit=1] ForcedDamage 4
execute at @s[scores={PathStep=31..110}] positioned ^ ^ ^0.8 run scoreboard players set @a[gamemode=!spectator,distance=..0.7,tag=grabbed,limit=1] ForcedDamage -5
execute at @s[scores={PathStep=31..120}] run function luigis_mansion:entities/spooky/hold
execute if entity @s[scores={PathStep=120}] run playsound luigis_mansion:entity.spooky.let_go hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={PathStep=120}] AnimationProg 0
tag @s[scores={PathStep=120}] remove hold
tag @s[scores={PathStep=120}] add let_go
scoreboard players set @s[scores={PathStep=120..180}] Move 1
execute at @s[scores={PathStep=120..160}] rotated ~-180 0 run function luigis_mansion:entities/ghost/move_forward
execute at @s[scores={PathStep=121..130}] run teleport @s ~ ~0.2 ~
execute at @s[scores={PathStep=131..140}] run teleport @s ~ ~0.1 ~
execute at @s[scores={PathStep=141..150}] run teleport @s ~ ~-0.1 ~
execute at @s[scores={PathStep=151..160}] run teleport @s ~ ~-0.2 ~
tag @s[scores={PathStep=180}] remove attack
tag @s[scores={PathStep=180}] remove let_go
tag @s[scores={PathStep=180}] add wake_up
scoreboard players add @s[scores={PathStep=180}] Dialog 1
scoreboard players reset @s[scores={PathStep=180}] PathStep