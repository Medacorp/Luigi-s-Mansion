playsound e3_demo:music.first_key music @s[scores={MusicType=-2}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=-2}] Music 500
playsound e3_demo:music.meet_e_gadd music @s[scores={MusicType=-1}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=-1}] Music 1300

scoreboard players operation @s[scores={Music=0}] PreviousMusicType = @s MusicType