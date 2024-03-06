execute at @s[tag=!turned] run function luigis_mansion:entities/ghost/flee/initial_turn
execute at @s[tag=!wall,scores={Turn=0}] run function luigis_mansion:entities/ghost/flee/turn
execute at @s[tag=wall] run function luigis_mansion:entities/ghost/flee/wall
tag @s remove wall
tag @s add me
execute if entity @s[tag=!show_health] run function luigis_mansion:entities/ghost/flee/pull
tag @s remove me
scoreboard players operation #temp MoveFlee = @s MoveFlee
execute at @s[tag=second_flee_state] run function luigis_mansion:entities/ghost/flee/second_state
execute unless entity @a[tag=vacuuming_me,limit=1] run scoreboard players operation #temp MoveFlee = @s Move
execute if score #temp MoveFlee matches 1.. at @s[tag=!ground_bound] rotated ~ 0 run function luigis_mansion:entities/ghost/flee/move
execute if score #temp MoveFlee matches 1.. at @s[tag=ground_bound] rotated ~ 0 run function luigis_mansion:entities/ghost/flee/move_ground_bound
execute if entity @s[tag=is_pulled] unless entity @a[tag=!spectator,distance=..3,tag=vacuuming_me,limit=1] run scoreboard players set #temp Move -30
execute if score #temp Move matches ..-1 at @s[tag=!ground_bound] facing entity @p[tag=!spectator,tag=vacuuming_me] feet rotated ~ 0 run function luigis_mansion:entities/ghost/flee/move_pulled
execute if score #temp Move matches ..-1 at @s[tag=ground_bound] facing entity @p[tag=!spectator,tag=vacuuming_me] feet rotated ~ 0 run function luigis_mansion:entities/ghost/flee/move_pulled_ground_bound
scoreboard players remove @s[scores={Turn=1..}] Turn 1
scoreboard players set @s[tag=is_pulled] ErrorTime 0
scoreboard players add @s[tag=!is_pulled,scores={Health=1..}] ErrorTime 1
tag @s remove is_pulled
scoreboard players reset #temp MoveFlee