execute unless entity @a[tag=extra_gallery_door,gamemode=!spectator] run tag @s add open_door
execute unless entity @a[tag=extra_gallery_door,gamemode=!spectator] positioned ^ ^ ^0.5 rotated ~-180 ~ align xz run teleport @a[tag=try_opening_door,limit=1,sort=nearest] ~0.5 ~ ~0.5 ~ ~
execute unless entity @a[tag=extra_gallery_door,gamemode=!spectator] if entity @s[tag=!pull] as @a[tag=try_opening_door,limit=1,sort=nearest] run function luigis_mansion:entities/player/animation/set/door/open/push
execute unless entity @a[tag=extra_gallery_door,gamemode=!spectator] if entity @s[tag=pull] as @a[tag=try_opening_door,limit=1,sort=nearest] run function luigis_mansion:entities/player/animation/set/door/open/pull

execute if entity @a[tag=extra_gallery_door,gamemode=!spectator] as @a[tag=try_opening_door,limit=1,sort=nearest] run function luigis_mansion:entities/player/animation/set/inspect