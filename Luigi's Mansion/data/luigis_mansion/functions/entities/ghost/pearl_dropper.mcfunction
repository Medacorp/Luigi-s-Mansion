scoreboard players operation #temp MaxHealth = @s MaxHealth
scoreboard players remove #temp MaxHealth 1
scoreboard players operation #temp MaxHealth /= #1000 Constants
# value = total pearls to drop
scoreboard players operation #temp LastHealth = @s LastHealth
scoreboard players remove #temp LastHealth 1
scoreboard players operation #temp LastHealth /= #1000 Constants
# value = pearls left to drop since last suction
scoreboard players operation #temp2 Health = @s Health
scoreboard players remove #temp2 Health 1
scoreboard players operation #temp2 Health /= #1000 Constants
# value = total pearls left to drop
scoreboard players operation #temp2 LastHealth = #temp LastHealth
scoreboard players operation #temp2 LastHealth -= #temp2 Health
# value = pearls dropped in this suction

# see if it reaches a new X0 digit to drop a pearl (remove 1 to trigger it as it hits X0, not X0-1)
scoreboard players operation #temp Health = @s Health
scoreboard players operation #temp PrevHealth = @s PrevHealth
scoreboard players remove #temp Health 1
scoreboard players remove #temp PrevHealth 1
scoreboard players operation #temp Health /= #1000 Constants
scoreboard players operation #temp PrevHealth /= #1000 Constants

execute unless score #temp Health = #temp PrevHealth if score #temp2 Health matches 1.. if score #temp2 LastHealth matches ..4 run function luigis_mansion:spawn_entities/item/small_pearl
execute unless score #temp Health = #temp PrevHealth if score #temp2 Health matches 1.. if score #temp2 LastHealth matches 5.. run function luigis_mansion:spawn_entities/item/medium_pearl
execute unless score #temp Health = #temp PrevHealth if score #temp2 Health matches 0 unless score #temp MaxHealth = #temp LastHealth if score #temp2 LastHealth matches ..4 run function luigis_mansion:spawn_entities/item/small_pearl
execute unless score #temp Health = #temp PrevHealth if score #temp2 Health matches 0 unless score #temp MaxHealth = #temp LastHealth if score #temp2 LastHealth matches 5.. run function luigis_mansion:spawn_entities/item/medium_pearl
execute unless score #temp Health = #temp PrevHealth if score #temp2 Health matches 0 if score #temp MaxHealth = #temp LastHealth run function luigis_mansion:spawn_entities/item/big_pearl
scoreboard players operation @s PrevHealth = @s Health
scoreboard players reset #temp MaxHealth
scoreboard players reset #temp LastHealth
scoreboard players reset #temp2 LastHealth
scoreboard players reset #temp PrevHealth
scoreboard players reset #temp Health
scoreboard players reset #temp2 Health