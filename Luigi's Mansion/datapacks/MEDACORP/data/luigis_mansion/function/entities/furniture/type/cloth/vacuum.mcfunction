data modify storage luigis_mansion:data macro set value {facing_x:0.0d,facing_y:0.0d,facing_z:0.0d}
data modify storage luigis_mansion:data macro.facing_x set from entity @s Pos[0]
execute store result score #temp EntityYOffset run data get entity @s Pos[1] 100
execute store result storage luigis_mansion:data macro.facing_y double 0.01 run scoreboard players remove #temp EntityYOffset 50
scoreboard players reset #temp EntityYOffset
data modify storage luigis_mansion:data macro.facing_z set from entity @s Pos[2]
tag @s add me
$execute if entity @s[scores={SearcherID=-2147483648..}] as @e[tag=vacuuming_me,scores={ID=$(puller)},limit=1] run function luigis_mansion:entities/furniture/type/cloth/limit_player with storage luigis_mansion:data macro
execute unless entity @s[scores={SearcherID=-2147483648..}] as @e[tag=vacuuming_me,sort=nearest,limit=1] run function luigis_mansion:entities/furniture/type/cloth/target
tag @s remove me

scoreboard players operation #temp2 PositionX = @s PositionX
scoreboard players operation #temp2 PositionY = @s PositionY
scoreboard players operation #temp2 PositionZ = @s PositionZ
scoreboard players operation #temp2 PositionX -= #temp PositionX
scoreboard players operation #temp2 PositionY -= #temp PositionY
scoreboard players operation #temp2 PositionZ -= #temp PositionZ

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

kill @e[tag=temp,limit=1]

#-Left = Cos(jaw)PositionX + Sin(jaw)Cos(pitch)PositionZ - Sin(jaw)*-Sin(pitch)PositionY
scoreboard players operation #temp FurnitureSizeLeft = #cosy Time
scoreboard players operation #temp FurnitureSizeLeft *= #temp2 PositionX
scoreboard players operation #temp FurnitureSizeLeft /= #10 Constants
scoreboard players operation #temp2 FurnitureSizeLeft = #siny Time
scoreboard players operation #temp2 FurnitureSizeLeft *= #cosx Time
scoreboard players operation #temp2 FurnitureSizeLeft /= #10 Constants
scoreboard players operation #temp2 FurnitureSizeLeft *= #temp2 PositionZ
scoreboard players operation #temp2 FurnitureSizeLeft /= #10 Constants
scoreboard players operation #temp FurnitureSizeLeft += #temp2 FurnitureSizeLeft
scoreboard players reset #temp2 FurnitureSizeLeft
scoreboard players operation #temp2 FurnitureSizeLeft -= #sinx Time
scoreboard players operation #temp2 FurnitureSizeLeft *= #siny Time
scoreboard players operation #temp2 FurnitureSizeLeft /= #10 Constants
scoreboard players operation #temp2 FurnitureSizeLeft *= #temp2 PositionY
scoreboard players operation #temp2 FurnitureSizeLeft /= #10 Constants
scoreboard players operation #temp FurnitureSizeLeft -= #temp2 FurnitureSizeLeft
scoreboard players reset #temp2 FurnitureSizeLeft
#Up = Cos(pitch)PositionY - Sin(pitch)PositionZ
scoreboard players operation #temp FurnitureSizeUp = #cosx Time
scoreboard players operation #temp FurnitureSizeUp *= #temp2 PositionY
scoreboard players operation #temp FurnitureSizeUp /= #10 Constants
scoreboard players operation #temp2 FurnitureSizeUp = #sinx Time
scoreboard players operation #temp2 FurnitureSizeUp *= #temp2 PositionZ
scoreboard players operation #temp2 FurnitureSizeUp /= #10 Constants
scoreboard players operation #temp FurnitureSizeUp -= #temp2 FurnitureSizeUp
scoreboard players reset #temp2 FurnitureSizeUp
#Forward = Cos(jaw)Cos(pitch)PositionZ - Sin(jaw)PositionX + Cos(jaw)Sin(pitch)PositionY
scoreboard players operation #temp FurnitureSizeForward = #cosy Time
scoreboard players operation #temp FurnitureSizeForward *= #cosx Time
scoreboard players operation #temp FurnitureSizeForward /= #10 Constants
scoreboard players operation #temp FurnitureSizeForward *= #temp2 PositionZ
scoreboard players operation #temp FurnitureSizeForward /= #10 Constants
scoreboard players operation #temp2 FurnitureSizeForward = #siny Time
scoreboard players operation #temp2 FurnitureSizeForward *= #temp2 PositionX
scoreboard players operation #temp2 FurnitureSizeForward /= #10 Constants
scoreboard players operation #temp FurnitureSizeForward -= #temp2 FurnitureSizeForward
scoreboard players reset #temp2 FurnitureSizeForward
scoreboard players operation #temp2 FurnitureSizeForward -= #cosy Time
scoreboard players operation #temp2 FurnitureSizeForward *= #sinx Time
scoreboard players operation #temp2 FurnitureSizeForward /= #10 Constants
scoreboard players operation #temp2 FurnitureSizeForward *= #temp2 PositionY
scoreboard players operation #temp2 FurnitureSizeForward /= #10 Constants
scoreboard players operation #temp FurnitureSizeForward += #temp2 FurnitureSizeForward
scoreboard players reset #temp2 FurnitureSizeForward

