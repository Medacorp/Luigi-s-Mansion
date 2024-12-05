execute if data storage luigis_mansion:data my_memory run tag @s add keep_memory
execute if entity @s[tag=!keep_memory] run function luigis_mansion:entities/luigi/get_owner_memory
execute unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"knockback/fake_door/right"} unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"knockback/fake_door/left"} run function luigis_mansion:entities/luigi/animation/set/none
execute unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"knockback/fake_door/right"} unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"knockback/fake_door/left"} run scoreboard players set @s Sound 0
data modify storage luigis_mansion:data my_memory.animation set value {namespace:"luigis_mansion",id:"knockback/fake_door/right"}
execute if entity @s[tag=left_door] run data modify storage luigis_mansion:data my_memory.animation set value {namespace:"luigis_mansion",id:"knockback/fake_door/left"}
tag @s remove left_door
execute if entity @s[tag=!keep_memory] run data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
execute if entity @s[tag=!keep_memory] run data remove storage luigis_mansion:data my_memory
tag @s remove keep_memory