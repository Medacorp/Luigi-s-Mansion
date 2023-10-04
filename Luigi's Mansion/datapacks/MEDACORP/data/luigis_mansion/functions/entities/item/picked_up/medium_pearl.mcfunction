data modify storage luigis_mansion:data macro set value {rank:2,size:small,namespace:luigis_mansion,id:medium_pearl,value:100}
data modify storage luigis_mansion:data macro.rank_namespace set from entity @s ArmorItems[3].tag.assign_rank.namespace
data modify storage luigis_mansion:data macro.rank_id set from entity @s ArmorItems[3].tag.assign_rank.id
function luigis_mansion:items/money/assigns_rank with storage luigis_mansion:data macro