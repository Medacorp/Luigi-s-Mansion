scoreboard players add @s[scores={ActionTime=1..159}] ActionTime 1
execute unless entity @s[scores={ActionTime=1..}] run scoreboard players set @s ActionTime 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0
execute at @s[scores={ActionTime=1..20}] run function luigis_mansion:animations/grabbing_ghost/grab

execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.cinema_ghost.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=1..20}] if score #mirrored Selected matches 0 run function luigis_mansion:entities/cinema_ghost/grab/normal
execute if entity @s[scores={ActionTime=1..20}] if score #mirrored Selected matches 1 run function luigis_mansion:entities/cinema_ghost/grab/hidden
execute if entity @s[scores={ActionTime=20..100}] positioned ^ ^ ^0.8 run effect give @a[gamemode=!spectator,distance=..0.7,tag=grabbed,limit=1] minecraft:instant_damage 1 0 true
execute if entity @s[scores={ActionTime=20}] positioned ^ ^ ^0.8 run scoreboard players set @a[gamemode=!spectator,distance=..0.7,tag=grabbed,limit=1] ForcedDamage -1
execute if entity @s[scores={ActionTime=21..100}] positioned ^ ^ ^0.8 run scoreboard players set @a[gamemode=!spectator,distance=..0.7,tag=grabbed,limit=1] ForcedDamage -5
execute if entity @s[scores={ActionTime=21..110}] positioned ^ ^ ^0.8 store result entity @s Rotation[0] float 0.01 run data get entity @a[gamemode=!spectator,distance=..0.7,tag=grabbed,limit=1] Rotation[0] 100
execute if entity @s[scores={ActionTime=21..110}] positioned ^ ^ ^0.8 unless entity @a[gamemode=!spectator,distance=..0.7,tag=grabbed,limit=1] run scoreboard players set @s ActionTime 110
execute if entity @s[scores={ActionTime=21..110}] positioned ^ ^ ^0.8 positioned as @a[gamemode=!spectator,distance=..0.7,tag=grabbed,limit=1] rotated as @s positioned ^ ^ ^-0.8 run teleport @s ~ ~ ~ ~ ~
execute at @s[scores={ActionTime=40}] positioned ^ ^ ^0.8 if entity @a[distance=..0.7,gamemode=!spectator,tag=grabbed,limit=1] run tag @s add laugh
scoreboard players set @s[scores={ActionTime=110}] AnimationProg 0
execute at @s[scores={ActionTime=110..130}] run function luigis_mansion:animations/grabbing_ghost/let_go
tag @s[scores={ActionTime=130},tag=!laugh] add complain
tag @s[scores={ActionTime=130}] remove attack
scoreboard players set @s[scores={ActionTime=130}] AnimationProg 0
scoreboard players set @s[scores={ActionTime=130}] ActionTime 0