data modify storage luigis_mansion:data macro set value {facing_x:0.0d,facing_y:0.0d,facing_z:0.0d}
execute store result score #temp EntityYOffset run data get entity @s Pos[0] 1000
execute store result storage luigis_mansion:data macro.facing_x double 0.001 run scoreboard players remove #temp EntityYOffset 1
execute store result score #temp EntityYOffset run data get entity @s Pos[1] 1000
execute store result storage luigis_mansion:data macro.facing_y double 0.001 run scoreboard players remove #temp EntityYOffset 501
execute store result score #temp EntityYOffset run data get entity @s Pos[2] 1000
execute store result storage luigis_mansion:data macro.facing_z double 0.001 run scoreboard players remove #temp EntityYOffset 1
scoreboard players reset #temp EntityYOffset

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

scoreboard players operation #temp PositionX = @s PositionX
scoreboard players operation #temp PositionY = @s PositionY
scoreboard players operation #temp PositionZ = @s PositionZ
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
execute unless entity @s[scores={SearcherID=-2147483648..}] as @e[tag=vacuuming_me] run function luigis_mansion:entities/furniture/type/poster/target
scoreboard players operation @s SearcherID = @e[tag=potential_latch,sort=random,limit=1] ID
$execute if entity @s[scores={SearcherID=-2147483648..}] as @e[tag=vacuuming_me,scores={ID=$(puller)},limit=1] run function luigis_mansion:entities/furniture/type/poster/limit_player with storage luigis_mansion:data macro
execute unless entity @s[scores={SearcherID=-2147483648..}] as @e[tag=vacuuming_me,sort=nearest,limit=1] run function luigis_mansion:entities/furniture/type/poster/flow
tag @e[tag=potential_latch] remove potential_latch
tag @e[tag=potential_pull] remove potential_pull
tag @s remove me

scoreboard players operation #temp2 PositionX = @s PositionX
scoreboard players operation #temp2 PositionY = @s PositionY
scoreboard players operation #temp2 PositionZ = @s PositionZ
scoreboard players operation #temp2 PositionX -= #temp PositionX
scoreboard players operation #temp2 PositionY -= #temp PositionY
scoreboard players operation #temp2 PositionZ -= #temp PositionZ

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
data modify storage luigis_mansion:data transformation set from entity @s data.default_transformation
execute unless entity @s[scores={SearcherID=-2147483648..}] run scoreboard players operation #temp FurnitureSizeLeft < #temp FurnitureVacuum
execute unless entity @s[scores={SearcherID=-2147483648..}] run scoreboard players operation #temp FurnitureSizeUp < #temp FurnitureVacuum
execute unless entity @s[scores={SearcherID=-2147483648..}] run scoreboard players operation #temp FurnitureSizeForward < #temp FurnitureVacuum
scoreboard players operation #temp FurnitureVacuum *= #-1 Constants
execute unless entity @s[scores={SearcherID=-2147483648..}] run scoreboard players operation #temp FurnitureSizeLeft > #temp FurnitureVacuum
execute unless entity @s[scores={SearcherID=-2147483648..}] run scoreboard players operation #temp FurnitureSizeUp > #temp FurnitureVacuum
execute unless entity @s[scores={SearcherID=-2147483648..}] run scoreboard players operation #temp FurnitureSizeForward > #temp FurnitureVacuum
execute store result storage luigis_mansion:data transformation[2] float 0.1 run scoreboard players operation #temp FurnitureSizeLeft *= #2 Constants
execute store result storage luigis_mansion:data transformation[6] float 0.1 run scoreboard players operation #temp FurnitureSizeUp *= #2 Constants
execute store result storage luigis_mansion:data transformation[10] float 0.1 run scoreboard players operation #temp FurnitureSizeForward *= #2 Constants
execute if score #temp FurnitureSizeForward matches 0 run data modify storage luigis_mansion:data transformation[10] set value 0.01f
data modify entity @s transformation set from storage luigis_mansion:data transformation
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