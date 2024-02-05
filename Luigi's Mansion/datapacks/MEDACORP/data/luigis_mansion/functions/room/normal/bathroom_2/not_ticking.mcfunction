execute unless entity @a[scores={LastRoom=43},limit=1] run function #luigis_mansion:room/normal/bathroom_2/reset
execute as @e[scores={Room=43},tag=ghost,tag=!portrait_ghost,nbt=!{ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"boo"}}}}]}] run function luigis_mansion:old_entities/ghost/non_ticking_room
scoreboard players reset #bathroom_2 Vacuumables

function luigis_mansion:room/normal/bathroom_2/reset/curtain
scoreboard players set @e[scores={Room=43},nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"miss_petunia"}}]}] Dialog 0