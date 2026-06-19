scoreboard players add @s FurnitureZProgress 12
scoreboard players set @s[scores={FurnitureZProgress=180}] FurnitureZProgress 0
execute if entity @s[scores={FurnitureZProgress=0}] run function luigis_mansion:entities/furniture/type/swinging/reached/z

execute if entity @s[tag=!clothes,scores={FurnitureZProgress=84,FurnitureZTarget=-100..100}] unless entity @s[scores={FurnitureZTarget=-50..50}] run playsound luigis_mansion:furniture.search.swing block @a[tag=same_room] ~ ~ ~ 1 0.4
execute if entity @s[tag=!clothes,scores={FurnitureZProgress=84,FurnitureZTarget=-200..200}] unless entity @s[scores={FurnitureZTarget=-100..100}] run playsound luigis_mansion:furniture.search.swing block @a[tag=same_room] ~ ~ ~ 1 0.6
execute if entity @s[tag=!clothes,scores={FurnitureZProgress=84,FurnitureZTarget=-300..300}] unless entity @s[scores={FurnitureZTarget=-200..200}] run playsound luigis_mansion:furniture.search.swing block @a[tag=same_room] ~ ~ ~ 1 0.8
execute if entity @s[tag=!clothes,scores={FurnitureZProgress=84}] unless entity @s[scores={FurnitureZTarget=-300..300}] run playsound luigis_mansion:furniture.search.swing block @a[tag=same_room] ~ ~ ~ 1 1
execute if entity @s[tag=clothes,scores={FurnitureZProgress=84,FurnitureZTarget=-100..100}] unless entity @s[scores={FurnitureZTarget=-50..50}] run playsound luigis_mansion:furniture.search.clothes block @a[tag=same_room] ~ ~ ~ 1 0.4
execute if entity @s[tag=clothes,scores={FurnitureZProgress=84,FurnitureZTarget=-200..200}] unless entity @s[scores={FurnitureZTarget=-100..100}] run playsound luigis_mansion:furniture.search.clothes block @a[tag=same_room] ~ ~ ~ 1 0.6
execute if entity @s[tag=clothes,scores={FurnitureZProgress=84,FurnitureZTarget=-300..300}] unless entity @s[scores={FurnitureZTarget=-200..200}] run playsound luigis_mansion:furniture.search.clothes block @a[tag=same_room] ~ ~ ~ 1 0.8
execute if entity @s[tag=clothes,scores={FurnitureZProgress=84}] unless entity @s[scores={FurnitureZTarget=-300..300}] run playsound luigis_mansion:furniture.search.clothes block @a[tag=same_room] ~ ~ ~ 1 1

execute if score @s FurnitureVacuum matches ..-1 if score @s FurnitureZTarget matches 1.. run scoreboard players operation @s FurnitureVacuum *= #-1 Constants
execute if score @s FurnitureVacuum matches 1.. if score @s FurnitureZTarget matches 1.. run scoreboard players operation @s FurnitureVacuum > @s FurnitureZTarget
execute if score @s FurnitureVacuum matches 1.. if score @s FurnitureZTarget matches ..-1 run scoreboard players operation @s FurnitureVacuum *= #-1 Constants
execute if score @s FurnitureVacuum matches ..-1 if score @s FurnitureZTarget matches ..-1 run scoreboard players operation @s FurnitureVacuum < @s FurnitureZTarget
execute if score @s FurnitureVacuum matches 0 if entity @s[scores={FurnitureZTarget=-900..900}] run scoreboard players operation @s FurnitureVacuum = @s FurnitureZTarget
function luigis_mansion:entities/furniture/type/swinging/update