scoreboard players add @s FurnitureVacuum 1
scoreboard players set @s[scores={FurnitureVacuum=5..}] FurnitureVacuum -5
scoreboard players operation #temp FurnitureVacuum = @s FurnitureVacuum
execute if score #temp FurnitureVacuum matches ..-1 run scoreboard players operation #temp FurnitureVacuum *= #-1 Constants
execute unless entity @s[scores={SearcherID=-2147483648..}] run scoreboard players operation #temp FurnitureSizeLeft < #temp FurnitureVacuum
execute unless entity @s[scores={SearcherID=-2147483648..}] run scoreboard players operation #temp FurnitureSizeUp = #temp FurnitureVacuum
execute unless entity @s[scores={SearcherID=-2147483648..}] run scoreboard players operation #temp FurnitureSizeForward < #temp FurnitureVacuum
scoreboard players operation #temp FurnitureVacuum *= #-1 Constants
execute unless entity @s[scores={SearcherID=-2147483648..}] run scoreboard players operation #temp FurnitureSizeLeft > #temp FurnitureVacuum
execute unless entity @s[scores={SearcherID=-2147483648..}] run scoreboard players operation #temp FurnitureSizeForward > #temp FurnitureVacuum
data modify storage luigis_mansion:data transformation set from entity @s data.default_transformation
execute store result score #temp Time run data get storage luigis_mansion:data transformation[5] 20
execute unless entity @s[scores={SearcherID=-2147483648..}] run scoreboard players operation #temp FurnitureSizeUp += #temp Time
execute store result storage luigis_mansion:data transformation[1] float 0.05 run scoreboard players get #temp FurnitureSizeLeft
execute store result storage luigis_mansion:data transformation[5] float 0.05 run scoreboard players get #temp FurnitureSizeUp
execute if score #temp FurnitureSizeUp matches 0 run data modify storage luigis_mansion:data transformation[5] set value 0.01f
execute store result storage luigis_mansion:data transformation[9] float 0.05 run scoreboard players get #temp FurnitureSizeForward
execute store result score #temp Time run data get storage luigis_mansion:data transformation[0] 10
scoreboard players operation #temp FurnitureSizeLeft /= #temp Time
execute store result score #temp Time run data get storage luigis_mansion:data transformation[10] 10
scoreboard players operation #temp FurnitureSizeForward /= #temp Time
scoreboard players operation #temp Time = #temp FurnitureSizeLeft
execute if score #temp Time matches ..-1 unless score #temp FurnitureSizeForward matches 1.. run scoreboard players operation #temp Time *= #-1 Constants
execute if score #temp Time matches 1.. unless score #temp FurnitureSizeForward matches ..-1 run scoreboard players operation #temp Time *= #-1 Constants
tag @s[scores={FurnitureSearch=..40}] remove pulled_front
tag @s[scores={FurnitureSearch=..40}] remove pulled_back
tag @s[scores={FurnitureSearch=..40}] remove pulled_left
tag @s[scores={FurnitureSearch=..40}] remove pulled_right
execute if score #temp Time matches 1.. if score #temp FurnitureSizeForward > #temp Time run tag @s[scores={FurnitureSearch=..40}] add pulled_front
execute if score #temp Time matches ..-1 if score #temp FurnitureSizeForward < #temp Time run tag @s[scores={FurnitureSearch=..40}] add pulled_back
execute if score #temp Time matches 1.. if score #temp FurnitureSizeForward < #temp Time if score #temp FurnitureSizeLeft matches 1.. run tag @s[scores={FurnitureSearch=..40}] add pulled_left
execute if score #temp Time matches ..-1 if score #temp FurnitureSizeForward > #temp Time if score #temp FurnitureSizeLeft matches ..-1 run tag @s[scores={FurnitureSearch=..40}] add pulled_right
data modify entity @s transformation set from storage luigis_mansion:data transformation
data modify storage luigis_mansion:data temp_transformation set from storage luigis_mansion:data transformation
data remove storage luigis_mansion:data transformation
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
scoreboard players reset #temp Time
scoreboard players reset #temp2 PositionX
scoreboard players reset #temp2 PositionY
scoreboard players reset #temp2 PositionZ

scoreboard players operation @s FurnitureSearch += #temp FurnitureSearch
scoreboard players reset #temp FurnitureSearch
execute if entity @s[scores={SearcherID=-2147483648..,FurnitureSearch=40..}] run function luigis_mansion:entities/furniture/type/cloth/vacuum_up with entity @s data