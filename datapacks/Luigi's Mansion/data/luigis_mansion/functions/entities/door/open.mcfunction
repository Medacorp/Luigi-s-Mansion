tag @s remove locked
tag @s remove unlock
function #luigis_mansion:entities/door/check_lock
execute if entity @s[tag=!locked,tag=!unlock] run tag @s add open_door
execute if entity @s[tag=!locked,tag=!unlock] positioned ^ ^ ^0.5 rotated ~-180 ~ run teleport @a[tag=talked_to_villager,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute if entity @s[tag=!locked,tag=!unlock,tag=!pull] as @a[tag=talked_to_villager,limit=1,sort=nearest] run function luigis_mansion:entities/player/animation/set/door/open/push
execute if entity @s[tag=!locked,tag=!unlock,tag=pull] as @a[tag=talked_to_villager,limit=1,sort=nearest] run function luigis_mansion:entities/player/animation/set/door/open/pull

execute if entity @s[tag=locked] run tag @s add bash_door
execute if entity @s[tag=locked] positioned ^ ^ ^0.5 rotated ~-180 ~ run teleport @a[tag=talked_to_villager,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute if entity @s[tag=locked,tag=!pull] as @a[tag=talked_to_villager,limit=1,sort=nearest] run function luigis_mansion:entities/player/animation/set/door/locked/push
execute if entity @s[tag=locked,tag=pull] as @a[tag=talked_to_villager,limit=1,sort=nearest] run function luigis_mansion:entities/player/animation/set/door/locked/pull

execute if entity @s[tag=unlock] run tag @s add unlock_door
execute if entity @s[tag=unlock] positioned ^ ^ ^0.5 rotated ~-180 ~ run teleport @a[tag=talked_to_villager,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute if entity @s[tag=unlock,tag=!pull] as @a[tag=talked_to_villager,limit=1,sort=nearest] run function luigis_mansion:entities/player/animation/set/door/unlock/push
execute if entity @s[tag=unlock,tag=pull] as @a[tag=talked_to_villager,limit=1,sort=nearest] run function luigis_mansion:entities/player/animation/set/door/unlock/pull

execute if entity @s[tag=left] run tag @a[tag=talked_to_villager,limit=1,sort=nearest] add left_door