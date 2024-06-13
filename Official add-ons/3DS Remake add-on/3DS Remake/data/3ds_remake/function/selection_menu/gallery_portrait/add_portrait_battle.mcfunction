function 3ds_remake:selection_menu/gallery_portrait/add_portrait_battle_search with storage 3ds_remake:data portrait_battles[0].mansion
execute if data storage 3ds_remake:data portrait_battle run function 3ds_remake:selection_menu/gallery_portrait/add_portrait_battle_stats
data remove storage 3ds_remake:data portrait_battle
data remove storage 3ds_remake:data portrait_battles[0]
execute if data storage 3ds_remake:data portrait_battles[0] run function 3ds_remake:selection_menu/gallery_portrait/add_portrait_battle