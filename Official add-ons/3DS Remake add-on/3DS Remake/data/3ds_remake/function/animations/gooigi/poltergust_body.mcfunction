# Move with
execute if entity @s[tag=!riding_poltergust] run function luigis_mansion:animations/luigi/poltergust_body_pos
execute if entity @s[tag=riding_poltergust] run function luigis_mansion:animations/luigi/poltergust_body_pos_riding

execute at @s[tag=!shrunk] if data storage luigis_mansion:data luigi{tags:["exploding_poltergust_effect"]} run particle minecraft:large_smoke ~ ~0.05 ~ 0.3 0.3 0.3 0 10 normal @a[tag=same_room]
execute at @s[tag=!shrunk] if data storage luigis_mansion:data luigi{tags:["exploding_poltergust_effect"]} run particle minecraft:flame ~ ~0.05 ~ 0.3 0.3 0.3 0 10 normal @a[tag=same_room]
execute at @s[tag=shrunk] if data storage luigis_mansion:data luigi{tags:["exploding_poltergust_effect"]} run particle minecraft:large_smoke ~ ~0.025 ~ 0.3 0.3 0.3 0 10 normal @a[tag=same_room]
execute at @s[tag=shrunk] if data storage luigis_mansion:data luigi{tags:["exploding_poltergust_effect"]} run particle minecraft:flame ~ ~0.025 ~ 0.3 0.3 0.3 0 10 normal @a[tag=same_room]

data modify entity @s item set from storage luigis_mansion:data luigi.inventory[{components:{"minecraft:custom_data":{is_poltergust:1b}}}]
execute unless score #mirrored Selected matches 1 run function luigis_mansion:animations/luigi/poltergust_body_normal
execute if score #mirrored Selected matches 1 run function luigis_mansion:animations/luigi/poltergust_body_mirrored

$execute at @s run function $(namespace):animations/luigi/$(id)/poltergust_body