function luigis_mansion:room/normal/nanas_room/turn_on_lights
tag @a[tag=looking_at_map,nbt={Dimension:"luigis_mansion:normal"},limit=1] add regenerate_map
function luigis_mansion:room/normal/nanas_room/load/room_clear_chest
execute as @a[scores={Room=44}] run function luigis_mansion:other/music/set/force/light
scoreboard players set #room Room 44
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room