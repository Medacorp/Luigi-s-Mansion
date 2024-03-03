tag @s[tag=in_vacuum] add flee
function luigis_mansion:entities/ghost/ai

scoreboard players set @s[tag=flee] TargetTask 0
scoreboard players set @s[tag=!flee] TargetTask 5
execute unless block ~ ~1 ~ #luigis_mansion:ghosts_ignore if block ~ ~-0.2 ~ #luigis_mansion:ghosts_ignore run tag @s add flipped_gravity
execute if block ~ ~1 ~ #luigis_mansion:ghosts_ignore unless block ~ ~-0.2 ~ #luigis_mansion:ghosts_ignore run tag @s remove flipped_gravity
data modify entity @s[y_rotation=-90..-46] data.animation set value {namespace:"luigis_mansion",id:"idle_wall"}
data modify entity @s[y_rotation=46..90] data.animation set value {namespace:"luigis_mansion",id:"idle_wall"}

$execute if entity @s[tag=flee,tag=!played_sound] run playsound $(namespace):entity.$(id).ambient hostile @a[tag=same_room] ~ ~ ~ 1
tag @s[tag=flee] add played_sound
tag @s[tag=!flee] remove played_sound
execute unless block ~ ~-0.2 ~ #luigis_mansion:ghosts_ignore unless block ~ ~-0.2 ~ #minecraft:slabs[type=bottom] run tag @s remove flee
execute if block ~ ~-0.2 ~ #minecraft:slabs[type=bottom] if block ~ ~0.2 ~ #minecraft:slabs[type=bottom] run tag @s remove flee
teleport @s[tag=flee] ~ ~-0.2 ~

execute unless data entity @s data.path.steps[0] run tag @s[tag=reached_target] add remove_from_existence