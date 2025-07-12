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
execute if data storage luigis_mansion:data furniture.pose run data modify entity @e[tag=this_entity,limit=1] data.default_transformation set from storage luigis_mansion:data furniture.pose
execute as @e[tag=this_entity,limit=1] run data modify entity @s transformation set from entity @s data.default_transformation