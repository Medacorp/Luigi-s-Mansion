execute store result score #temp Time run data get storage luigis_mansion:data furniture.pose[0]
execute if score #temp Time matches ..-90 run data modify storage luigis_mansion:data furniture.pose[0] set value -90.0f
execute if score #temp Time matches 90.. run data modify storage luigis_mansion:data furniture.pose[0] set value 90.0f
execute unless score #temp Time matches 0 run data modify storage luigis_mansion:data furniture.mirror_reflection set value 0b
data modify storage luigis_mansion:data furniture.pose[1] set value 0.01f
execute if data storage luigis_mansion:data furniture.pose run data modify entity @e[tag=this_entity,limit=1] Pose.Head set from storage luigis_mansion:data furniture.pose
execute as @e[tag=this_entity,limit=1] run data modify entity @s Rotation[1] set from entity @s Pose.Head[0]
execute store result score #temp Time run data get storage luigis_mansion:data furniture.pose[2] 10
execute unless score #temp Time matches -900..900 run tag @e[tag=this_entity,tag=standing_furniture,limit=1] add was_standing_furniture
execute unless score #temp Time matches -900..900 run tag @e[tag=this_entity,tag=standing_furniture,limit=1] add hanging_furniture
execute unless score #temp Time matches -900..900 run tag @e[tag=this_entity,tag=hanging_furniture,tag=!was_standing_furniture,limit=1] add standing_furniture
execute unless score #temp Time matches -900..900 run tag @e[tag=this_entity,tag=hanging_furniture,tag=!was_standing_furniture,limit=1] remove hanging_furniture
execute unless score #temp Time matches -900..900 run tag @e[tag=this_entity,tag=was_standing_furniture,limit=1] remove was_standing_furniture
scoreboard players reset #temp Time