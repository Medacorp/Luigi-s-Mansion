function luigis_mansion:selection_menu/extra_gallery_door/exit
tag @e[tag=extra_gallery_door,limit=1] add open_door
function luigis_mansion:entities/player/run_command_as_model {command:"function luigis_mansion:selection_menu/extra_gallery_door/go_through_luigi"}
data modify entity @e[tag=extra_gallery_door,limit=1] data.other_end set from storage luigis_mansion:data selected_option.other_end
data modify entity @e[tag=extra_gallery_door,limit=1] data.go_through_command set from storage luigis_mansion:data selected_option.go_through_command