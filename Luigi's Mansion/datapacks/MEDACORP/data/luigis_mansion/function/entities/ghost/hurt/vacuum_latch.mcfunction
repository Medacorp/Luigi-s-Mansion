data modify storage luigis_mansion:data temp set value []
execute as @a[tag=vacuuming_me] run function luigis_mansion:items/poltergust_3000/get_player_id
function luigis_mansion:items/poltergust_3000/latch_each_onto_ghost
data remove storage luigis_mansion:data temp