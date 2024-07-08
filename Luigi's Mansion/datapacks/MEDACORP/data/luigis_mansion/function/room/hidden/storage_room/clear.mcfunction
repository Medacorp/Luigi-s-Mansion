function luigis_mansion:room/hidden/storage_room/turn_on_lights
tag @a[tag=looking_at_map,nbt={Dimension:"luigis_mansion:hidden"},limit=1] add regenerate_map
execute as @a[scores={Room=18}] run function luigis_mansion:other/music/set/force/light
scoreboard players set #room Room 18
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room