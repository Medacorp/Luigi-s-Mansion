function luigis_mansion:room/hidden/parlor/turn_on_lights
tag @a[tag=looking_at_map,nbt={Dimension:"luigis_mansion:hidden"},limit=1] add regenerate_map
tag @e[scores={Room=3},tag=furniture,tag=door] remove blockade
function luigis_mansion:room/hidden/parlor/load/room_clear_chest
execute unless entity @s[tag=toad] as @a[scores={Room=3}] run function luigis_mansion:other/music/set/force/lit_room
scoreboard players set #room Room 3
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room