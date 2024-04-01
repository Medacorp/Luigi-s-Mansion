function 3ds_remake:selection_menu/gallery_portrait/set_portrait_ghost_rank
execute unless data storage 3ds_remake:data current_state.selected_portraits{king_boo:3b} run fill 735 3 -34 733 10 -23 minecraft:red_wool replace minecraft:yellow_wool
execute if data storage 3ds_remake:data current_state.selected_portraits{king_boo:3b} run fill 735 3 -34 733 10 -23 minecraft:yellow_wool replace minecraft:red_wool
execute if data storage 3ds_remake:data current_state.selected_portraits{king_boo:3b} run fill 735 3 -28 735 3 -29 minecraft:red_wool