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
scoreboard players operation #temp PreviousHealth = @s PreviousHealth
scoreboard players remove #temp Health 1
scoreboard players remove #temp PreviousHealth 1
scoreboard players operation #temp Health /= #1000 Constants
scoreboard players operation #temp PreviousHealth /= #1000 Constants

execute unless score #temp Health = #temp PreviousHealth if score #temp2 Health matches 1.. if score #temp2 LastHealth matches ..4 run function luigis_mansion:spawn_entities/item/small_pearl
execute unless score #temp Health = #temp PreviousHealth if score #temp2 Health matches 1.. if score #temp2 LastHealth matches 5.. run function luigis_mansion:spawn_entities/item/medium_pearl
execute unless score #temp Health = #temp PreviousHealth if score #temp2 Health matches 0 unless score #temp MaxHealth = #temp LastHealth if score #temp2 LastHealth matches ..4 run function luigis_mansion:spawn_entities/item/small_pearl
execute unless score #temp Health = #temp PreviousHealth if score #temp2 Health matches 0 unless score #temp MaxHealth = #temp LastHealth if score #temp2 LastHealth matches 5.. run function luigis_mansion:spawn_entities/item/medium_pearl
execute unless score #temp Health = #temp PreviousHealth if score #temp2 Health matches 0 if score #temp MaxHealth = #temp LastHealth run function luigis_mansion:spawn_entities/item/big_pearl
tag @e[tag=this_entity,limit=1] remove this_entity
scoreboard players operation @s PreviousHealth = @s Health
scoreboard players reset #temp MaxHealth
scoreboard players reset #temp LastHealth
scoreboard players reset #temp2 LastHealth
scoreboard players reset #temp PreviousHealth
scoreboard players reset #temp Health
scoreboard players reset #temp2 Health