execute store result score @s Room run data get storage luigis_mansion:data luigi.room
execute if data storage luigis_mansion:data luigi.mirror.x store result score @s MirrorX run data get storage luigis_mansion:data luigi.mirror.x
execute if data storage luigis_mansion:data luigi.mirror.z store result score @s MirrorZ run data get storage luigis_mansion:data luigi.mirror.z
#todelete - old mirror reflections
execute if data storage luigis_mansion:data luigi.mirror{mirror_set_by_furniture_entity:1b} run tag @s add mirror_set_by_furniture_entity
#/todelete
execute if entity @s[tag=was_sneaking,tag=!was_swimming,tag=!riding_poltergust] if data storage luigis_mansion:data luigi{alive:1b} unless entity @s[scores={AnimationProgress=1..}] unless data storage luigis_mansion:data luigi{tags:["sneaking"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=was_walking,tag=!was_swimming,tag=!riding_poltergust] if data storage luigis_mansion:data luigi{alive:1b} unless entity @s[scores={AnimationProgress=1..}] unless data storage luigis_mansion:data luigi{tags:["walking"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=was_running,tag=!was_swimming,tag=!riding_poltergust] if data storage luigis_mansion:data luigi{alive:1b} unless entity @s[scores={AnimationProgress=1..}] unless data storage luigis_mansion:data luigi{tags:["running"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=was_swimming] if data storage luigis_mansion:data luigi{alive:1b} unless data storage luigis_mansion:data luigi{tags:["swimming"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[scores={AnimationProgress=0},tag=was_swimming] if data storage luigis_mansion:data luigi{alive:1b} store result entity @s Pose.Head[0] float 1 run scoreboard players get @s IncreaseAmount
execute if entity @s[tag=!was_swimming] if data storage luigis_mansion:data luigi{alive:1b} if data storage luigis_mansion:data luigi{tags:["swimming"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=!was_riding_poltergust] if data storage luigis_mansion:data luigi{alive:1b} if data storage luigis_mansion:data luigi{tags:["riding_poltergust"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=was_riding_poltergust] if data storage luigis_mansion:data luigi{alive:1b} unless data storage luigis_mansion:data luigi{tags:["riding_poltergust"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=!death_animation] if data storage luigis_mansion:data luigi{alive:0b} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=death_animation] if data storage luigis_mansion:data luigi{alive:1b} run function luigis_mansion:animations/luigi/reset_pose
execute unless data entity @s ArmorItems[3].count run data modify entity @s ArmorItems[3] set value {id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:empty"}}
execute if data storage luigis_mansion:data luigi{alive:1b} store success score #temp Time run data modify entity @s ArmorItems[3].components."minecraft:custom_data".animation set from storage luigis_mansion:data luigi.animation
execute if score #temp Time matches 1 run function luigis_mansion:animations/luigi/reset_pose
scoreboard players reset #temp Time
data modify entity @s Tags append from storage luigis_mansion:data luigi.tags[]
execute if data storage luigis_mansion:data luigi{alive:1b} run tag @s remove death_animation
execute if data storage luigis_mansion:data luigi{alive:0b} run tag @s[tag=!revived_animation] add death_animation
execute if data storage luigis_mansion:data luigi{shrunk:1b} run attribute @s minecraft:scale base set 0.5
execute if data storage luigis_mansion:data luigi{shrunk:1b} run tag @s add shrunk
execute if data storage luigis_mansion:data luigi{shrunk:0b} run attribute @s minecraft:scale base set 1
tag @s[tag=riding_poltergust] remove sneak_pos
tag @s[tag=riding_poltergust] remove low_health
execute unless data storage luigis_mansion:data luigi.animation{namespace:"luigis_mansion",id:"idle"} run tag @s remove sneak_pos
execute if data storage luigis_mansion:data luigi{gliding:1b} run tag @s[tag=walking] remove walking
execute unless data entity @s Pose.Head[0] run data merge entity @s {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[tag=!head] store result entity @s Pose.Head[0] float 1 run scoreboard players operation #temp Time -= @s IncreaseAmount
execute unless data storage luigis_mansion:data luigi{gliding:0b,swimming:0b} store result score @s IncreaseAmount run data get entity @e[tag=this_luigi,limit=1] Rotation[1]
execute unless data storage luigis_mansion:data luigi{gliding:0b,swimming:0b} run scoreboard players add @s IncreaseAmount 90
execute if data storage luigis_mansion:data luigi{gliding:0b,swimming:0b} run scoreboard players set @s IncreaseAmount 0
scoreboard players reset #temp Time
execute if data storage luigis_mansion:data luigi{gliding:0b,swimming:0b} run function luigis_mansion:animations/luigi/call_part_function
execute unless data storage luigis_mansion:data luigi{gliding:0b,swimming:0b} rotated ~ ~90 run function luigis_mansion:animations/luigi/call_part_function
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[tag=!head] store result entity @s Pose.Head[0] float 1 run scoreboard players operation #temp Time += @s IncreaseAmount
scoreboard players reset #temp Time
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
tag @s[tag=swimming] add was_swimming
tag @s[tag=!swimming] remove was_swimming
tag @s[tag=swimming] remove swimming
tag @s[tag=sneak_pos] add was_sneak_posing
tag @s[tag=!sneak_pos] remove was_sneak_posing
tag @s[tag=sneak_pos] remove sneak_pos
tag @s[tag=riding_poltergust] add was_riding_poltergust
tag @s[tag=!riding_poltergust] remove was_riding_poltergust
tag @s[tag=riding_poltergust] remove riding_poltergust
tag @s[tag=flipped_gravity] add was_flipped
tag @s[tag=!flipped_gravity] remove was_flipped
tag @s[tag=flipped_gravity] remove flipped_gravity
execute if data storage luigis_mansion:data luigi{alive:1b} run tag @s[tag=death_animation] remove death_animation
tag @s remove holding_poltergust
tag @s remove revived_animation
tag @s remove separated_camera
tag @s remove poltergust_grabbed
tag @s remove dark_room
tag @s remove shrunk
tag @s remove flashlight
tag @s remove moved
tag @s remove player
tag @s remove luigi
execute unless entity @e[tag=this_luigi,tag=!model_piece,scores={Shrunk=1..},limit=1] run tag @s add found_owner
execute if entity @e[tag=this_luigi,tag=!model_piece,scores={Shrunk=1..},limit=1] run tag @s add found_shrunk_owner
tag @s add this_luigi