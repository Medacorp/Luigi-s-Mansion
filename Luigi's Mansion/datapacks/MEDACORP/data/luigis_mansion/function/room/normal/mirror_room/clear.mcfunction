function luigis_mansion:room/normal/mirror_room/turn_on_lights
tag @a[tag=looking_at_map,nbt={Dimension:"luigis_mansion:normal"},limit=1] add regenerate_map
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} run tag @e[scores={Room=21},tag=furniture,tag=door] remove blockade
function luigis_mansion:room/normal/mirror_room/load/room_clear_chest
execute unless entity @s[tag=toad] as @a[scores={Room=21}] run function luigis_mansion:other/music/set/force/light
scoreboard players set #room Room 21
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room