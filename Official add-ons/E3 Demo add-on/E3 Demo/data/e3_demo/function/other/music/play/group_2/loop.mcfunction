playsound e3_demo:music.lab music @s[scores={MusicType=1}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=1}] Music 192
execute if entity @s[scores={MusicType=2}] run function e3_demo:other/music/play/group_2/loop/dark_room
execute if entity @s[scores={MusicType=3}] run function e3_demo:other/music/play/group_2/loop/lit_room