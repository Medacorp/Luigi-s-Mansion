data modify storage luigis_mansion:data furniture.pose_edit set from storage luigis_mansion:data furniture.pose
execute unless data storage luigis_mansion:data furniture.pose_edit[2] run data modify storage luigis_mansion:data furniture.pose_edit set from entity @e[tag=this_entity,limit=1] Pose.Head
execute unless data storage luigis_mansion:data furniture.pose_edit[2] run data modify storage luigis_mansion:data furniture.pose_edit set value [0.0f,0.0f,0.0f]
execute if data storage luigis_mansion:data furniture.pose_edit[3] run data modify storage luigis_mansion:data furniture.pose_edit set from entity @e[tag=this_entity,limit=1] Pose.Head
execute if data storage luigis_mansion:data furniture.pose_edit[3] run data modify storage luigis_mansion:data furniture.pose_edit set value [0.0f,0.0f,0.0f]
data modify storage luigis_mansion:data furniture.pose_edit[1] set value 0.01f
execute store result score #temp Time run data get storage luigis_mansion:data furniture.pose_edit[0]
execute if score #temp Time matches ..-90 run data modify storage luigis_mansion:data furniture.pose_edit[0] set value -90.0f
execute if score #temp Time matches 90.. run data modify storage luigis_mansion:data furniture.pose_edit[0] set value 90.0f
execute unless score #temp Time matches 0 run data modify storage luigis_mansion:data furniture.mirror_reflection set value 0b
execute if data storage luigis_mansion:data furniture.pose_edit run data modify entity @e[tag=this_entity,limit=1] Pose.Head set from storage luigis_mansion:data furniture.pose_edit
execute as @e[tag=this_entity,limit=1] run data modify entity @s Rotation[1] set from entity @s Pose.Head[0]
execute store result score #temp Time run data get storage luigis_mansion:data furniture.pose_edit[2] 10
execute unless score #temp Time matches -900..900 run tag @e[tag=this_entity,tag=standing_furniture,limit=1] add was_standing_furniture
execute unless score #temp Time matches -900..900 run tag @e[tag=this_entity,tag=standing_furniture,limit=1] add hanging_furniture
execute unless score #temp Time matches -900..900 run tag @e[tag=this_entity,tag=standing_furniture,limit=1] remove standing_furniture
execute unless score #temp Time matches -900..900 run tag @e[tag=this_entity,tag=hanging_furniture,tag=!was_standing_furniture,limit=1] add standing_furniture
execute unless score #temp Time matches -900..900 run tag @e[tag=this_entity,tag=hanging_furniture,tag=!was_standing_furniture,limit=1] remove hanging_furniture
execute unless score #temp Time matches -900..900 run tag @e[tag=this_entity,limit=1] remove was_standing_furniture
execute unless score #temp Time matches -900..900 run scoreboard players operation @e[tag=this_entity,scores={FurnitureDustUp=-2147483648..},limit=1] FurnitureDustUp *= #-1 Constants
execute unless score #temp Time matches -900..900 run scoreboard players operation @e[tag=this_entity,scores={FurnitureContentUp=-2147483648..},limit=1] FurnitureContentUp *= #-1 Constants
execute unless score #temp Time matches -900..900 run scoreboard players operation @e[tag=this_entity,scores={FurnitureElementUp=-2147483648..},limit=1] FurnitureElementUp *= #-1 Constants
execute unless score #temp Time matches -900..900 run scoreboard players operation @e[tag=this_entity,scores={FurnitureGhostUp=-2147483648..},limit=1] FurnitureGhostUp *= #-1 Constants
execute unless score #temp Time matches -900..900 run scoreboard players operation @e[tag=this_entity,scores={FurnitureLightUp=-2147483648..},limit=1] FurnitureLightUp *= #-1 Constants
scoreboard players reset #temp Time
execute as @e[tag=this_entity,limit=1] run data modify entity @s ArmorItems[3].components."minecraft:custom_data".default_orientation set from entity @s Pose
data remove storage luigis_mansion:data furniture.pose_edit