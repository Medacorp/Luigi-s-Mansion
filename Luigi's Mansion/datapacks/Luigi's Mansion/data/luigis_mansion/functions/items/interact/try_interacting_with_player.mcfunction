execute if entity @e[distance=..2,scores={DeathTime=0},limit=1] run function luigis_mansion:entities/player/animation/set/talk
execute if entity @e[distance=..2,scores={DeathTime=0},limit=1] run tag @s add talk
execute if score #can_revive Selected matches 1 if entity @e[distance=..2,scores={DeathTime=60..},limit=1] run function luigis_mansion:entities/player/animation/set/revive
execute if score #can_revive Selected matches 1 if entity @e[distance=..2,scores={DeathTime=60..},limit=1] run tag @s add talk
execute if score #can_revive Selected matches 1 run tag @e[distance=..2,scores={DeathTime=60..},limit=1] add revive_animation
execute if score #can_revive Selected matches 1 as @e[distance=..2,scores={DeathTime=60..},limit=1] run function luigis_mansion:entities/player/memory/get
execute if score #can_revive Selected matches 1 if entity @e[distance=..2,scores={DeathTime=60..},limit=1] store result storage luigis_mansion:data my_memory.revived_by int 1 run scoreboard players get @s ID
execute if score #can_revive Selected matches 1 if entity @e[distance=..2,scores={DeathTime=60..},limit=1] run data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
execute if score #can_revive Selected matches 1 if entity @e[distance=..2,scores={DeathTime=60..},limit=1] run data remove storage luigis_mansion:data my_memory