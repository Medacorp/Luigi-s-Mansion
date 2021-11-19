scoreboard players operation #temp LastHealth = @s LastHealth
scoreboard players operation #temp Health = @s Health
scoreboard players operation #temp LastHealth -= #temp Health
scoreboard players operation @s TopVacuumDamage > #temp LastHealth
execute if entity @s[scores={Room=1..,Health=..3000,LastHealth=3001..,PullStrength=1..},tag=portrait_ghost,tag=!poison_mushroom_dropped] run function luigis_mansion:entities/ghost/drop_poison_mushroom
execute if entity @s[scores={Room=1..,SecondFleeDamage=0..}] if score #temp LastHealth >= @s SecondFleeDamage run tag @s add second_flee_state
scoreboard players reset #temp LastHealth
scoreboard players reset #temp Health