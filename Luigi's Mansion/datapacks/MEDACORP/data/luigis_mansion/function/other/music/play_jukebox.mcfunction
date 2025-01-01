execute if score @s MusicType matches ..-1 unless entity @s[scores={MusicType=-1000,MusicGroup=0}] run function luigis_mansion:other/music/set/force/silence
stopsound @s[scores={HealthMusic=0,GradualMusic=0}] music
$execute unless score @s Jukebox = @s JukeboxPrevious run function $(jukebox):other/music/play/intro_jukebox
$execute if score @s Jukebox = @s JukeboxPrevious run function $(jukebox):other/music/play/loop_jukebox
scoreboard players operation @s[scores={Jukebox=1..}] JukeboxPrevious = @s Jukebox
