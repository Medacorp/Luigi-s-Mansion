scoreboard players operation @s Range = @s RotationDif
execute if entity @s[scores={RotationDif=..-50001}] run scoreboard players operation @s Range *= #-1 Constants
scoreboard players remove @s Range 50000
scoreboard players operation @s Range /= #10000 Constants
scoreboard players add @s Range 1
scoreboard players operation @s Range *= #10000 Constants
execute if entity @s[scores={RotationDif=50001..}] run scoreboard players operation @s PlayerRotation -= @s Range
execute if entity @s[scores={RotationDif=..-50001}] run scoreboard players operation @s PlayerRotation += @s Range
