execute unless data storage luigis_mansion:data current_state.current_data.technical_data{moved_wall:1b} run tag @e[tag=storage_room_wall_button,limit=1] add active
function luigis_mansion:room/normal/storage_room/turn_on_lights
tag @a[tag=looking_at_map,nbt={Dimension:"luigis_mansion:normal"},limit=1] add regenerate_map
execute unless entity @s[tag=toad] as @a[scores={Room=18}] run function luigis_mansion:other/music/set/force/lit_room
scoreboard players set #room Room 18
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room