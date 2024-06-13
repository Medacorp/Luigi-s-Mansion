function 3ds_remake:room/hidden/observatory/create_path
function 3ds_remake:room/hidden/observatory/turn_on_lights
tag @a[tag=looking_at_map,nbt={Dimension:"luigis_mansion:normal"},limit=1] add regenerate_map
execute as @a[scores={Room=46}] run function luigis_mansion:other/music/play/group_0/cleared_observatory