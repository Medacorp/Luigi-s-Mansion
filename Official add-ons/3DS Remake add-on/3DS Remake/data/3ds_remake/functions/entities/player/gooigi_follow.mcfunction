scoreboard players operation #temp FollowID = @s FollowID
execute as @a[tag=!spectator] if score @s ID = #temp FollowID run tag @s add follow_me
execute unless entity @e[tag=follow_me] run scoreboard players set #temp FollowID 0
execute unless entity @e[tag=follow_me] run scoreboard players operation #temp FollowID < @a[tag=!spectator,tag=!gooigi] ID
execute unless entity @e[tag=follow_me] as @a[tag=!spectator] if score @s ID = #temp FollowID run tag @s add follow_me
execute unless entity @s[scores={OpenMapTime=1..}] at @a[tag=follow_me,tag=!push_open_door,tag=!pull_open_door,limit=1] unless entity @a[tag=follow_me,scores={KnockbackType=1..},limit=1] run function 3ds_remake:entities/player/gooigi_follow_player
tag @a[tag=follow_me,limit=1] remove follow_me
scoreboard players reset #temp FollowID