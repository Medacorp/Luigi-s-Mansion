execute if entity @e[tag=furniture,tag=same_room,tag=open,tag=play_music] run scoreboard players set @s[scores={GradualMusic=..0}] GradualMusic 1440
advancement grant @s[scores={GradualMusic=1440}] only luigis_mansion:jukebox/super_mario_bros
execute if entity @e[tag=furniture,tag=same_room,tag=open,tag=play_music,tag=saxophone] run function luigis_mansion:other/music/play/group_0/loop/super_mario_bros/saxophone
execute if entity @e[tag=furniture,tag=same_room,tag=open,tag=play_music,tag=harp] run function luigis_mansion:other/music/play/group_0/loop/super_mario_bros/harp
execute if entity @e[tag=furniture,tag=same_room,tag=open,tag=play_music,tag=cello] run function luigis_mansion:other/music/play/group_0/loop/super_mario_bros/cello
execute if entity @e[tag=furniture,tag=same_room,tag=open,tag=play_music,tag=drum_1] run function luigis_mansion:other/music/play/group_0/loop/super_mario_bros/drum_1
execute if entity @e[tag=furniture,tag=same_room,tag=open,tag=play_music,tag=drum_2] run function luigis_mansion:other/music/play/group_0/loop/super_mario_bros/drum_2
execute if entity @e[tag=furniture,tag=same_room,tag=open,tag=play_music,tag=drum_3] run function luigis_mansion:other/music/play/group_0/loop/super_mario_bros/drum_3
execute if entity @e[tag=furniture,tag=same_room,tag=open,tag=play_music,tag=xylophone] run function luigis_mansion:other/music/play/group_0/loop/super_mario_bros/xylophone
execute if entity @e[tag=furniture,tag=same_room,tag=open,tag=play_music,tag=piano] run function luigis_mansion:other/music/play/group_0/loop/super_mario_bros/piano