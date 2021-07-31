scoreboard players operation #temp LastHealth = @s LastHealth
scoreboard players operation #temp Health = @s Health
scoreboard players operation #temp LastHealth -= #temp Health
scoreboard players operation @s TopVacuumDamage > #temp LastHealth
scoreboard players reset #temp LastHealth
scoreboard players reset #temp Health