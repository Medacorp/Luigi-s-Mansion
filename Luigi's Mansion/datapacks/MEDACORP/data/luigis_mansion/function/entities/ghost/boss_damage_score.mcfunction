scoreboard players operation #temp Health = @s Health
scoreboard players remove #temp Health 100
scoreboard players operation #temp Health *= #-1 Constants
scoreboard players operation #temp Damage += #temp Health
scoreboard players reset #temp Health