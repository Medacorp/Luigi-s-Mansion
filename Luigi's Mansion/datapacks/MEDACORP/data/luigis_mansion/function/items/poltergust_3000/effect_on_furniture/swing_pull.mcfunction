function luigis_mansion:items/poltergust_3000/effect_on_furniture/swing_get_direction

execute in minecraft:overworld run summon minecraft:marker 0.0 0.0 0.0 {Tags:["temp","remove_from_existence"]}
execute store result entity @e[tag=temp,limit=1] Rotation[0] float 1 run scoreboard players get @s FurnitureXProgress
execute as @e[tag=temp,limit=1] at @s positioned 0.0 0.0 0.0 run teleport @s ^ ^ ^1
execute store result score #temp AnimationRotationCosX run data get entity @e[tag=temp,limit=1] Pos[2] 1000
execute store result entity @e[tag=temp,limit=1] Rotation[0] float 1 run scoreboard players get @s FurnitureZProgress
execute as @e[tag=temp,limit=1] at @s positioned 0.0 0.0 0.0 run teleport @s ^ ^ ^1
execute store result score #temp AnimationRotationCosZ run data get entity @e[tag=temp,limit=1] Pos[2] 1000
kill @e[tag=temp]
scoreboard players operation #temp Time = @s FurnitureXOrigin
scoreboard players operation #temp Time -= @s FurnitureXTarget
scoreboard players operation #temp Time /= #2 Constants
scoreboard players operation #temp AnimationRotationCosX *= #temp Time
scoreboard players operation #temp Time -= @s FurnitureXOrigin
scoreboard players operation #temp Time *= #1000 Constants
scoreboard players operation #temp AnimationRotationCosX -= #temp Time
scoreboard players operation #temp AnimationRotationCosX /= #1000 Constants

scoreboard players operation #temp Time = @s FurnitureZOrigin
scoreboard players operation #temp Time -= @s FurnitureZTarget
scoreboard players operation #temp Time /= #2 Constants
scoreboard players operation #temp AnimationRotationCosZ *= #temp Time
scoreboard players operation #temp Time -= @s FurnitureZOrigin
scoreboard players operation #temp Time *= #1000 Constants
scoreboard players operation #temp AnimationRotationCosZ -= #temp Time
scoreboard players operation #temp AnimationRotationCosZ /= #1000 Constants
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
execute if entity @s[tag=!inverted_swing] run scoreboard players operation #temp FurnitureXTarget *= #-1 Constants
execute if entity @s[tag=inverted_swing] run scoreboard players operation #temp FurnitureZTarget *= #-1 Constants

execute if score #temp FurnitureXTarget matches ..-1 if score #temp AnimationRotationCosX matches ..-1 if entity @s[scores={FurnitureXTarget=1..,FurnitureXProgress=0..12}] unless entity @s[scores={FurnitureXOrigin=0}] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/change_swing_x
execute if score #temp FurnitureXTarget matches ..-1 if score #temp AnimationRotationCosX matches ..-1 if entity @s[scores={FurnitureXTarget=..-1,FurnitureXOrigin=..-1}] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/change_swing_x
execute if score #temp FurnitureXTarget matches 1.. if score #temp AnimationRotationCosX matches 1.. if entity @s[scores={FurnitureXTarget=..-1,FurnitureXProgress=0..12}] unless entity @s[scores={FurnitureXOrigin=0}] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/change_swing_x
execute if score #temp FurnitureXTarget matches 1.. if score #temp AnimationRotationCosX matches 1.. if entity @s[scores={FurnitureXTarget=1..,FurnitureXOrigin=1..}] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/change_swing_x
execute unless entity @s[scores={FurnitureXTarget=-900..900}] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/change_swing_x
execute if entity @s[scores={FurnitureXTarget=0}] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/change_swing_x
scoreboard players reset #temp FurnitureXTarget
execute if score #temp FurnitureZTarget matches ..-1 if score #temp AnimationRotationCosZ matches ..-1 if entity @s[scores={FurnitureZTarget=1..,FurnitureZProgress=0..12}] unless entity @s[scores={FurnitureZOrigin=0}] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/change_swing_z
execute if score #temp FurnitureZTarget matches ..-1 if score #temp AnimationRotationCosZ matches ..-1 if entity @s[scores={FurnitureZTarget=..-1,FurnitureZOrigin=..-1}] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/change_swing_z
execute if score #temp FurnitureZTarget matches 1.. if score #temp AnimationRotationCosZ matches 1.. if entity @s[scores={FurnitureZTarget=..-1,FurnitureZProgress=0..12}] unless entity @s[scores={FurnitureZOrigin=0}] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/change_swing_z
execute if score #temp FurnitureZTarget matches 1.. if score #temp AnimationRotationCosZ matches 1.. if entity @s[scores={FurnitureZTarget=1..,FurnitureZOrigin=1..}] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/change_swing_z
execute unless entity @s[scores={FurnitureZTarget=-900..900}] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/change_swing_z
execute if entity @s[scores={FurnitureZTarget=0}] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/change_swing_z
scoreboard players reset #temp FurnitureZTarget
scoreboard players reset #temp AnimationRotationCosX
scoreboard players reset #temp AnimationRotationCosZ