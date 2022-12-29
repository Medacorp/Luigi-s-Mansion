# This is lab-gooigi, not player-gooigi
execute facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ ~

execute if entity @a[tag=gooigi,limit=1] run kill @s

execute if entity @s[tag=spawn_animation,scores={PosX=1..}] run function luigis_mansion_3ds_remake:entities/gooigi/spawn_animation

execute if entity @s[scores={PosX=1..}] run function luigis_mansion_3ds_remake:animations/gooigi

scoreboard players operation @s OtherX = @s PosX
scoreboard players operation @s OtherY = @s PosY
scoreboard players operation @s OtherZ = @s PosZ
execute store result score @s PosX run data get entity @s Pos[0] 100
execute store result score @s PosY run data get entity @s Pos[1] 100
execute store result score @s PosZ run data get entity @s Pos[2] 100