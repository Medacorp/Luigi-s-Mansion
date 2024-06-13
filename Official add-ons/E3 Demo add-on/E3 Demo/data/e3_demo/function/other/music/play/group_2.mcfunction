execute if entity @s[scores={MusicGroup=2}] unless score @s MusicType = @s PreviousMusicType run function e3_demo:other/music/play/group_2/intro
execute if entity @s[scores={MusicGroup=2}] if score @s MusicType = @s PreviousMusicType run function e3_demo:other/music/play/group_2/loop
