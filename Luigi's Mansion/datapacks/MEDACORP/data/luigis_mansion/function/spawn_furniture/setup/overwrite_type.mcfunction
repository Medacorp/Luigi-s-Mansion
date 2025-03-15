execute if data storage luigis_mansion:data furniture.type{value:"delayed"} run tag @e[tag=this_entity,limit=1] add overwrite_allowed
execute if data storage luigis_mansion:data furniture.type{value:"fan"} run tag @e[tag=this_entity,limit=1] add overwrite_allowed
execute if data storage luigis_mansion:data furniture.type{value:"generic"} run tag @e[tag=this_entity,limit=1] add overwrite_allowed
execute if data storage luigis_mansion:data furniture.type{value:"rolling"} run tag @e[tag=this_entity,limit=1] add overwrite_allowed
execute if data storage luigis_mansion:data furniture.type{value:"swinging"} run tag @e[tag=this_entity,limit=1] add overwrite_allowed
execute if data storage luigis_mansion:data furniture.type{value:"swirling"} run tag @e[tag=this_entity,limit=1] add overwrite_allowed
tag @e[tag=this_entity,nbt=!{data:{furniture_type:"delayed"}},nbt=!{data:{furniture_type:"fan"}},nbt=!{data:{furniture_type:"generic"}},nbt=!{data:{furniture_type:"rolling"}},nbt=!{data:{furniture_type:"swinging"}},nbt=!{data:{furniture_type:"swirling"}},limit=1] remove overwrite_allowed
execute as @e[tag=this_entity,tag=overwrite_allowed,limit=1] run data modify entity @s data.furniture_type set from storage luigis_mansion:data furniture.type.value
execute as @e[tag=this_entity,nbt={data:{furniture_type:"delayed"}},limit=1] unless entity @s[scores={FurnitureSearch=1..}] run scoreboard players set @s FurnitureSearch 20
execute as @e[tag=this_entity,nbt={data:{furniture_type:"fan"}},limit=1] unless entity @s[scores={FurnitureSearch=1..}] run scoreboard players set @s FurnitureSearch 1000
execute as @e[tag=this_entity,nbt={data:{furniture_type:"generic"}},limit=1] unless entity @s[scores={FurnitureSearch=1..}] run scoreboard players set @s FurnitureSearch 20
execute as @e[tag=this_entity,nbt={data:{furniture_type:"rolling"}},limit=1] unless entity @s[scores={FurnitureSearch=1..}] run scoreboard players set @s FurnitureSearch 20
execute as @e[tag=this_entity,nbt={data:{furniture_type:"swinging"}},limit=1] unless entity @s[scores={FurnitureSearch=1..}] run scoreboard players set @s FurnitureSearch 100
execute as @e[tag=this_entity,nbt={data:{furniture_type:"swirling"}},limit=1] unless entity @s[scores={FurnitureSearch=1..}] run scoreboard players set @s FurnitureSearch 5
execute if data storage luigis_mansion:data furniture.type.search_value store result score @e[tag=this_entity,tag=overwrite_allowed,limit=1] FurnitureSearch run data get storage luigis_mansion:data furniture.type.search_value
execute as @e[tag=this_entity,nbt={data:{furniture_type:"delayed"}},limit=1] run scoreboard players operation @s FurnitureShake = @s FurnitureSearch
scoreboard players add @e[tag=this_entity,nbt={data:{furniture_type:"delayed"}},limit=1] FurnitureSearch 20
scoreboard players operation #temp Time = @e[tag=this_entity,nbt={data:{furniture_type:"fan"}},limit=1] FurnitureSearch
execute if entity @e[tag=this_entity,nbt={data:{furniture_type:"fan"}},limit=1] run scoreboard players operation #temp Time /= #5 Constants
execute as @e[tag=this_entity,nbt={data:{furniture_type:"fan"}},limit=1] run scoreboard players operation @s FurnitureShake = @s FurnitureSearch
scoreboard players operation @e[tag=this_entity,nbt={data:{furniture_type:"fan"}},limit=1] FurnitureShake -= #temp Time
scoreboard players reset #temp Time
scoreboard players operation @e[tag=this_entity,nbt={data:{furniture_type:"rolling"}},limit=1] FurnitureSearch *= #2 Constants
scoreboard players add @e[tag=this_entity,nbt={data:{furniture_type:"rolling"}},limit=1] FurnitureSearch 1
scoreboard players set @e[tag=this_entity,nbt={data:{furniture_type:"rolling"}},limit=1] PoltergustSound 0
scoreboard players set @e[tag=this_entity,nbt={data:{furniture_type:"rolling"}},limit=1] FurnitureVacuum 0
execute as @e[tag=this_entity,nbt={data:{furniture_type:"swirling"}},limit=1] store result score @s FurnitureRotationDefault run data get entity @s Rotation[0]
execute as @e[tag=this_entity,nbt={data:{furniture_type:"fan"}},limit=1] unless entity @s[scores={FurnitureRotationSpeed=1..}] run scoreboard players set @s FurnitureRotationSpeed 0
execute if data storage luigis_mansion:data furniture.type.turn_speed store result score @e[tag=this_entity,tag=overwrite_allowed,nbt={data:{furniture_type:"fan"}},limit=1] FurnitureRotationSpeed run data get storage luigis_mansion:data furniture.type.search_value
execute as @e[tag=this_entity,nbt={data:{furniture_type:"fan"}},limit=1] run scoreboard players operation @s FurnitureRotationSpeedDefault = @s FurnitureRotationSpeed
tag @e[tag=this_entity,nbt=!{data:{furniture_type:"fan"}},limit=1] remove turn_left
execute if data storage luigis_mansion:data furniture.type{turn_left:0b} as @e[tag=this_entity,nbt={data:{furniture_type:"fan"}},limit=1] run tag @s remove turn_left
execute if data storage luigis_mansion:data furniture.type{turn_left:1b} as @e[tag=this_entity,nbt={data:{furniture_type:"fan"}},limit=1] run tag @s add turn_left
tag @e[tag=this_entity,limit=1] remove overwrite_allowed