data modify storage luigis_mansion:data entity set from storage luigis_mansion:data drop_loot.contents.e3_demo.ghost_coin[0]
function e3_demo:spawn_entities/item/ghost_coin
data remove storage luigis_mansion:data drop_loot.contents.e3_demo.ghost_coin[0]
scoreboard players remove #temp Time 1
execute if data storage luigis_mansion:data drop_loot.contents.e3_demo.ghost_coin[0] run function e3_demo:other/drop_loot/loop/ghost_coin
execute if score #temp Time matches 1.. run function e3_demo:other/drop_loot/loop/ghost_coin