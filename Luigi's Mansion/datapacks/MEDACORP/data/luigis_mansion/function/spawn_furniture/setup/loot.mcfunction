scoreboard players add @e[tag=this_entity,limit=1] FurnitureContentLeft 0
scoreboard players add @e[tag=this_entity,limit=1] FurnitureContentUp 0
scoreboard players add @e[tag=this_entity,limit=1] FurnitureContentForward 0
scoreboard players add @e[tag=this_entity,limit=1] FurnitureGhostLeft 0
scoreboard players add @e[tag=this_entity,limit=1] FurnitureGhostUp 0
scoreboard players add @e[tag=this_entity,limit=1] FurnitureGhostForward 0
execute if data storage luigis_mansion:data furniture.loot run data modify entity @e[tag=this_entity,limit=1] data.loot set from storage luigis_mansion:data furniture.loot
execute if data storage luigis_mansion:data furniture.loot_chance run data modify entity @e[tag=this_entity,limit=1] data.loot_chance set value {namespace:"luigis_mansion",id:"null"}
execute if data storage luigis_mansion:data furniture.loot_chance.namespace run data modify entity @e[tag=this_entity,limit=1] data.loot_chance.namespace set from storage luigis_mansion:data furniture.loot_chance.namespace
execute if data storage luigis_mansion:data furniture.loot_chance.id run data modify entity @e[tag=this_entity,limit=1] data.loot_chance.id set from storage luigis_mansion:data furniture.loot_chance.id
execute unless data storage luigis_mansion:data furniture.loot unless data storage luigis_mansion:data furniture.loot_chance run tag @e[tag=this_entity,limit=1] add no_loot