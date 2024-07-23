execute store result score #temp Time run random value 1..100
execute if score #temp Time matches 1..30 run data modify storage luigis_mansion:data furniture.loot set value {contents:{luigis_mansion:{small_heart:[{tags:["random_turn_on_bounce"]}]}}}
execute if score #temp Time matches 31..45 run data modify storage luigis_mansion:data furniture.loot set value {contents:{luigis_mansion:{poison_mushroom:1}}}
execute if score #temp Time matches 46..100 run data remove storage luigis_mansion:data furniture.loot
scoreboard players reset #temp Time