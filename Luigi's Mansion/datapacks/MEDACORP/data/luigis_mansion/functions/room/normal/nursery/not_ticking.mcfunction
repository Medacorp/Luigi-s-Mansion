execute unless entity @a[scores={LastRoom=10},limit=1] run function #luigis_mansion:room/normal/nursery/reset
execute as @e[scores={Room=10},tag=ghost,tag=!portrait_ghost,nbt=!{ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"boo"}}}}]}] run function luigis_mansion:old_entities/ghost/non_ticking_room
scoreboard players reset #nursery Vacuumables

tag @e[scores={Room=10},tag=haunted_teddy_bear] remove enabled
execute as @e[scores={Room=10},nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"chauncey"}}}}]}] run function luigis_mansion:entities/ghost/go_to_home
execute as @e[scores={Room=10},nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"chauncey"}}}}]}] run function luigis_mansion:old_entities/ghost/turn_visible
scoreboard players set @e[scores={Room=10},nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"chauncey"}}}}]}] Dialog 0
scoreboard players set @e[scores={Room=10},nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"chauncey"}}}}]}] AnimationProgress 0
scoreboard players set @e[scores={Room=10},nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"chauncey"}}}}]}] ActionTime 0
tag @e[scores={Room=10},nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"chauncey"}}}}]}] add sleep
tag @e[scores={Room=10},nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"chauncey"}}}}]}] remove wake_up
tag @e[scores={Room=10},nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"chauncey"}}}}]}] remove yawn
tag @e[scores={Room=10},nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"chauncey"}}}}]}] remove move
tag @e[scores={Room=10},nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"chauncey"}}}}]}] remove grab_rambler
tag @e[scores={Room=10},nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"chauncey"}}}}]}] remove rambling
tag @e[scores={Room=10},nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"chauncey"}}}}]}] remove attack
tag @e[scores={Room=10},nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"chauncey"}}}}]}] remove laugh
tag @e[scores={Room=10},nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"chauncey"}}}}]}] remove complain
tag @e[scores={Room=10},nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"chauncey"}}}}]}] remove knocked_back
tag @e[scores={Room=10},nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"chauncey"}}}}]}] remove vanish