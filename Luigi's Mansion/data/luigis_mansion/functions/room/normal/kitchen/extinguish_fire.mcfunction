data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {extinguished_kitchen_fire:1b}
fill 699 11 88 699 12 88 minecraft:air
playsound luigis_mansion:music.solve_puzzle music @a[scores={Room=23}] ~ ~ ~ 1000
scoreboard players set @a[scores={Room=23,Music=..29}] Music 30