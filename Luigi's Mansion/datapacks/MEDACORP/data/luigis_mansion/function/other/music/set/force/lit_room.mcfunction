advancement grant @s only luigis_mansion:jukebox/lit_room
function #luigis_mansion:other/music/keep_music_progress/lit_room
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/reset_progress
tag @s remove cancel
execute unless entity @s[scores={MusicType=9,MusicGroup=0}] run scoreboard players set @s MusicGroup 0
execute unless entity @s[scores={MusicType=9,MusicGroup=0}] run scoreboard players set @s MusicType 9