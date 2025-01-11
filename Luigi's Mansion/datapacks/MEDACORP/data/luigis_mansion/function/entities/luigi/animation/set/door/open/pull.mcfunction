execute if data storage luigis_mansion:data my_memory run tag @s add keep_memory
execute if entity @s[tag=!keep_memory] run function luigis_mansion:entities/luigi/get_owner_memory
execute unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"door/open/pull/right"} unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"door/open/pull/left"} run function luigis_mansion:entities/luigi/animation/set/none
execute unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"door/open/pull/right"} unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"door/open/pull/left"} run function luigis_mansion:entities/luigi/animation/shared/set_home_rotation
data modify storage luigis_mansion:data my_memory.animation set value {namespace:"luigis_mansion",id:"door/open/pull/right"}
execute if entity @s[tag=left_door] run data modify storage luigis_mansion:data my_memory.animation set value {namespace:"luigis_mansion",id:"door/open/pull/left"}
tag @s remove left_door
data modify entity @s data.animation set from storage luigis_mansion:data my_memory.animation
execute if entity @s[tag=!keep_memory] run data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
execute if entity @s[tag=!keep_memory] run data remove storage luigis_mansion:data my_memory
tag @s remove keep_memory