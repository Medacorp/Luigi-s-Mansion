function 3ds_remake:room/hidden/hallway_1/turn_on_lights
tag @a[tag=looking_at_map,nbt={Dimension:"luigis_mansion:normal"},limit=1] add regenerate_map
execute unless entity @s[tag=toad] as @a[scores={Room=2}] run function luigis_mansion:other/music/set/force/foyer
scoreboard players set #room Room 2
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room