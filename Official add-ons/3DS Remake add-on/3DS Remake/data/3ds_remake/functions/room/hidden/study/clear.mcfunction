function 3ds_remake:room/hidden/study/turn_on_lights
tag @a[tag=looking_at_map,nbt={Dimension:"luigis_mansion:normal"},limit=1] add regenerate_map
function 3ds_remake:room/hidden/study/load/room_clear_chest
execute as @a[scores={Room=8},gamemode=!spectator] run function luigis_mansion:other/music/set/light
scoreboard players set #room Room 8
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room