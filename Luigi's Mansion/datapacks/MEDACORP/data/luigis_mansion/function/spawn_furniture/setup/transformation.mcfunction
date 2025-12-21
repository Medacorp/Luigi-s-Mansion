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
execute if data storage luigis_mansion:data furniture.pose run data modify entity @e[tag=this_entity,limit=1] data.default_transformation set from storage luigis_mansion:data furniture.pose
execute as @e[tag=this_entity,limit=1] run data modify entity @s transformation set from entity @s data.default_transformation
scoreboard players reset #furniture FurnitureSizeRadius


#x² + z² > 0.5
data modify storage luigis_mansion:data furniture.pose_edit set from entity @e[tag=this_entity,limit=1] transformation.left_rotation
execute store result score #furniture Time run data get storage luigis_mansion:data furniture.pose_edit[0] 10000
execute store result score #furniture2 Time run data get storage luigis_mansion:data furniture.pose_edit[2] 10000
scoreboard players operation #furniture Time *= #furniture Time
scoreboard players operation #furniture Time /= #10000 Constants
scoreboard players operation #furniture2 Time *= #furniture2 Time
scoreboard players operation #furniture2 Time /= #10000 Constants
scoreboard players operation #furniture Time += #furniture2 Time
scoreboard players reset #furniture2 Time
execute if score #furniture Time matches 5000.. run tag @e[tag=this_entity,tag=standing_furniture,limit=1] add was_standing_furniture
execute if score #furniture Time matches 5000.. run tag @e[tag=this_entity,tag=standing_furniture,limit=1] add hanging_furniture
execute if score #furniture Time matches 5000.. run tag @e[tag=this_entity,tag=standing_furniture,limit=1] remove standing_furniture
execute if score #furniture Time matches 5000.. run tag @e[tag=this_entity,tag=hanging_furniture,tag=!was_standing_furniture,limit=1] add standing_furniture
execute if score #furniture Time matches 5000.. run tag @e[tag=this_entity,tag=hanging_furniture,tag=!was_standing_furniture,limit=1] remove hanging_furniture
execute if score #furniture Time matches 5000.. run tag @e[tag=this_entity,limit=1] remove was_standing_furniture
execute if score #furniture Time matches 5000.. run scoreboard players operation @e[tag=this_entity,scores={FurnitureDustUp=-2147483648..},limit=1] FurnitureDustUp *= #-1 Constants
execute if score #furniture Time matches 5000.. run scoreboard players operation @e[tag=this_entity,scores={FurnitureContentUp=-2147483648..},limit=1] FurnitureContentUp *= #-1 Constants
execute if score #furniture Time matches 5000.. run scoreboard players operation @e[tag=this_entity,scores={FurnitureElementUp=-2147483648..},limit=1] FurnitureElementUp *= #-1 Constants
execute if score #furniture Time matches 5000.. run scoreboard players operation @e[tag=this_entity,scores={FurnitureGhostUp=-2147483648..},limit=1] FurnitureGhostUp *= #-1 Constants
execute if score #furniture Time matches 5000.. run scoreboard players operation @e[tag=this_entity,scores={FurnitureLightUp=-2147483648..},limit=1] FurnitureLightUp *= #-1 Constants
scoreboard players reset #furniture Time
data remove storage luigis_mansion:data furniture.pose_edit