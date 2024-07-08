function luigis_mansion:room/normal/washroom_2/turn_on_lights
tag @a[tag=looking_at_map,nbt={Dimension:"luigis_mansion:normal"},limit=1] add regenerate_map
function luigis_mansion:room/normal/washroom_2/load/room_clear_chest
execute as @a[scores={Room=42}] run function luigis_mansion:other/music/set/force/light
scoreboard players set #room Room 42
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room