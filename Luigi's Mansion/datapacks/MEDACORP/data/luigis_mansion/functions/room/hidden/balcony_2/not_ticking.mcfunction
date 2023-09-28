execute unless entity @a[scores={LastRoom=53},limit=1] run function #luigis_mansion:room/hidden/balcony_2/reset
execute as @e[scores={Room=53},tag=ghost,tag=!portrait_ghost,nbt=!{ArmorItems:[{tag:{namespace:"luigis_mansion",id:"boo"}}]}] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #balcony_2 Vacuumables