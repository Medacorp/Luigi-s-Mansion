function luigis_mansion:room/normal/fortune_tellers_room/turn_on_lights
tag @a[tag=looking_at_map,nbt={Dimension:"luigis_mansion:normal"},limit=1] add regenerate_map
tag @e[scores={Room=20},tag=furniture,tag=door] remove blockade
tag @e[scores={Room=20},tag=candle_flame,tag=incense] remove lit
function luigis_mansion:room/normal/fortune_tellers_room/load/room_clear_chest
execute as @a[scores={Room=20},gamemode=!spectator] run function luigis_mansion:other/music/set/light
scoreboard players set #room Room 20
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room