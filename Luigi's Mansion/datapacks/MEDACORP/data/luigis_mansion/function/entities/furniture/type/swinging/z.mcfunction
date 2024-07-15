scoreboard players add @s FurnitureZProgress 12
function luigis_mansion:entities/furniture/type/swinging/cosz
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
scoreboard players set @s[scores={FurnitureZProgress=180}] FurnitureZProgress 0
execute if entity @s[scores={FurnitureZProgress=0}] run function luigis_mansion:entities/furniture/type/swinging/reached/z
execute if entity @s[scores={FurnitureZProgress=0}] if score #temp Time matches 0 run scoreboard players reset @s FurnitureZTarget
scoreboard players reset #temp Time

execute if entity @s[scores={FurnitureZProgress=84,FurnitureZTarget=-100..100}] unless entity @s[scores={FurnitureZTarget=-50..50}] run playsound luigis_mansion:furniture.search.swing block @a[tag=same_room] ~ ~ ~ 1 0.4
execute if entity @s[scores={FurnitureZProgress=84,FurnitureZTarget=-200..200}] unless entity @s[scores={FurnitureZTarget=-100..100}] run playsound luigis_mansion:furniture.search.swing block @a[tag=same_room] ~ ~ ~ 1 0.6
execute if entity @s[scores={FurnitureZProgress=84,FurnitureZTarget=-300..300}] unless entity @s[scores={FurnitureZTarget=-200..200}] run playsound luigis_mansion:furniture.search.swing block @a[tag=same_room] ~ ~ ~ 1 0.8
execute if entity @s[scores={FurnitureZProgress=84}] unless entity @s[scores={FurnitureZTarget=-300..300}] run playsound luigis_mansion:furniture.search.swing block @a[tag=same_room] ~ ~ ~ 1 1

execute if score @s FurnitureVacuum matches ..-1 if score @s FurnitureZTarget matches 1.. run scoreboard players operation @s FurnitureVacuum *= #-1 Constants
execute if score @s FurnitureVacuum matches 1.. if score @s FurnitureZTarget matches 1.. run scoreboard players operation @s FurnitureVacuum > @s FurnitureZTarget
execute if score @s FurnitureVacuum matches 1.. if score @s FurnitureZTarget matches ..-1 run scoreboard players operation @s FurnitureVacuum *= #-1 Constants
execute if score @s FurnitureVacuum matches ..-1 if score @s FurnitureZTarget matches ..-1 run scoreboard players operation @s FurnitureVacuum < @s FurnitureZTarget
execute if score @s FurnitureVacuum matches 0 if entity @s[scores={FurnitureZTarget=-900..900}] run scoreboard players operation @s FurnitureVacuum = @s FurnitureZTarget