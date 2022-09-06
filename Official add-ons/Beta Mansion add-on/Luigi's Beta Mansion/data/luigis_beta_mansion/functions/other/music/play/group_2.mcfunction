execute if entity @s[scores={MusicGroup=2}] unless score @s MusicType = @s PrevMusicType run function luigis_beta_mansion:other/music/play/group_2/intro
execute if entity @s[scores={MusicGroup=2}] if score @s MusicType = @s PrevMusicType run function luigis_beta_mansion:other/music/play/group_2/loop
