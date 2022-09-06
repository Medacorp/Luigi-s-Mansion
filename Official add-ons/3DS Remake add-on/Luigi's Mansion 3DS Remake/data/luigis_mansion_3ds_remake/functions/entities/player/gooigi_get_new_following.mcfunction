scoreboard players operation #temp FollowID = @s FollowID
execute as @a[tag=!spectator] if score @s ID = #temp FollowID run tag @s add follow_me
execute unless entity @e[tag=follow_me] run function luigis_mansion_3ds_remake:entities/player/gooigi_get_new_following
execute at @a[tag=follow_me,limit=1] run teleport @s ~ ~ ~ ~ ~
tag @a[tag=follow_me,limit=1] remove follow_me
scoreboard players reset #temp FollowID