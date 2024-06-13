function e3_demo:room/original/hallway_1/turn_on_lights
tag @a[tag=looking_at_map,nbt={Dimension:"e3_demo:original"},limit=1] add regenerate_map
scoreboard players set #room Room 2
function e3_demo:other/music/play/group_2/cleared_room
scoreboard players reset #room Room