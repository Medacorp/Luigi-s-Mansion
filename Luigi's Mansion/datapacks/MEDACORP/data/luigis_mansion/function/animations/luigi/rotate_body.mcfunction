scoreboard players operation @s Range = @s RotationDifference
execute if entity @s[scores={RotationDifference=..-50001}] run scoreboard players operation @s Range *= #-1 Constants
scoreboard players remove @s Range 50000
scoreboard players operation @s Range /= #10000 Constants
scoreboard players add @s Range 1
scoreboard players operation @s Range *= #10000 Constants
execute if entity @s[scores={RotationDifference=50001..}] run scoreboard players operation @s PlayerRotation -= @s Range
execute if entity @s[scores={RotationDifference=..-50001}] run scoreboard players operation @s PlayerRotation += @s Range
execute if entity @s[scores={RotationDifference=50001..}] as @e[tag=this_luigi,tag=!model_piece,tag=idle,limit=1] run function luigis_mansion:entities/luigi/animation/set/none
execute if entity @s[scores={RotationDifference=..-50001}] as @e[tag=this_luigi,tag=!model_piece,tag=idle,limit=1] run function luigis_mansion:entities/luigi/animation/set/none
