scoreboard players add @s FurnitureXProgress 12
scoreboard players set @s[scores={FurnitureXProgress=180}] FurnitureXProgress 0
execute if entity @s[scores={FurnitureXProgress=0}] run function luigis_mansion:entities/furniture/type/swinging/reached/x

execute if entity @s[tag=!clothes,scores={FurnitureXProgress=84,FurnitureXTarget=-100..100}] unless entity @s[scores={FurnitureXTarget=-50..50}] run playsound luigis_mansion:furniture.search.swing block @a[tag=same_room] ~ ~ ~ 1 0.4
execute if entity @s[tag=!clothes,scores={FurnitureXProgress=84,FurnitureXTarget=-200..200}] unless entity @s[scores={FurnitureXTarget=-100..100}] run playsound luigis_mansion:furniture.search.swing block @a[tag=same_room] ~ ~ ~ 1 0.6
execute if entity @s[tag=!clothes,scores={FurnitureXProgress=84,FurnitureXTarget=-300..300}] unless entity @s[scores={FurnitureXTarget=-200..200}] run playsound luigis_mansion:furniture.search.swing block @a[tag=same_room] ~ ~ ~ 1 0.8
execute if entity @s[tag=!clothes,scores={FurnitureXProgress=84}] unless entity @s[scores={FurnitureXTarget=-300..300}] run playsound luigis_mansion:furniture.search.swing block @a[tag=same_room] ~ ~ ~ 1 1
execute if entity @s[tag=clothes,scores={FurnitureXProgress=84,FurnitureXTarget=-100..100}] unless entity @s[scores={FurnitureXTarget=-50..50}] run playsound luigis_mansion:furniture.search.clothes block @a[tag=same_room] ~ ~ ~ 1 0.4
execute if entity @s[tag=clothes,scores={FurnitureXProgress=84,FurnitureXTarget=-200..200}] unless entity @s[scores={FurnitureXTarget=-100..100}] run playsound luigis_mansion:furniture.search.clothes block @a[tag=same_room] ~ ~ ~ 1 0.6
execute if entity @s[tag=clothes,scores={FurnitureXProgress=84,FurnitureXTarget=-300..300}] unless entity @s[scores={FurnitureXTarget=-200..200}] run playsound luigis_mansion:furniture.search.clothes block @a[tag=same_room] ~ ~ ~ 1 0.8
execute if entity @s[tag=clothes,scores={FurnitureXProgress=84}] unless entity @s[scores={FurnitureXTarget=-300..300}] run playsound luigis_mansion:furniture.search.clothes block @a[tag=same_room] ~ ~ ~ 1 1

execute if entity @s[scores={FurnitureXTarget=-900..900}] run scoreboard players operation @s FurnitureVacuum = @s FurnitureXTarget
execute unless entity @s[scores={FurnitureZTarget=-900..900}] run function luigis_mansion:entities/furniture/type/swinging/update