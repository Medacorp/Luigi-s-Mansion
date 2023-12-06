execute if entity @s[tag=!dead,tag=!appear,tag=!vanish] unless entity @s[tag=!no_ai,tag=!hide_and_seek] facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!vanish,tag=!no_ai,tag=!hide_and_seek] run function luigis_mansion:entities/orville/fly
execute if entity @s[tag=no_ai] run function luigis_mansion:dialog/twins/hidden

execute at @s[tag=appear] run function luigis_mansion:entities/orville/appear
execute at @s[tag=nod] run function luigis_mansion:old_animations/orville/nod
execute at @s[tag=shake] run function luigis_mansion:old_animations/orville/shake
execute at @s[tag=!nod,tag=!shake,tag=!appear,tag=!vanish] unless entity @s[tag=!hide_and_seek,tag=!no_ai] run function luigis_mansion:old_animations/orville/idle