function luigis_mansion:room/normal/ceramics_studio/turn_on_lights
tag @e[scores={Room=65},tag=furniture,tag=door] remove blockade
tag @a[tag=looking_at_map,nbt={Dimension:"luigis_mansion:normal"},limit=1] add regenerate_map
playsound luigis_mansion:furniture.room_clear_chest.spawn block @a 704 29 71 2
execute as @a[scores={Room=65}] run function luigis_mansion:other/music/set/light
scoreboard players set #room Room 65
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room