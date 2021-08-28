execute if entity @s[tag=!dead,tag=!appear,tag=!vanish] unless entity @s[tag=!dialog,tag=!hide_and_seek] facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!dialog,tag=!hide_and_seek] run function luigis_mansion:entities/henry/drive
execute if entity @s[tag=hide_and_seek] run function luigis_mansion:entities/henry/hide_and_seek/normal

execute if entity @s[tag=say] run say @e[tag=same_room]
tag @s remove say

execute at @s[tag=appear] run function luigis_mansion:entities/henry/appear
execute at @s[tag=nod] run function luigis_mansion:animations/henry/nod
execute at @s[tag=listen] run function luigis_mansion:animations/henry/listen
execute at @s[tag=shake] run function luigis_mansion:animations/henry/shake
execute at @s[tag=!nod,tag=!listen,tag=!shake,tag=!appear,tag=!vanish] unless entity @s[tag=!hide_and_seek,tag=!dialog] run function luigis_mansion:animations/henry/idle
