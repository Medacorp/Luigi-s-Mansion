execute store success score #temp Time run data modify storage luigis_mansion:data money_spawned[-1] set from storage luigis_mansion:data drop_loot.name
data remove storage luigis_mansion:data money_spawned[-1]
execute if score #temp Time matches 0 run data remove storage luigis_mansion:data drop_loot
execute if score #temp Time matches 1.. if data storage luigis_mansion:data money_spawned[-1] run function luigis_mansion:other/drop_loot_search