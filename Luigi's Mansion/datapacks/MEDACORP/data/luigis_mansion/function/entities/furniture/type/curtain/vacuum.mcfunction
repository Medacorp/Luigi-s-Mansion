scoreboard players add @s[tag=!revert_wave] ActionTime 1
scoreboard players remove @s[tag=revert_wave] ActionTime 1

execute in minecraft:overworld run summon minecraft:marker 0.0 0.0 0.0 {Tags:["temp","remove_from_existence"]}
data modify entity @e[tag=temp,limit=1] Rotation[0] set from entity @s Rotation[1]
execute as @e[tag=temp,limit=1] at @s positioned 0.0 0.0 0.0 run teleport @s ^ ^ ^1
execute store result score #cosx Time run data get entity @e[tag=temp,limit=1] Pos[2] 10

data modify entity @e[tag=temp,limit=1] Rotation[0] set from entity @s Rotation[0]
execute as @e[tag=temp,limit=1] at @s positioned 0.0 0.0 0.0 run teleport @s ^ ^ ^1
execute store result score #cosy Time run data get entity @e[tag=temp,limit=1] Pos[2] 10

data modify entity @e[tag=temp,limit=1] Rotation[0] set from entity @s Rotation[1]
execute as @e[tag=temp,limit=1] at @s positioned 0.001 0.0 0.0 run teleport @s ^ ^ ^-1
execute store result score #sinx Time run data get entity @e[tag=temp,limit=1] Pos[0] 10

data modify entity @e[tag=temp,limit=1] Rotation[0] set from entity @s Rotation[0]
execute as @e[tag=temp,limit=1] at @s positioned 0.001 0.0 0.0 run teleport @s ^ ^ ^-1
execute store result score #siny Time run data get entity @e[tag=temp,limit=1] Pos[0] 10

$teleport @e[tag=temp,limit=1] ^$(offset) ^ ^

execute store result score #temp PositionX run data get entity @e[tag=temp,limit=1] Pos[0] 10
execute store result score #temp PositionY run data get entity @e[tag=temp,limit=1] Pos[1] 10
execute store result score #temp PositionZ run data get entity @e[tag=temp,limit=1] Pos[2] 10
kill @e[tag=temp,limit=1]
scoreboard players operation #temp3 PositionX = @s FurnitureSizeLeft
scoreboard players operation #temp3 PositionY = @s FurnitureSizeUp
scoreboard players operation #temp3 PositionZ = @s FurnitureSizeForward
scoreboard players operation #temp3 PositionX /= #2 Constants
scoreboard players operation #temp3 PositionZ /= #2 Constants
scoreboard players set #temp5 PositionX 0
scoreboard players set #temp5 PositionY 0
scoreboard players set #temp5 PositionZ 0
scoreboard players operation #temp5 PositionX -= #temp3 PositionX
execute if entity @s[tag=!standing_furniture] run scoreboard players operation #temp5 PositionY -= #temp3 PositionY
execute if entity @s[tag=hanging_furniture] run scoreboard players set #temp5 PositionY 0
scoreboard players operation #temp5 PositionZ -= #temp3 PositionZ

tag @s add me
$execute positioned ^$(offset) ^ ^ as @e[tag=vacuuming_me,sort=nearest,limit=1] run function luigis_mansion:entities/furniture/type/curtain/target
tag @s remove me

execute if entity @s[tag=!open,tag=left] if score #temp FurnitureSizeLeft matches ..-5 unless score @s FurnitureSizeLeft = @s FurnitureCurtainSize run function luigis_mansion:entities/furniture/type/curtain/close
execute if entity @s[tag=!open,tag=!left] if score #temp FurnitureSizeLeft matches 5.. unless score @s FurnitureSizeLeft = @s FurnitureCurtainSize run function luigis_mansion:entities/furniture/type/curtain/close
execute if entity @s[tag=!open,tag=left] if score #temp FurnitureSizeLeft matches 5.. unless score @s FurnitureSizeLeft matches 15 run function luigis_mansion:entities/furniture/type/curtain/open
execute if entity @s[tag=!open,tag=!left] if score #temp FurnitureSizeLeft matches ..-5 unless score @s FurnitureSizeLeft matches 15 run function luigis_mansion:entities/furniture/type/curtain/open

scoreboard players add @s FurnitureVacuum 1
scoreboard players set @s[scores={FurnitureVacuum=5..}] FurnitureVacuum -5
scoreboard players operation #temp FurnitureVacuum = @s FurnitureVacuum
execute if score #temp FurnitureVacuum matches ..-1 run scoreboard players operation #temp FurnitureVacuum *= #-1 Constants
scoreboard players operation #temp FurnitureSizeLeft < #temp FurnitureVacuum
scoreboard players operation #temp FurnitureSizeForward < #temp FurnitureVacuum
scoreboard players operation #temp FurnitureVacuum *= #-1 Constants
scoreboard players operation #temp FurnitureSizeLeft > #temp FurnitureVacuum
scoreboard players operation #temp FurnitureSizeForward > #temp FurnitureVacuum
execute store result storage luigis_mansion:data transformation[1] float 0.1 run scoreboard players operation #temp FurnitureSizeLeft *= #2 Constants
execute store result storage luigis_mansion:data transformation[9] float 0.1 run scoreboard players operation #temp FurnitureSizeForward *= #2 Constants
tag @s add transformed

scoreboard players reset #cosx
scoreboard players reset #cosy
scoreboard players reset #sinx
scoreboard players reset #siny
scoreboard players reset #temp PositionX
scoreboard players reset #temp PositionY
scoreboard players reset #temp PositionZ
scoreboard players reset #temp FurnitureVacuum
scoreboard players reset #temp FurnitureSizeLeft
scoreboard players reset #temp FurnitureSizeUp
scoreboard players reset #temp FurnitureSizeForward
scoreboard players reset #temp2 PositionX
scoreboard players reset #temp2 PositionY
scoreboard players reset #temp2 PositionZ
scoreboard players reset #temp3 PositionX
scoreboard players reset #temp3 PositionY
scoreboard players reset #temp3 PositionZ
scoreboard players reset #temp4 PositionX
scoreboard players reset #temp4 PositionY
scoreboard players reset #temp4 PositionZ
scoreboard players reset #temp5 PositionX
scoreboard players reset #temp5 PositionY
scoreboard players reset #temp5 PositionZ