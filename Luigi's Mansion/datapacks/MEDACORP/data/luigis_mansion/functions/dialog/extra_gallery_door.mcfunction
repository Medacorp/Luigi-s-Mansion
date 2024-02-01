summon minecraft:marker ~ ~ ~ {Tags:["home","remove_from_existence"]}
execute store result entity @e[tag=home,limit=1] Pos[0] double 0.01 run scoreboard players get @s PositionX
execute store result entity @e[tag=home,limit=1] Pos[1] double 0.01 run scoreboard players get @s PositionY
execute store result entity @e[tag=home,limit=1] Pos[2] double 0.01 run scoreboard players get @s PositionZ
execute at @e[tag=home,limit=1] run tp @s ~ 0 ~
execute at @e[tag=home,limit=1] run tp @s ~ ~ ~
kill @e[tag=home,limit=1]
execute if entity @s[scores={GalleryChoice=0..}] run scoreboard players add @s[scores={Dialog=57..}] Dialog 1
scoreboard players add @s[scores={Dialog=..56}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1..56},gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/think
tellraw @s[scores={Dialog=1}] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.extra_gallery_door.1"}]}
function #luigis_mansion:dialog/extra_gallery_door
tellraw @s[scores={Dialog=56}] {"type":"translatable","translate":"luigis_mansion:dialog.extra_gallery_door.nowhere","color":"green","clickEvent":{"action":"run_command","value":"/trigger GalleryChoice set 0"}}
scoreboard players set @s[scores={Dialog=56}] GalleryChoice -1
scoreboard players enable @s[scores={Dialog=56}] GalleryChoice
execute if entity @s[scores={Dialog=58},gamemode=spectator] run function luigis_mansion:entities/door/lab/go_through
scoreboard players set @s[scores={Dialog=58},gamemode=spectator] Dialog 0
execute if entity @s[scores={Dialog=58},gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/nod
scoreboard players set @s[scores={Dialog=78,GalleryChoice=0}] Dialog 0
execute if entity @s[scores={Dialog=78}] run scoreboard players operation @e[tag=furniture,tag=door,tag=extra_gallery,sort=nearest,limit=1] GalleryChoice = @s GalleryChoice
execute if entity @s[scores={Dialog=78}] run tag @e[tag=furniture,tag=door,tag=extra_gallery,sort=nearest,limit=1] add open_door
execute if entity @s[scores={Dialog=78}] at @e[tag=furniture,tag=door,tag=extra_gallery,sort=nearest,limit=1] positioned ^ ^ ^0.5 rotated ~-180 ~ align xz run teleport @s ~0.5 ~ ~0.5 ~ ~
execute if entity @s[scores={Dialog=78}] at @e[tag=furniture,tag=door,tag=extra_gallery,sort=nearest,limit=1] if entity @e[distance=..0.1,tag=furniture,tag=door,tag=!locked,tag=!unlock,tag=!pull] run function luigis_mansion:entities/player/animation/set/door/open/push
execute if entity @s[scores={Dialog=78}] at @e[tag=furniture,tag=door,tag=extra_gallery,sort=nearest,limit=1] if entity @e[distance=..0.1,tag=furniture,tag=door,tag=!locked,tag=!unlock,tag=pull] run function luigis_mansion:entities/player/animation/set/door/open/pull
scoreboard players set @s[scores={Dialog=138}] Dialog 0
scoreboard players reset @s[scores={Dialog=0}] GalleryChoice
tag @s[scores={Dialog=0}] remove extra_gallery_door