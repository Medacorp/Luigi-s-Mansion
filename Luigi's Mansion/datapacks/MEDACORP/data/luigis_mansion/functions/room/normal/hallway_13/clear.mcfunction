function luigis_mansion:room/normal/hallway_13/turn_on_lights
tag @a[tag=looking_at_map,nbt={Dimension:"luigis_mansion:normal"},limit=1] add regenerate_map
execute as @a[scores={Room=39},gamemode=!spectator] run function luigis_mansion:other/music/set/light
scoreboard players set #room Room 39
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room