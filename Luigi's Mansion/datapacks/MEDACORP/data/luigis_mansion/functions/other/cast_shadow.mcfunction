summon minecraft:marker ~ ~ ~ {Tags:["light_position"]}
scoreboard players operation #temp LightX = @s LightX
scoreboard players operation #temp LightY = @s LightY
scoreboard players operation #temp LightZ = @s LightZ
tag @s[nbt={Marker:1b}] add was_marker
data merge entity @s {Marker:0b}
tag @s add me
execute as @e[tag=light_position,limit=1] run function luigis_mansion:other/cast_shadow_marker
tag @s remove me
data merge entity @s[tag=was_marker] {Marker:1b}
tag @s remove was_marker
scoreboard players reset #temp LightX
scoreboard players reset #temp LightY
scoreboard players reset #temp LightZ
scoreboard players reset #temp Time