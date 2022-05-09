function luigis_mansion:room/hidden/parlor/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/generate
tag @e[scores={Room=3},tag=door,type=minecraft:villager] remove blockade
playsound luigis_mansion:block.chest.spawn block @a -718 20 -12 2
execute as @a[scores={Room=3},gamemode=!spectator] unless entity @s[scores={MusicGroup=0,MusicType=14}] run function luigis_mansion:other/music/set/light
scoreboard players set #room Room 3
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room