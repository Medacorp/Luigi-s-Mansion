playsound 3ds_remake:music.polterpup music @s[scores={Jukebox=-1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Jukebox=-1}] Music 258

scoreboard players operation @s[scores={Music=0}] JukeboxPrevious = @s Jukebox