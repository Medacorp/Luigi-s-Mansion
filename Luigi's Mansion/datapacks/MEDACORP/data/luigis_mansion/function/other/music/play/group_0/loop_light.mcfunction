scoreboard players add @s[scores={HealthMusic=..0}] LastHealthMusic 480000
scoreboard players add @s[scores={HealthMusic=..0}] HealthMusic 480000
execute at @e[tag=luigi,tag=same_room,scores={Health=1..,Sound=0,PoltergustSound=0,Shrunk=0}] run function luigis_mansion:other/music/play/group_0/loop_light/whistle
execute at @e[tag=luigi,tag=same_room,scores={Health=1..,Sound=0,PoltergustSound=0,Shrunk=1..}] run function luigis_mansion:other/music/play/group_0/loop_light/whistle_shrunk