scoreboard players add @s FurnitureZProg 18
function luigis_mansion:entities/furniture/tick/swing/cosz
#amplifier
scoreboard players operation #temp2 Time = @s FurnitureZOrigin
scoreboard players operation #temp2 Time -= @s FurnitureZTarget
scoreboard players operation #temp2 Time /= #2 Constants
scoreboard players operation #temp Time *= #temp2 Time
#offset
scoreboard players operation #temp3 Time = #temp2 Time
scoreboard players operation #temp3 Time -= @s FurnitureZOrigin
scoreboard players operation #temp3 Time *= #10 Constants
scoreboard players operation #temp Time -= #temp3 Time
scoreboard players reset #temp2 Time
scoreboard players reset #temp3 Time
#apply
execute store result entity @s Pose.Head[2] float 0.01 run scoreboard players get #temp Time
scoreboard players set @s[scores={FurnitureZProg=180}] FurnitureZProg 0
execute if entity @s[scores={FurnitureZProg=0}] run function luigis_mansion:entities/furniture/tick/swing/reached/z
execute if entity @s[scores={FurnitureZProg=0}] if score #temp Time matches 0 run scoreboard players reset @s FurnitureZTarget
scoreboard players reset #temp Time