execute unless block ~ ~ ~0.2 #luigis_mansion:all_ignore run function luigis_mansion:entities/billiards_ball/bounce/z
execute unless block ~ ~ ~-0.2 #luigis_mansion:all_ignore run function luigis_mansion:entities/billiards_ball/bounce/z
execute unless block ~0.2 ~ ~ #luigis_mansion:all_ignore run function luigis_mansion:entities/billiards_ball/bounce/x
execute unless block ~-0.2 ~ ~ #luigis_mansion:all_ignore run function luigis_mansion:entities/billiards_ball/bounce/x
execute unless block ~ ~0.2 ~ #luigis_mansion:all_ignore run function luigis_mansion:entities/billiards_ball/bounce/y
execute unless block ~ ~-0.2 ~ #luigis_mansion:all_ignore run function luigis_mansion:entities/billiards_ball/bounce/y
tag @s[scores={Dialog=8..}] add collision
tag @s remove no_bounce