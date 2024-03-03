scoreboard players set @s HomeY 3700
scoreboard players add @s Wave 1
tag @s[scores={Wave=..59}] remove in_vacuum
execute at @s[scores={Wave=1..60}] facing entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"bowser"}}},limit=1] feet rotated ~-180 0 run teleport @s ~ ~ ~ ~ ~
execute at @s[tag=!flee,tag=!in_vacuum,scores={Wave=1..120}] if score #temp Move matches 1.. run function luigis_mansion:entities/king_boo/move_forward
execute if entity @s[scores={Wave=60}] run function luigis_mansion:entities/boo/rotate_random
execute if entity @s[scores={Time=20..,Wave=..120}] run function luigis_mansion:entities/boo/rotate_random
execute if score #temp Move matches 1.. at @s[scores={Wave=..120},tag=move_up] run function luigis_mansion:entities/boo/move/up
execute if score #temp Move matches 1.. at @s[scores={Wave=..120},tag=!move_up] run function luigis_mansion:entities/boo/move/down

execute if entity @s[scores={Wave=121..},tag=!dying] run function luigis_mansion:entities/king_boo/ai/flee_to_bowser