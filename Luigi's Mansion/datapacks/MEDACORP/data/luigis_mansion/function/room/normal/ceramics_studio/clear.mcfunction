function luigis_mansion:room/normal/ceramics_studio/turn_on_lights
tag @a[tag=looking_at_map,nbt={Dimension:"luigis_mansion:normal"},limit=1] add regenerate_map
tag @e[scores={Room=65},tag=furniture,tag=door] remove blockade
function luigis_mansion:room/normal/ceramics_studio/load/room_clear_chest
execute unless entity @s[tag=toad] as @a[scores={Room=65}] run function luigis_mansion:other/music/set/force/lit_room
scoreboard players set #room Room 65
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room