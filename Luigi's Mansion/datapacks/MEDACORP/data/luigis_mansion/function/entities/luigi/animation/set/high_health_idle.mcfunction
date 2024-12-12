execute if data storage luigis_mansion:data my_memory run tag @s add keep_memory
execute if entity @s[tag=!keep_memory] run function luigis_mansion:entities/luigi/get_owner_memory
execute unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"high_health_idle"} run function luigis_mansion:entities/luigi/animation/set/none
execute unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"high_health_idle"} run function luigis_mansion:entities/luigi/make_sound/force {high:"luigis_mansion:entity.player.idle.high_health",medium:"luigis_mansion:entity.player.idle.high_health",low:"luigis_mansion:entity.player.idle.low_health",duration:20}
data modify storage luigis_mansion:data my_memory.animation set value {namespace:"luigis_mansion",id:"high_health_idle"}
execute if entity @s[tag=!keep_memory] run data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
execute if entity @s[tag=!keep_memory] run data remove storage luigis_mansion:data my_memory
tag @s remove keep_memory