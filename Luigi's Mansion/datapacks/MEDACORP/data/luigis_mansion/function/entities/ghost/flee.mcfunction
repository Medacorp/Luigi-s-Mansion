scoreboard players set @s[tag=is_pulled] ErrorTime 0
scoreboard players add @s[tag=!is_pulled,scores={Health=1..}] ErrorTime 1
execute as @a[tag=!spectator,tag=vacuuming_me] run scoreboard players operation @s TeleportDelay = @s TeleportDelaySetting
execute as @a[tag=!spectator,tag=vacuuming_me] run scoreboard players set @s[scores={TeleportDelay=4..}] TeleportDelay 3
execute store result storage luigis_mansion:data macro.chance int 1 run scoreboard players get @s PullStrength
function luigis_mansion:entities/ghost/flee_task/pull_chance with storage luigis_mansion:data macro
tag @s add me
execute if entity @s[tag=!show_health,tag=!vacuumable,scores={ErrorTime=5..}] as @a[tag=!spectator,tag=vacuuming_me,distance=3..] positioned as @s facing entity @e[tag=me,limit=1] feet rotated ~ 0 if block ^ ^ ^0.6 #luigis_mansion:ghosts_ignore if block ^ ^1 ^0.6 #luigis_mansion:ghosts_ignore run tag @s add pulled_by_me
execute if entity @s[tag=!show_health,tag=!vacuumable] unless entity @s[tag=!always_pull_players,scores={ErrorTime=..4}] as @a[tag=!spectator,tag=vacuuming_me,scores={TeleportDelayTimer=0},distance=3..] positioned as @s facing entity @e[tag=me,limit=1] feet rotated ~ 0 run function luigis_mansion:entities/ghost/flee_task/pull_player
tag @s remove me
tag @s remove always_pull_players
execute if entity @s[scores={ErrorTime=5..}] run tag @a[tag=pulled_by_me] add pulled_by_ghost
execute unless entity @a[tag=pulled_by_me] run scoreboard players set @s[scores={ErrorTime=5..}] ErrorTime 0
tag @a[tag=pulled_by_me] remove pulled_by_me
execute at @s[tag=second_flee_state] run function luigis_mansion:entities/ghost/flee_task/second_state

scoreboard players add @s FleeTime 1
scoreboard players operation #temp MoveFlee = @s MoveFlee
execute unless entity @s[scores={FleeTask=0..4}] run function luigis_mansion:entities/ghost/flee_task/straight_line
execute if entity @s[scores={FleeTask=0}] run function luigis_mansion:entities/ghost/flee_task/random
execute if entity @s[scores={FleeTask=1}] run function luigis_mansion:entities/ghost/flee_task/alternate
execute if entity @s[scores={FleeTask=2}] run function luigis_mansion:entities/ghost/flee_task/circle
execute if entity @s[scores={FleeTask=3}] run function luigis_mansion:entities/ghost/flee_task/random_in_range
execute if entity @s[scores={FleeTask=4}] run function luigis_mansion:entities/ghost/flee_task/loops

execute if entity @s[tag=is_pulled,tag=!always_pull] unless entity @a[tag=!spectator,distance=..3,tag=vacuuming_me,limit=1] run scoreboard players operation #temp MoveFlee -= @s MoveFlee
execute if entity @s[tag=is_pulled,tag=!always_pull] unless entity @a[tag=!spectator,distance=..3,tag=vacuuming_me,limit=1] run scoreboard players remove #temp MoveFlee 5
execute if score #temp MoveFlee matches ..-1 at @s[tag=!ground_bound] facing entity @p[tag=!spectator,tag=vacuuming_me] feet rotated ~ 0 run function luigis_mansion:entities/ghost/flee_task/move_pulled
execute if score #temp MoveFlee matches ..-1 at @s[tag=ground_bound] facing entity @p[tag=!spectator,tag=vacuuming_me] feet rotated ~ 0 run function luigis_mansion:entities/ghost/flee_task/move_pulled_ground_bound

tag @s remove is_pulled
scoreboard players reset #temp MoveFlee