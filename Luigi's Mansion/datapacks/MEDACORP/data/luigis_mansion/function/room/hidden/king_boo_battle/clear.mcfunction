execute as @a[scores={Room=76}] run function luigis_mansion:other/music/set/force/area_boss_defeated
stopsound @a[scores={Room=76}] music
scoreboard players set @a[scores={Room=76}] Music 100
scoreboard players set @a[scores={Room=76}] PreviousMusicType 14
scoreboard players reset #king_boo_battle Wave