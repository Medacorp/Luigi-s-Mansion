data modify storage luigis_mansion:data entity set from storage luigis_mansion:data drop_loot.contents[-1].variables
$function $(namespace):spawn_entities/$(id)
execute unless data storage luigis_mansion:data drop_loot.contents[-1].count run data remove storage luigis_mansion:data drop_loot.contents[-1]
execute if data storage luigis_mansion:data drop_loot.contents[-1].count store result score #loot_count Time run data get storage luigis_mansion:data drop_loot.contents[-1].count
execute if data storage luigis_mansion:data drop_loot.contents[-1].count store result storage luigis_mansion:data drop_loot.contents[-1].count int 1 run scoreboard players remove #loot_count Time 1
execute if data storage luigis_mansion:data drop_loot.contents[-1].count if score #loot_count Time matches ..0 run data get storage luigis_mansion:data drop_loot.contents[-1].count
execute if data storage luigis_mansion:data drop_loot.contents[-1] run function luigis_mansion:other/drop_loot_loop with storage luigis_mansion:data drop_loot.contents[-1].name