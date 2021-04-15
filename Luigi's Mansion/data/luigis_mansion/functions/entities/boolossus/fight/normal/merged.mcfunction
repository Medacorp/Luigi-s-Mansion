execute if data storage luigis_mansion:data current_state.current_data.rooms.balcony_2{cleared:1b} run tag @s add dead
execute if data storage luigis_mansion:data current_state.current_data.rooms.balcony_2{cleared:1b} as @a[distance=..80] run function luigis_mansion:entities/boolossus/return/normal
execute unless data storage luigis_mansion:data current_state.current_data.rooms.balcony_2{cleared:1b} as @a[distance=80..] run function luigis_mansion:entities/boolossus/to_arena/normal
execute if entity @s[tag=!intro_done] run function luigis_mansion:entities/boolossus/battle_intro/normal
execute if entity @s[x=705.5,y=47,z=-19952.5,distance=..4] run function luigis_mansion:entities/boolossus/split_up
execute if entity @s[x=734.5,y=47,z=-19952.5,distance=..4] run function luigis_mansion:entities/boolossus/split_up

execute if entity @s[scores={Sound=0,Dialog=0},tag=!freeze,tag=fleeing] run playsound luigis_mansion:entity.boo.flee hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0,Dialog=0},tag=!freeze,tag=fleeing] Sound 40

execute if entity @a[gamemode=!spectator,distance=..0.7,limit=1] run function luigis_mansion:entities/boolossus/collide

execute at @s[tag=!fleeing] facing entity @p[gamemode=!spectator] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute unless entity @s[scores={Wave=1..}] store result score @s HomeRot run data get entity @s Rotation[0]
execute unless entity @s[scores={Wave=1..}] run scoreboard players set @s[tag=intro_done] Wave 1

execute at @s[tag=!fleeing,tag=!laugh] run function luigis_mansion:animations/boo/idle

execute at @s[tag=intro_done,tag=!fleeing,tag=!attack,tag=!laugh,tag=move_up] run function luigis_mansion:entities/boolossus/move_up
execute at @s[tag=intro_done,tag=!fleeing,tag=!attack,tag=!laugh,tag=!move_up] run function luigis_mansion:entities/boolossus/move_down
tag @s remove wall

execute if entity @s[tag=fleeing,tag=!laugh,tag=!attack] run function luigis_mansion:entities/boolossus/merged_flee

tag @s[tag=fleeing] remove fleeing