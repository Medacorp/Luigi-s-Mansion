execute if data storage luigis_mansion:data furniture{boo_poster:1b} run tag @e[tag=this_entity,limit=1] add boo_poster

data modify entity @e[tag=this_entity,limit=1] data.default_transformation[10] set value 0
execute as @e[tag=this_entity,limit=1] run data modify entity @s transformation set from entity @s data.default_transformation