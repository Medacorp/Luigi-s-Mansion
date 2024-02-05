tag @s remove inverted_check
execute store result score @s RotationX run data get entity @s Rotation[0]
scoreboard players operation @s RotationY = @s RotationX
scoreboard players operation @s RotationDifference = @s RotationX
scoreboard players remove @s RotationDifference 180
scoreboard players add @s[scores={RotationDifference=..-180}] RotationDifference 360
scoreboard players remove @s RotationX 45
scoreboard players add @s RotationY 45
tag @s[scores={RotationX=..-180}] add inverted_check
tag @s[scores={RotationY=180..}] add inverted_check
scoreboard players add @s[scores={RotationX=..-180}] RotationX 360
scoreboard players remove @s[scores={RotationY=180..}] RotationY 360