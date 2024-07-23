execute store result score #temp Time run random value 1..100
execute if score #temp Time matches 1..70 run data modify storage luigis_mansion:data furniture.loot set value {contents:{luigis_mansion:{small_heart:1}}}
execute if score #temp Time matches 71..80 run data modify storage luigis_mansion:data furniture.loot set value {contents:{luigis_mansion:{big_heart:1}}}
execute if score #temp Time matches 81..100 run data remove storage luigis_mansion:data furniture.loot
scoreboard players reset #temp Time