scoreboard players add @s FurnitureLightTime 1
function luigis_mansion:entities/furniture/spawn/blackout_sparks
execute if entity @s[scores={FurnitureLightTime=1}] run playsound luigis_mansion:furniture.blackout_lights block @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={FurnitureLightTime=20}] remove blackout
scoreboard players reset @s[scores={FurnitureLightTime=20}] FurnitureLightTime