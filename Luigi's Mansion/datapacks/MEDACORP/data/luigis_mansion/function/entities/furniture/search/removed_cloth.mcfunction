summon minecraft:marker ~ ~1.43875 ~ {Tags:["location","remove_from_existence"]}
execute store result entity @e[tag=location,limit=1] Pos[1] double 0.1 run scoreboard players get @s PositionY
execute at @e[tag=location] if entity @e[distance=..0.1,tag=hidden_boo,tag=caught_by_boo_radar,limit=1] at @s rotated ~ 0 run function luigis_mansion:entities/furniture/spawn/boo
kill @e[tag=location]
tag @s remove cloth_on_top