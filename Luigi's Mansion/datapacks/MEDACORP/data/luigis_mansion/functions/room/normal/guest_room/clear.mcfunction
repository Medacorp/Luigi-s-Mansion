function luigis_mansion:room/normal/guest_room/turn_on_lights
tag @a[tag=looking_at_map,nbt={Dimension:"luigis_mansion:normal"},limit=1] add regenerate_map
execute if block 741 21 -43 minecraft:redstone_lamp run playsound luigis_mansion:furniture.room_clear_chest.spawn block @a 741 26 -39 2
execute unless block 741 21 -43 minecraft:redstone_lamp run playsound luigis_mansion:furniture.room_clear_chest.spawn block @a 741 20 -39 2
execute as @a[scores={Room=70},gamemode=!spectator] run function luigis_mansion:other/music/set/light
scoreboard players set #room Room 70
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room