execute if entity @s[tag=!saved_default_orientation] run function luigis_mansion:old_entities/furniture/save_default_orientation
execute unless entity @s[tag=!shake,tag=!long_shake] run function luigis_mansion:old_entities/furniture/shake
execute if entity @s[tag=!shake,tag=!long_shake,tag=was_shaking,tag=!rock] run function luigis_mansion:old_entities/furniture/revert_to_default_orientation

execute unless entity @s[scores={FurnitureRotationDefault=-180..}] store result score @s FurnitureRotationDefault run data get entity @s Rotation[0]

execute if score @s FurnitureSearch >= @s FurnitureTime run scoreboard players add @s[tag=searchable_by_time] FurnitureTime 1
execute unless entity @s[scores={FurnitureTime=1..}] run scoreboard players add @s[tag=searchable_by_time] FurnitureTime 1
scoreboard players operation @s FurnitureVacuum = @s FurnitureSpins
execute if score @s FurnitureVacuum matches ..-1 run scoreboard players add @s FurnitureVacuum 1
execute if score @s FurnitureVacuum matches ..-1 run scoreboard players operation @s FurnitureVacuum *= #-1 Constants

execute if score @s FurnitureTime >= @s FurnitureSearch run function luigis_mansion:old_entities/furniture/search/generic
execute if score @s FurnitureVacuum >= @s FurnitureSearch run function luigis_mansion:old_entities/furniture/search/swirl
execute if entity @s[tag=searchable_by_interact,tag=search] run function luigis_mansion:old_entities/furniture/search/generic
execute if entity @s[tag=drop_loot] run function luigis_mansion:old_entities/furniture/search/generic

execute if entity @s[tag=open,scores={ActionTime=0..}] run function #luigis_mansion:entities/furniture/open
scoreboard players set @s[tag=open,scores={ActionTime=0}] ActionTime -1

execute if entity @s[tag=sparkles,tag=!open] run function luigis_mansion:old_entities/furniture/spawn/sparkles