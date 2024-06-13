execute if data storage luigis_mansion:data entity{attack_type:"harmless_grab"} run scoreboard players set @e[tag=this_entity,limit=1] AttackType 0
execute if data storage luigis_mansion:data entity{attack_type:"harmless_grab"} run tag @e[tag=this_entity,limit=1] remove basher
execute if data storage luigis_mansion:data entity{attack_type:"harmfull_grab"} run scoreboard players set @e[tag=this_entity,limit=1] AttackType 2
execute if data storage luigis_mansion:data entity{attack_type:"harmfull_grab"} run tag @e[tag=this_entity,limit=1] remove basher
execute if data storage luigis_mansion:data entity{attack_type:"basher"} run scoreboard players set @e[tag=this_entity,limit=1] AttackType 2
execute if data storage luigis_mansion:data entity{attack_type:"basher"} run tag @e[tag=this_entity,limit=1] add basher