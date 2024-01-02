scoreboard players add #global_3ds_remake_gallery Selected 1
execute if score #global_3ds_remake_gallery Selected matches 2 run scoreboard players set #global_3ds_remake_gallery Selected 0
tag @a[tag=looking_at_map,nbt={Dimension:"minecraft:overworld"}] add regenerate_map
execute if score #global_3ds_remake_gallery Selected matches 0 as @a[scores={Room=-5}] run function luigis_mansion:room/gallery/warp_to
execute if score #global_3ds_remake_gallery Selected matches 1 as @a[scores={Room=-4}] run function 3ds_remake:room/gallery/warp_to
execute as @a[nbt={Inventory:[{tag:{luigis_mansion:{option:{update_global_variables:1b}}}}]}] run function 3ds_remake:selection_menu/game_boy_horror/show_settings/toggle/global_3ds_remake_gallery_update