execute unless data entity @s ArmorItems[3].tag.luigis_mansion.path.steps[0] run scoreboard players set @s TargetTask 0
execute unless data entity @s ArmorItems[3].tag.luigis_mansion.path.steps[0] run data remove entity @s ArmorItems[3].tag.luigis_mansion.path
execute if data entity @s ArmorItems[3].tag.luigis_mansion.path.steps[0] run data modify entity @s ArmorItems[3].tag.luigis_mansion.step set from entity @s ArmorItems[3].tag.luigis_mansion.path.steps[0]
execute if data entity @s ArmorItems[3].tag.luigis_mansion.path.steps[0] run data modify entity @s ArmorItems[3].tag.luigis_mansion.target_pos set from entity @s ArmorItems[3].tag.luigis_mansion.step.position
execute if data entity @s ArmorItems[3].tag.luigis_mansion.path.steps[0] if data entity @s ArmorItems[3].tag.luigis_mansion.step{instant:1b} run data modify entity @s Pos set from entity @s ArmorItems[3].tag.luigis_mansion.step.position
execute if data entity @s ArmorItems[3].tag.luigis_mansion.path.steps[0] store result score @s TargetTime run data get entity @s ArmorItems[3].tag.luigis_mansion.step.wait
execute if data entity @s ArmorItems[3].tag.luigis_mansion.path.steps[0] if data entity @s ArmorItems[3].tag.luigis_mansion.path{loops:1b} run data modify entity @s ArmorItems[3].tag.luigis_mansion.path.steps append from entity @s ArmorItems[3].tag.luigis_mansion.step
execute if data entity @s ArmorItems[3].tag.luigis_mansion.path.steps[0] run data remove entity @s ArmorItems[3].tag.luigis_mansion.path.steps[0]
data remove entity @s ArmorItems[3].tag.luigis_mansion.path.step