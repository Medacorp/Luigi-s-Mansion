scoreboard players operation #temp2 PositionX = @s PositionX
scoreboard players operation #temp2 PositionY = @s PositionY
scoreboard players operation #temp2 EntityYOffset = @s EntityYOffset
scoreboard players operation #temp2 EntityYOffset /= #2 Constants
scoreboard players operation #temp2 PositionY -= #temp2 EntityYOffset
scoreboard players reset #temp2 EntityYOffset
scoreboard players operation #temp2 PositionZ = @s PositionZ

scoreboard players operation #temp2 PositionX -= #temp PositionX
scoreboard players operation #temp2 PositionY -= #temp PositionY
scoreboard players operation #temp2 PositionZ -= #temp PositionZ
scoreboard players operation #temp2 PositionX *= #-1 Constants
scoreboard players operation #temp2 PositionY *= #-1 Constants
scoreboard players operation #temp2 PositionZ *= #-1 Constants

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

scoreboard players operation #temp4 PositionX = #temp FurnitureSizeLeft
scoreboard players operation #temp4 PositionX < #temp3 PositionX
scoreboard players operation #temp4 PositionX > #temp5 PositionX
execute if entity @e[tag=me,tag=side_pull_only] if score #temp FurnitureSizeLeft matches 0.. run scoreboard players operation #temp4 PositionX = #temp3 PositionX
execute if entity @e[tag=me,tag=side_pull_only] if score #temp FurnitureSizeLeft matches ..-1 run scoreboard players operation #temp4 PositionX = #temp5 PositionX
scoreboard players operation #temp4 PositionY = #temp FurnitureSizeUp
scoreboard players operation #temp4 PositionY < #temp3 PositionY
scoreboard players operation #temp4 PositionY > #temp5 PositionY
scoreboard players operation #temp4 PositionZ = #temp FurnitureSizeForward
scoreboard players operation #temp4 PositionZ < #temp3 PositionZ
scoreboard players operation #temp4 PositionZ > #temp5 PositionZ
scoreboard players operation #temp2 PositionX = #temp FurnitureSizeLeft
scoreboard players operation #temp2 PositionY = #temp FurnitureSizeUp
scoreboard players operation #temp2 PositionZ = #temp FurnitureSizeForward
scoreboard players operation #temp2 PositionX -= #temp4 PositionX
scoreboard players operation #temp2 PositionY -= #temp4 PositionY
scoreboard players operation #temp2 PositionZ -= #temp4 PositionZ
scoreboard players operation #temp2 PositionX *= #temp2 PositionX
scoreboard players operation #temp2 PositionY *= #temp2 PositionY
scoreboard players operation #temp2 PositionZ *= #temp2 PositionZ
scoreboard players operation #temp2 PositionX += #temp2 PositionY
scoreboard players operation #temp2 PositionX += #temp2 PositionZ
execute if score #temp2 PositionX matches ..80 run tag @s add potential_latch
execute if score #temp2 PositionX matches 800.. run tag @s add potential_pull