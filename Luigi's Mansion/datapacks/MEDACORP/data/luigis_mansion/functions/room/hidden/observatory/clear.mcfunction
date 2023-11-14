function luigis_mansion:room/hidden/observatory/create_path
function luigis_mansion:room/hidden/observatory/turn_on_lights
tag @a[tag=looking_at_map,nbt={Dimension:"luigis_mansion:hidden"},limit=1] add regenerate_map
execute as @a[scores={Room=46},gamemode=!spectator] run function luigis_mansion:other/music/play/group_0/cleared_observatory