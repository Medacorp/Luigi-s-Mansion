execute store result entity @s Pos[0] double 0.01 run scoreboard players get #temp LightX
execute store result entity @s Pos[1] double 0.01 run scoreboard players get #temp LightY
execute store result entity @s Pos[2] double 0.01 run scoreboard players get #temp LightZ
execute at @s facing entity @e[tag=me,limit=1] eyes run teleport @s ~ ~ ~ ~ ~
execute at @s positioned ^ ^ ^0.1 if block ~ ~ ~ #luigis_mansion:flashlight_path run function luigis_mansion:other/cast_shadow_step
kill @s