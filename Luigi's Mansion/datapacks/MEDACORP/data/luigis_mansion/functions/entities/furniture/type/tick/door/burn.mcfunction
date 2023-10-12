execute if entity @s[scores={Sound=0}] run playsound luigis_mansion:furniture.door.burn block @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0}] Sound 80
setblock ^ ^ ^0.5 minecraft:light[level=4]

execute as @a[distance=..0.7,scores={Invulnerable=0},tag=!spectator,tag=!pull_open_door,tag=!push_open_door] run function luigis_mansion:entities/furniture/type/tick/door/burning