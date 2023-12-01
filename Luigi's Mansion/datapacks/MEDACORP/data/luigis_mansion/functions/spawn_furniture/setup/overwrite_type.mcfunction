execute if data storage luigis_mansion:data furniture.type run tag @e[tag=this_entity,limit=1] remove delayed
execute if data storage luigis_mansion:data furniture.type run tag @e[tag=this_entity,limit=1] remove fan
execute if data storage luigis_mansion:data furniture.type run tag @e[tag=this_entity,limit=1] remove generic
execute if data storage luigis_mansion:data furniture.type run tag @e[tag=this_entity,limit=1] remove rolling
execute if data storage luigis_mansion:data furniture.type run tag @e[tag=this_entity,limit=1] remove swinging
execute if data storage luigis_mansion:data furniture.type run tag @e[tag=this_entity,limit=1] remove swirling
execute if data storage luigis_mansion:data furniture.type run data modify entity @e[tag=this_entity,limit=1] Tags append from storage luigis_mansion:data furniture.type.value
execute as @e[tag=this_entity,tag=delayed,limit=1] unless entity @s[scores={FurnitureSearch=1..}] run scoreboard players set @s FurnitureSearch 20
execute as @e[tag=this_entity,tag=fan,limit=1] unless entity @s[scores={FurnitureRotationSpeed=1..}] run scoreboard players set @s FurnitureRotationSpeed 0
execute as @e[tag=this_entity,tag=generic,limit=1] unless entity @s[scores={FurnitureSearch=1..}] run scoreboard players set @s FurnitureSearch 20
execute as @e[tag=this_entity,tag=rolling,limit=1] unless entity @s[scores={FurnitureSearch=1..}] run scoreboard players set @s FurnitureSearch 20
execute as @e[tag=this_entity,tag=swinging,limit=1] unless entity @s[scores={FurnitureSearch=1..}] run scoreboard players set @s FurnitureSearch 100
execute as @e[tag=this_entity,tag=swirling,limit=1] unless entity @s[scores={FurnitureSearch=1..}] run scoreboard players set @s FurnitureSearch 5
execute if data storage luigis_mansion:data furniture.type.search_value store result score @e[tag=this_entity,tag=!fan,limit=1] FurnitureSearch run data get storage luigis_mansion:data furniture.type.search_value
execute if data storage luigis_mansion:data furniture.type.search_value store result score @e[tag=this_entity,tag=fan,limit=1] FurnitureRotationSpeed run data get storage luigis_mansion:data furniture.type.search_value
execute as @e[tag=this_entity,tag=fan,limit=1] run scoreboard players operation @s FurnitureRotationSpeedDefault = @s FurnitureRotationSpeed
scoreboard players add @e[tag=this_entity,tag=delayed,limit=1] FurnitureSearch 20
scoreboard players operation @e[tag=this_entity,tag=rolling,limit=1] FurnitureSearch *= #2 Constants
scoreboard players add @e[tag=this_entity,tag=rolling,limit=1] FurnitureSearch 1
scoreboard players set @e[tag=this_entity,tag=rolling,limit=1] PoltergustSound 0
tag @e[tag=this_entity,tag=!fan,limit=1] remove turn_left
execute if data storage luigis_mansion:data furniture{turn_left:0b} run tag @e[tag=this_entity,tag=fan,limit=1] remove turn_left
execute if data storage luigis_mansion:data furniture{turn_left:1b} run tag @e[tag=this_entity,tag=fan,limit=1] add turn_left