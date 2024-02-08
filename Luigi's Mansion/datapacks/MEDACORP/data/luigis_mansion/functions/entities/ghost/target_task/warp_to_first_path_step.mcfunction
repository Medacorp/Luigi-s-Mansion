data modify entity @s Pos set from entity @s data.path.steps[0].position
execute store result score @s TargetTime run data entity @s data.path.steps[0].wait
execute if data entity @s data.path{loops:1b} run data modify entity @s data.path.steps append from entity @s data.path.steps[0]
data remove entity @s data.path.steps[0]