execute as @a if score @s Room = #room Room run stopsound @s[scores={Jukebox=0}] music
execute unless entity @s[tag=toad] as @a if score @s Room = #room Room run advancement grant @s only luigis_mansion:jukebox/room_clear
execute unless entity @s[tag=toad] as @a if score @s Room = #room Room run playsound luigis_mansion:music.cleared_room music @s[scores={Jukebox=0}] ~ ~ ~ 10000
execute if entity @s[tag=toad] as @a if score @s Room = #room Room run advancement grant @s only luigis_mansion:jukebox/toad_clear
execute if entity @s[tag=toad] as @a if score @s Room = #room Room run playsound luigis_mansion:music.found_toad music @s[scores={Jukebox=0}] ~ ~ ~ 10000
execute as @a if score @s Room = #room Room run scoreboard players set @s[scores={Jukebox=0}] Music 40