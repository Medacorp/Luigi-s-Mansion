execute if data storage luigis_mansion:data my_memory run tag @s add keep_memory
execute if entity @s[tag=!keep_memory] run function luigis_mansion:entities/player/memory/get with entity @s
execute unless entity @s[scores={AnimationProgress=1..},tag=!idle] if entity @s[tag=looking_at_map] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute unless entity @s[scores={AnimationProgress=1..},tag=!idle] unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"scare/normal"} unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"scare/bash"} run function luigis_mansion:entities/player/animation/set/none
execute unless entity @s[scores={AnimationProgress=1..},tag=!idle] unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"scare/normal"} run effect give @s minecraft:slowness 1 9 true
execute unless entity @s[scores={AnimationProgress=1..},tag=!idle] unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"scare/normal"} run scoreboard players reset @s MaxHealthTime
execute unless entity @s[scores={AnimationProgress=1..},tag=!idle] unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"scare/normal"} run scoreboard players set @s Sound 0
execute unless entity @s[scores={AnimationProgress=1..},tag=!idle] unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"scare/bash"} run data modify storage luigis_mansion:data my_memory.animation set value {namespace:"luigis_mansion",id:"scare/normal"}
execute unless entity @s[scores={AnimationProgress=1..},tag=!idle] if data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"scare/bash"} run function luigis_mansion:entities/player/animation/set/scare/bash
execute if entity @s[tag=!keep_memory] run data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
execute if entity @s[tag=!keep_memory] run data remove storage luigis_mansion:data my_memory
tag @s remove keep_memory