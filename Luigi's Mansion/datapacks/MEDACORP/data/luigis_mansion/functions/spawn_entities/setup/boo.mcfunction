function luigis_mansion:spawn_entities/setup/health
execute if entity @s[tag=portrait_ghost] run function luigis_mansion:spawn_entities/setup/max_health
execute if data storage luigis_mansion:data entity{can_attack:1b} run tag @e[tag=this_entity,limit=1] add can_attack
execute if data storage luigis_mansion:data entity{show_health:0b} run tag @e[tag=this_entity,limit=1] remove show_health
execute if data storage luigis_mansion:data entity{show_health:0b} run tag @e[tag=this_entity,limit=1] remove affected_by_vacuum
execute if data storage luigis_mansion:data entity{show_health:0b} run tag @e[tag=this_entity,limit=1] remove affected_by_ice
scoreboard players set @e[tag=this_entity,limit=1] Room 0
execute store result score @e[tag=this_entity,limit=1] Room run data get storage luigis_mansion:data entity.room