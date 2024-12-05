execute unless entity @a[tag=extra_gallery_door_menu,tag=!camera] run tag @s add open_door
execute unless entity @a[tag=extra_gallery_door_menu,tag=!camera] as @e[tag=luigi,tag=try_opening_door,limit=1,sort=nearest] run function luigis_mansion:entities/luigi/move/execute {execute:"positioned ^ ^ ^0.5 align xz",teleport:"~0.5 ~ ~0.5 ~-180 ~"}
execute unless entity @a[tag=extra_gallery_door_menu,tag=!camera] if entity @s[tag=!pull] as @e[tag=luigi,tag=try_opening_door,limit=1,sort=nearest] run function luigis_mansion:entities/luigi/animation/set/door/open/push
execute unless entity @a[tag=extra_gallery_door_menu,tag=!camera] if entity @s[tag=pull] as @e[tag=luigi,tag=try_opening_door,limit=1,sort=nearest] run function luigis_mansion:entities/luigi/animation/set/door/open/pull

execute if entity @a[tag=extra_gallery_door_menu,tag=!camera] as @e[tag=luigi,tag=try_opening_door,limit=1,sort=nearest] run function luigis_mansion:entities/luigi/animation/set/inspect