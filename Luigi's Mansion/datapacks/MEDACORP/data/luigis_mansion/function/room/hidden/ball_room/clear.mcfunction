function luigis_mansion:room/hidden/ball_room/turn_on_lights
tag @a[tag=looking_at_map,nbt={Dimension:"luigis_mansion:hidden"},limit=1] add regenerate_map
function luigis_mansion:room/hidden/ball_room/load/room_clear_chest
execute as @a[scores={Room=17}] run function luigis_mansion:other/music/set/light
scoreboard players set #room Room 17
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room