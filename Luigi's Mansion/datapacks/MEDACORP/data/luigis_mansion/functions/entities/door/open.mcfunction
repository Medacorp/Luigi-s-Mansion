tag @s remove locked
tag @s remove unlock
function #luigis_mansion:entities/door/check_lock
tag @s remove not_locked
execute if entity @s[tag=!locked,tag=!unlock] run tag @s add open_door
execute if entity @s[tag=!locked,tag=!unlock] positioned ^ ^ ^0.5 rotated ~-180 ~ align xz run teleport @a[tag=try_opening_door,limit=1,sort=nearest] ~0.5 ~ ~0.5 ~ ~
execute if entity @s[tag=!locked,tag=!unlock,tag=!pull] as @a[tag=try_opening_door,limit=1,sort=nearest] run function luigis_mansion:entities/player/animation/set/door/open/push
execute if entity @s[tag=!locked,tag=!unlock,tag=pull] as @a[tag=try_opening_door,limit=1,sort=nearest] run function luigis_mansion:entities/player/animation/set/door/open/pull

execute if entity @s[tag=locked] run tag @s add bash_door
execute if entity @s[tag=locked] positioned ^ ^ ^0.5 rotated ~-180 ~ align xz run teleport @a[tag=try_opening_door,limit=1,sort=nearest] ~0.5 ~ ~0.5 ~ ~
execute if entity @s[tag=locked,tag=!pull] as @a[tag=try_opening_door,limit=1,sort=nearest] run function luigis_mansion:entities/player/animation/set/door/locked/push
execute if entity @s[tag=locked,tag=pull] as @a[tag=try_opening_door,limit=1,sort=nearest] run function luigis_mansion:entities/player/animation/set/door/locked/pull

execute if entity @s[tag=unlock] run tag @s add unlock_door
execute if entity @s[tag=unlock] positioned ^ ^ ^0.5 rotated ~-180 ~ align xz run teleport @a[tag=try_opening_door,limit=1,sort=nearest] ~0.5 ~ ~0.5 ~ ~
execute if entity @s[tag=unlock,tag=!pull] as @a[tag=try_opening_door,limit=1,sort=nearest] run function luigis_mansion:entities/player/animation/set/door/unlock/push
execute if entity @s[tag=unlock,tag=pull] as @a[tag=try_opening_door,limit=1,sort=nearest] run function luigis_mansion:entities/player/animation/set/door/unlock/pull

execute if entity @s[tag=left] as @a[tag=try_opening_door,limit=1,sort=nearest] run scoreboard players add @s[scores={Animation=13..23}] Animation 1