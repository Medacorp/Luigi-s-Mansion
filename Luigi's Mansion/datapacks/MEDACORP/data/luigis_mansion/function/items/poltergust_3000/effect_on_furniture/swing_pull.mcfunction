function luigis_mansion:items/poltergust_3000/effect_on_furniture/swing_get_direction
scoreboard players operation #temp FurnitureXTarget *= #-1 Constants
execute if entity @s[tag=inverted_swing] run scoreboard players operation #temp FurnitureXTarget *= #-1 Constants
execute store result score #temp Time run data get entity @s Pose.Head[0] 10
execute unless entity @s[scores={FurnitureXTarget=-900..900}] run scoreboard players operation @s FurnitureXTarget = #temp FurnitureXTarget
execute if score #temp FurnitureXTarget matches ..-1 if score #temp Time matches ..-1 if entity @s[scores={FurnitureXTarget=..-1,FurnitureXProgress=0..12}] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/change_swing_x
execute if score #temp FurnitureXTarget matches ..-1 if score #temp Time matches ..-1 if entity @s[scores={FurnitureXTarget=..-1,FurnitureXProgress=168}] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/change_swing_x
execute if score #temp FurnitureXTarget matches 1.. if score #temp Time matches 1.. if entity @s[scores={FurnitureXTarget=1..,FurnitureXProgress=0..18}] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/change_swing_x
execute if score #temp FurnitureXTarget matches 1.. if score #temp Time matches 1.. if entity @s[scores={FurnitureXTarget=1..,FurnitureXProgress=168}] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/change_swing_x
scoreboard players reset #temp FurnitureXTarget
scoreboard players operation #temp FurnitureZTarget *= #-1 Constants
execute if entity @s[tag=inverted_swing] run scoreboard players operation #temp FurnitureZTarget *= #-1 Constants
execute store result score #temp Time run data get entity @s Pose.Head[2] 10
execute unless entity @s[scores={FurnitureZTarget=-900..900}] run scoreboard players operation @s FurnitureZTarget = #temp FurnitureZTarget
execute if score #temp FurnitureZTarget matches ..-1 if score #temp Time matches ..-1 if entity @s[scores={FurnitureZTarget=..-1,FurnitureZProgress=0..12}] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/change_swing_z
execute if score #temp FurnitureZTarget matches ..-1 if score #temp Time matches ..-1 if entity @s[scores={FurnitureZTarget=..-1,FurnitureZProgress=168}] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/change_swing_z
execute if score #temp FurnitureZTarget matches 1.. if score #temp Time matches 1.. if entity @s[scores={FurnitureZTarget=1..,FurnitureZProgress=0..12}] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/change_swing_z
execute if score #temp FurnitureZTarget matches 1.. if score #temp Time matches 1.. if entity @s[scores={FurnitureZTarget=1..,FurnitureZProgress=168}] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/change_swing_z
scoreboard players reset #temp FurnitureZTarget
scoreboard players reset #temp Time