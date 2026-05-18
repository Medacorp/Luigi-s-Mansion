scoreboard players add @e[tag=this_entity,limit=1] FurnitureDustLeft 0
scoreboard players add @e[tag=this_entity,limit=1] FurnitureDustUp 0
scoreboard players add @e[tag=this_entity,limit=1] FurnitureDustForward 0
execute if data storage luigis_mansion:data furniture{no_dust:1b} run tag @e[tag=this_entity,limit=1] add no_dust