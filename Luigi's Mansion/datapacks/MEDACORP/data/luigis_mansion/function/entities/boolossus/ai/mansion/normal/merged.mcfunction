scoreboard players set @s HomeY 2700
execute if entity @s[x=586.5,y=31,z=-4.5,distance=..4] run function luigis_mansion:entities/boolossus/ai/mansion/normal/split_up
execute if entity @s[x=586.5,y=31,z=-33.5,distance=..4] run function luigis_mansion:entities/boolossus/ai/mansion/normal/split_up

execute if entity @s[tag=!was_fleeing,tag=flee] run playsound luigis_mansion:entity.boo.flee hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[tag=!was_fleeing,tag=flee] Sound 20
data remove entity @s[tag=was_fleeing,tag=!flee] data.animation
tag @s remove was_fleeing
tag @s[tag=flee] add was_fleeing

execute if entity @e[tag=same_room,tag=!spectator,tag=player,distance=..3,limit=1] run function luigis_mansion:entities/boolossus/collide_merged

execute at @s[tag=!flee] facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!initial_angle] store result score @s HomeRotation run data get entity @s Rotation[0]
tag @s add initial_angle

execute at @s[tag=!flee,tag=move_up] rotated ~ 0 run function luigis_mansion:entities/boolossus/move/up_merged
execute at @s[tag=!flee,tag=!move_up] rotated ~ 0 run function luigis_mansion:entities/boolossus/move/down_merged
tag @s remove wall

execute if entity @s[tag=flee] run function luigis_mansion:entities/boolossus/flee_merged

tag @s remove flee
tag @s[tag=in_vacuum] add flee