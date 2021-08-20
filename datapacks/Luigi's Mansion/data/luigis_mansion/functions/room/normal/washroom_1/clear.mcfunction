function luigis_mansion:room/normal/washroom_1/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/normal/generate
execute unless entity @s[tag=toad] as @a[scores={Room=19},gamemode=!spectator] unless entity @s[scores={MusicGroup=0,MusicType=14}] run function luigis_mansion:other/music/set/light
scoreboard players set #room Room 19
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room