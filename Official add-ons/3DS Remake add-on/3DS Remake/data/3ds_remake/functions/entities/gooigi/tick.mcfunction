# This is lab-gooigi, not player-gooigi
execute facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ ~

execute if entity @a[tag=gooigi,limit=1] run kill @s

execute if entity @s[tag=spawn_animation,scores={PositionX=1..}] run function 3ds_remake:entities/gooigi/spawn_animation

execute if entity @s[scores={PositionX=1..}] run function 3ds_remake:animations/gooigi

scoreboard players operation @s OtherX = @s PositionX
scoreboard players operation @s OtherY = @s PositionY
scoreboard players operation @s OtherZ = @s PositionZ
execute store result score @s PositionX run data get entity @s Pos[0] 100
execute store result score @s PositionY run data get entity @s Pos[1] 100
execute store result score @s PositionZ run data get entity @s Pos[2] 100