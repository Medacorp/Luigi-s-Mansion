scoreboard players operation #temp PosX = @s PosX
scoreboard players operation #temp PosY = @s PosY
scoreboard players operation #temp PosZ = @s PosZ
scoreboard players operation #temp2 PosX = #interact PosX
scoreboard players operation #temp2 PosY = #interact PosY
scoreboard players operation #temp2 PosZ = #interact PosZ
scoreboard players operation #temp2 PosX -= #temp PosX
scoreboard players operation #temp2 PosY -= #temp PosY
scoreboard players operation #temp2 PosZ -= #temp PosZ

execute in minecraft:overworld run summon minecraft:marker 0.0 0.0 0.0 {Tags:["temp","remove_from_existence"]}
data modify entity @e[tag=temp,limit=1] Rotation[0] set from entity @s Rotation[1]
execute as @e[tag=temp,limit=1] at @s positioned 0.0 0.0 0.0 run teleport @s ^ ^ ^1
execute store result score #cosx Time run data get entity @e[tag=temp,limit=1] Pos[2] 10

data modify entity @e[tag=temp,limit=1] Rotation[0] set from entity @s Rotation[0]
execute as @e[tag=temp,limit=1] at @s positioned 0.0 0.0 0.0 run teleport @s ^ ^ ^1
execute store result score #cosy Time run data get entity @e[tag=temp,limit=1] Pos[2] 10

data modify entity @e[tag=temp,limit=1] Rotation[0] set from entity @s Rotation[1]
execute as @e[tag=temp,limit=1] at @s positioned 0.0 0.0 0.0 run teleport @s ^ ^ ^-1
execute store result score #sinx Time run data get entity @e[tag=temp,limit=1] Pos[0] 10

data modify entity @e[tag=temp,limit=1] Rotation[0] set from entity @s Rotation[0]
execute as @e[tag=temp,limit=1] at @s positioned 0.0 0.0 0.0 run teleport @s ^ ^ ^-1
execute store result score #siny Time run data get entity @e[tag=temp,limit=1] Pos[0] 10

kill @e[tag=temp]

