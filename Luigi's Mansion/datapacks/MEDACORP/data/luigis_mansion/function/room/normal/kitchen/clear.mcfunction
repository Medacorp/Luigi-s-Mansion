function luigis_mansion:room/normal/kitchen/turn_on_lights
tag @a[tag=looking_at_map,nbt={Dimension:"luigis_mansion:normal"},limit=1] add regenerate_map
function luigis_mansion:room/normal/kitchen/load/room_clear_chest
execute unless entity @s[tag=toad] as @a[scores={Room=27}] run function luigis_mansion:other/music/set/force/light
scoreboard players set #room Room 27
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room