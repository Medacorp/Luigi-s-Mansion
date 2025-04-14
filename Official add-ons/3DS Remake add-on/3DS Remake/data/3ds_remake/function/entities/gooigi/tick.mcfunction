# Tick is specific to lab-Gooigi, not player-Gooigi
execute if entity @s[tag=!no_ai] facing entity @e[tag=same_room,tag=luigi,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!no_ai,tag=spawn_animation,scores={PositionX=-2147483648..}] run function 3ds_remake:entities/gooigi/animation/spawn

execute if entity @a[tag=gooigi,limit=1] run kill @s

execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/2_tall

function 3ds_remake:animations/gooigi

scoreboard players operation @s OtherX = @s PositionX
scoreboard players operation @s OtherY = @s PositionY
scoreboard players operation @s OtherZ = @s PositionZ
execute store result score @s PositionX run data get entity @s Pos[0] 10
execute store result score @s PositionY run data get entity @s Pos[1] 10
execute store result score @s PositionZ run data get entity @s Pos[2] 10