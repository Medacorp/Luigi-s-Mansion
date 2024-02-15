execute if data entity @s ArmorItems[3].tag.key run function luigis_mansion:entities/furniture/type/door/check_lock with entity @s ArmorItems[3].tag
execute if entity @s[tag=left] run tag @a[tag=try_opening_door,limit=1,sort=nearest] add left_door
execute if entity @s[tag=!locked,tag=!unlock] run tag @s add open_door
execute if entity @s[tag=!locked,tag=!unlock] positioned ^ ^ ^0.5 rotated ~-180 ~ align xz run teleport @a[tag=try_opening_door,limit=1,sort=nearest] ~0.5 ~ ~0.5 ~ ~
execute if entity @s[tag=!locked,tag=!unlock,tag=push] as @a[tag=try_opening_door,limit=1,sort=nearest] run function luigis_mansion:entities/player/animation/set/door/open/push
execute if entity @s[tag=!locked,tag=!unlock,tag=!push] as @a[tag=try_opening_door,limit=1,sort=nearest] run function luigis_mansion:entities/player/animation/set/door/open/pull

execute if entity @s[tag=locked] run tag @s add bash_door
execute if entity @s[tag=locked] positioned ^ ^ ^0.5 rotated ~-180 ~ align xz run teleport @a[tag=try_opening_door,limit=1,sort=nearest] ~0.5 ~ ~0.5 ~ ~
execute if entity @s[tag=locked,tag=push] as @a[tag=try_opening_door,limit=1,sort=nearest] run function luigis_mansion:entities/player/animation/set/door/locked/push
execute if entity @s[tag=locked,tag=!push] as @a[tag=try_opening_door,limit=1,sort=nearest] run function luigis_mansion:entities/player/animation/set/door/locked/pull

execute if entity @s[tag=unlock] run tag @s add unlock_door
execute if entity @s[tag=unlock] positioned ^ ^ ^0.5 rotated ~-180 ~ align xz run teleport @a[tag=try_opening_door,limit=1,sort=nearest] ~0.5 ~ ~0.5 ~ ~
execute if entity @s[tag=unlock,tag=push] as @a[tag=try_opening_door,limit=1,sort=nearest] run function luigis_mansion:entities/player/animation/set/door/unlock/push
execute if entity @s[tag=unlock,tag=!push] as @a[tag=try_opening_door,limit=1,sort=nearest] run function luigis_mansion:entities/player/animation/set/door/unlock/pull

tag @s remove locked
tag @s remove unlock