execute store result score #temp3 Time run data get storage luigis_mansion:data new_ghosts_caught.caught.luigis_mansion.grabbing_ghost
execute store result score #temp2 Time run data get storage luigis_mansion:data ghosts_caught[-1].caught.grabbing_ghost
execute store result storage luigis_mansion:data new_ghosts_caught.caught.luigis_mansion.grabbing_ghost int 1 run scoreboard players operation #temp Time += #temp2 Time
execute if score #temp3 Time matches ..-1 run data modify storage luigis_mansion:data new_ghosts_caught.caught.luigis_mansion.grabbing_ghost set value 2147483647