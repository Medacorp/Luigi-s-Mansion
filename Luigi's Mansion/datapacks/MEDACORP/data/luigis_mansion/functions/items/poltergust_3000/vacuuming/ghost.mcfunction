execute if entity @s[scores={HurtTime=10,Health=1..},tag=!no_ai] run scoreboard players set @a[tag=me,scores={Sound=0},limit=1] Sound 1
execute if entity @s[scores={HurtTime=10,Health=1..},tag=!no_ai] at @s run function luigis_mansion:items/poltergust_3000/vacuuming/hurt_ghost
execute unless entity @s[scores={HurtTime=30..,Health=1..}] run tag @a[tag=me,limit=1] add is_pulling
tag @s add this_ghost
execute if score #global_difficulty Selected matches ..1 at @e[type=minecraft:marker,tag=position,limit=1] facing entity @s feet rotated ~ 0 positioned ^ ^ ^1 if entity @a[tag=me,distance=..1.05,limit=1] run tag @s add not_pulled
execute if score #global_difficulty Selected matches 2 at @e[type=minecraft:marker,tag=position,limit=1] facing entity @s feet rotated ~ 0 positioned ^ ^ ^-1 unless entity @a[tag=me,distance=..0.95,limit=1] run tag @s add not_pulled
execute if score #global_difficulty Selected matches 3 at @e[type=minecraft:marker,tag=position,limit=1] facing entity @s feet rotated ~ 0 as @a[tag=me,limit=1] positioned ^ ^ ^-0.1 unless entity @s[distance=..0.05] positioned ^ ^ ^-0.1 unless entity @s[distance=..0.1] positioned ^ ^ ^-0.1 unless entity @s[distance=..0.1] positioned ^ ^ ^-0.1 unless entity @s[distance=..0.1] positioned ^ ^ ^-0.1 unless entity @s[distance=..0.1] positioned ^ ^ ^-0.1 unless entity @s[distance=..0.1] positioned ^ ^ ^-0.1 unless entity @s[distance=..0.1] positioned ^ ^ ^-0.1 unless entity @s[distance=..0.1] positioned ^ ^ ^-0.1 unless entity @s[distance=..0.1] run tag @e[tag=this_ghost,limit=1] add not_pulled
execute if entity @s[scores={HurtTime=30..,Health=1..},tag=!no_ai,tag=!not_pulled] at @s run function luigis_mansion:items/poltergust_3000/vacuuming/hurt_ghost
tag @s remove not_pulled
tag @s remove this_ghost
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["temp","target_direction"]}
execute store result score #temp PositionY run data get entity @s Pos[1] 10
execute store result entity @e[tag=target_direction,limit=1] Pos[1] double 0.1 run scoreboard players operation #temp PositionY += @s EntityYOffset
execute rotated as @a[tag=me,limit=1] positioned ^ ^ ^0.5 facing entity @e[tag=target_direction,limit=1] feet run function luigis_mansion:items/poltergust_3000/vacuuming/ghost_step
kill @e[tag=target_direction,limit=1]
scoreboard players reset #temp PositionY
scoreboard players reset #temp Steps
execute if entity @s[scores={Health=..0}] run tag @a[tag=me,limit=1] add capturing_ghost