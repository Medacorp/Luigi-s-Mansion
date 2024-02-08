execute unless data entity @s data.path.steps[0] run tag @s add disappear
execute unless data entity @s data.path.steps[0] run scoreboard players set @s TargetTask 0
execute unless data entity @s data.path.steps[0] run data remove entity @s data.path
execute if data entity @s data.path.steps[0] run data modify entity @s data.step set from entity @s data.path.steps[0]
execute if data entity @s data.path.steps[0] run data modify entity @s data.target_pos set from entity @s data.step.position
execute if data entity @s data.path.steps[0] if data entity @s data.step{instant:1b} run data modify entity @s Pos set from entity @s data.step.position
execute if data entity @s data.path.steps[0] store result score @s TargetTime run data entity @s data.step.wait
execute if data entity @s data.path.steps[0] if data entity @s data.path{loops:1b} run data modify entity @s data.path.steps append from entity @s data.step
execute if data entity @s data.path.steps[0] run data remove entity @s data.path.steps[0]
data remove entity @s data.path.step