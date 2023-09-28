execute unless entity @a[scores={LastRoom=72},limit=1] run function #3ds_remake:room/hidden/secret_altar/reset
execute as @e[scores={Room=72},tag=ghost,tag=!portrait_ghost,nbt=!{ArmorItems:[{tag:{namespace:"luigis_mansion",id:"boo"}}]}] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #secret_altar Vacuumables