execute store result score #temp Time run random value 1..100
#1..50 loot that's already set
execute if score #temp Time matches 51..60 run function luigis_mansion:entities/furniture/loot_chance/moving_heart
execute if score #temp Time matches 61..70 run function luigis_mansion:entities/furniture/loot_chance/poison_mushroom
execute if score #temp Time matches 71..100 run data remove storage luigis_mansion:data furniture.loot
scoreboard players reset #temp Time