function luigis_mansion:items/game_boy_horror/map/display/lab/clear
function luigis_mansion:items/game_boy_horror/map/display/lab/underground_lab
function luigis_mansion:items/game_boy_horror/map/display/lab/training_room
function luigis_mansion:items/game_boy_horror/map/display/lab/ghost_portrificationizer_room
execute if score #global_3ds_remake_gallery Selected matches 0 run function luigis_mansion:items/game_boy_horror/map/display/lab/gallery
execute if score #global_3ds_remake_gallery Selected matches 1 run function 3ds_remake:items/game_boy_horror/map/display/lab/gallery
function luigis_mansion:items/game_boy_horror/map/display/lab/door/underground_lab_training_room
function luigis_mansion:items/game_boy_horror/map/display/lab/door/underground_lab_ghost_portrificationizer_room
function luigis_mansion:items/game_boy_horror/map/display/lab/door/ghost_portrificationizer_room_gallery
execute if score #global_3ds_remake_gallery Selected matches 0 run function luigis_mansion:items/game_boy_horror/map/display/lab/door/gallery_1
execute if score #global_3ds_remake_gallery Selected matches 0 run function luigis_mansion:items/game_boy_horror/map/display/lab/door/gallery_2
execute if score #global_3ds_remake_gallery Selected matches 0 if score #extra_gallery Selected matches 1 run function luigis_mansion:items/game_boy_horror/map/display/lab/door/extra_gallery
execute if score #global_3ds_remake_gallery Selected matches 1 run function 3ds_remake:items/game_boy_horror/map/display/lab/door/gallery_1
execute if score #global_3ds_remake_gallery Selected matches 1 run function 3ds_remake:items/game_boy_horror/map/display/lab/door/gallery_2
execute if score #global_3ds_remake_gallery Selected matches 1 run function 3ds_remake:items/game_boy_horror/map/display/lab/door/gallery_3
execute if score #global_3ds_remake_gallery Selected matches 1 if score #extra_gallery Selected matches 1 run function 3ds_remake:items/game_boy_horror/map/display/lab/door/extra_gallery
function luigis_mansion:items/game_boy_horror/map/display/lab/stairs/underground_lab