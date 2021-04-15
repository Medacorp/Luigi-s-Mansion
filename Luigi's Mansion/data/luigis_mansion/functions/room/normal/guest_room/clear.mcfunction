function luigis_mansion:room/normal/guest_room/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/normal/guest_room
execute if block 712 112 -32 minecraft:redstone_lamp run playsound luigis_mansion:block.chest.spawn block @a 712 117 -28 2
execute unless block 712 112 -32 minecraft:redstone_lamp run playsound luigis_mansion:block.chest.spawn block @a 712 111 -28 2
stopsound @a[scores={Room=57}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=57}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=57}] Music 40
scoreboard players set @a[scores={Room=57}] MusicType 9