execute if entity @s[tag=!cutscene] run function luigis_mansion:entities/boo/ghost
execute if entity @s[tag=cutscene] run function luigis_mansion:entities/boo/cutscene
tag @s[tag=dark_room] remove caught_by_boo_radar
tag @s[tag=!dark_room] add caught_by_boo_radar
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/1_tall