execute if entity @s[tag=using_selection_menu] run function luigis_mansion:selection_menu/close
attribute @s minecraft:scale base set 0.5
function luigis_mansion:entities/player/memory/get with entity @s
data modify storage luigis_mansion:data my_memory.inventory set from entity @e[tag=me,limit=1] data.inventory
data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
data remove storage luigis_mansion:data my_memory