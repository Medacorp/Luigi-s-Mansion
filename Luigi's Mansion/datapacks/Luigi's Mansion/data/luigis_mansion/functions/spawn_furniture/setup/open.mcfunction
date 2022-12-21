execute if data storage luigis_mansion:data furniture{open:1b} run tag @e[tag=this_entity,limit=1] add open
execute if data storage luigis_mansion:data furniture{open:1b} run scoreboard players set @e[tag=this_entity,limit=1] ActionTime -1
execute unless data storage luigis_mansion:data furniture{open:1b} run scoreboard players set @e[tag=this_entity,limit=1] ActionTime 0