execute unless entity @a[scores={LastRoom=20},limit=1] run function #luigis_mansion:room/hidden/fortune_tellers_room/reset
execute as @e[scores={Room=20},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #fortune_tellers_room Vacuumables

execute as @e[scores={Room=20},tag=madame_clairvoya] run function luigis_mansion:entities/madame_clairvoya/turn_invisible