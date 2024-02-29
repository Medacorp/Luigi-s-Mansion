teleport @s ~ ~1.4 ~
execute store result score #temp Time run data get entity @s Pos[1] 10
execute as @e[distance=..0.1,tag=furniture,limit=1,scores={FurnitureSizeRadius=1..}] run scoreboard players operation #temp2 Time = @s FurnitureSizeRadius
execute as @e[distance=..0.1,tag=furniture,limit=1,scores={FurnitureSizeHeight=1..}] run scoreboard players operation #temp2 Time = @s FurnitureSizeHeight
execute as @e[distance=..0.1,tag=furniture,limit=1,scores={FurnitureSizeUp=1..}] run scoreboard players operation #temp2 Time = @s FurnitureSizeUp
execute if entity @e[distance=..0.1,tag=furniture,limit=1,scores={FurnitureSizeUp=1..}] run scoreboard players operation #temp2 Time *= #2 Constants
execute if entity @e[distance=..0.1,tag=furniture,limit=1,tag=!standing_furniture] run scoreboard players operation #temp2 Time /= #2 Constants
execute if entity @e[distance=..0.1,tag=furniture,limit=1,tag=!hanging_furniture] store result entity @s Pos[1] double 0.1 run scoreboard players operation #temp Time += #temp2 Time
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time