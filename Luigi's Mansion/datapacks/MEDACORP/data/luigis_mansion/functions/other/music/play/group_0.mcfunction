execute if entity @s[scores={MusicGroup=0}] unless score @s MusicType = @s PreviousMusicType run function luigis_mansion:other/music/play/group_0/intro
execute if entity @s[scores={MusicGroup=0}] if score @s MusicType = @s PreviousMusicType run function luigis_mansion:other/music/play/group_0/loop
