execute if entity @s[distance=4..4.999999] facing entity @s feet rotated ~10 0 positioned ^ ^ ^4.5 run summon minecraft:marker ~ ~ ~ {Tags:["ball_floor_target"]}
execute if entity @s[distance=3..3.999999] facing entity @s feet rotated ~10 0 positioned ^ ^ ^3.5 run summon minecraft:marker ~ ~ ~ {Tags:["ball_floor_target"]}
execute if entity @s[distance=2..2.999999] facing entity @s feet rotated ~10 0 positioned ^ ^ ^2.5 run summon minecraft:marker ~ ~ ~ {Tags:["ball_floor_target"]}
execute if entity @s[distance=1..1.999999] facing entity @s feet rotated ~10 0 positioned ^ ^ ^1.5 run summon minecraft:marker ~ ~ ~ {Tags:["ball_floor_target"]}
execute if entity @s[distance=..0.999999] facing entity @s feet rotated ~10 0 positioned ^ ^ ^0.5 run summon minecraft:marker ~ ~ ~ {Tags:["ball_floor_target"]}
execute if entity @s[distance=4..4.999999] run scoreboard players set #temp Move 8
execute if entity @s[distance=3..3.999999] run scoreboard players set #temp Move 6
execute if entity @s[distance=2..2.999999] run scoreboard players set #temp Move 4
execute if entity @s[distance=..1.999999] run scoreboard players set #temp Move 2
execute at @s run teleport @s ~ ~ ~ ~1.025 ~
execute at @s facing entity @e[tag=ball_floor_target,limit=1] feet rotated ~ 0 run function luigis_mansion:entities/ball_floor/move_forward
kill @e[tag=ball_floor_target,limit=1,type=minecraft:marker]
scoreboard players remove @s[tag=luigi] TeleportDelay 1
execute if entity @s[tag=luigi,scores={TeleportDelay=-1}] positioned as @s rotated as @s run function luigis_mansion:entities/luigi/move/execute {execute:"positioned ~ ~ ~ rotated ~ ~",teleport:"~ ~ ~ ~ ~"}
execute if entity @s[tag=luigi,scores={TeleportDelay=0..}] run function luigis_mansion:entities/ball_floor/rotate_right