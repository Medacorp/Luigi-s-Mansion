execute as @a[gamemode=!spectator] if score @s Room = #room Room run stopsound @s music
execute unless entity @s[tag=toad] as @a[gamemode=!spectator] if score @s Room = #room Room run playsound luigis_mansion:music.cleared_room music @s ~ ~ ~ 10000
execute if entity @s[tag=toad] as @a[gamemode=!spectator] if score @s Room = #room Room run playsound luigis_mansion:music.found_toad music @s ~ ~ ~ 10000
execute as @a[gamemode=!spectator] if score @s Room = #room Room run scoreboard players set @s Music 40