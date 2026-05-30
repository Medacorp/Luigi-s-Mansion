tag @e[scores={Room=25},tag=play_music,tag=piano] remove play_music
tag @e[scores={Room=25},tag=play_music,tag=no_ai] remove open
tag @e[scores={Room=25},tag=play_music,tag=!no_ai] add stop_music
execute as @a[scores={Room=25}] run function luigis_mansion:other/music/set/silence