execute if entity @s[tag=looking_at_map] run function luigis_mansion:items/gameboy_horror/map/close
scoreboard players set @s Room 63
scoreboard players set @s MusicType 18
scoreboard players set @s Music 0
advancement grant @s[scores={Health=..10}] only luigis_mansion:challenges/look_at_me_full_of_bravery