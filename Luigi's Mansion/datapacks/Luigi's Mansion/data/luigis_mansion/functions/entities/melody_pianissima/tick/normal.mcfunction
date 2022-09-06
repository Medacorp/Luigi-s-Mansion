execute if entity @s[tag=visible,tag=!talk] run function luigis_mansion:entities/melody_pianissima/turn_invisible
execute if entity @s[tag=talk,tag=!vanish] run function luigis_mansion:entities/melody_pianissima/tick/normal/play
execute if entity @s[tag=!talk,tag=!vanish] if entity @a[tag=!spectator,distance=..5] run function luigis_mansion:entities/melody_pianissima/tick/normal/play

execute at @s[tag=nod] run function luigis_mansion:animations/melody_pianissima/nod
execute at @s[tag=listen] run function luigis_mansion:animations/melody_pianissima/listen
execute at @s[tag=rage] run function luigis_mansion:animations/melody_pianissima/rage
execute at @s[tag=laugh] run function luigis_mansion:animations/melody_pianissima/laugh
execute at @s[tag=complain,tag=!vanish] run function luigis_mansion:animations/melody_pianissima/complain
execute at @s[tag=!complain,tag=!nod,tag=!listen,tag=!rage,tag=!laugh,tag=!vanish] run function luigis_mansion:animations/melody_pianissima/idle