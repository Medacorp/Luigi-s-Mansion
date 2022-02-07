scoreboard players add @s[scores={HealthMusic=..0}] LastHealthMusic 480000
scoreboard players add @s[scores={HealthMusic=..0}] HealthMusic 480000
execute at @a[tag=same_room,tag=!spectator,scores={Health=71..100,Sound=0,PoltergustSound=0,Shrunk=0}] run function luigis_mansion:other/music/play/group_0/loop_humming/high
execute at @a[tag=same_room,tag=!spectator,scores={Health=71..100,Sound=0,PoltergustSound=0,Shrunk=1..}] run function luigis_mansion:other/music/play/group_0/loop_humming/high_shrunk
execute at @a[tag=same_room,tag=!spectator,scores={Health=41..70,Sound=0,PoltergustSound=0,Shrunk=0}] run function luigis_mansion:other/music/play/group_0/loop_humming/medium
execute at @a[tag=same_room,tag=!spectator,scores={Health=41..70,Sound=0,PoltergustSound=0,Shrunk=1..}] run function luigis_mansion:other/music/play/group_0/loop_humming/medium_shrunk
execute at @a[tag=same_room,tag=!spectator,scores={Health=1..40,Sound=0,PoltergustSound=0,Shrunk=0}] run function luigis_mansion:other/music/play/group_0/loop_humming/low
execute at @a[tag=same_room,tag=!spectator,scores={Health=1..40,Sound=0,PoltergustSound=0,Shrunk=1..}] run function luigis_mansion:other/music/play/group_0/loop_humming/low_shrunk