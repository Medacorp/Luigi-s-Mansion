function luigis_mansion:entities/player/memory/get with entity @s
data modify storage luigis_mansion:data my_memory.hurt_by set value {method:{namespace:"luigis_mansion",id:"mansion_change"}}
data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
data remove storage luigis_mansion:data my_memory
tag @s remove killed
function luigis_mansion:other/death_message