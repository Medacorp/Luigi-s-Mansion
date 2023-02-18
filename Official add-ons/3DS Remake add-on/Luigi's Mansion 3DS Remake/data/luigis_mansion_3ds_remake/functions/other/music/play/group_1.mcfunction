execute if entity @s[scores={MusicGroup=1}] unless score @s MusicType = @s PreviousMusicType run function luigis_mansion_3ds_remake:other/music/play/group_1/intro
execute if entity @s[scores={MusicGroup=1}] if score @s MusicType = @s PreviousMusicType run function luigis_mansion_3ds_remake:other/music/play/group_1/loop
