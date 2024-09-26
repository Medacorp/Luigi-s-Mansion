execute if data storage luigis_mansion:data entity.pull.strength as @e[tag=this_entity,limit=1] store result score @s PullStrength run data get storage luigis_mansion:data entity.pull.strength
execute if data storage luigis_mansion:data entity.pull.angle as @e[tag=this_entity,limit=1] store result score @s PullAngle run data get storage luigis_mansion:data entity.pull.angle
scoreboard players operation @e[tag=this_entity,scores={PullAngle=..-1},limit=1] PullAngle *= #-1 Constants
scoreboard players set @e[tag=this_entity,scores={PullAngle=181..},limit=1] PullAngle 180