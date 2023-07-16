function e3_demo:spawn_entities/item/ghost_coin
execute if data storage e3_demo:data drop_loot.contents.e3_demo.ghost_coin[0].rotation run tag @e[tag=this_entity,limit=1] add rotated
execute if data storage e3_demo:data drop_loot.contents.e3_demo.ghost_coin[0].rotation run data modify entity @e[tag=this_entity,limit=1] Rotation set from storage e3_demo:data drop_loot.contents.e3_demo.ghost_coin[0].rotation
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage e3_demo:data drop_loot.contents.e3_demo.ghost_coin[0]
scoreboard players remove #temp Time 1
execute if data storage e3_demo:data drop_loot.contents.e3_demo.ghost_coin[0] run function e3_demo:other/drop_loot/loop/ghost_coin
execute if score #temp Time matches 1.. run function e3_demo:other/drop_loot/loop/ghost_coin