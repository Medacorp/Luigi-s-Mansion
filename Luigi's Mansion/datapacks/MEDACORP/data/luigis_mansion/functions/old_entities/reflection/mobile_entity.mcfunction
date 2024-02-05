execute store result score #temp HomeX run data get storage luigis_mansion:data mirror.data.Pos[0] 100
execute store result score #temp HomeZ run data get storage luigis_mansion:data mirror.data.Pos[2] 100
execute store result score #temp MirrorX run data get storage luigis_mansion:data mirror.mirror.value
execute store result score #temp MirrorZ run data get storage luigis_mansion:data mirror.mirror.z

execute if data storage luigis_mansion:data mirror.mirror{set_by_furniture_entity:1b} run scoreboard players operation #temp MirrorX *= #10 Constants
execute unless data storage luigis_mansion:data mirror.mirror{set_by_furniture_entity:1b} run scoreboard players operation #temp MirrorX *= #100 Constants
execute unless data storage luigis_mansion:data mirror.mirror{set_by_furniture_entity:1b} run scoreboard players add #temp MirrorX 50

data modify entity @s Rotation set from storage luigis_mansion:data mirror.data.Rotation
data modify entity @s Pos set from storage luigis_mansion:data mirror.data.Pos
execute if score #temp MirrorZ matches 0 run function luigis_mansion:old_entities/reflection/rotation/x
execute if score #temp MirrorZ matches 1 run function luigis_mansion:old_entities/reflection/rotation/z
execute if score #temp MirrorZ matches 0 run function luigis_mansion:old_entities/reflection/position/x
execute if score #temp MirrorZ matches 1 run function luigis_mansion:old_entities/reflection/position/z

scoreboard players reset #temp MirrorX
scoreboard players reset #temp MirrorZ
scoreboard players reset #temp HomeX
scoreboard players reset #temp HomeZ
scoreboard players reset #temp ActionTime