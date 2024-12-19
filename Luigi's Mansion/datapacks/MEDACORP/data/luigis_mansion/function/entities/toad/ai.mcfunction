execute at @s unless entity @s[nbt={data:{animation:{namespace:"luigis_mansion",id:"cry"}}},tag=!talk] facing entity @e[tag=same_room,tag=luigi,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
tag @s[tag=!talk] remove talk_this_tick
tag @s remove talk