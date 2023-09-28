execute if entity @s[tag=big_pearl] run data modify storage luigis_mansion:data macro set value {rank:3,size:small,namespace:luigis_mansion,id:big_pearl,value:1000}
execute if entity @s[tag=big_pearl] run data modify storage luigis_mansion:data macro.rank_namespace set from entity @s ArmorItems[3].tag.assign_rank.namespace
execute if entity @s[tag=big_pearl] run data modify storage luigis_mansion:data macro.rank_id set from entity @s ArmorItems[3].tag.assign_rank.id
execute if entity @s[tag=big_pearl] run function luigis_mansion:items/money/assigns_rank with storage luigis_mansion:data macro