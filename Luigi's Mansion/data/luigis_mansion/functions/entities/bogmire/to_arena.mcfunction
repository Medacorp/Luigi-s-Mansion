execute unless entity @e[tag=bogmire,tag=fight,tag=!dead,limit=1] run function #luigis_mansion:entities/bogmire/load_arena
execute if entity @s[tag=looking_at_map] run function luigis_mansion:items/gameboy_horror/map/close
scoreboard players set @s Room 61
teleport @s 720.0 41 -19941.5 -180 0
execute unless entity @s[scores={MusicType=16}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 16
advancement grant @s[scores={Health=..10}] only luigis_mansion:challenges/look_at_me_full_of_bravery
execute unless entity @e[tag=bogmire,tag=fight,tag=!dead,limit=1] positioned 720.0 41 -19960.5 run function luigis_mansion:spawn_entities/portrait_ghost/bogmire/fight