execute store result score #temp ID run data get storage luigis_mansion:data dialogs[0].player
execute as @e[tag=luigi,tag=same_room] if score @s ID = #temp ID run tag @s add this_luigi
execute store result score #temp ID run data get storage luigis_mansion:data dialogs[0].door
execute as @e[tag=door,tag=same_room] if score @s PassiveNr = #temp ID run tag @s add this_door
scoreboard players reset #temp ID

execute if entity @a[tag=same_room,limit=1] run scoreboard players add #dialog Dialog 1
execute if entity @a[tag=same_room,limit=1,tag=skip_dialog] run scoreboard players set #dialog Dialog 39
execute unless entity @e[tag=this_luigi,limit=1] run scoreboard players set #dialog Dialog 39
execute if score #dialog Dialog matches ..39 as @a[tag=same_room,limit=1,tag=!spectator,tag=!dialog_menu,tag=!using_selection_menu] run function luigis_mansion:selection_menu/dialog/original_menu_skip_only
execute if score #dialog Dialog matches 40 as @a[tag=same_room,limit=1,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

tag @e[tag=this_door,limit=1] remove freeze_animation
tag @e[tag=this_door,limit=1] remove no_ai
execute if score #dialog Dialog matches 1 unless score #mirrored Selected matches 1 if entity @e[tag=this_door,tag=left_hinge,limit=1] as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=this_door,limit=1] rotated ~ 0",teleport:"^-1 ^-0.5 ^0.85 ~-135 ~"}
execute if score #dialog Dialog matches 1 unless score #mirrored Selected matches 1 if entity @e[tag=this_door,tag=!left_hinge,limit=1] as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=this_door,limit=1] rotated ~ 0",teleport:"^-0.2 ^-0.5 ^0.85 ~-135 ~"}
execute if score #dialog Dialog matches 1 if score #mirrored Selected matches 1 if entity @e[tag=this_door,tag=left_hinge,limit=1] as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=this_door,limit=1] rotated ~ 0",teleport:"^0.2 ^-0.5 ^0.85 ~135 ~"}
execute if score #dialog Dialog matches 1 if score #mirrored Selected matches 1 if entity @e[tag=this_door,tag=!left_hinge,limit=1] as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=this_door,limit=1] rotated ~ 0",teleport:"^1 ^-0.5 ^0.85 ~135 ~"}
execute if score #dialog Dialog matches 2..39 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^ ~ ~"}
execute if score #dialog Dialog matches 1 unless score #mirrored Selected matches 1 if entity @e[tag=this_door,tag=left_hinge,limit=1] as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=this_door,limit=1] rotated ~ 0",teleport:"^-1 ^-0.75 ^0.85 ~-145 ~"}
execute if score #dialog Dialog matches 1 unless score #mirrored Selected matches 1 if entity @e[tag=this_door,tag=!left_hinge,limit=1] as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=this_door,limit=1] rotated ~ 0",teleport:"^-0.2 ^-0.75 ^0.85 ~-145 ~"}
execute if score #dialog Dialog matches 1 if score #mirrored Selected matches 1 if entity @e[tag=this_door,tag=left_hinge,limit=1] as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=this_door,limit=1] rotated ~ 0",teleport:"^0.2 ^-0.75 ^0.85 ~145 ~"}
execute if score #dialog Dialog matches 1 if score #mirrored Selected matches 1 if entity @e[tag=this_door,tag=!left_hinge,limit=1] as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=this_door,limit=1] rotated ~ 0",teleport:"^1 ^-0.75 ^0.85 ~145 ~"}
execute if score #dialog Dialog matches 2..100 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^ ~ ~"}
execute if score #dialog Dialog matches 39 run scoreboard players set @e[tag=this_door,scores={AnimationProgress=1..38},limit=1] AnimationProgress 39
execute if score #dialog Dialog matches 39 run scoreboard players set @e[tag=this_luigi,scores={AnimationProgress=1..38},limit=1] AnimationProgress 39
execute if score #dialog Dialog matches 40 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 40 run scoreboard players set #dialog Dialog -1

tag @e[tag=this_luigi,limit=1] remove this_luigi
tag @e[tag=this_door,limit=1] remove this_door