function luigis_mansion:room/hidden/guest_room/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/guest_room
execute if block 741 21 68 minecraft:redstone_lamp run playsound luigis_mansion:block.chest.spawn block @a 741 26 64 2
execute unless block 741 21 68 minecraft:redstone_lamp run playsound luigis_mansion:block.chest.spawn block @a 741 20 64 2
execute as @a[scores={Room=70},gamemode=!spectator] unless entity @s[scores={MusicGroup=0,MusicType=14}] run function luigis_mansion:other/music/set/light
scoreboard players set #room Room 70
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room