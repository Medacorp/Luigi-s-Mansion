place template luigis_mansion:boneyard/plant_1 676 102 41
data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {watered_boneyard_plant_1:1b}
playsound luigis_mansion:music.solve_puzzle music @a[scores={Room=28}] ~ ~ ~ 1000
scoreboard players set @a[scores={Room=28,Music=..29}] Music 30