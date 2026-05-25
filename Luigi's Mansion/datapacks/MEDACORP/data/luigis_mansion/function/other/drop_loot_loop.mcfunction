data modify storage luigis_mansion:data entity set from storage luigis_mansion:data drop_loot.contents[-1].variables
$function $(namespace):spawn_entities/$(id)
data remove storage luigis_mansion:data drop_loot.contents[-1]
execute if data storage luigis_mansion:data drop_loot.contents[-1] run function luigis_mansion:other/drop_loot_loop with storage luigis_mansion:data drop_loot.contents[-1].name