execute as @a[scores={Room=76},gamemode=!spectator] run function luigis_mansion:other/music/set/area_boss_defeated
stopsound @a[scores={Room=76},gamemode=!spectator] music
scoreboard players set @a[scores={Room=76},gamemode=!spectator] Music 100
scoreboard players set @a[scores={Room=76},gamemode=!spectator] PrevMusicType 14
scoreboard players reset #king_boo_battle Wave