data modify storage luigis_mansion:data transformation set from entity @s data.default_transformation
data modify storage luigis_mansion:data macro set value {offset:1.5f}
execute store result storage luigis_mansion:data macro.offset float 0.1 run scoreboard players get @s FurnitureSizeLeft
execute if entity @s[tag=right] store result storage luigis_mansion:data macro.offset float -0.1 run scoreboard players get @s FurnitureSizeLeft
execute if entity @s[tag=in_vacuum] run function luigis_mansion:entities/furniture/type/curtain/vacuum with storage luigis_mansion:data macro
execute if entity @s[tag=open,scores={FurnitureSizeLeft=16..}] run function luigis_mansion:entities/furniture/type/curtain/open
execute store result storage luigis_mansion:data transformation[0] float 0.1 run scoreboard players get @s FurnitureSizeLeft

scoreboard players add @s[tag=!revert_wave] ActionTime 1
scoreboard players add @s[tag=revert_wave] ActionTime 1
execute store result storage luigis_mansion:data transformation[10] float 0.067 run scoreboard players get @s ActionTime
tag @s[scores={ActionTime=15..}] add revert_wave
tag @s[scores={ActionTime=..-15}] remove revert_wave

execute if entity @s[tag=!in_vacuum,tag=transformed] run function luigis_mansion:entities/furniture/type/curtain/reset
execute if entity @s[tag=!in_vacuum,tag=blown_by_wind] run function luigis_mansion:entities/furniture/type/curtain/wind
execute unless score @s FurnitureSizeLeft = @s FurnitureCurtainSize unless entity @a[tag=same_room] run function luigis_mansion:entities/furniture/type/curtain/non_ticking
data modify entity @s transformation set from storage luigis_mansion:data transformation
data remove storage luigis_mansion:data transformation
