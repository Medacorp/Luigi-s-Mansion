scoreboard players operation #temp PositionX = @s PositionX
scoreboard players operation #temp PositionZ = @s PositionZ
scoreboard players operation #temp RotationY = @s RotationY
scoreboard players operation #temp RotationX = @s RotationX
data modify storage luigis_mansion:data luigi.movement set value {x:0f,y:"none",z:0f,x_rot:"none",y_rot:"none"}
execute store result storage luigis_mansion:data luigi.movement.x float 0.01 run scoreboard players operation #temp PositionX -= @s OtherX
execute store result storage luigis_mansion:data luigi.movement.z float 0.01 run scoreboard players operation #temp PositionZ -= @s OtherZ
execute store result storage luigis_mansion:data luigi.movement.y_rot float 1 run scoreboard players operation #temp RotationY -= @s OtherRotationY
execute store result storage luigis_mansion:data luigi.movement.x_rot float 1 run scoreboard players operation #temp RotationX -= @s OtherRotationX
execute if score #temp PositionX matches 20.. run data modify storage luigis_mansion:data luigi.movement.x set value 0.2f
execute if score #temp PositionX matches ..-20 run data modify storage luigis_mansion:data luigi.movement.x set value -0.2f
execute if predicate luigis_mansion:luigi/movement/jump run data modify storage luigis_mansion:data luigi.movement.y set value "positive"
execute if predicate luigis_mansion:luigi/movement/sneak run data modify storage luigis_mansion:data luigi.movement.y set value "negative"
execute if score #temp PositionZ matches 20.. run data modify storage luigis_mansion:data luigi.movement.z set value 0.2f
execute if score #temp PositionZ matches ..-20 run data modify storage luigis_mansion:data luigi.movement.z set value -0.2f
execute if score #temp RotationX matches 180.. run data modify storage luigis_mansion:data luigi.movement.rot_x set value 180f
execute if score #temp RotationX matches ..-180 run data modify storage luigis_mansion:data luigi.movement.rot_x set value -180f
scoreboard players reset #temp PositionX
scoreboard players reset #temp PositionZ
scoreboard players reset #temp RotationY
scoreboard players reset #temp RotationX