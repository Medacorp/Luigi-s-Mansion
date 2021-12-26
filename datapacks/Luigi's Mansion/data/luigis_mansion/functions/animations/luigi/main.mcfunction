execute if entity @s[tag=was_sneaking,tag=!was_swimming] unless data storage luigis_mansion:data luigi{tags:["sneaking"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=was_walking,tag=!was_swimming] unless data storage luigis_mansion:data luigi{tags:["walking"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=was_running,tag=!was_swimming] unless data storage luigis_mansion:data luigi{tags:["running"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=was_swimming] unless data storage luigis_mansion:data luigi{tags:["swimming"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=was_looking_at_map] unless data storage luigis_mansion:data luigi{tags:["looking_at_map"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=was_cold_room_idle] unless data storage luigis_mansion:data luigi{tags:["cold_room_idle"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=!was_cold_room_idle] if data storage luigis_mansion:data luigi{tags:["cold_room_idle"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=was_low_health_idle] unless data storage luigis_mansion:data luigi{tags:["low_health_idle"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=!was_low_health_idle] if data storage luigis_mansion:data luigi{tags:["low_health_idle"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=was_high_health_idle] unless data storage luigis_mansion:data luigi{tags:["high_health_idle"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=!was_high_health_idle] if data storage luigis_mansion:data luigi{tags:["high_health_idle"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[scores={AnimationProg=0},tag=was_swimming] store result entity @s Pose.Head[0] float 1 run scoreboard players get @s IncreaseAmount
execute if entity @s[tag=!was_swimming] if data storage luigis_mansion:data luigi{tags:["swimming"]} run function luigis_mansion:animations/luigi/reset_pose
execute store result score @s KnockbackType run data get storage luigis_mansion:data luigi.animation
execute unless score @s ScareType = @s KnockbackType run function luigis_mansion:animations/luigi/reset_pose
data modify entity @s Tags append from storage luigis_mansion:data luigi.tags[]
tag @s[tag=looking_at_map] remove sneak_pos
execute if entity @s[scores={KnockbackType=..-1}] run function luigis_mansion:animations/luigi/in_knockback
execute if entity @s[scores={KnockbackType=2..}] run function luigis_mansion:animations/luigi/in_knockback
execute if data storage luigis_mansion:data luigi{gliding:1b} run tag @s[tag=walking] remove walking
execute unless data entity @s Pose.Head[0] run data merge entity @s {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[tag=!head] store result entity @s Pose.Head[0] float 1 run scoreboard players operation #temp Time -= @s IncreaseAmount
execute unless data storage luigis_mansion:data luigi{gliding:0b,swimming:0b} store result score @s IncreaseAmount run data get entity @e[tag=gooigi,limit=1] Rotation[1]
execute unless data storage luigis_mansion:data luigi{gliding:0b,swimming:0b} run scoreboard players add @s IncreaseAmount 90
execute if data storage luigis_mansion:data luigi{gliding:0b,swimming:0b} run scoreboard players set @s IncreaseAmount 0
scoreboard players reset #temp Time
execute if data storage luigis_mansion:data luigi{gliding:0b,swimming:0b} run function luigis_mansion:animations/luigi/call_part_function
execute unless data storage luigis_mansion:data luigi{gliding:0b,swimming:0b} rotated ~ ~90 run function luigis_mansion:animations/luigi/call_part_function
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[tag=!head] store result entity @s Pose.Head[0] float 1 run scoreboard players operation #temp Time += @s IncreaseAmount
scoreboard players reset #temp Time
execute if data storage luigis_mansion:data luigi{invulnerable:1b} run function luigis_mansion:animations/luigi/invulnerability_blink
execute if data storage luigis_mansion:data luigi{invulnerable:0b} if entity @s[nbt={ArmorItems:[{id:"minecraft:oak_button"}]}] run data modify entity @s ArmorItems[3].id set value "minecraft:leather_chestplate"
scoreboard players operation @s ScareType = @s KnockbackType
tag @s[tag=low_health] add was_low_health
tag @s[tag=!low_health] remove was_low_health
tag @s[tag=low_health] remove low_health
tag @s[tag=cold_room_idle] add was_cold_room_idle
tag @s[tag=!cold_room_idle] remove was_cold_room_idle
tag @s[tag=cold_room_idle] remove cold_room_idle
tag @s[tag=high_health_idle] add was_high_health_idle
tag @s[tag=!high_health_idle] remove was_high_health_idle
tag @s[tag=high_health_idle] remove high_health_idle
tag @s[tag=low_health_idle] add was_low_health_idle
tag @s[tag=!low_health_idle] remove was_low_health_idle
tag @s[tag=low_health_idle] remove low_health_idle
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
tag @s[tag=looking_at_map] add was_looking_at_map
tag @s[tag=!looking_at_map] remove was_looking_at_map
tag @s[tag=looking_at_map] remove looking_at_map
tag @s[tag=flipped_gravity] add was_flipped
tag @s[tag=!flipped_gravity] remove was_flipped
tag @s[tag=flipped_gravity] remove flipped_gravity
tag @s[tag=death_animation] remove death_animation
tag @s[tag=spawn_animation] remove spawn_animation
tag @s remove dark_room
tag @s remove flashlight
tag @s add found_owner