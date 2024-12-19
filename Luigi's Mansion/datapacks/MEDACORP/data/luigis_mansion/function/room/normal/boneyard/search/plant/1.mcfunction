place template luigis_mansion:boneyard/plant_1 676 102 41
data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {watered_boneyard_plant_1:1b}
execute as @a[scores={Room=28}] run function luigis_mansion:other/music/set/secret_revealed