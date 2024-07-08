function luigis_mansion:room/normal/hallway_14/turn_on_lights
tag @a[tag=looking_at_map,nbt={Dimension:"luigis_mansion:normal"},limit=1] add regenerate_map
execute as @a[scores={Room=40}] run function luigis_mansion:other/music/set/force/light
scoreboard players set #room Room 40
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room