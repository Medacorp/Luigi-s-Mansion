function luigis_mansion:room/hidden/cellar/turn_on_lights
tag @a[tag=looking_at_map,nbt={Dimension:"luigis_mansion:hidden"},limit=1] add regenerate_map
function luigis_mansion:room/hidden/cellar/load/room_clear_chest
execute as @a[scores={Room=58}] run function luigis_mansion:other/music/set/light
scoreboard players set #room Room 58
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room