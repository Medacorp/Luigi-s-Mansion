execute store result score #temp ID run data get storage luigis_mansion:data dialogs[0].tricked_player
execute as @e[tag=luigi,tag=same_room] if score @s ID = #temp ID run tag @s add tricked_player
scoreboard players reset #temp ID

scoreboard players add #dialog Dialog 1

tag @e[tag=same_room,tag=door] remove freeze_animation
tag @e[tag=same_room,tag=door] remove no_ai
scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 1 at @s positioned ^ ^ ^1 run data remove entity @s[scores={AnimationProgress=50..}] data.animation
execute if score #dialog Dialog matches 1 at @s positioned ^ ^ ^1 run tag @e[tag=door,distance=..1] remove open_door
execute if score #dialog Dialog matches 1 at @s positioned ^ ^ ^1 run scoreboard players reset @e[tag=door,distance=..1] AnimationProgress
execute if score #dialog Dialog matches 1..101 as @e[tag=luigi,tag=same_room,tag=!tricked_player] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 1..101 as @e[tag=luigi,tag=same_room,tag=!tricked_player] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s facing entity @e[tag=tricked_player,limit=1] feet",teleport:"~ ~ ~ ~ ~"}
execute if score #dialog Dialog matches 2 if data storage luigis_mansion:data dialogs[0].animation{left:1b} run tag @e[tag=tricked_player,limit=1] add left_door
execute if score #dialog Dialog matches 2 unless data storage luigis_mansion:data dialogs[0].animation{push:1b} as @e[tag=tricked_player,limit=1] run function luigis_mansion:entities/luigi/animation/set/door/open/pull
execute if score #dialog Dialog matches 2 if data storage luigis_mansion:data dialogs[0].animation{push:1b} as @e[tag=tricked_player,limit=1] run function luigis_mansion:entities/luigi/animation/set/door/open/push
execute if score #dialog Dialog matches 2 at @e[tag=tricked_player,limit=1] positioned ^ ^ ^1 run tag @e[tag=door,distance=..1] add open_door
execute if score #dialog Dialog matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["trick_door_facing","same_room"]}
execute if score #dialog Dialog matches 1 store result score @e[tag=same_room,tag=trick_door_facing,limit=1] Room run data get storage luigis_mansion:data dialogs[0].room
execute if score #dialog Dialog matches 1 run data modify entity @e[tag=same_room,tag=trick_door_facing,limit=1] Pos set from storage luigis_mansion:data dialogs[0].observing_position
execute if score #dialog Dialog matches 2 as @e[tag=same_room,tag=trick_door_facing,limit=1] at @s facing entity @e[tag=tricked_player,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if score #dialog Dialog matches 47..56 unless score #mirrored Selected matches 1 as @e[tag=same_room,tag=trick_door_facing,limit=1] at @s run teleport @s ~ ~ ~ ~-18 ~
execute if score #dialog Dialog matches 47..56 if score #mirrored Selected matches 1 as @e[tag=same_room,tag=trick_door_facing,limit=1] at @s run teleport @s ~ ~ ~ ~18 ~
execute if score #dialog Dialog matches 2..101 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=same_room,tag=trick_door_facing,limit=1]",teleport:"~ ~ ~ ~ ~"}
execute if score #dialog Dialog matches 15 if data storage luigis_mansion:data dialogs[0].animation{push:1b} as @e[tag=tricked_player,limit=1] run function luigis_mansion:entities/luigi/move/teleport {teleport:"^ ^ ^1"}
execute if score #dialog Dialog matches 33 unless data storage luigis_mansion:data dialogs[0].animation{push:1b} as @e[tag=tricked_player,limit=1] run function luigis_mansion:entities/luigi/move/teleport {teleport:"^ ^ ^1"}
execute if score #dialog Dialog matches 52 as @e[tag=tricked_player,limit=1] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 52 run data modify entity @e[tag=tricked_player,limit=1] Pos set from storage luigis_mansion:data dialogs[0].warp_position
execute if score #dialog Dialog matches 52 as @e[tag=luigi,tag=tricked_player,limit=1] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~ ~"}
execute if score #dialog Dialog matches 52 at @e[tag=tricked_player,limit=1] positioned ^ ^ ^1 run tag @e[tag=door,distance=..1] add force_animation
execute if score #dialog Dialog matches 52 if data storage luigis_mansion:data dialogs[0].animation{left:1b} run tag @e[tag=tricked_player,limit=1] add left_door
execute if score #dialog Dialog matches 52 unless data storage luigis_mansion:data dialogs[0].animation{push:1b} as @e[tag=tricked_player,limit=1] run function luigis_mansion:entities/luigi/animation/set/door/open/pull
execute if score #dialog Dialog matches 52 if data storage luigis_mansion:data dialogs[0].animation{push:1b} as @e[tag=tricked_player,limit=1] run function luigis_mansion:entities/luigi/animation/set/door/open/push
execute if score #dialog Dialog matches 62 as @a[tag=same_room] run function luigis_mansion:other/music/set/trick_door
execute if score #dialog Dialog matches 102 run tag @e[tag=same_room,tag=trick_door_facing,limit=1] add remove_from_existence
execute if score #dialog Dialog matches 102 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 102 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 102 run tag @e[tag=tricked_player,limit=1] add no_door_animation_tag
execute if score #dialog Dialog matches 102 run scoreboard players set #dialog Dialog -1
tag @a[tag=tricked_player,limit=1] remove tricked_player