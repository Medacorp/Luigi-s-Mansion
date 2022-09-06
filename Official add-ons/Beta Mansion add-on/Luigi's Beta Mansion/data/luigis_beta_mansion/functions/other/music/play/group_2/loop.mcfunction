playsound luigis_beta_mansion:music.lab music @s[scores={MusicType=1}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=1}] Music 192
execute if entity @s[scores={MusicType=2}] run function luigis_beta_mansion:other/music/play/group_2/loop_mansion_dark_room
playsound luigis_beta_mansion:music.mansion.light music @s[scores={MusicType=3}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=3}] Music 205