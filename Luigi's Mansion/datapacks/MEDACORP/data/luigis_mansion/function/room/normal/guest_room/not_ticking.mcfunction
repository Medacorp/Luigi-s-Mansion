execute unless entity @a[scores={LastRoom=70},limit=1] run function #luigis_mansion:room/normal/guest_room/reset
execute as @e[scores={Room=70},tag=ghost,tag=!portrait_ghost,nbt=!{data:{entity:{namespace:"luigis_mansion",id:"boo"}}}] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #guest_room Vacuumables

execute if block 741 21 -53 minecraft:redstone_lamp[lit=true] run function #luigis_mansion:room/normal/guest_room/reset
tag @e[scores={Room=70},tag=haunted_clown_coll] remove enabled
scoreboard players set @e[scores={Room=70},nbt={data:{entity:{namespace:"luigis_mansion",id:"sue_pea"}}}] Dialog 176