scoreboard players operation #temp FollowID = @s FollowID
execute as @a[tag=!spectator] if score @s ID = #temp FollowID run tag @s add follow_me
execute unless entity @e[tag=follow_me] run scoreboard players set #temp FollowID 0
execute unless entity @e[tag=follow_me] run scoreboard players operation #temp FollowID < @a[tag=!spectator,tag=!gooigi] ID
execute unless entity @e[tag=follow_me] as @a[tag=!spectator] if score @s ID = #temp FollowID run tag @s add follow_me
execute if entity @a[tag=follow_me,limit=1] run function luigis_mansion:entities/player/memory/get with entity @a[tag=follow_me,limit=1]
execute unless entity @s[scores={OpenMapTime=1..}] at @a[tag=follow_me,limit=1] unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"door/open/push/right"} unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"door/open/push/left"} unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"door/open/pull/right"} unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"door/open/pull/left"} unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"knockback/large"} unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"scare/bash"} run function 3ds_remake:entities/player/gooigi_follow_player
execute if entity @a[tag=follow_me,limit=1] run data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
execute if entity @a[tag=follow_me,limit=1] run data remove storage luigis_mansion:data my_memory
tag @a[tag=follow_me,limit=1] remove follow_me
scoreboard players reset #temp FollowID