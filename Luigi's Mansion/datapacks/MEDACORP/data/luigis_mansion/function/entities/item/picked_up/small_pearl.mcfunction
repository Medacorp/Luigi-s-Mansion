data modify storage luigis_mansion:data macro set value {rank:0,namespace:"luigis_mansion",id:"small_pearl",value:50}
data modify storage luigis_mansion:data macro.rank_namespace set from entity @s data.assign_rank.namespace
data modify storage luigis_mansion:data macro.rank_id set from entity @s data.assign_rank.id
function luigis_mansion:items/money/assigns_rank with storage luigis_mansion:data macro