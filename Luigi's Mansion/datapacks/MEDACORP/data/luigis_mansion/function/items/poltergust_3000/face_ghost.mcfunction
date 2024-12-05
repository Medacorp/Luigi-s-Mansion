execute unless entity @e[tag=facing_ghost,limit=1] if data storage luigis_mansion:data my_memory.poltergust_latch_on_order[0] run function luigis_mansion:items/poltergust_3000/face_ghost/loop
function luigis_mansion:entities/luigi/move/execute {execute:"at @s facing entity @e[tag=facing_ghost,limit=1] feet",teleport:"~ ~ ~ ~ ~"}
tag @e[tag=facing_ghost,limit=1] remove facing_ghost