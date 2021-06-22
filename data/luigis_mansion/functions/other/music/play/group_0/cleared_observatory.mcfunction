execute unless entity @s[scores={MusicGroup=0,MusicType=14}] run stopsound @s music
execute unless entity @s[scores={MusicGroup=0,MusicType=14}] run playsound luigis_mansion:music.cleared_observatory music @s ~ ~ ~ 10000
execute unless entity @s[scores={MusicGroup=0,MusicType=14}] run scoreboard players set @s Music 273