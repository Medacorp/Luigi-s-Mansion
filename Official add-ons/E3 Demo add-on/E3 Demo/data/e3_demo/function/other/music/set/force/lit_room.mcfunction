advancement grant @s only e3_demo:jukebox/lit_room
function #e3_demo:other/music/keep_music_progress/lit_room
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/reset_progress
tag @s remove cancel
execute unless entity @s[scores={MusicType=3,MusicGroup=2}] run scoreboard players set @s MusicGroup 2
execute unless entity @s[scores={MusicType=3,MusicGroup=2}] run scoreboard players set @s MusicType 3