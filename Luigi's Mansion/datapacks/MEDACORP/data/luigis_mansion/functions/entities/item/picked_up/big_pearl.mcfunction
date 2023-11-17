data modify storage luigis_mansion:data macro set value {rank:3,size:"small",namespace:"luigis_mansion",id:"big_pearl",value:1000}
data modify storage luigis_mansion:data macro.rank_namespace set from entity @s ArmorItems[3].tag.luigis_mansion.assign_rank.namespace
data modify storage luigis_mansion:data macro.rank_id set from entity @s ArmorItems[3].tag.luigis_mansion.assign_rank.id
function luigis_mansion:items/money/assigns_rank with storage luigis_mansion:data macro