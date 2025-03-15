data modify storage luigis_mansion:data furniture.loot set from entity @s data.loot
$function $(namespace):entities/furniture/loot_chance/$(id)
execute unless data storage luigis_mansion:data furniture.loot run tag @s add no_loot
execute unless data storage luigis_mansion:data furniture.loot run tag @s[tag=!searchable_by_time,tag=!affected_by_dust,tag=!affected_by_fire,tag=!affected_by_ice,tag=!affected_by_interact,tag=!affected_by_vacuum,tag=!affected_by_water,tag=no_dust,tag=no_loot] add no_ai
data remove entity @s data.loot
data modify entity @s data.loot set from storage luigis_mansion:data furniture.loot
data remove entity @s data.loot_chance
data remove storage luigis_mansion:data furniture.loot