#-Left = Cos(jaw)PosX + Sin(jaw)Cos(pitch)PosZ - Sin(jaw)*-Sin(pitch)PosY
scoreboard players operation #temp FurnitureSizeLeft = #cosy Time
scoreboard players operation #temp FurnitureSizeLeft *= #temp2 PosX
scoreboard players operation #temp FurnitureSizeLeft /= #10 Constants
scoreboard players operation #temp2 FurnitureSizeLeft = #siny Time
scoreboard players operation #temp2 FurnitureSizeLeft *= #cosx Time
scoreboard players operation #temp2 FurnitureSizeLeft /= #10 Constants
scoreboard players operation #temp2 FurnitureSizeLeft *= #temp2 PosZ
scoreboard players operation #temp2 FurnitureSizeLeft /= #10 Constants
scoreboard players operation #temp FurnitureSizeLeft += #temp2 FurnitureSizeLeft
scoreboard players reset #temp2 FurnitureSizeLeft
scoreboard players operation #temp2 FurnitureSizeLeft -= #sinx Time
scoreboard players operation #temp2 FurnitureSizeLeft *= #siny Time
scoreboard players operation #temp2 FurnitureSizeLeft /= #10 Constants
scoreboard players operation #temp2 FurnitureSizeLeft *= #temp2 PosY
scoreboard players operation #temp2 FurnitureSizeLeft /= #10 Constants
scoreboard players operation #temp FurnitureSizeLeft -= #temp2 FurnitureSizeLeft
scoreboard players reset #temp2 FurnitureSizeLeft
#Up = Cos(pitch)PosY - Sin(pitch)PosZ
scoreboard players operation #temp FurnitureSizeUp = #cosx Time
scoreboard players operation #temp FurnitureSizeUp *= #temp2 PosY
scoreboard players operation #temp FurnitureSizeUp /= #10 Constants
scoreboard players operation #temp2 FurnitureSizeUp = #sinx Time
scoreboard players operation #temp2 FurnitureSizeUp *= #temp2 PosZ
scoreboard players operation #temp2 FurnitureSizeUp /= #10 Constants
scoreboard players operation #temp FurnitureSizeUp -= #temp2 FurnitureSizeUp
scoreboard players reset #temp2 FurnitureSizeUp
#Forward = Cos(jaw)Cos(pitch)PosZ - Sin(jaw)PosX + Cos(jaw)Sin(pitch)PosY
scoreboard players operation #temp FurnitureSizeForward = #cosy Time
scoreboard players operation #temp FurnitureSizeForward *= #cosx Time
scoreboard players operation #temp FurnitureSizeForward /= #10 Constants
scoreboard players operation #temp FurnitureSizeForward *= #temp2 PosZ
scoreboard players operation #temp FurnitureSizeForward /= #10 Constants
scoreboard players operation #temp2 FurnitureSizeForward = #siny Time
scoreboard players operation #temp2 FurnitureSizeForward *= #temp2 PosX
scoreboard players operation #temp2 FurnitureSizeForward /= #10 Constants
scoreboard players operation #temp FurnitureSizeForward -= #temp2 FurnitureSizeForward
scoreboard players reset #temp2 FurnitureSizeForward
scoreboard players operation #temp2 FurnitureSizeForward -= #cosy Time
scoreboard players operation #temp2 FurnitureSizeForward *= #sinx Time
scoreboard players operation #temp2 FurnitureSizeForward /= #10 Constants
scoreboard players operation #temp2 FurnitureSizeForward *= #temp2 PosY
scoreboard players operation #temp2 FurnitureSizeForward /= #10 Constants
scoreboard players operation #temp FurnitureSizeForward += #temp2 FurnitureSizeForward
scoreboard players reset #temp2 FurnitureSizeForward


scoreboard players operation #temp PosX = @s FurnitureSizeLeft
scoreboard players operation #temp PosY = @s FurnitureSizeUp
scoreboard players operation #temp PosZ = @s FurnitureSizeForward
scoreboard players operation #temp PosX /= #2 Constants
execute if entity @s[tag=!hanging_furniture,tag=!standing_furniture] run scoreboard players operation #temp PosY /= #2 Constants
scoreboard players operation #temp PosZ /= #2 Constants
scoreboard players set #temp2 PosX 0
scoreboard players set #temp2 PosY 0
scoreboard players set #temp2 PosZ 0
scoreboard players operation #temp2 PosX -= #temp PosX
execute if entity @s[tag=!standing_furniture] run scoreboard players operation #temp2 PosY -= #temp PosY
execute if entity @s[tag=hanging_furniture] run scoreboard players set #temp PosY 0
scoreboard players operation #temp2 PosZ -= #temp PosZ

execute if score #temp FurnitureSizeLeft >= #temp2 PosX if score #temp FurnitureSizeLeft <= #temp PosX if score #temp FurnitureSizeUp >= #temp2 PosY if score #temp FurnitureSizeUp <= #temp PosY if score #temp FurnitureSizeForward >= #temp2 PosZ if score #temp FurnitureSizeForward <= #temp PosZ run tag @s add hit
scoreboard players reset #cosx
scoreboard players reset #cosy
scoreboard players reset #sinx
scoreboard players reset #siny
scoreboard players reset #temp PosX
scoreboard players reset #temp PosY
scoreboard players reset #temp PosZ
scoreboard players reset #temp FurnitureSizeLeft
scoreboard players reset #temp FurnitureSizeUp
scoreboard players reset #temp FurnitureSizeForward
scoreboard players reset #temp2 PosX
scoreboard players reset #temp2 PosY
scoreboard players reset #temp2 PosZ
scoreboard players reset #temp2 FurnitureSizeLeft
scoreboard players reset #temp2 FurnitureSizeUp
scoreboard players reset #temp2 FurnitureSizeForward