scoreboard players operation #temp FollowID = @s FollowID
execute as @e[tag=luigi] if score @s ID = #temp FollowID run tag @s add follow_me
execute unless entity @e[tag=follow_me,limit=1] run scoreboard players set #temp FollowID 0
execute unless entity @e[tag=follow_me,limit=1] run scoreboard players operation #temp FollowID < @e[tag=luigi,tag=!gooigi] ID
execute unless entity @e[tag=follow_me,limit=1] as @e[tag=luigi] if score @s ID = #temp FollowID run tag @s add follow_me
scoreboard players reset #temp FollowID
execute unless entity @s[scores={OpenMapTime=1..}] at @a[tag=follow_me,nbt=!{data:{animation:{}}},limit=1] run function 3ds_remake:entities/gooigi/follow_player
tag @e[tag=follow_me,limit=1] remove follow_me