playsound 3ds_remake:music.polterpup music @s[scores={MusicType=-1}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=-1}] Music 258

scoreboard players operation @s[scores={Music=0}] PreviousMusicType = @s MusicType