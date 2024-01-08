function #luigis_mansion:entities/toad/dialog

execute at @s unless entity @s[nbt={data:{animation:{namespace:"luigis_mansion",id:"cry"}}},tag=!talk] facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~