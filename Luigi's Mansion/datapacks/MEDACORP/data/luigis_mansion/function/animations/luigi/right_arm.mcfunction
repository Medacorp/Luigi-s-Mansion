# Move with
teleport @s[tag=!low_health,tag=!shrunk,tag=!flipped_gravity] ^-0.35 ^-1.7 ^ ~ ~
teleport @s[tag=low_health,tag=!shrunk,tag=!flipped_gravity] ^-0.35 ^-1.76 ^ ~ ~
teleport @s[tag=!low_health,tag=shrunk,tag=!flipped_gravity] ^-0.18 ^-0.9 ^ ~ ~
teleport @s[tag=low_health,tag=shrunk,tag=!flipped_gravity] ^-0.18 ^-0.96 ^ ~ ~
teleport @s[tag=!low_health,tag=!shrunk,tag=flipped_gravity] ^0.35 ^-0.4 ^ ~ ~
teleport @s[tag=low_health,tag=!shrunk,tag=flipped_gravity] ^0.35 ^-0.34 ^ ~ ~
teleport @s[tag=!low_health,tag=shrunk,tag=flipped_gravity] ^0.18 ^0.4 ^ ~ ~
teleport @s[tag=low_health,tag=shrunk,tag=flipped_gravity] ^0.18 ^0.46 ^ ~ ~

data modify entity @s[tag=was_low_health,tag=!low_health,tag=!low_health] Pose.Head[0] set value 0.001f
data modify entity @s[tag=!was_low_health,tag=low_health,tag=!low_health] Pose.Head[0] set value 20.0f
data modify entity @s[tag=was_flipped,tag=!flipped_gravity] Pose.Head[2] set value 0.001f
data modify entity @s[tag=!was_flipped,tag=flipped_gravity] Pose.Head[2] set value -180.0f

data remove entity @s[tag=held_item] equipment.head
execute unless score #mirrored Selected matches 1 if data storage luigis_mansion:data luigi.selected_item.components."minecraft:custom_data".is_nozzle run tag @s add holding_poltergust
execute if score #mirrored Selected matches 1 if data storage luigis_mansion:data luigi.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].id run data modify entity @s[tag=held_item] equipment.head set from storage luigis_mansion:data luigi.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}]
execute if entity @s[tag=!poltergust_grabbed] unless score #mirrored Selected matches 1 unless data storage luigis_mansion:data luigi.selected_item.components."minecraft:custom_data".is_nozzle if data storage luigis_mansion:data luigi.selected_item.id run data modify entity @s[tag=held_item] equipment.head set from storage luigis_mansion:data luigi.selected_item
execute if entity @s[tag=poltergust_grabbed] unless score #mirrored Selected matches 1 if data storage luigis_mansion:data luigi.selected_item.components."minecraft:custom_data".is_nozzle run data modify entity @s[tag=held_item] equipment.head set from storage luigis_mansion:data luigi.selected_item

# Move animations
execute if entity @s[tag=sneaking,tag=!riding_poltergust,tag=!holding_poltergust,tag=!low_health,scores={AnimationProgress=0}] run function luigis_mansion:animations/luigi/sneak/right_arm
execute if entity @s[tag=walking,tag=!riding_poltergust,tag=!holding_poltergust,tag=!low_health,scores={AnimationProgress=0}] run function luigis_mansion:animations/luigi/walk/right_arm
execute if entity @s[tag=running,tag=!riding_poltergust,tag=!holding_poltergust,tag=!low_health,scores={AnimationProgress=0}] run function luigis_mansion:animations/luigi/run/right_arm
tag @s remove holding_poltergust

$execute at @s run function $(namespace):animations/luigi/$(id)/right_arm