teleport @s ~ ~1.3 ~
execute at @s[tag=dead,tag=normal_death] run playsound luigis_mansion:entity.purple_mouse.vacuumed hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s[tag=dead,tag=element_death] run playsound luigis_mansion:entity.purple_mouse.element_death hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s[tag=dead] run function luigis_mansion:entities/purple_mouse/drop_loot
execute at @s[tag=dead] run particle minecraft:dust 0.7 1 1 1 ~-0.1 ~ ~0.1 0.2 0.2 0.2 1 10
execute if entity @s[tag=dead] run teleport @s ~ -100 ~

execute at @s[tag=visible,tag=!dead,tag=!removed_from_existence] if entity @e[tag=same_room,tag=!spectator,distance=..0.7,limit=1] run function luigis_mansion:entities/purple_mouse/collide

tag @s[tag=fleeing,tag=walk_up_wall] add walk_on_ceiling
tag @s[tag=fleeing,tag=walk_up_wall] add walk_down_wall
tag @s[tag=fleeing,tag=walk_up_wall] add walked_on_ceiling
data modify entity @s[tag=fleeing,tag=walk_up_wall] Pose.Head[0] set value 0.0f
execute at @s[tag=fleeing,tag=visible,tag=!played_sound] run playsound luigis_mansion:entity.purple_mouse.ambient hostile @a[tag=same_room] ~ ~ ~ 1
tag @s[tag=fleeing,tag=visible,tag=!played_sound] add played_sound
tag @s[tag=!fleeing] remove played_sound
tag @s remove fleeing
execute store result score #temp HomeY run data get entity @s Pos[1] 100
scoreboard players remove #temp HomeY 130
tag @s remove on_floor
execute if score #temp HomeY = @s HomeY run tag @s add on_floor
scoreboard players reset #temp HomeY

execute store result score #temp Room run scoreboard players get @s Room
execute as @e[tag=purple_mouse,tag=visible] if score @s Room = #temp Room run scoreboard players add #temp ActionTime 1
execute unless score #temp ActionTime matches 2.. unless entity @e[distance=..0.7,tag=!spectator,limit=1] unless entity @e[tag=purple_mouse,tag=visible,distance=..0.7] run tag @s add visible
scoreboard players reset #temp ActionTime
scoreboard players reset #temp Room

data modify entity @s[tag=visible,tag=!walk_down_wall,tag=!walk_up_wall,tag=!walk_on_ceiling] ArmorItems[3].id set value "minecraft:leather_chestplate"
execute at @s[tag=!rotated,tag=!walk_on_ceiling,tag=!dead,tag=visible] run function luigis_mansion:entities/purple_mouse/move
scoreboard players set #temp Move 2
execute at @s[tag=rotated,tag=!walk_up_wall] rotated ~ 0 run function luigis_mansion:entities/purple_mouse/move_forward
execute at @s[tag=walk_up_wall,tag=!walk_on_ceiling] rotated ~ 0 run function luigis_mansion:entities/purple_mouse/move_up
tag @s[tag=walk_on_ceiling,tag=rotated] remove rotated
execute at @s[tag=walk_on_ceiling,tag=!walk_down_wall] rotated ~ 0 run function luigis_mansion:entities/purple_mouse/move_ceiling
execute at @s[tag=walk_down_wall,tag=!walked_on_ceiling] rotated ~ 0 run function luigis_mansion:entities/purple_mouse/move_down
tag @s[tag=walked_on_ceiling,tag=!rotated] add rotated
execute at @s[tag=walked_on_ceiling] rotated ~ 0 run function luigis_mansion:entities/purple_mouse/move_forward
execute if entity @s[tag=disappear,tag=!dead] run function luigis_mansion:entities/purple_mouse/back_to_start
execute at @s[tag=visible] unless entity @s[tag=walk_up_wall,tag=!walk_on_ceiling] unless entity @s[tag=walk_down_wall,tag=!walked_on_ceiling] run function luigis_mansion:animations/mouse/idle
execute at @s[tag=visible,tag=walk_up_wall,tag=!walk_on_ceiling] run function luigis_mansion:animations/mouse/idle_wall
execute at @s[tag=visible,tag=walk_down_wall,tag=!walked_on_ceiling] run function luigis_mansion:animations/mouse/idle_wall
execute at @s[tag=visible,scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/1_tall
execute at @s run teleport @s ~ ~-1.3 ~