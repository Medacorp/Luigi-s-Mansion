execute if entity @s[scores={Sound=0}] run playsound luigis_mansion:furniture.door.burn block @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0}] Sound 80
setblock ^ ^ ^0.5 minecraft:light[level=4]

execute as @e[tag=luigi,distance=..0.7,scores={Invulnerable=0},tag=!door_animation] run function luigis_mansion:entities/furniture/type/door/burning