# Move with
teleport @s[tag=!riding_poltergust,tag=!low_health,tag=!shrunk,tag=!flipped_gravity] ^ ^-2.3 ^-0.125 ~ ~
teleport @s[tag=!riding_poltergust,tag=low_health,tag=!shrunk,tag=!flipped_gravity] ^ ^-2.3 ^-0.325 ~ ~
teleport @s[tag=!riding_poltergust,tag=!low_health,tag=shrunk,tag=!flipped_gravity] ^ ^-1.2 ^-0.065 ~ ~
teleport @s[tag=!riding_poltergust,tag=low_health,tag=shrunk,tag=!flipped_gravity] ^ ^-1.2 ^-0.21 ~ ~
teleport @s[tag=!riding_poltergust,tag=!low_health,tag=!shrunk,tag=flipped_gravity] ^ ^0.2 ^-0.125 ~ ~
teleport @s[tag=!riding_poltergust,tag=low_health,tag=!shrunk,tag=flipped_gravity] ^ ^0.2 ^-0.325 ~ ~
teleport @s[tag=!riding_poltergust,tag=!low_health,tag=shrunk,tag=flipped_gravity] ^ ^0.7 ^-0.065 ~ ~
teleport @s[tag=!riding_poltergust,tag=low_health,tag=shrunk,tag=flipped_gravity] ^ ^0.7 ^-0.21 ~ ~

teleport @s[tag=riding_poltergust,tag=!flipped_gravity,tag=!low_health,tag=!shrunk] ^ ^-2.65 ^0.1 ~ ~
teleport @s[tag=riding_poltergust,tag=!flipped_gravity,tag=low_health,tag=!shrunk] ^ ^-2.4 ^0.1 ~ ~
teleport @s[tag=riding_poltergust,tag=!flipped_gravity,tag=!low_health,tag=shrunk] ^ ^-1.38 ^0.05 ~ ~
teleport @s[tag=riding_poltergust,tag=!flipped_gravity,tag=low_health,tag=shrunk] ^ ^-1.23 ^0.05 ~ ~
teleport @s[tag=riding_poltergust,tag=flipped_gravity,tag=!low_health,tag=!shrunk] ^ ^0.6 ^0.1 ~ ~
teleport @s[tag=riding_poltergust,tag=flipped_gravity,tag=low_health,tag=!shrunk] ^ ^0.35 ^0.1 ~ ~
teleport @s[tag=riding_poltergust,tag=flipped_gravity,tag=!low_health,tag=shrunk] ^ ^0.86 ^0.05 ~ ~
teleport @s[tag=riding_poltergust,tag=flipped_gravity,tag=low_health,tag=shrunk] ^ ^0.86 ^0.05 ~ ~

scoreboard players remove @s[tag=!riding_poltergust,tag=was_flipped,tag=!flipped_gravity] AnimationRotationX 200
scoreboard players add @s[tag=!riding_poltergust,tag=!was_flipped,tag=flipped_gravity] AnimationRotationX 200
scoreboard players add @s[tag=was_flipped,tag=!flipped_gravity] AnimationRotationZ 1800
scoreboard players remove @s[tag=!was_flipped,tag=flipped_gravity] AnimationRotationZ 1800
scoreboard players set @s[tag=riding_poltergust] AnimationRotationX -900

execute if entity @s[tag=riding_poltergust,tag=!was_riding_poltergust] run tag @e[tag=this_luigi,tag=!model_piece,limit=1] add poltergust_floor_sound

execute at @s[tag=!shrunk] if data storage luigis_mansion:data luigi{tags:["exploding_poltergust_effect"]} run particle minecraft:large_smoke ~ ~1.5 ~ 0.3 0.3 0.3 0 10 normal @a[tag=same_room]
execute at @s[tag=!shrunk] if data storage luigis_mansion:data luigi{tags:["exploding_poltergust_effect"]} run particle minecraft:flame ~ ~1.5 ~ 0.3 0.3 0.3 0 10 normal @a[tag=same_room]
execute at @s[tag=shrunk] if data storage luigis_mansion:data luigi{tags:["exploding_poltergust_effect"]} run particle minecraft:large_smoke ~ ~0.75 ~ 0.3 0.3 0.3 0 10 normal @a[tag=same_room]
execute at @s[tag=shrunk] if data storage luigis_mansion:data luigi{tags:["exploding_poltergust_effect"]} run particle minecraft:flame ~ ~0.75 ~ 0.3 0.3 0.3 0 10 normal @a[tag=same_room]

data modify entity @s equipment.head set from storage luigis_mansion:data luigi.inventory[{components:{"minecraft:custom_data":{is_poltergust:1b}}}]
execute unless score #mirrored Selected matches 1 run data modify entity @s[tag=!riding_poltergust,tag=!poltergust_grabbed] equipment.head merge from storage luigis_mansion:data luigi.inventory[{components:{"minecraft:custom_data":{is_poltergust:1b}}}].components."minecraft:custom_data".model_data.body_idle_right
execute unless score #mirrored Selected matches 1 run data modify entity @s[tag=!riding_poltergust,tag=poltergust_grabbed] equipment.head merge from storage luigis_mansion:data luigi.inventory[{components:{"minecraft:custom_data":{is_poltergust:1b}}}].components."minecraft:custom_data".model_data.body_right
execute unless score #mirrored Selected matches 1 run data modify entity @s[tag=riding_poltergust] equipment.head merge from storage luigis_mansion:data luigi.inventory[{components:{"minecraft:custom_data":{is_poltergust:1b}}}].components."minecraft:custom_data".model_data.body_sat_on_right
execute if score #mirrored Selected matches 1 run data modify entity @s[tag=!riding_poltergust,tag=!poltergust_grabbed] equipment.head merge from storage luigis_mansion:data luigi.inventory[{components:{"minecraft:custom_data":{is_poltergust:1b}}}].components."minecraft:custom_data".model_data.body_idle_left
execute if score #mirrored Selected matches 1 run data modify entity @s[tag=!riding_poltergust,tag=poltergust_grabbed] equipment.head merge from storage luigis_mansion:data luigi.inventory[{components:{"minecraft:custom_data":{is_poltergust:1b}}}].components."minecraft:custom_data".model_data.body_left
execute if score #mirrored Selected matches 1 run data modify entity @s[tag=riding_poltergust] equipment.head merge from storage luigis_mansion:data luigi.inventory[{components:{"minecraft:custom_data":{is_poltergust:1b}}}].components."minecraft:custom_data".model_data.body_sat_on_left

$execute at @s run function $(namespace):animations/luigi/$(id)/poltergust_body