function luigis_mansion:room/normal/clockwork_room/turn_on_lights
tag @a[tag=looking_at_map,nbt={Dimension:"luigis_mansion:normal"},limit=1] add regenerate_map
execute unless entity @s[tag=toad] as @a[scores={Room=62}] run function luigis_mansion:other/music/set/force/lit_room
scoreboard players set #room Room 62
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room