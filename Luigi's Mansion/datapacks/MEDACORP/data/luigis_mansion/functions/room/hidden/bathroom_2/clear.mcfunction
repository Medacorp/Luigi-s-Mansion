function luigis_mansion:room/hidden/bathroom_2/turn_on_lights
tag @a[tag=looking_at_map,nbt={Dimension:"luigis_mansion:hidden"},limit=1] add regenerate_map
function luigis_mansion:room/hidden/bathroom_2/load/room_clear_chest
execute as @a[scores={Room=43}] run function luigis_mansion:other/music/set/light
scoreboard players set #room Room 43
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room