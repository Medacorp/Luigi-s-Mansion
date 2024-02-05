# This is lab-gooigi, not player-gooigi
execute if entity @s[tag=!no_ai] run function 3ds_remake:entities/gooigi/ai

execute if entity @a[tag=gooigi,limit=1] run kill @s

execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/2_tall

execute if entity @s[scores={PositionX=1..}] run function 3ds_remake:animations/gooigi

scoreboard players operation @s OtherX = @s PositionX
scoreboard players operation @s OtherY = @s PositionY
scoreboard players operation @s OtherZ = @s PositionZ
execute store result score @s PositionX run data get entity @s Pos[0] 100
execute store result score @s PositionY run data get entity @s Pos[1] 100
execute store result score @s PositionZ run data get entity @s Pos[2] 100