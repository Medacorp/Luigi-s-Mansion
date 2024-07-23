execute store result score #temp Time run random value 1..100
#1..50 loot that's already set
execute if score #temp Time matches 51..60 run data modify storage luigis_mansion:data furniture.loot set value {contents:{luigis_mansion:{small_heart:[{tags:["random_turn_on_bounce"]}]}}}
execute if score #temp Time matches 61..70 run data modify storage luigis_mansion:data furniture.loot set value {contents:{luigis_mansion:{poison_mushroom:1}}}
execute if score #temp Time matches 71..100 run data remove storage luigis_mansion:data furniture.loot
scoreboard players reset #temp Time