playsound e3_demo:music.lab music @s[scores={Jukebox=1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Jukebox=1}] Music 192
execute if entity @s[scores={Jukebox=2}] run function e3_demo:other/music/play/loop_jukebox/dark_room
playsound e3_demo:music.mansion.light music @s[scores={Jukebox=3}] ~ ~ ~ 1000
scoreboard players set @s[scores={Jukebox=3}] Music 205