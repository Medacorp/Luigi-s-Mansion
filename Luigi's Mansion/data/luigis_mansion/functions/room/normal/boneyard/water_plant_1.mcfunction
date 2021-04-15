setblock 676 102 41 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:boneyard/plant_1"}
data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {watered_boneyard_plant_1:1b}
playsound luigis_mansion:music.solve_puzzle music @a[scores={Room=24}] ~ ~ ~ 1000
scoreboard players set @a[scores={Room=24,Music=..29}] Music 30