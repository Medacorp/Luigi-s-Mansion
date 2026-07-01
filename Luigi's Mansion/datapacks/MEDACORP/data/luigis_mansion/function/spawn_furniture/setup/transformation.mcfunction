data modify entity @e[tag=this_entity,limit=1] data.default_transformation set value [1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,1f]
execute as @e[tag=this_entity,limit=1] run data modify entity @s data.default_transformation[0] set from entity @s transformation.scale[0]
#execute as @e[tag=this_entity,limit=1] run data modify entity @s data.default_transformation[1] set from entity @s transformation
#execute as @e[tag=this_entity,limit=1] run data modify entity @s data.default_transformation[2] set from entity @s transformation
execute as @e[tag=this_entity,limit=1] run data modify entity @s data.default_transformation[3] set from entity @s transformation.translation[0]
#execute as @e[tag=this_entity,limit=1] run data modify entity @s data.default_transformation[4] set from entity @s transformation
execute as @e[tag=this_entity,limit=1] run data modify entity @s data.default_transformation[5] set from entity @s transformation.scale[1]
#execute as @e[tag=this_entity,limit=1] run data modify entity @s data.default_transformation[6] set from entity @s transformation
execute as @e[tag=this_entity,limit=1] run data modify entity @s data.default_transformation[7] set from entity @s transformation.translation[1]
#execute as @e[tag=this_entity,limit=1] run data modify entity @s data.default_transformation[8] set from entity @s transformation
#execute as @e[tag=this_entity,limit=1] run data modify entity @s data.default_transformation[9] set from entity @s transformation
execute as @e[tag=this_entity,limit=1] run data modify entity @s data.default_transformation[10] set from entity @s transformation.scale[2]
execute as @e[tag=this_entity,limit=1] run data modify entity @s data.default_transformation[11] set from entity @s transformation.translation[2]
#execute as @e[tag=this_entity,limit=1] run data modify entity @s data.default_transformation[12] set from entity @s transformation
#execute as @e[tag=this_entity,limit=1] run data modify entity @s data.default_transformation[13] set from entity @s transformation
#execute as @e[tag=this_entity,limit=1] run data modify entity @s data.default_transformation[14] set from entity @s transformation
#execute as @e[tag=this_entity,limit=1] run data modify entity @s data.default_transformation[15] set from entity @s transformation

scoreboard players set @e[tag=this_entity,limit=1] FurniturePoseX 0
scoreboard players set @e[tag=this_entity,limit=1] FurniturePoseY 0
scoreboard players set @e[tag=this_entity,limit=1] FurniturePoseZ 0
execute if data storage luigis_mansion:data furniture.roll store result score @e[tag=this_entity,limit=1] FurniturePoseZ run data get storage luigis_mansion:data furniture.pose 10

