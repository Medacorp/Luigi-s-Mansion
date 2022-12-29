#-Left = Cos(jaw)PosX + Sin(jaw)Cos(pitch)PosZ - Sin(jaw)*-Sin(pitch)PosY
scoreboard players operation @s FurnitureSizeL = #cosy Time
scoreboard players operation @s FurnitureSizeL *= @s PosX
scoreboard players operation @s FurnitureSizeL /= #10 Constants
scoreboard players operation #temp FurnitureSizeL = #siny Time
scoreboard players operation #temp FurnitureSizeL *= #cosx Time
scoreboard players operation #temp FurnitureSizeL /= #10 Constants
scoreboard players operation #temp FurnitureSizeL *= @s PosZ
scoreboard players operation #temp FurnitureSizeL /= #10 Constants
scoreboard players operation @s FurnitureSizeL += #temp FurnitureSizeL
scoreboard players reset #temp FurnitureSizeL
scoreboard players operation #temp FurnitureSizeL -= #sinx Time
scoreboard players operation #temp FurnitureSizeL *= #siny Time
scoreboard players operation #temp FurnitureSizeL /= #10 Constants
scoreboard players operation #temp FurnitureSizeL *= @s PosY
scoreboard players operation #temp FurnitureSizeL /= #10 Constants
scoreboard players operation @s FurnitureSizeL -= #temp FurnitureSizeL
scoreboard players reset #temp FurnitureSizeL
#Up = Cos(pitch)PosY - Sin(pitch)PosZ
scoreboard players operation @s FurnitureSizeU = #cosx Time
scoreboard players operation @s FurnitureSizeU *= @s PosY
scoreboard players operation @s FurnitureSizeU /= #10 Constants
scoreboard players operation #temp FurnitureSizeU = #sinx Time
scoreboard players operation #temp FurnitureSizeU *= @s PosZ
scoreboard players operation #temp FurnitureSizeU /= #10 Constants
scoreboard players operation @s FurnitureSizeU -= #temp FurnitureSizeU
scoreboard players reset #temp FurnitureSizeU
#Forward = Cos(jaw)Cos(pitch)PosZ - Sin(jaw)PosX + Cos(jaw)Sin(pitch)PosY
scoreboard players operation @s FurnitureSizeF = #cosy Time
scoreboard players operation @s FurnitureSizeF *= #cosx Time
scoreboard players operation @s FurnitureSizeF /= #10 Constants
scoreboard players operation @s FurnitureSizeF *= @s PosZ
scoreboard players operation @s FurnitureSizeF /= #10 Constants
scoreboard players operation #temp FurnitureSizeF = #siny Time
scoreboard players operation #temp FurnitureSizeF *= @s PosX
scoreboard players operation #temp FurnitureSizeF /= #10 Constants
scoreboard players operation @s FurnitureSizeF -= #temp FurnitureSizeF
scoreboard players reset #temp FurnitureSizeF
scoreboard players operation #temp FurnitureSizeF -= #cosy Time
scoreboard players operation #temp FurnitureSizeF *= #sinx Time
scoreboard players operation #temp FurnitureSizeF /= #10 Constants
scoreboard players operation #temp FurnitureSizeF *= @s PosY
scoreboard players operation #temp FurnitureSizeF /= #10 Constants
scoreboard players operation @s FurnitureSizeF += #temp FurnitureSizeF
scoreboard players reset #temp FurnitureSizeF