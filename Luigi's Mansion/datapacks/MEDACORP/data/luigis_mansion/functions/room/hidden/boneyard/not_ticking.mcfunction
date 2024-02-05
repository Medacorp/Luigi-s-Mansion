execute unless entity @a[scores={LastRoom=28},limit=1] run function #luigis_mansion:room/hidden/boneyard/reset
execute as @e[scores={Room=28},tag=ghost,tag=!portrait_ghost,nbt=!{ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"boo"}}}}]}] run function luigis_mansion:old_entities/ghost/non_ticking_room
scoreboard players reset #boneyard Vacuumables

execute if score #boneyard Wave matches 1.. run scoreboard players set #boneyard Wave 1
tag @e[scores={Room=28},tag=spooky_bone] add remove_from_existence
tag @e[scores={Room=28},nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"mr_bones"}}]}] add remove_from_existence
execute as @e[scores={Room=28},nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"spooky"}}]}] run function luigis_mansion:entities/ghost/go_to_home
scoreboard players set @e[scores={Room=28},nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"spooky"}}]}] Dialog 0
scoreboard players set @e[scores={Room=28},nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"spooky"}}]}] AnimationProgress 0
scoreboard players set @e[scores={Room=28},nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"spooky"}}]}] PathStep 0
tag @e[scores={Room=28},nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"spooky"}}]}] add sleep
tag @e[scores={Room=28},nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"spooky"}}]}] remove wake_up
tag @e[scores={Room=28},nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"spooky"}}]}] remove bark
tag @e[scores={Room=28},nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"spooky"}}]}] remove breathe
tag @e[scores={Room=28},nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"spooky"}}]}] remove moved_up
tag @e[scores={Room=28},nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"spooky"}}]}] remove move
tag @e[scores={Room=28},nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"spooky"}}]}] remove bite
tag @e[scores={Room=28},nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"spooky"}}]}] remove let_go
tag @e[scores={Room=28},nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"spooky"}}]}] remove lick
tag @e[scores={Room=28},nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"spooky"}}]}] remove hold
tag @e[scores={Room=28},nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"spooky"}}]}] remove let_go