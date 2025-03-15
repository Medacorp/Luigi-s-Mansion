function luigis_mansion:other/music/set/gallery
execute unless entity @s[scores={LastRoom=-11..-8}] run title @s[tag=!seen_room_name,tag=!fully_separated_camera] title {type:"translatable",translate:"luigis_mansion:location.gallery"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data rooms.gallery{seen:0b} unless entity @s[tag=spectator] run function 3ds_remake:room/gallery_back_room/set_seen

execute unless entity @s[tag=!wall_warp,tag=!spectator] if entity @s[tag=!already_ticked] run function 3ds_remake:room/gallery_back_room/wall_warp

tag @s add already_ticked

execute if score #global_3ds_remake_gallery Selected matches 0 run function luigis_mansion:room/gallery/warp_to