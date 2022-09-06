execute unless entity @a[scores={LastRoom=6},limit=1] run function #luigis_beta_mansion:room/original/bed_room_1/reset
execute as @e[scores={Room=6},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #bed_room_1 Vacuumables

function luigis_beta_mansion:room/original/bed_room_1/reset/curtain_1
function luigis_beta_mansion:room/original/bed_room_1/reset/curtain_2