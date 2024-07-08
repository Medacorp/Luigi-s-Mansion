execute if data storage luigis_mansion:data my_memory run tag @s add keep_memory_none
execute if entity @s[tag=!keep_memory_none] run function luigis_mansion:entities/player/memory/get with entity @s
data remove storage luigis_mansion:data my_memory.animation
scoreboard players set @s IdleTime 0
scoreboard players set @s AnimationProgress 0
scoreboard players reset @s GrabbedShake
tag @s remove grabbed
tag @s remove idle
tag @s remove animation_may_move
scoreboard players operation #temp ID = @s ID
execute as @e[tag=knockback_model] if score #temp ID = @s ID run tag @s add dead
scoreboard players reset #temp ID
execute if entity @s[tag=!keep_memory_none] run data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
execute if entity @s[tag=!keep_memory_none] run data remove storage luigis_mansion:data my_memory
tag @s remove keep_memory_none