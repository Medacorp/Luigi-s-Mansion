execute if entity @s[tag=!dead,tag=!appear,tag=!vanish] unless entity @s[tag=!dialog,tag=!hide_and_seek] facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!vanish,tag=!dialog,tag=!hide_and_seek] run function luigis_mansion:entities/orville/fly
execute if entity @s[tag=dialog] run function luigis_mansion:dialog/twins/normal

execute at @s[tag=appear] run function luigis_mansion:entities/orville/appear
execute at @s[tag=nod] run function luigis_mansion:animations/orville/nod
execute at @s[tag=listen] run function luigis_mansion:animations/orville/listen
execute at @s[tag=shake] run function luigis_mansion:animations/orville/shake
execute at @s[tag=!nod,tag=!listen,tag=!shake,tag=!appear,tag=!vanish] unless entity @s[tag=!hide_and_seek,tag=!dialog] run function luigis_mansion:animations/orville/idle