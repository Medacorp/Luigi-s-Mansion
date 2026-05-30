execute store result score #temp Time run random value 1..100
#1..25 loot that's already set
execute if score #temp Time matches 26..45 run function luigis_mansion:entities/furniture/loot_chance/moving_heart
execute if score #temp Time matches 46..50 run function luigis_mansion:entities/furniture/loot_chance/poison_mushroom
execute if score #temp Time matches 51..100 run data remove storage luigis_mansion:data furniture.loot
scoreboard players reset #temp Time