data modify storage luigis_mansion:data macro.uuid set from storage luigis_mansion:data my_memory.poltergust_latch_on_order[0]
function e3_demo:items/poltergust_500/face_ghost/find_ghost with storage luigis_mansion:data macro
execute unless entity @e[tag=facing_ghost,limit=1] run data remove storage luigis_mansion:data my_memory.poltergust_latch_on_order[0]
execute unless entity @e[tag=facing_ghost,limit=1] if data storage luigis_mansion:data my_memory.poltergust_latch_on_order[0] run function e3_demo:items/poltergust_500/face_ghost/loop