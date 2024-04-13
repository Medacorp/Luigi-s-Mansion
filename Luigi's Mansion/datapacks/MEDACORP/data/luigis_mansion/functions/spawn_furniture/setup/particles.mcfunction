execute if data storage luigis_mansion:data furniture.particles run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.luigis_mansion.particles set from storage luigis_mansion:data furniture.particles
execute if data storage luigis_mansion:data furniture.particles run tag @e[tag=this_entity,scores={FurnitureElementUp=-2147483648..},limit=1] add spawn_particles
execute if data storage luigis_mansion:data furniture{particles:"flames"} run tag @e[tag=this_entity,limit=1] add lit
execute if data storage luigis_mansion:data furniture{particles:"flames"} run tag @e[tag=this_entity,limit=1] add affected_by_water
execute if data storage luigis_mansion:data furniture{particles:"flames"} run tag @e[tag=this_entity,limit=1] add affected_by_fire
execute if data storage luigis_mansion:data furniture{particles:"dripping_water"} run tag @e[tag=this_entity,limit=1] add moist
execute if data storage luigis_mansion:data furniture{particles:"dripping_water"} run tag @e[tag=this_entity,limit=1] add affected_by_ice
execute if data storage luigis_mansion:data furniture{particles:"dripping_water"} run tag @e[tag=this_entity,limit=1] add affected_by_fire
execute if data storage luigis_mansion:data furniture{particles:"spraying_water"} run tag @e[tag=this_entity,limit=1] add moist
execute if data storage luigis_mansion:data furniture{particles:"spraying_water"} run tag @e[tag=this_entity,limit=1] add affected_by_ice
execute if data storage luigis_mansion:data furniture{particles:"spraying_water"} run tag @e[tag=this_entity,limit=1] add affected_by_fire
execute if data storage luigis_mansion:data furniture{particles:"chilly_fog"} run tag @e[tag=this_entity,limit=1] add chilly
execute if data storage luigis_mansion:data furniture{particles:"chilly_fog"} run tag @e[tag=this_entity,limit=1] add affected_by_fire
execute if data storage luigis_mansion:data furniture{particles:"chilly_fog"} run tag @e[tag=this_entity,limit=1] add affected_by_ice