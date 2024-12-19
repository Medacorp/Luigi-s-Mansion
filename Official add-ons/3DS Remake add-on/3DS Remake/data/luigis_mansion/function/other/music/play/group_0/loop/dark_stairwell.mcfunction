scoreboard players add @s[scores={HealthMusic=..0}] LastHealthMusic 480000
scoreboard players add @s[scores={HealthMusic=..0}] HealthMusic 480000
execute at @e[tag=luigi,tag=same_room,scores={Health=71..100,Sound=0,PoltergustSound=0,Shrunk=0},tag=!gooigi] run function luigis_mansion:other/music/play/group_0/loop/hum/high
execute at @e[tag=luigi,tag=same_room,scores={Health=71..100,Sound=0,PoltergustSound=0,Shrunk=1..},tag=!gooigi] run function luigis_mansion:other/music/play/group_0/loop/hum/high_shrunk
execute at @e[tag=luigi,tag=same_room,scores={Health=41..70,Sound=0,PoltergustSound=0,Shrunk=0},tag=!gooigi] run function luigis_mansion:other/music/play/group_0/loop/hum/medium
execute at @e[tag=luigi,tag=same_room,scores={Health=41..70,Sound=0,PoltergustSound=0,Shrunk=1..},tag=!gooigi] run function luigis_mansion:other/music/play/group_0/loop/hum/medium_shrunk
execute at @e[tag=luigi,tag=same_room,scores={Health=1..40,Sound=0,PoltergustSound=0,Shrunk=0},tag=!gooigi] run function luigis_mansion:other/music/play/group_0/loop/hum/low
execute at @e[tag=luigi,tag=same_room,scores={Health=1..40,Sound=0,PoltergustSound=0,Shrunk=1..},tag=!gooigi] run function luigis_mansion:other/music/play/group_0/loop/hum/low_shrunk