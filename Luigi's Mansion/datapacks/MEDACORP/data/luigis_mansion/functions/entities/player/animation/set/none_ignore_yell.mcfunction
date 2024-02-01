execute if data storage luigis_mansion:data my_memory run tag @s add keep_memory_none
execute if entity @s[tag=!keep_memory_none] run function luigis_mansion:entities/player/memory/get with entity @s
execute unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"yell"} run data remove storage luigis_mansion:data my_memory.animation
execute unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"yell"} run scoreboard players set @s IdleTime 0
execute unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"yell"} run scoreboard players set @s AnimationProgress 0
scoreboard players reset @s GrabbedShake
tag @s remove grabbed
execute unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"yell"} run tag @s remove idle
execute unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"yell"} run tag @s remove animation_may_move
execute if entity @s[tag=!keep_memory_none] run data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
execute if entity @s[tag=!keep_memory_none] run data remove storage luigis_mansion:data my_memory
tag @s remove keep_memory_none