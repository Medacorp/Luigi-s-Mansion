tag @s[tag=low_health] add sneak_pos
# Move with
teleport @s[tag=!sneak_pos,tag=!shrunk,tag=!flipped_gravity] ^-0.35 ^-1.7 ^ ~ ~
teleport @s[tag=sneak_pos,tag=!shrunk,tag=!flipped_gravity] ^-0.35 ^-1.76 ^ ~ ~
teleport @s[tag=!sneak_pos,tag=shrunk,tag=!flipped_gravity] ^-0.18 ^-0.9 ^ ~ ~
teleport @s[tag=sneak_pos,tag=shrunk,tag=!flipped_gravity] ^-0.18 ^-0.96 ^ ~ ~
teleport @s[tag=!sneak_pos,tag=!shrunk,tag=flipped_gravity] ^0.35 ^-0.4 ^ ~ ~
teleport @s[tag=sneak_pos,tag=!shrunk,tag=flipped_gravity] ^0.35 ^-0.34 ^ ~ ~
teleport @s[tag=!sneak_pos,tag=shrunk,tag=flipped_gravity] ^0.18 ^0.4 ^ ~ ~
teleport @s[tag=sneak_pos,tag=shrunk,tag=flipped_gravity] ^0.18 ^0.46 ^ ~ ~

data modify entity @s[tag=was_sneak_posing,tag=!sneak_pos,tag=!low_health] Pose.Head[0] set value 0.001f
data modify entity @s[tag=!was_sneak_posing,tag=sneak_pos,tag=!low_health] Pose.Head[0] set value 20.0f
data modify entity @s[tag=was_flipped,tag=!flipped_gravity] Pose.Head[2] set value 0.0f
data modify entity @s[tag=!was_flipped,tag=flipped_gravity] Pose.Head[2] set value -180.0f

data modify entity @s[tag=held_item] equipment.head set value {}
execute unless score #mirrored Selected matches 1 if data storage luigis_mansion:data luigi.mainhand.components."minecraft:custom_data".is_nozzle run tag @s add holding_poltergust
execute if score #mirrored Selected matches 1 if data storage luigis_mansion:data luigi.offhand.components."minecraft:custom_data".is_nozzle run tag @s add holding_poltergust
execute if score #mirrored Selected matches 1 run data modify entity @s[tag=held_item] equipment.head set from storage luigis_mansion:data luigi.offhand
execute if entity @s[tag=!poltergust_grabbed] unless score #mirrored Selected matches 1 unless data storage luigis_mansion:data luigi.mainhand.components."minecraft:custom_data".is_nozzle run data modify entity @s[tag=held_item] equipment.head set from storage luigis_mansion:data luigi.mainhand
execute if entity @s[tag=poltergust_grabbed] unless score #mirrored Selected matches 1 if data storage luigis_mansion:data luigi.mainhand.components."minecraft:custom_data".is_nozzle run data modify entity @s[tag=held_item] equipment.head set from storage luigis_mansion:data luigi.mainhand

# Move animations
execute if entity @s[tag=sneaking,tag=!riding_poltergust,tag=!holding_poltergust,tag=!low_health,scores={AnimationProgress=0}] run function luigis_mansion:animations/luigi/sneak/right_arm
execute if entity @s[tag=walking,tag=!riding_poltergust,tag=!holding_poltergust,tag=!low_health,scores={AnimationProgress=0}] run function luigis_mansion:animations/luigi/walk/right_arm
execute if entity @s[tag=running,tag=!riding_poltergust,tag=!holding_poltergust,tag=!low_health,scores={AnimationProgress=0}] run function luigis_mansion:animations/luigi/run/right_arm
execute if entity @s[tag=swimming,tag=!riding_poltergust,tag=!holding_poltergust,scores={AnimationProgress=0}] run function luigis_mansion:animations/luigi/swim/right_arm

$execute at @s run function $(namespace):animations/luigi/$(id)/right_arm