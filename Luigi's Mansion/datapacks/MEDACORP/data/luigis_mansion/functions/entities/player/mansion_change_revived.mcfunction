function luigis_mansion:entities/player/memory/get with entity @s
data modify storage luigis_mansion:data my_memory.revived_by set value "luigis_mansion:mansion_change"
data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
data remove storage luigis_mansion:data my_memory
tag @s remove revived
function luigis_mansion:other/revive_message