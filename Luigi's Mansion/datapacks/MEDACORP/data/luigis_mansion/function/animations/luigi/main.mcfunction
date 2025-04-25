execute store result score @s Room run data get storage luigis_mansion:data luigi.room
execute if data storage luigis_mansion:data luigi.mirror.x store result score @s MirrorX run data get storage luigis_mansion:data luigi.mirror.x
execute if data storage luigis_mansion:data luigi.mirror.z store result score @s MirrorZ run data get storage luigis_mansion:data luigi.mirror.z
#todelete - old mirror reflections
execute if data storage luigis_mansion:data luigi.mirror{mirror_set_by_furniture_entity:1b} run tag @s add mirror_set_by_furniture_entity
#/todelete
execute if data storage luigis_mansion:data luigi{alive:1b} if entity @s[tag=was_sneaking,tag=!riding_poltergust] unless entity @s[scores={AnimationProgress=1..}] unless data storage luigis_mansion:data luigi{tags:["sneaking"]} run function luigis_mansion:animations/luigi/reset_pose
execute if data storage luigis_mansion:data luigi{alive:1b} if entity @s[tag=was_walking,tag=!riding_poltergust] unless entity @s[scores={AnimationProgress=1..}] unless data storage luigis_mansion:data luigi{tags:["walking"]} run function luigis_mansion:animations/luigi/reset_pose
execute if data storage luigis_mansion:data luigi{alive:1b} if entity @s[tag=was_running,tag=!riding_poltergust] unless entity @s[scores={AnimationProgress=1..}] unless data storage luigis_mansion:data luigi{tags:["running"]} run function luigis_mansion:animations/luigi/reset_pose
execute if data storage luigis_mansion:data luigi{alive:1b} if entity @s[tag=!was_riding_poltergust] if data storage luigis_mansion:data luigi{tags:["riding_poltergust"]} run function luigis_mansion:animations/luigi/reset_pose
execute if data storage luigis_mansion:data luigi{alive:1b} if entity @s[tag=was_riding_poltergust] unless data storage luigis_mansion:data luigi{tags:["riding_poltergust"]} run function luigis_mansion:animations/luigi/reset_pose
execute if data storage luigis_mansion:data luigi{alive:0b} if entity @s[tag=!death_animation] run function luigis_mansion:animations/luigi/reset_pose
execute if data storage luigis_mansion:data luigi{alive:1b} if entity @s[tag=death_animation] run function luigis_mansion:animations/luigi/reset_pose
execute if data storage luigis_mansion:data luigi{alive:1b} store success score #temp Time run data modify entity @s data.animation set from storage luigis_mansion:data luigi.animation
execute if score #temp Time matches 1 run function luigis_mansion:animations/luigi/reset_pose
scoreboard players reset #temp Time
execute if data storage luigis_mansion:data luigi{tags:["riding_poltergust"]} run tag @s add riding_poltergust
execute if data storage luigis_mansion:data luigi{tags:["low_health"]} unless data storage luigis_mansion:data luigi.animation{namespace:"luigis_mansion",id:"idle"} run tag @s[tag=!riding_poltergust] add low_health
execute if data storage luigis_mansion:data luigi{tags:["sneaking"]} run tag @s add sneaking
execute if data storage luigis_mansion:data luigi{tags:["walking"]} run tag @s add walking
execute if data storage luigis_mansion:data luigi{tags:["running"]} run tag @s add running
execute if data storage luigis_mansion:data luigi{tags:["poltergust_grabbed"]} run tag @s add poltergust_grabbed
execute if data storage luigis_mansion:data luigi{alive:0b} run tag @s add death_animation
execute if data storage luigis_mansion:data luigi{shrunk:1b} run attribute @s minecraft:scale base set 0.5
execute if data storage luigis_mansion:data luigi{shrunk:1b} run tag @s add shrunk
execute if data storage luigis_mansion:data luigi{shrunk:0b} run attribute @s minecraft:scale base set 1
execute unless data entity @s Pose.Head[0] run data merge entity @s {Pose:{Head:[0.001f,0.001f,0.001f]}}
function luigis_mansion:animations/luigi/call_part_function
execute if data storage luigis_mansion:data luigi{invulnerable:1b} if entity @s[tag=!source,tag=!held_item,tag=!poltergust_body] run function luigis_mansion:animations/luigi/invulnerability_blink
execute if data storage luigis_mansion:data luigi{invulnerable:0b} if entity @s[tag=!source,tag=!held_item,tag=!poltergust_body,tag=was_invisible] run function luigis_mansion:animations/luigi/invulnerability_blink
tag @s[tag=low_health] add was_low_health
tag @s[tag=!low_health] remove was_low_health
tag @s[tag=low_health] remove low_health
tag @s[tag=sneaking] add was_sneaking
tag @s[tag=!sneaking] remove was_sneaking
tag @s[tag=sneaking] remove sneaking
tag @s[tag=walking] add was_walking
tag @s[tag=!walking] remove was_walking
tag @s[tag=walking] remove walking
tag @s[tag=running] add was_running
tag @s[tag=!running] remove was_running
tag @s[tag=running] remove running
tag @s[tag=riding_poltergust] add was_riding_poltergust
tag @s[tag=!riding_poltergust] remove was_riding_poltergust
tag @s[tag=riding_poltergust] remove riding_poltergust
tag @s[tag=flipped_gravity] add was_flipped
tag @s[tag=!flipped_gravity] remove was_flipped
tag @s[tag=flipped_gravity] remove flipped_gravity
tag @s remove poltergust_grabbed
tag @s remove shrunk
tag @s remove death_animation

execute store result score #temp Time run data get storage luigis_mansion:data luigi.initial_animation_progress
execute unless data storage luigis_mansion:data luigi{initial_animation_progress:0} unless score @s AnimationProgress matches 0 unless score @s AnimationProgress = #temp Time run function luigis_mansion:animations/luigi/main
scoreboard players reset #temp Time

execute unless entity @e[tag=this_luigi,tag=!model_piece,scores={Shrunk=1..},limit=1] run tag @s add found_owner
execute if entity @e[tag=this_luigi,tag=!model_piece,scores={Shrunk=1..},limit=1] run tag @s add found_shrunk_owner
tag @s add this_luigi