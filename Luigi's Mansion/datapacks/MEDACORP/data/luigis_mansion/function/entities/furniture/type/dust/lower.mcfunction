scoreboard players set #temp Time 64000
scoreboard players set #temp2 Time = @s FurnitureVacuum
scoreboard players set #temp2 Time *= #50 Constants
execute store result storage luigis_mansion:data macro.distance float 0.000015625 run scoreboard players set #temp Time -= #temp2 Time
function luigis_mansion:entities/furniture/type/dust/remove_blocks
execute at @e[tag=vacuuming_me,distance=..2] run scoreboard players add @s FurnitureVacuum 32
execute at @e[tag=vacuuming_me,distance=2..3] run scoreboard players add @s FurnitureVacuum 16
execute at @e[tag=vacuuming_me,distance=3..4] run scoreboard players add @s FurnitureVacuum 8
execute at @e[tag=vacuuming_me,distance=4..5] run scoreboard players add @s FurnitureVacuum 4
execute at @e[tag=vacuuming_me,distance=5..6] run scoreboard players add @s FurnitureVacuum 2
execute at @e[tag=vacuuming_me,distance=6..7] run scoreboard players add @s FurnitureVacuum 1
scoreboard players set @s[scores={FurnitureVacuum=321..}] FurnitureVacuum 320
tag @s[scores={FurnitureVacuum=32000}] add open
scoreboard players operation @s[tag=open] SearcherID = @e[tag=same_room,tag=vacuuming_me,sort=nearest,limit=1] ID
execute if entity @s[tag=open] run function luigis_mansion:entities/furniture/search/generic
tag @e[tag=dust_furniture,distance=..3] remove idle_furniture

particle minecraft:dust{color:11898491,scale:1.5f} ~ ~1 ~ 0.3 0.2 0.3 1 2

scoreboard players set @s[tag=reset_sound,scores={Sound=0}] FurnitureSearch 0
scoreboard players add @s[scores={Sound=0}] FurnitureSearch 1
tag @s remove reset_sound
execute if entity @s[scores={Sound=0,FurnitureSearch=1},tag=!second_sound] run playsound luigis_mansion:furniture.dust.lower_1 block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Sound=0,FurnitureSearch=2},tag=!second_sound] run playsound luigis_mansion:furniture.dust.lower_2 block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Sound=0,FurnitureSearch=3},tag=!second_sound] run playsound luigis_mansion:furniture.dust.lower_3 block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Sound=0,FurnitureSearch=4},tag=!second_sound] run playsound luigis_mansion:furniture.dust.lower_4 block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Sound=0,FurnitureSearch=5..},tag=!second_sound] run playsound luigis_mansion:furniture.dust.lower_5 block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=open] run playsound luigis_mansion:furniture.dust.lower_6 block @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0}] Sound 10