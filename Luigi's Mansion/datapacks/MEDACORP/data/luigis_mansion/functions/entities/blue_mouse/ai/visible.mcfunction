function luigis_mansion:entities/ghost/get_target
tag @s[tag=in_vacuum] add flee
execute at @s run function luigis_mansion:entities/ghost/ai

scoreboard players set @s[tag=flee] TargetTask 0
scoreboard players set @s[tag=!flee] TargetTask 5
execute unless block ~ ~1 ~ #luigis_mansion:ghosts_ignore if block ~ ~-0.2 ~ #luigis_mansion:ghosts_ignore run tag @s add flipped_gravity
execute if block ~ ~1 ~ #luigis_mansion:ghosts_ignore unless block ~ ~-0.2 ~ #luigis_mansion:ghosts_ignore run tag @s remove flipped_gravity
data modify entity @s[x_rotation=-90..-46] data.animation set value {namespace:"luigis_mansion",id:"idle_wall"}
data modify entity @s[x_rotation=46..90] data.animation set value {namespace:"luigis_mansion",id:"idle_wall"}

$execute if entity @s[tag=flee,tag=!played_sound] run playsound $(namespace):entity.$(id).ambient hostile @a[tag=same_room] ~ ~ ~ 1
tag @s[tag=flee] add played_sound
tag @s[tag=!flee] remove played_sound
execute if entity @s[tag=flee] if data entity @s data.path run function luigis_mansion:entities/blue_mouse/go_home with entity @s data.entity
tag @s[tag=flee] remove squeek
execute unless block ~ ~-0.2 ~ #luigis_mansion:ghosts_ignore unless block ~ ~-0.2 ~ #minecraft:slabs[type=bottom] run tag @s remove flee
execute if block ~ ~-0.2 ~ #minecraft:slabs[type=bottom] if block ~ ~0.2 ~ #minecraft:slabs[type=bottom] run tag @s remove flee
teleport @s[tag=flee] ~ ~-0.2 ~

execute if entity @e[tag=same_room,tag=!spectator,tag=player,distance=..0.7,limit=1] if entity @s[tag=!dead,tag=!removed_from_existence] run function luigis_mansion:entities/blue_mouse/collide with entity @s data.entity

execute if entity @s[tag=squeek] run function luigis_mansion:entities/blue_mouse/squeek with entity @s data.entity
$execute if data entity @s data.path if entity @s[y_rotation=-45..45] if predicate $(namespace):$(id)/start_squeeking_chance run tag @s add squeek

execute unless data entity @s data.path.steps[0] run tag @s[tag=reached_target] remove visible