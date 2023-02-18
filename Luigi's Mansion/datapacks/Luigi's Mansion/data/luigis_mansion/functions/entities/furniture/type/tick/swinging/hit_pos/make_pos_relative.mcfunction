#-Left = Cos(jaw)PosX + Sin(jaw)Cos(pitch)PosZ - Sin(jaw)*-Sin(pitch)PosY
scoreboard players operation @s FurnitureSizeLeft = #cosy Time
scoreboard players operation @s FurnitureSizeLeft *= @s PosX
scoreboard players operation @s FurnitureSizeLeft /= #10 Constants
scoreboard players operation #temp FurnitureSizeLeft = #siny Time
scoreboard players operation #temp FurnitureSizeLeft *= #cosx Time
scoreboard players operation #temp FurnitureSizeLeft /= #10 Constants
scoreboard players operation #temp FurnitureSizeLeft *= @s PosZ
scoreboard players operation #temp FurnitureSizeLeft /= #10 Constants
scoreboard players operation @s FurnitureSizeLeft += #temp FurnitureSizeLeft
scoreboard players reset #temp FurnitureSizeLeft
scoreboard players operation #temp FurnitureSizeLeft -= #sinx Time
scoreboard players operation #temp FurnitureSizeLeft *= #siny Time
scoreboard players operation #temp FurnitureSizeLeft /= #10 Constants
scoreboard players operation #temp FurnitureSizeLeft *= @s PosY
scoreboard players operation #temp FurnitureSizeLeft /= #10 Constants
scoreboard players operation @s FurnitureSizeLeft -= #temp FurnitureSizeLeft
scoreboard players reset #temp FurnitureSizeLeft
#Up = Cos(pitch)PosY - Sin(pitch)PosZ
scoreboard players operation @s FurnitureSizeUp = #cosx Time
scoreboard players operation @s FurnitureSizeUp *= @s PosY
scoreboard players operation @s FurnitureSizeUp /= #10 Constants
scoreboard players operation #temp FurnitureSizeUp = #sinx Time
scoreboard players operation #temp FurnitureSizeUp *= @s PosZ
scoreboard players operation #temp FurnitureSizeUp /= #10 Constants
scoreboard players operation @s FurnitureSizeUp -= #temp FurnitureSizeUp
scoreboard players reset #temp FurnitureSizeUp
#Forward = Cos(jaw)Cos(pitch)PosZ - Sin(jaw)PosX + Cos(jaw)Sin(pitch)PosY
scoreboard players operation @s FurnitureSizeForward = #cosy Time
scoreboard players operation @s FurnitureSizeForward *= #cosx Time
scoreboard players operation @s FurnitureSizeForward /= #10 Constants
scoreboard players operation @s FurnitureSizeForward *= @s PosZ
scoreboard players operation @s FurnitureSizeForward /= #10 Constants
scoreboard players operation #temp FurnitureSizeForward = #siny Time
scoreboard players operation #temp FurnitureSizeForward *= @s PosX
scoreboard players operation #temp FurnitureSizeForward /= #10 Constants
scoreboard players operation @s FurnitureSizeForward -= #temp FurnitureSizeForward
scoreboard players reset #temp FurnitureSizeForward
scoreboard players operation #temp FurnitureSizeForward -= #cosy Time
scoreboard players operation #temp FurnitureSizeForward *= #sinx Time
scoreboard players operation #temp FurnitureSizeForward /= #10 Constants
scoreboard players operation #temp FurnitureSizeForward *= @s PosY
scoreboard players operation #temp FurnitureSizeForward /= #10 Constants
scoreboard players operation @s FurnitureSizeForward += #temp FurnitureSizeForward
scoreboard players reset #temp FurnitureSizeForward