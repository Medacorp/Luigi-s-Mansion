data modify storage luigis_mansion:data macro.id set from storage luigis_mansion:data temp[-1]
function luigis_mansion:items/poltergust_3000/latch_onto_ghost with storage luigis_mansion:data macro
data remove storage luigis_mansion:data temp[-1]
execute if data storage luigis_mansion:data temp[-1] run function luigis_mansion:items/poltergust_3000/latch_each_onto_ghost