execute store result score #temp Time run random value 1..100
execute if score #temp Time matches 1..50 run function luigis_mansion:entities/furniture/loot_chance/small_heart
execute if score #temp Time matches 51..100 run data remove storage luigis_mansion:data furniture.loot
scoreboard players reset #temp Time