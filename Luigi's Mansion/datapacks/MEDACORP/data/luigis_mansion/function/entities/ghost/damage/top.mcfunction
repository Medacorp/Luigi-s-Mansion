scoreboard players operation #temp LastHealth = @s LastHealth
scoreboard players operation #temp LastHealth -= @s Health
scoreboard players operation @s TopVacuumDamage > #temp LastHealth
execute if entity @s[scores={SecondFleeDamage=0..}] if score #temp LastHealth >= @s SecondFleeDamage run tag @s add second_flee_state
scoreboard players reset #temp LastHealth