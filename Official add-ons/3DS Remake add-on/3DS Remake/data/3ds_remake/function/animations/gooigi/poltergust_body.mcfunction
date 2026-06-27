# Move with
teleport @s[tag=!riding_poltergust,tag=!low_health,tag=!shrunk,tag=!flipped_gravity] ^ ^-1.2 ^-0.125 ~ ~
teleport @s[tag=!riding_poltergust,tag=low_health,tag=!shrunk,tag=!flipped_gravity] ^ ^-1.2 ^-0.325 ~ ~
teleport @s[tag=!riding_poltergust,tag=!low_health,tag=shrunk,tag=!flipped_gravity] ^ ^-0.59 ^-0.065 ~ ~
teleport @s[tag=!riding_poltergust,tag=low_health,tag=shrunk,tag=!flipped_gravity] ^ ^-0.59 ^-0.21 ~ ~
teleport @s[tag=!riding_poltergust,tag=!low_health,tag=!shrunk,tag=flipped_gravity] ^ ^1.45 ^-0.125 ~ ~
teleport @s[tag=!riding_poltergust,tag=low_health,tag=!shrunk,tag=flipped_gravity] ^ ^1.45 ^-0.325 ~ ~
teleport @s[tag=!riding_poltergust,tag=!low_health,tag=shrunk,tag=flipped_gravity] ^ ^-0.68 ^-0.065 ~ ~
teleport @s[tag=!riding_poltergust,tag=low_health,tag=shrunk,tag=flipped_gravity] ^ ^-0.68 ^-0.21 ~ ~

teleport @s[tag=riding_poltergust,tag=!flipped_gravity,tag=!low_health,tag=!shrunk] ^ ^-1.55 ^0.1 ~ ~
teleport @s[tag=riding_poltergust,tag=!flipped_gravity,tag=low_health,tag=!shrunk] ^ ^-1.3 ^0.1 ~ ~
teleport @s[tag=riding_poltergust,tag=!flipped_gravity,tag=!low_health,tag=shrunk] ^ ^-0.77 ^0.05 ~ ~
teleport @s[tag=riding_poltergust,tag=!flipped_gravity,tag=low_health,tag=shrunk] ^ ^-0.62 ^0.05 ~ ~
teleport @s[tag=riding_poltergust,tag=flipped_gravity,tag=!low_health,tag=!shrunk] ^ ^1.85 ^0.1 ~ ~
teleport @s[tag=riding_poltergust,tag=flipped_gravity,tag=low_health,tag=!shrunk] ^ ^1.60 ^0.1 ~ ~
teleport @s[tag=riding_poltergust,tag=flipped_gravity,tag=!low_health,tag=shrunk] ^ ^-0.52 ^0.05 ~ ~
teleport @s[tag=riding_poltergust,tag=flipped_gravity,tag=low_health,tag=shrunk] ^ ^-0.52 ^0.05 ~ ~

scoreboard players remove @s[tag=!riding_poltergust,tag=was_low_health,tag=!low_health] AnimationRotationX 200
scoreboard players add @s[tag=!riding_poltergust,tag=!was_low_health,tag=low_health] AnimationRotationX 200
scoreboard players set @s[tag=riding_poltergust] AnimationRotationX -900

execute if entity @s[tag=riding_poltergust,tag=!was_riding_poltergust] run tag @a[tag=gooigi,limit=1] add poltergust_floor_sound

execute at @s[tag=!shrunk] if data storage luigis_mansion:data luigi{tags:["exploding_poltergust_effect"]} run particle minecraft:large_smoke ~ ~0.05 ~ 0.3 0.3 0.3 0 10 normal @a[tag=same_room]
execute at @s[tag=!shrunk] if data storage luigis_mansion:data luigi{tags:["exploding_poltergust_effect"]} run particle minecraft:flame ~ ~0.05 ~ 0.3 0.3 0.3 0 10 normal @a[tag=same_room]
execute at @s[tag=shrunk] if data storage luigis_mansion:data luigi{tags:["exploding_poltergust_effect"]} run particle minecraft:large_smoke ~ ~0.025 ~ 0.3 0.3 0.3 0 10 normal @a[tag=same_room]
execute at @s[tag=shrunk] if data storage luigis_mansion:data luigi{tags:["exploding_poltergust_effect"]} run particle minecraft:flame ~ ~0.025 ~ 0.3 0.3 0.3 0 10 normal @a[tag=same_room]

data modify entity @s item set from storage luigis_mansion:data luigi.inventory[{components:{"minecraft:custom_data":{is_poltergust:1b}}}]
execute unless score #mirrored Selected matches 1 run function luigis_mansion:animations/luigi/poltergust_body_normal
execute if score #mirrored Selected matches 1 run function luigis_mansion:animations/luigi/poltergust_body_mirrored

$execute at @s run function $(namespace):animations/luigi/$(id)/poltergust_body