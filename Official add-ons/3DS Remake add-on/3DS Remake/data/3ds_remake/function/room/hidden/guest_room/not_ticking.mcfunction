execute unless entity @a[scores={LastRoom=70},limit=1] run function #3ds_remake:room/hidden/guest_room/reset
execute as @e[scores={Room=70},tag=ghost,tag=!no_remove_on_non_ticking] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #guest_room Vacuumables

execute if block 741 21 -53 minecraft:redstone_lamp[lit=true] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"guest_room_flips"},progress:0}
# No room number so the whole mansion shakes!
execute if block 741 21 -53 minecraft:redstone_lamp[lit=true] run function #3ds_remake:room/hidden/guest_room/reset
tag @e[scores={Room=70},tag=haunted_clown_coll] remove enabled
scoreboard players set @e[scores={Room=70},nbt={data:{entity:{namespace:"luigis_mansion",id:"sue_pea"}}}] Dialog 124