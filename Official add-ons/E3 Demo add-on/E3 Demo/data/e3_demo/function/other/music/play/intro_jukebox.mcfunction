playsound e3_demo:music.first_key ambient @s[scores={Jukebox=-101}] ~ ~ ~ 1000
scoreboard players set @s[scores={Jukebox=-101}] Music 500
playsound luigis_mansion:music.cleared_room music @s[scores={Jukebox=-100}] ~ ~ ~ 10000
scoreboard players set @s[scores={Jukebox=-100}] Music 40
playsound e3_demo:music.meet_e_gadd music @s[scores={Jukebox=-1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Jukebox=-1}] Music 1300

scoreboard players operation @s[scores={Music=0}] JukeboxPrevious = @s Jukebox