execute as @e[tag=this_entity,tag=requires_hitbox,scores={FurnitureSizeRadius=1..},limit=1] run scoreboard players operation #furniture FurnitureSizeRadius = @s FurnitureSizeRadius
execute as @e[tag=this_entity,tag=requires_hitbox,scores={FurnitureSizeRadius=1..},limit=1] run scoreboard players operation #furniture FurnitureSizeRadius *= #2 Constants
execute as @e[tag=this_entity,tag=requires_hitbox,scores={FurnitureSizeRadius=1..},limit=1] store result entity @s data.default_transformation[0] float 0.1 run scoreboard players get #furniture FurnitureSizeRadius
execute as @e[tag=this_entity,tag=requires_hitbox,scores={FurnitureSizeWidth=1..},limit=1] store result entity @s data.default_transformation[0] float 0.1 run scoreboard players get @s FurnitureSizeWidth
execute as @e[tag=this_entity,tag=requires_hitbox,scores={FurnitureSizeLeft=1..},limit=1] store result entity @s data.default_transformation[0] float 0.1 run scoreboard players get @s FurnitureSizeLeft
execute as @e[tag=this_entity,tag=requires_hitbox,scores={FurnitureSizeRadius=1..},limit=1] store result entity @s data.default_transformation[5] float 0.1 run scoreboard players get #furniture FurnitureSizeRadius
execute as @e[tag=this_entity,tag=requires_hitbox,scores={FurnitureSizeHeight=1..},limit=1] store result entity @s data.default_transformation[5] float 0.1 run scoreboard players get @s FurnitureSizeHeight
execute as @e[tag=this_entity,tag=requires_hitbox,scores={FurnitureSizeUp=1..},limit=1] store result entity @s data.default_transformation[5] float 0.1 run scoreboard players get @s FurnitureSizeUp
execute as @e[tag=this_entity,tag=requires_hitbox,scores={FurnitureSizeRadius=1..},limit=1] store result entity @s data.default_transformation[10] float 0.1 run scoreboard players get #furniture FurnitureSizeRadius
execute as @e[tag=this_entity,tag=requires_hitbox,scores={FurnitureSizeWidth=1..},limit=1] store result entity @s data.default_transformation[10] float 0.1 run scoreboard players get @s FurnitureSizeWidth
execute as @e[tag=this_entity,tag=requires_hitbox,scores={FurnitureSizeForward=1..},limit=1] store result entity @s data.default_transformation[10] float 0.1 run scoreboard players get @s FurnitureSizeForward
execute as @e[tag=this_entity,tag=requires_hitbox,limit=1] unless score @s FurniturePoseZ matches -900..900 store result entity @s data.default_transformation[0] float 0.1 run data get entity @s data.default_transformation[0] -10
execute as @e[tag=this_entity,tag=requires_hitbox,limit=1] unless score @s FurniturePoseZ matches -900..900 store result entity @s data.default_transformation[5] float 0.1 run data get entity @s data.default_transformation[5] -10
execute as @e[tag=this_entity,tag=requires_hitbox,limit=1] run data modify entity @s transformation set from entity @s data.default_transformation
scoreboard players reset #furniture FurnitureSizeRadius

#if upside down
execute as @e[tag=this_entity,limit=1] unless score @s FurniturePoseZ matches -900..900 run tag @s[tag=standing_furniture] add was_standing_furniture
execute as @e[tag=this_entity,limit=1] unless score @s FurniturePoseZ matches -900..900 run tag @s[tag=standing_furniture] add hanging_furniture
execute as @e[tag=this_entity,limit=1] unless score @s FurniturePoseZ matches -900..900 run tag @s[tag=standing_furniture] remove standing_furniture
execute as @e[tag=this_entity,limit=1] unless score @s FurniturePoseZ matches -900..900 run tag @s[tag=hanging_furniture,tag=!was_standing_furniture] add standing_furniture
execute as @e[tag=this_entity,limit=1] unless score @s FurniturePoseZ matches -900..900 run tag @s[tag=hanging_furniture,tag=!was_standing_furniture] remove hanging_furniture
execute as @e[tag=this_entity,limit=1] unless score @s FurniturePoseZ matches -900..900 run tag @s remove was_standing_furniture
execute as @e[tag=this_entity,limit=1] unless score @s FurniturePoseZ matches -900..900 run scoreboard players operation @s[scores={FurnitureDustUp=-2147483648..}] FurnitureDustUp *= #-1 Constants
execute as @e[tag=this_entity,limit=1] unless score @s FurniturePoseZ matches -900..900 run scoreboard players operation @s[scores={FurnitureContentUp=-2147483648..}] FurnitureContentUp *= #-1 Constants
execute as @e[tag=this_entity,limit=1] unless score @s FurniturePoseZ matches -900..900 run scoreboard players operation @s[scores={FurnitureElementUp=-2147483648..}] FurnitureElementUp *= #-1 Constants
execute as @e[tag=this_entity,limit=1] unless score @s FurniturePoseZ matches -900..900 run scoreboard players operation @s[scores={FurnitureGhostUp=-2147483648..}] FurnitureGhostUp *= #-1 Constants
execute as @e[tag=this_entity,limit=1] unless score @s FurniturePoseZ matches -900..900 run scoreboard players operation @s[scores={FurnitureLightUp=-2147483648..}] FurnitureLightUp *= #-1 Constants
scoreboard players reset #furniture Time