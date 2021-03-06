execute at @s[tag=!turned] run function luigis_mansion:entities/ghost/flee_initial_turn
execute at @s[tag=!wall,scores={Turn=0}] run function luigis_mansion:entities/ghost/flee_turn
execute at @s[tag=wall] run function luigis_mansion:entities/ghost/flee_wall
tag @s add me
function luigis_mansion:entities/ghost/clear_non_vacuumers
function luigis_mansion:entities/ghost/pull
tag @s remove me
scoreboard players operation #temp MoveFlee = @s MoveFlee
execute at @s[tag=second_flee_state] run function luigis_mansion:entities/ghost/second_flee_state
execute if score #temp MoveFlee matches 1.. at @s[tag=!ground_bound] rotated ~ 0 run function luigis_mansion:entities/ghost/move_flee
execute if score #temp MoveFlee matches 1.. at @s[tag=ground_bound] rotated ~ 0 run function luigis_mansion:entities/ghost/move_flee_ground_bound
execute if entity @s[tag=is_pulled] unless entity @a[tag=!spectator,distance=..3,tag=vacuuming_this_ghost,limit=1] run scoreboard players set #temp Move -30
execute if score #temp Move matches ..-1 at @s[tag=!ground_bound] facing entity @p[tag=!spectator,tag=vacuuming_this_ghost,tag=is_pulling] feet rotated ~ 0 run function luigis_mansion:entities/ghost/move_pulled
execute if score #temp Move matches ..-1 at @s[tag=ground_bound] facing entity @p[tag=!spectator,tag=vacuuming_this_ghost,tag=is_pulling] feet rotated ~ 0 run function luigis_mansion:entities/ghost/move_pulled_ground_bound
scoreboard players remove @s[scores={Turn=1..}] Turn 1
scoreboard players set @s[tag=is_pulled] ErrorTime 0
scoreboard players add @s[tag=!is_pulled,scores={Health=1..}] ErrorTime 1
tag @s remove is_pulled
tag @a remove vacuuming_this_ghost
scoreboard players reset #temp MoveFlee