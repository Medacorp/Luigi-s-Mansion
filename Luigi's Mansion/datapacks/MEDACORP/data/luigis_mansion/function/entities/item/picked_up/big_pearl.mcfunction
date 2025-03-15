data modify storage luigis_mansion:data macro set value {rank:2,namespace:"luigis_mansion",id:"big_pearl",value:1000}
data modify storage luigis_mansion:data macro.rank_namespace set from entity @s data.assign_rank.namespace
data modify storage luigis_mansion:data macro.rank_id set from entity @s data.assign_rank.id
function luigis_mansion:items/money/assigns_rank with storage luigis_mansion:data macro