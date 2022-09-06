execute if entity @s[scores={HurtTime=10,Health=1..},tag=!dialog] run scoreboard players set @a[tag=me,scores={Sound=0},limit=1] Sound 1
execute if entity @s[scores={HurtTime=10,Health=1..},tag=!dialog] at @s run function luigis_beta_mansion:items/poltergust_500/vacuuming/hurt_ghost
execute unless entity @s[scores={HurtTime=30..,Health=1..}] run tag @a[tag=me,limit=1] add is_pulling
execute at @e[type=minecraft:marker,tag=position,limit=1] facing entity @s feet rotated ~ 0 positioned ^ ^ ^-1 if entity @a[tag=me,distance=..0.95,limit=1] if entity @s[scores={HurtTime=30..,Health=1..},tag=!dialog] at @s run function luigis_beta_mansion:items/poltergust_500/vacuuming/hurt_ghost
execute rotated as @a[tag=me,limit=1] positioned ^ ^ ^0.5 facing entity @s feet run function luigis_beta_mansion:items/poltergust_500/vacuuming/ghost_step
scoreboard players reset #temp Steps
execute if entity @s[scores={Health=..0}] run tag @a[tag=me,limit=1] add capturing_ghost