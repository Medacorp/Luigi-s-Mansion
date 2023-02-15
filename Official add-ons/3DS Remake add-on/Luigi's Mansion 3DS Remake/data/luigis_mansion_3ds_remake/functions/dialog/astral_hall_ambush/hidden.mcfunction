scoreboard players set #freeze_timer Selected 1
scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1..120}] as @a[tag=same_room,gamemode=!spectator,scores={IdleTime=0..},tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/high_health_idle_no_sound
execute if entity @s[scores={Dialog=2}] run stopsound @a[tag=same_room] music
execute if entity @s[scores={Dialog=2}] run scoreboard players set @a[tag=same_room] Music 140
execute if entity @s[scores={Dialog=3}] run playsound luigis_mansion:music.mansion.room.astral_hall music @a[tag=same_room] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=10}] run tag @e[x=665.5,y=20,z=-76.5,tag=light_me,tag=!purple,tag=same_room,sort=nearest,limit=1] add large_flame
execute if entity @s[scores={Dialog=15}] run tag @e[x=665.5,y=20,z=-76.5,tag=light_me,tag=!purple,tag=same_room,sort=nearest,limit=1] add large_flame
execute if entity @s[scores={Dialog=20}] run tag @e[x=665.5,y=20,z=-76.5,tag=light_me,tag=!purple,tag=same_room,sort=nearest,limit=1] add large_flame
execute if entity @s[scores={Dialog=25}] run tag @e[x=670.5,y=20,z=-79.5,tag=light_me,tag=!purple,tag=same_room,sort=nearest,limit=1] add large_flame
execute if entity @s[scores={Dialog=30}] run tag @e[x=670.5,y=20,z=-79.5,tag=light_me,tag=!purple,tag=same_room,sort=nearest,limit=1] add large_flame
execute if entity @s[scores={Dialog=35}] run tag @e[x=670.5,y=20,z=-79.5,tag=light_me,tag=!purple,tag=same_room,sort=nearest,limit=1] add large_flame
execute if entity @s[scores={Dialog=40}] run tag @e[x=670.5,y=20,z=-83.5,tag=light_me,tag=!purple,tag=same_room,sort=nearest,limit=1] add large_flame
execute if entity @s[scores={Dialog=45}] run tag @e[x=670.5,y=20,z=-83.5,tag=light_me,tag=!purple,tag=same_room,sort=nearest,limit=1] add large_flame
execute if entity @s[scores={Dialog=50}] run tag @e[x=670.5,y=20,z=-83.5,tag=light_me,tag=!purple,tag=same_room,sort=nearest,limit=1] add large_flame
execute if entity @s[scores={Dialog=55}] run tag @e[x=665.5,y=20,z=-86.5,tag=light_me,tag=!purple,tag=same_room,sort=nearest,limit=1] add large_flame
execute if entity @s[scores={Dialog=60}] run tag @e[x=665.5,y=20,z=-86.5,tag=light_me,tag=!purple,tag=same_room,sort=nearest,limit=1] add large_flame
execute if entity @s[scores={Dialog=65}] run tag @e[x=665.5,y=20,z=-86.5,tag=light_me,tag=!purple,tag=same_room,sort=nearest,limit=1] add large_flame
execute if entity @s[scores={Dialog=70}] run tag @e[x=661.5,y=20,z=-81.5,tag=light_me,tag=!purple,tag=same_room,sort=nearest,limit=1] add large_flame
execute if entity @s[scores={Dialog=75}] run tag @e[x=661.5,y=20,z=-81.5,tag=light_me,tag=!purple,tag=same_room,sort=nearest,limit=1] add large_flame
execute if entity @s[scores={Dialog=80}] run tag @e[x=661.5,y=20,z=-81.5,tag=light_me,tag=!purple,tag=same_room,sort=nearest,limit=1] add large_flame
execute at @e[tag=light_me,tag=same_room,tag=!purple,tag=large_flame] run playsound luigis_mansion:furniture.candle_flame.change_color block @a[tag=same_room] ~ ~ ~ 1
tag @e[tag=light_me,tag=same_room,tag=!purple,tag=large_flame] add purple
tag @e[tag=light_me,tag=same_room,tag=purple,tag=!large_flame] remove lit
execute if entity @s[scores={Dialog=120}] run function luigis_mansion_3ds_remake:room/hidden/astral_hall/wave_2
execute if entity @s[scores={Dialog=120}] run tag @a[tag=same_room,gamemode=!spectator,tag=high_health_idle,tag=!looking_at_map] add idle
execute if entity @s[scores={Dialog=130}] run tag @e[tag=light_me,tag=same_room] remove purple
execute if entity @s[scores={Dialog=130}] run tag @e[tag=light_me,tag=same_room] add lit
tag @s[scores={Dialog=130}] remove astral_hall_ambush
scoreboard players set @s[scores={Dialog=130}] Dialog 0