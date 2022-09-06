function luigis_mansion:room/normal/fortune_tellers_room/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/normal/generate
tag @e[scores={Room=20},tag=door,tag=frame] remove blockade
playsound luigis_mansion:block.chest.spawn block @a 740 11 -23 2
execute as @a[scores={Room=20},gamemode=!spectator] run function luigis_mansion:other/music/set/light
scoreboard players set #room Room 20
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room