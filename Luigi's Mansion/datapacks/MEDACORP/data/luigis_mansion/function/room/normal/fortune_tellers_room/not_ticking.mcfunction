execute unless entity @a[scores={LastRoom=20},limit=1] run function #luigis_mansion:room/normal/fortune_tellers_room/reset
execute as @e[scores={Room=20},tag=ghost,tag=!no_remove_on_non_ticking] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #fortune_tellers_room Vacuumables

tag @e[scores={Room=20},nbt={data:{entity:{namespace:"luigis_mansion",id:"madame_clairvoya"}}}] remove visible