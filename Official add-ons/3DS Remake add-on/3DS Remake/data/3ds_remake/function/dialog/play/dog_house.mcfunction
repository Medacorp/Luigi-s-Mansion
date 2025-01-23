scoreboard players add #dialog Dialog 1
tag @a[tag=same_room] add prevent_item_lock
scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit

tag @e[tag=same_room,tag=no_ai_dialog] remove no_ai
tag @e[tag=same_room,tag=no_ai_dialog] remove no_ai_dialog
tag @e[tag=same_room,tag=freeze_animation_dialog] remove freeze_animation
tag @e[tag=same_room,tag=freeze_animation_dialog] remove freeze_animation_dialog
tag @e[tag=same_room,tag=applied_dialog_effects] remove applied_dialog_effects
tag @e[tag=same_room,tag=!player,tag=!dog_house] remove same_room

execute unless entity @e[tag=dog_house,tag=same_room,limit=1] run scoreboard players set #dialog Dialog 100

execute if score #dialog Dialog matches 1..99 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle
execute if score #dialog Dialog matches 1 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=same_room,tag=dog_house,sort=nearest,limit=1]",teleport:"^-2 ^ ^4 ~-135 0"}
execute if score #dialog Dialog matches 1 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=same_room,tag=dog_house,sort=nearest,limit=1]",teleport:"^2 ^ ^4 ~135 0"}
execute if score #dialog Dialog matches 1..20 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s facing entity @e[tag=same_room,tag=dog_house,sort=nearest,limit=1] feet positioned ^ ^ ^0.1 rotated as @s",teleport:"^ ^ ^ ~-1.125 ~0.5"}
execute if score #dialog Dialog matches 1..20 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s facing entity @e[tag=same_room,tag=dog_house,sort=nearest,limit=1] feet positioned ^ ^ ^0.1 rotated as @s",teleport:"^ ^ ^ ~1.125 ~0.5"}
execute if score #dialog Dialog matches 21 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^ ~ ~"}
execute if score #dialog Dialog matches 100 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 100 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 100 run scoreboard players set #dialog Dialog -1