execute if data storage luigis_mansion:data my_memory run tag @s add keep_bash_memory
execute if entity @s[tag=!keep_bash_memory] run function luigis_mansion:entities/player/memory/get with entity @s
execute if data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"grab_poltergust"} run function luigis_mansion:entities/player/animation/set/grab_poltergust_instantly
execute if data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"put_poltergust_away"} run function luigis_mansion:entities/player/animation/set/put_poltergust_away_instantly
execute unless entity @s[scores={AnimationProgress=1..},tag=!idle] if entity @s[tag=looking_at_map] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute unless entity @s[scores={AnimationProgress=1..},tag=!idle] unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"scare/bash"} run function luigis_mansion:entities/player/animation/set/none
execute unless entity @s[scores={AnimationProgress=1..},tag=!idle] unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"scare/bash"} run effect give @s minecraft:slowness 1 9 true
execute unless entity @s[scores={AnimationProgress=1..},tag=!idle] unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"scare/bash"} run summon minecraft:marker ~ ~ ~ {Tags:["temp","remove_from_existence"]}
execute unless entity @s[scores={AnimationProgress=1..},tag=!idle] unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"scare/bash"} at @s facing entity @e[type=minecraft:marker,tag=temp] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute unless entity @s[scores={AnimationProgress=1..},tag=!idle] unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"scare/bash"} run kill @e[type=minecraft:marker,tag=temp,limit=1]
execute unless entity @s[scores={AnimationProgress=1..},tag=!idle] unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"scare/bash"} run scoreboard players reset @s MaxHealthTime
execute unless entity @s[scores={AnimationProgress=1..},tag=!idle] unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"scare/bash"} run scoreboard players set @s Sound 0
execute unless entity @s[scores={AnimationProgress=1..},tag=!idle] unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"scare/bash"} run data modify storage luigis_mansion:data my_memory.animation.hat_model set from storage luigis_mansion:data my_memory.model
execute unless entity @s[scores={AnimationProgress=1..},tag=!idle] run data modify storage luigis_mansion:data my_memory.animation set value {namespace:"luigis_mansion",id:"scare/bash"}
execute if entity @s[tag=!keep_bash_memory] run data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
execute if entity @s[tag=!keep_bash_memory] run data remove storage luigis_mansion:data my_memory
tag @s remove keep_bash_memory