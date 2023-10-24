#R
execute store result score #temp Time run random value 0..255
scoreboard players operation #temp Time *= #256 Constants
scoreboard players operation #temp Time *= #256 Constants

#G
execute store result score #temp2 Time run random value 0..255
scoreboard players operation #temp2 Time *= #256 Constants
scoreboard players operation #temp Time += #temp2 Time

#B
execute store result score #temp2 Time run random value 0..255
scoreboard players operation #temp Time += #temp2 Time

scoreboard players reset #temp2 Time