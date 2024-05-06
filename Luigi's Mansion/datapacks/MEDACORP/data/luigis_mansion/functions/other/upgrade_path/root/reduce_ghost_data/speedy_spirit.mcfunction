execute store result score #temp3 Time run data get storage luigis_mansion:data new_ghosts_caught.caught.luigis_mansion.speedy_spirit
execute store result score #temp2 Time run data get storage luigis_mansion:data ghosts_caught[-1].caught.speedy_spirit
execute store result storage luigis_mansion:data new_ghosts_caught.caught.luigis_mansion.speedy_spirit int 1 run scoreboard players operation #temp Time += #temp2 Time
execute if score #temp3 Time matches ..-1 run data modify storage luigis_mansion:data new_ghosts_caught.caught.luigis_mansion.speedy_spirit set value 2147483647