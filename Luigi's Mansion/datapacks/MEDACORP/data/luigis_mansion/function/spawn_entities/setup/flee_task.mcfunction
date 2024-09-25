execute if data storage luigis_mansion:data entity.flee_task run scoreboard players reset @e[tag=this_entity,limit=1] FleeTask
execute if data storage luigis_mansion:data entity{flee_task:"random"} run scoreboard players set @e[tag=this_entity,limit=1] FleeTask 0
execute if data storage luigis_mansion:data entity{flee_task:"alternate"} run scoreboard players set @e[tag=this_entity,limit=1] FleeTask 1
execute if data storage luigis_mansion:data entity{flee_task:"circle"} run scoreboard players set @e[tag=this_entity,limit=1] FleeTask 2
execute if data storage luigis_mansion:data entity{flee_task:"random_in_range"} run scoreboard players set @e[tag=this_entity,limit=1] FleeTask 3
execute if data storage luigis_mansion:data entity{flee_task:"loops"} run scoreboard players set @e[tag=this_entity,limit=1] FleeTask 4