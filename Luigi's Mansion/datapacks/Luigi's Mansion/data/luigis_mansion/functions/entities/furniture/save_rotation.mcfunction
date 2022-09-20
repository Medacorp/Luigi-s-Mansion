tag @s remove inverted_check
execute store result score @s RotX run data get entity @s Rotation[0]
scoreboard players operation @s RotY = @s RotX
scoreboard players operation @s RotationDif = @s RotX
scoreboard players remove @s RotationDif 180
scoreboard players add @s[scores={RotationDif=..-180}] RotationDif 360
scoreboard players remove @s RotX 45
scoreboard players add @s RotY 45
tag @s[scores={RotX=..-180}] add inverted_check
tag @s[scores={RotY=180..}] add inverted_check
scoreboard players add @s[scores={RotX=..-180}] RotX 360
scoreboard players remove @s[scores={RotY=180..}] RotY 360