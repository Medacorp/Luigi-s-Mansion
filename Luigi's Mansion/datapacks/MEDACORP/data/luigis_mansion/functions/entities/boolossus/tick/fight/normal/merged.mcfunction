scoreboard players set @s HomeY 2700
execute if entity @s[tag=!intro_done] run function luigis_mansion:entities/boolossus/battle_intro/normal
execute if entity @s[x=586.5,y=31,z=-4.5,distance=..4] run function luigis_mansion:entities/boolossus/split_up
execute if entity @s[x=586.5,y=31,z=-33.5,distance=..4] run function luigis_mansion:entities/boolossus/split_up

execute if entity @s[scores={Sound=0},tag=fleeing] run playsound luigis_mansion:entity.boo.flee hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},tag=fleeing] Sound 20

execute if entity @e[tag=same_room,tag=!spectator,tag=player,distance=..3,limit=1] run function luigis_mansion:entities/boolossus/collide_merged

execute at @s[tag=!fleeing,tag=intro_done] facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute unless entity @s[scores={Wave=1..}] store result score @s HomeRotation run data get entity @s Rotation[0]
execute unless entity @s[scores={Wave=1..}] run scoreboard players set @s[tag=intro_done] Wave 1

execute at @s[tag=!fleeing,tag=!laugh] run function luigis_mansion:animations/boo/idle

execute at @s[tag=intro_done,tag=!fleeing,tag=!attack,tag=!laugh,tag=move_up] rotated ~ 0 run function luigis_mansion:entities/boolossus/move_up
execute at @s[tag=intro_done,tag=!fleeing,tag=!attack,tag=!laugh,tag=!move_up] rotated ~ 0 run function luigis_mansion:entities/boolossus/move_down
tag @s remove wall

execute if entity @s[tag=fleeing,tag=!laugh,tag=!attack] run function luigis_mansion:entities/boolossus/merged_flee

tag @s[tag=fleeing] remove fleeing