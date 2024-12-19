playsound e3_demo:music.meet_e_gadd music @s[scores={MusicType=-1}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=-1}] Music 1300

scoreboard players operation @s[scores={Music=0}] PreviousMusicType = @s MusicType