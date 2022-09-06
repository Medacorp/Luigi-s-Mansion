execute store result entity @s Pos[0] double 0.01 run scoreboard players get #temp LightX
execute store result entity @s Pos[1] double 0.01 run scoreboard players get #temp LightY
execute store result entity @s Pos[2] double 0.01 run scoreboard players get #temp LightZ
execute at @e[tag=me,limit=1] positioned ~ ~1.3 ~ run summon minecraft:marker ~ ~ ~ {Tags:["temp","remove_from_existence"]}
execute at @s facing entity @e[tag=temp,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute at @s positioned ^ ^ ^0.1 if block ~ ~ ~ #luigis_mansion:flashlight_path run function luigis_mansion:other/cast_shadow_step
kill @s
kill @e[tag=temp,limit=1]