function luigis_mansion:room/normal/dining_room/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/normal/dining_room
playsound luigis_mansion:block.chest.spawn block @a 704 11 32 2
execute as @a[scores={Room=26},gamemode=!spectator] unless entity @s[scores={MusicGroup=0,MusicType=14}] run function luigis_mansion:other/music/set/light
scoreboard players set #room Room 26
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room