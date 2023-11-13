execute if data storage luigis_mansion:data furniture{searched:1b} run tag @e[tag=this_entity,limit=1] add open
execute if data storage luigis_mansion:data furniture{no_search_animation:1b} run scoreboard players set @e[tag=this_entity,limit=1] ActionTime -1
execute unless data storage luigis_mansion:data furniture{no_search_animation:1b} run scoreboard players set @e[tag=this_entity,limit=1] ActionTime 0
execute if data storage luigis_mansion:data furniture{cannot_search_when_open:1b} run tag @e[tag=this_entity,limit=1] add cannot_search_when_open
execute if data storage luigis_mansion:data furniture{cannot_search_when_open:1b,searched:1b} run tag @e[tag=this_entity,limit=1] add drop_loot