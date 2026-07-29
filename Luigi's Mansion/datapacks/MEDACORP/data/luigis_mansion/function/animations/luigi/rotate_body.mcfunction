scoreboard players operation @s Range = @s RotationDifference
scoreboard players operation @s[scores={RotationDifference=..-50001}] Range *= #-1 Constants
scoreboard players remove @s Range 50000
scoreboard players operation @s Range /= #10000 Constants
scoreboard players add @s Range 1
scoreboard players operation @s Range *= #10000 Constants
scoreboard players operation @s[scores={RotationDifference=50001..}] PlayerRotation -= @s Range
scoreboard players operation @s[scores={RotationDifference=..-50001}] PlayerRotation += @s Range
scoreboard players remove @s[scores={PlayerRotation=360000..}] PlayerRotation 360000
scoreboard players add @s[scores={PlayerRotation=..0}] PlayerRotation 360000
execute as @e[tag=this_luigi,tag=!model_piece,tag=idle,limit=1] run function luigis_mansion:entities/luigi/animation/set/none
scoreboard players set @e[tag=this_luigi,tag=!model_piece,scores={IdleTime=1..},limit=1] IdleTime 0
