playsound luigis_mansion:entity.boo.vanish hostile @a[tag=same_room] ~ ~ ~ 1
playsound luigis_mansion:entity.boo.warp hostile @a[tag=same_room] ~ ~ ~ 1
particle minecraft:dust{color:13421823,scale:1f} ~ ~1 ~ 0.3 0.3 0.3 0 30 normal @a[tag=same_room]
tag @s add warped
tag @s add countdown
scoreboard players set @s BooTimer 0
execute store result score @s HomeX run data get entity @s Pos[0] 100
execute store result score @s HomeY run data get entity @s Pos[1] 100
execute store result score @s HomeZ run data get entity @s Pos[2] 100