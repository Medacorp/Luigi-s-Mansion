execute unless entity @a[scores={LastRoom=70},limit=1] run function #luigis_mansion:room/hidden/guest_room/reset
execute as @e[scores={Room=70},tag=ghost,tag=!portrait_ghost,nbt=!{ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"boo"}}}}]}] run function luigis_mansion:old_entities/ghost/non_ticking_room
scoreboard players reset #guest_room Vacuumables

execute if block 741 21 68 minecraft:redstone_lamp[lit=true] run function #luigis_mansion:room/hidden/guest_room/reset
tag @e[scores={Room=70},tag=haunted_clown_coll] remove enabled
scoreboard players set @e[scores={Room=70},nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"sue_pea"}}}}]}] Dialog 176