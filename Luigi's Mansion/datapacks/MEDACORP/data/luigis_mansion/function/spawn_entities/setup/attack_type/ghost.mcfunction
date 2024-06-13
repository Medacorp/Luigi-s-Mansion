execute if data storage luigis_mansion:data entity{attack_type:"none"} run scoreboard players set @e[tag=this_entity,limit=1] AttackType 0
execute if data storage luigis_mansion:data entity{attack_type:"none"} run tag @e[tag=this_entity,limit=1] remove basher
execute if data storage luigis_mansion:data entity{attack_type:"punch"} run scoreboard players set @e[tag=this_entity,limit=1] AttackType 1
execute if data storage luigis_mansion:data entity{attack_type:"punch"} run tag @e[tag=this_entity,limit=1] remove basher
execute if data storage luigis_mansion:data entity{attack_type:"basher"} run scoreboard players set @e[tag=this_entity,limit=1] AttackType 2
execute if data storage luigis_mansion:data entity{attack_type:"basher"} run tag @e[tag=this_entity,limit=1] add basher