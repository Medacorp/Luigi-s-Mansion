tag @s[tag=remove_hide_and_seek] add dead
execute if entity @s[tag=!dead] unless entity @s[tag=!dialog,tag=!hide_and_seek] facing entity @p[tag=same_room,gamemode=!spectator] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!vanish,tag=!dialog,tag=!hide_and_seek] run function luigis_mansion:entities/orville/fly
execute if entity @s[tag=dialog] run function luigis_mansion:dialog/twins/normal