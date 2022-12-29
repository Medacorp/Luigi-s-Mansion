execute store success score #temp Money run data modify storage luigis_mansion:data keys[-1] set from storage luigis_mansion:data drop_loot.contents.luigis_mansion.key[0].door
data remove storage luigis_mansion:data keys[-1]
execute if score #temp Money matches 0 run kill @e[tag=this_entity,limit=1]
execute if score #temp Money matches 1.. if data storage luigis_mansion:data keys[-1] run function luigis_mansion:other/drop_loot/loop/key/search_for_key