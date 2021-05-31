data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {extinguished_hallway_8_fire:1b}
fill 661 20 59 661 21 59 minecraft:air
playsound luigis_mansion:music.solve_puzzle music @a[scores={Room=33}] ~ ~ ~ 1000
scoreboard players set @a[scores={Room=33,Music=..29}] Music 30