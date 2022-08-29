scoreboard players add @s FurnitureXProg 18
function luigis_mansion:entities/furniture/tick/swing/cosx
#amplifier
scoreboard players operation #temp2 Time = @s FurnitureXOrigin
scoreboard players operation #temp2 Time -= @s FurnitureXTarget
scoreboard players operation #temp2 Time /= #2 Constants
scoreboard players operation #temp Time *= #temp2 Time
#offset
scoreboard players operation #temp3 Time = #temp2 Time
scoreboard players operation #temp3 Time -= @s FurnitureXOrigin
scoreboard players operation #temp3 Time *= #10 Constants
scoreboard players operation #temp Time -= #temp3 Time
scoreboard players reset #temp2 Time
scoreboard players reset #temp3 Time
#apply
execute store result entity @s Pose.Head[0] float 0.01 run scoreboard players get #temp Time
scoreboard players set @s[scores={FurnitureXProg=180}] FurnitureXProg 0
execute if entity @s[scores={FurnitureXProg=0}] run function luigis_mansion:entities/furniture/tick/swing/reached/x
execute if entity @s[scores={FurnitureXProg=0}] if score #temp Time matches 0 run scoreboard players reset @s FurnitureXTarget
scoreboard players reset #temp Time