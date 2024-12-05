execute if data storage luigis_mansion:data my_memory run tag @s add keep_memory
execute if entity @s[tag=!keep_memory] run function luigis_mansion:entities/luigi/get_owner_memory
execute if entity @s[scores={Invulnerable=0}] unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"knockback/freeze"} run function luigis_mansion:entities/luigi/animation/set/none
execute if entity @s[scores={Invulnerable=0}] unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"knockback/freeze"} run scoreboard players set @s Sound 0
execute if entity @s[scores={Invulnerable=0}] run data modify storage luigis_mansion:data my_memory.animation set value {namespace:"luigis_mansion",id:"knockback/freeze"}
execute if entity @s[tag=!keep_memory] run data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
execute if entity @s[tag=!keep_memory] run data remove storage luigis_mansion:data my_memory
tag @s remove keep_memory