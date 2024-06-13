execute unless entity @a[scores={LastRoom=28},limit=1] run function #3ds_remake:room/hidden/boneyard/reset
execute as @e[scores={Room=28},tag=ghost,tag=!portrait_ghost,nbt=!{data:{entity:{namespace:"luigis_mansion",id:"boo"}}}] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #boneyard Vacuumables

execute if score #boneyard Wave matches 1.. run scoreboard players set #boneyard Wave 1
tag @e[scores={Room=28},tag=spooky_bone] add remove_from_existence
tag @e[scores={Room=28},nbt={data:{entity:{namespace:"luigis_mansion",id:"mr_bones"}}}] add remove_from_existence
tag @e[scores={Room=28},nbt={data:{entity:{namespace:"luigis_mansion",id:"spooky"}}}] add disappear