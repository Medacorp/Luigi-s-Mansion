execute if data storage luigis_mansion:data my_memory run tag @s add keep_memory
execute if entity @s[tag=!keep_memory] run function luigis_mansion:entities/player/memory/get with entity @s
execute if entity @s[scores={Invulnerable=0}] unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"knockback/flee"} run function luigis_mansion:entities/player/animation/set/none
execute if entity @s[scores={Invulnerable=0}] unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"knockback/flee"} run summon minecraft:marker ~ ~ ~ {Tags:["temp","remove_from_existence"]}
execute if entity @s[scores={Invulnerable=0}] unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"knockback/flee"} store result score @s KnockbackX run data get entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[0] 100
execute if entity @s[scores={Invulnerable=0}] unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"knockback/flee"} store result score @s KnockbackZ run data get entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[2] 100
execute if entity @s[scores={Invulnerable=0}] unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"knockback/flee"} run kill @e[type=minecraft:marker,tag=temp,limit=1]
execute if entity @s[scores={Invulnerable=0}] unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"knockback/flee"} run scoreboard players set @s Sound 0
tag @s remove look_up
execute if entity @s[scores={Invulnerable=0}] run data modify storage luigis_mansion:data my_memory.animation set value {namespace:"luigis_mansion",id:"knockback/flee"}
execute if entity @s[tag=!keep_memory] run data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
execute if entity @s[tag=!keep_memory] run data remove storage luigis_mansion:data my_memory
tag @s remove keep_memory