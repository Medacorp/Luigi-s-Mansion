#-Left = Cos(jaw)PositionX + Sin(jaw)Cos(pitch)PositionZ - Sin(jaw)*-Sin(pitch)PositionY
scoreboard players operation @s FurnitureSizeLeft = #cosy Time
scoreboard players operation @s FurnitureSizeLeft *= @s PositionX
scoreboard players operation @s FurnitureSizeLeft /= #10 Constants
scoreboard players operation #temp FurnitureSizeLeft = #siny Time
scoreboard players operation #temp FurnitureSizeLeft *= #cosx Time
scoreboard players operation #temp FurnitureSizeLeft /= #10 Constants
scoreboard players operation #temp FurnitureSizeLeft *= @s PositionZ
scoreboard players operation #temp FurnitureSizeLeft /= #10 Constants
scoreboard players operation @s FurnitureSizeLeft += #temp FurnitureSizeLeft
scoreboard players reset #temp FurnitureSizeLeft
scoreboard players operation #temp FurnitureSizeLeft -= #sinx Time
scoreboard players operation #temp FurnitureSizeLeft *= #siny Time
scoreboard players operation #temp FurnitureSizeLeft /= #10 Constants
scoreboard players operation #temp FurnitureSizeLeft *= @s PositionY
scoreboard players operation #temp FurnitureSizeLeft /= #10 Constants
scoreboard players operation @s FurnitureSizeLeft -= #temp FurnitureSizeLeft
scoreboard players reset #temp FurnitureSizeLeft
#Up = Cos(pitch)PositionY - Sin(pitch)PositionZ
scoreboard players operation @s FurnitureSizeUp = #cosx Time
scoreboard players operation @s FurnitureSizeUp *= @s PositionY
scoreboard players operation @s FurnitureSizeUp /= #10 Constants
scoreboard players operation #temp FurnitureSizeUp = #sinx Time
scoreboard players operation #temp FurnitureSizeUp *= @s PositionZ
scoreboard players operation #temp FurnitureSizeUp /= #10 Constants
scoreboard players operation @s FurnitureSizeUp -= #temp FurnitureSizeUp
scoreboard players reset #temp FurnitureSizeUp
#Forward = Cos(jaw)Cos(pitch)PositionZ - Sin(jaw)PositionX + Cos(jaw)Sin(pitch)PositionY
scoreboard players operation @s FurnitureSizeForward = #cosy Time
scoreboard players operation @s FurnitureSizeForward *= #cosx Time
scoreboard players operation @s FurnitureSizeForward /= #10 Constants
scoreboard players operation @s FurnitureSizeForward *= @s PositionZ
scoreboard players operation @s FurnitureSizeForward /= #10 Constants
scoreboard players operation #temp FurnitureSizeForward = #siny Time
scoreboard players operation #temp FurnitureSizeForward *= @s PositionX
scoreboard players operation #temp FurnitureSizeForward /= #10 Constants
scoreboard players operation @s FurnitureSizeForward -= #temp FurnitureSizeForward
scoreboard players reset #temp FurnitureSizeForward
scoreboard players operation #temp FurnitureSizeForward -= #cosy Time
scoreboard players operation #temp FurnitureSizeForward *= #sinx Time
scoreboard players operation #temp FurnitureSizeForward /= #10 Constants
scoreboard players operation #temp FurnitureSizeForward *= @s PositionY
scoreboard players operation #temp FurnitureSizeForward /= #10 Constants
scoreboard players operation @s FurnitureSizeForward += #temp FurnitureSizeForward
scoreboard players reset #temp FurnitureSizeForward