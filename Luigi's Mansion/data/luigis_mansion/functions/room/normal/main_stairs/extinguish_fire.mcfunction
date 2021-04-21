data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {extinguished_main_stairs_fire:1b}
fill 661 20 -44 661 21 -44 minecraft:air
playsound luigis_mansion:music.solve_puzzle music @a[scores={Room=29}] ~ ~ ~ 1000
scoreboard players set @a[scores={Room=29,Music=..29}] Music 30