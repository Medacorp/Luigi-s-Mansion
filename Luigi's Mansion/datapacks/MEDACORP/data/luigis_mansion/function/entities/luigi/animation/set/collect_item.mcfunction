execute if data storage luigis_mansion:data my_memory run tag @s add keep_memory
execute if entity @s[tag=!keep_memory] run function luigis_mansion:entities/luigi/get_owner_memory
execute unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"collect_item"} run function luigis_mansion:entities/luigi/animation/set/none
execute unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"collect_item"} run data modify storage luigis_mansion:data dialogs prepend value {name:{namespace:"luigis_mansion",id:"collect_item_freeze"},progress:0,room:0,collecting_player:0,music:{orchestra:0b}}
execute unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"collect_item"} store result storage luigis_mansion:data dialogs[0].room int 1 run scoreboard players get @s Room
execute unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"collect_item"} store result storage luigis_mansion:data dialogs[0].collecting_player int 1 run scoreboard players get @s ID
$data modify storage luigis_mansion:data my_memory.animation set value {namespace:"luigis_mansion",id:"collect_item",item:$(item)}
execute if data storage luigis_mansion:data my_memory.animation.item.components."minecraft:custom_data"{collect_orchestra:1b} run data modify storage luigis_mansion:data dialogs[0].music.orchestra set value 1b
execute if entity @s[tag=!keep_memory] run data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
execute if entity @s[tag=!keep_memory] run data remove storage luigis_mansion:data my_memory
tag @s remove keep_memory