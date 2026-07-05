execute at @s facing entity @e[tag=searcher,tag=!this_player,limit=1] feet rotated ~ 0 run teleport @e[tag=interact,limit=1] ^ ^-2 ^1
execute store result score #interact PositionX run data get entity @e[tag=interact,limit=1] Pos[0] 10
execute store result score #interact PositionY run data get entity @e[tag=interact,limit=1] Pos[1] 10
execute store result score #interact PositionZ run data get entity @e[tag=interact,limit=1] Pos[2] 10
teleport @e[tag=interact,limit=1] ~ ~ ~
function luigis_mansion:items/interact/target_furniture/swing_get_direction
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
execute store result score @s FurnitureXOrigin run scoreboard players operation #temp AnimationRotationCosX /= #10 Constants
scoreboard players set @s FurnitureXProgress 0
execute if entity @s[tag=inverted_swing] run scoreboard players operation #temp FurnitureXTarget *= #-1 Constants
scoreboard players operation @s FurnitureXTarget = #temp FurnitureXTarget
scoreboard players reset #temp FurnitureXTarget

scoreboard players operation #temp Time = @s FurnitureZOrigin
scoreboard players operation #temp Time -= @s FurnitureZTarget
scoreboard players operation #temp Time /= #2 Constants
scoreboard players operation #temp AnimationRotationCosZ *= #temp Time
scoreboard players operation #temp Time -= @s FurnitureZOrigin
scoreboard players operation #temp Time *= #1000 Constants
scoreboard players operation #temp AnimationRotationCosZ -= #temp Time
scoreboard players operation #temp AnimationRotationCosZ /= #1000 Constants
scoreboard players operation #temp AnimationRotationCosZ *= #-1 Constants
execute store result score @s FurnitureZOrigin run scoreboard players operation #temp AnimationRotationCosZ /= #10 Constants
scoreboard players set @s FurnitureZProgress 0
execute if entity @s[tag=!inverted_swing] run scoreboard players operation #temp FurnitureZTarget *= #-1 Constants
scoreboard players operation @s FurnitureZTarget = #temp FurnitureZTarget
scoreboard players reset #temp FurnitureZTarget
scoreboard players reset #temp AnimationRotationCosX
scoreboard players reset #temp AnimationRotationCosZ
scoreboard players reset #temp Time