function 3ds_remake:room/hidden/parlor/turn_on_lights
tag @a[tag=looking_at_map,nbt={Dimension:"luigis_mansion:normal"},limit=1] add regenerate_map
tag @e[scores={Room=3},tag=furniture,tag=door] remove blockade
function 3ds_remake:room/hidden/parlor/load/room_clear_chest
execute unless entity @s[tag=toad] as @a[scores={Room=3}] run function luigis_mansion:other/music/set/force/light
scoreboard players set #room Room 3
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room