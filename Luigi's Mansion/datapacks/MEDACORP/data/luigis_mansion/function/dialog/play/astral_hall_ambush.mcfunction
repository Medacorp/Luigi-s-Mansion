scoreboard players add #dialog Dialog 1

tag @e[tag=same_room,tag=candle_flame] remove no_ai
scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 1..120 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/high_health_idle_no_sound
execute if score #dialog Dialog matches 1 run tag @e[tag=light_me,tag=same_room] add lit
execute if score #dialog Dialog matches 2 run stopsound @a[tag=same_room] music
execute if score #dialog Dialog matches 2 run scoreboard players set @a[tag=same_room] Music 140
execute if score #dialog Dialog matches 3 run playsound luigis_mansion:music.mansion.room.astral_hall music @a[tag=same_room] ~ ~ ~ 1000
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
execute if score #dialog Dialog matches 120 run tag @a[tag=same_room,tag=!spectator] add idle
execute if score #dialog Dialog matches 130 run tag @e[tag=light_me,tag=same_room] remove purple
execute if score #dialog Dialog matches 130 run tag @e[tag=light_me,tag=same_room] add lit
execute if score #dialog Dialog matches 130 run scoreboard players set #dialog Dialog -1