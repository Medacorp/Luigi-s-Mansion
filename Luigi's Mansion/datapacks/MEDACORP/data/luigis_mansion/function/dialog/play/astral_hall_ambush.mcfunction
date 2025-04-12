scoreboard players add #dialog Dialog 1

tag @a[tag=same_room] add prevent_item_lock
tag @e[tag=same_room,tag=door] remove no_ai
tag @e[tag=same_room,tag=door] remove freeze_animation
tag @e[tag=same_room,tag=light_me] remove no_ai
scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 1..120 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/high_health_idle_no_sound
execute if score #dialog Dialog matches 1 run tag @e[tag=light_me,tag=same_room] add lit
execute if score #dialog Dialog matches 1 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=flame_2,limit=1] rotated 50 0",teleport:"^ ^ ^-4.5 ~ ~"}
execute if score #dialog Dialog matches 1 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=flame_2,limit=1] rotated 130 0",teleport:"^ ^ ^-4.5 ~ ~"}
execute if score #dialog Dialog matches 1..90 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^-0.06 ^0.01 ^-0.06 rotated as @s",teleport:"~ ~ ~ ~-0.3125 ~0.01"}
execute if score #dialog Dialog matches 1..90 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^0.06 ^0.01 ^-0.06 rotated as @s",teleport:"~ ~ ~ ~0.3125 ~0.01"}
execute if score #dialog Dialog matches 91..130 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s at @e[tag=door,sort=nearest,limit=1]",teleport:"^3 ^ ^3 facing entity @e[tag=door,sort=nearest,limit=1] feet"}
execute if score #dialog Dialog matches 91..130 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s at @e[tag=door,sort=nearest,limit=1]",teleport:"^-3 ^ ^3 facing entity @e[tag=door,sort=nearest,limit=1] feet"}
execute if score #dialog Dialog matches 3 as @a[tag=same_room] run function luigis_mansion:other/music/set/astral_hall_ambush
execute if score #dialog Dialog matches 10 run tag @e[tag=flame_1,tag=light_me,tag=!purple,tag=same_room,sort=nearest,limit=1] add large_flame
execute if score #dialog Dialog matches 15 run tag @e[tag=flame_2,tag=light_me,tag=!purple,tag=same_room,sort=nearest,limit=1] add large_flame
execute if score #dialog Dialog matches 20 run tag @e[tag=flame_3,tag=light_me,tag=!purple,tag=same_room,sort=nearest,limit=1] add large_flame
execute if score #dialog Dialog matches 25 run tag @e[tag=flame_4,tag=light_me,tag=!purple,tag=same_room,sort=nearest,limit=1] add large_flame
execute if score #dialog Dialog matches 30 run tag @e[tag=flame_5,tag=light_me,tag=!purple,tag=same_room,sort=nearest,limit=1] add large_flame
execute if score #dialog Dialog matches 35 run tag @e[tag=flame_6,tag=light_me,tag=!purple,tag=same_room,sort=nearest,limit=1] add large_flame
execute if score #dialog Dialog matches 40 run tag @e[tag=flame_7,tag=light_me,tag=!purple,tag=same_room,sort=nearest,limit=1] add large_flame
execute if score #dialog Dialog matches 45 run tag @e[tag=flame_8,tag=light_me,tag=!purple,tag=same_room,sort=nearest,limit=1] add large_flame
execute if score #dialog Dialog matches 50 run tag @e[tag=flame_9,tag=light_me,tag=!purple,tag=same_room,sort=nearest,limit=1] add large_flame
execute if score #dialog Dialog matches 55 run tag @e[tag=flame_10,tag=light_me,tag=!purple,tag=same_room,sort=nearest,limit=1] add large_flame
execute if score #dialog Dialog matches 60 run tag @e[tag=flame_11,tag=light_me,tag=!purple,tag=same_room,sort=nearest,limit=1] add large_flame
execute if score #dialog Dialog matches 65 run tag @e[tag=flame_12,tag=light_me,tag=!purple,tag=same_room,sort=nearest,limit=1] add large_flame
execute if score #dialog Dialog matches 70 run tag @e[tag=flame_13,tag=light_me,tag=!purple,tag=same_room,sort=nearest,limit=1] add large_flame
execute if score #dialog Dialog matches 75 run tag @e[tag=flame_14,tag=light_me,tag=!purple,tag=same_room,sort=nearest,limit=1] add large_flame
execute if score #dialog Dialog matches 80 run tag @e[tag=flame_15,tag=light_me,tag=!purple,tag=same_room,sort=nearest,limit=1] add large_flame
execute if score #dialog Dialog matches 10..80 at @e[tag=light_me,tag=same_room,tag=!purple,tag=large_flame] run playsound luigis_mansion:furniture.candle_flame.change_color block @a[tag=same_room] ~ ~ ~ 1
execute if score #dialog Dialog matches 10..80 run tag @e[tag=light_me,tag=same_room,tag=!purple,tag=large_flame] add purple
execute if score #dialog Dialog matches 50..120 run tag @e[tag=light_me,tag=same_room,tag=purple,tag=!large_flame] remove lit
execute if score #dialog Dialog matches 120 run scoreboard players add #astral_hall Wave 1
execute if score #dialog Dialog matches 120 run tag @e[tag=luigi,tag=same_room] add idle
execute if score #dialog Dialog matches 130 run tag @e[tag=light_me,tag=same_room] remove purple
execute if score #dialog Dialog matches 130 run tag @e[tag=light_me,tag=same_room] add lit
execute if score #dialog Dialog matches 130 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 130 run scoreboard players set #dialog Dialog -1