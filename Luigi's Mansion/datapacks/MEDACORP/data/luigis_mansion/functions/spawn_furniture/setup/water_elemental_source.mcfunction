execute if data storage luigis_mansion:data furniture.water_elemental_source run tag @e[tag=this_entity,limit=1] add elemental_source
execute if data storage luigis_mansion:data furniture.water_elemental_source run tag @e[tag=this_entity,limit=1] add water_elemental_source
execute if data storage luigis_mansion:data furniture.water_elemental_source run tag @e[tag=this_entity,limit=1] add enabled
execute if data storage luigis_mansion:data furniture.water_elemental_source unless data storage luigis_mansion:data furniture.water_elemental_source{cannot_disable:1b} run tag @e[tag=this_entity,limit=1] add affected_by_fire
execute if data storage luigis_mansion:data furniture.water_elemental_source unless data storage luigis_mansion:data furniture.water_elemental_source{cannot_disable:1b} run tag @e[tag=this_entity,limit=1] add affected_by_ice
execute if data storage luigis_mansion:data furniture.water_elemental_source{cannot_disable:1b} run tag @e[tag=this_entity,limit=1] add elemental_cannot_disable
execute if data storage luigis_mansion:data furniture.water_elemental_source{must_vacuum:1b} run tag @e[tag=this_entity,limit=1] add elemental_must_vacuum
execute if data storage luigis_mansion:data furniture.water_elemental_source{must_vacuum:1b} run tag @e[tag=this_entity,limit=1] add affected_by_vacuum
execute if data storage luigis_mansion:data furniture.water_elemental_source{must_be_searched:1b} run tag @e[tag=this_entity,limit=1] add elemental_must_be_searched
execute if data storage luigis_mansion:data furniture.water_elemental_source{always_spawn:1b} run tag @e[tag=this_entity,limit=1] add elemental_always_spawn
execute if data storage luigis_mansion:data furniture.water_elemental_source{timer:1b} run tag @e[tag=this_entity,limit=1] add elemental_timer