execute if score #exterior Ticking matches 1 run function #luigis_mansion:room/exterior/reset
execute in minecraft:overworld if score #underground_lab Ticking matches 1 run function #luigis_mansion:room/underground_lab/reset
execute in minecraft:overworld if score #training_room Ticking matches 1 run function #luigis_mansion:room/training_room/reset
execute in minecraft:overworld if score #ghost_portrificationizer_room Ticking matches 1 run function #luigis_mansion:room/ghost_portrificationizer_room/reset
execute in minecraft:overworld if score #gallery Ticking matches 1 run function #luigis_mansion:room/gallery/reset
execute in minecraft:overworld if score #gallery_hallway_1 Ticking matches 1 run function #luigis_mansion:room/gallery_hallway_1/reset
execute in minecraft:overworld if score #gallery_hallway_2 Ticking matches 1 run function #luigis_mansion:room/gallery_hallway_2/reset
execute in minecraft:overworld if score #gallery_back_room Ticking matches 1 run function #luigis_mansion:room/gallery_back_room/reset
function #luigis_mansion:extra_reset
function luigis_mansion:room/reset_mansion with storage luigis_mansion:data current_state.luigis_mansion.current_data.mansion_id