scoreboard players reset #cellar_dust_1 Search
execute if score #cellar_dust_1 Searching matches 10 run setblock 744 3 -45 minecraft:air
execute if score #cellar_dust_1 Searching matches 10 run setblock 746 3 -45 minecraft:air
execute if score #cellar_dust_1 Searching matches 10 run setblock 745 3 -44 minecraft:air
execute if score #cellar_dust_1 Searching matches 10 run setblock 745 3 -46 minecraft:air
execute if score #cellar_dust_1 Searching matches 20 run setblock 745 3 -45 minecraft:air
execute if score #cellar_dust_1 Searching matches 20 run setblock 744 2 -44 minecraft:air
execute if score #cellar_dust_1 Searching matches 20 run setblock 746 2 -46 minecraft:air
#execute if score #cellar_dust_1 Searching matches 20 run setblock 744 2 -46 minecraft:air
execute if score #cellar_dust_1 Searching matches 20 run setblock 746 2 -44 minecraft:air
execute if score #cellar_dust_1 Searching matches 30 run setblock 744 2 -45 minecraft:air
execute if score #cellar_dust_1 Searching matches 30 run setblock 746 2 -45 minecraft:air
execute if score #cellar_dust_1 Searching matches 30 run setblock 745 2 -44 minecraft:air
execute if score #cellar_dust_1 Searching matches 30 run setblock 745 2 -46 minecraft:air
execute if score #cellar_dust_1 Searching matches 40 run setblock 745 2 -45 minecraft:air
execute if score #cellar_dust_1 Searching matches 40 run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {vacuumed_cellar_dust_1:1b}