execute if entity @e[tag=luigi,distance=..7.5,tag=vacuuming_me,limit=1] run scoreboard players operation #temp MoveFlee = @s MoveFlee
execute if entity @e[tag=luigi,distance=..7.5,tag=vacuuming_me,limit=1] run scoreboard players operation #temp MoveFlee /= #2 Constants
execute unless entity @e[tag=luigi,distance=..7.5,tag=vacuuming_me,limit=1] run scoreboard players operation #temp MoveFlee = @s PulledStrength
scoreboard players operation #temp MoveFlee *= #-1 Constants
execute if score #temp MoveFlee matches ..-1 facing entity @e[tag=luigi,tag=vacuuming_me,sort=nearest,limit=1] feet rotated ~ 0 run function luigis_mansion:entities/ghost/flee_task/move_pulled