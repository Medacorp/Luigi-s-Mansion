execute if data storage luigis_mansion:data my_memory run tag @s add keep_memory
execute if entity @s[tag=!keep_memory] run function luigis_mansion:entities/player/memory/get with entity @s
execute unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"door/locked/push/right"} unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"door/locked/push/left"} run function luigis_mansion:entities/player/animation/set/none
execute unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"door/locked/push/right"} unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"door/locked/push/left"} store result score @s HomeRotation run data get entity @s Rotation[0]
data modify storage luigis_mansion:data my_memory.animation set value {namespace:"luigis_mansion",id:"door/locked/push/right"}
execute if entity @s[tag=left_door] run data modify storage luigis_mansion:data my_memory.animation set value {namespace:"luigis_mansion",id:"door/locked/push/left"}
tag @s remove left_door
execute if entity @s[tag=!keep_memory] run data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
execute if entity @s[tag=!keep_memory] run data remove storage luigis_mansion:data my_memory
tag @s remove keep_memory