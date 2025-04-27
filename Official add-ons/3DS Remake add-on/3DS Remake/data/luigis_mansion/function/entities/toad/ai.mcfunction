execute at @s unless entity @s[nbt={data:{animation:{namespace:"luigis_mansion",id:"cry"}}},tag=!talk] facing entity @e[tag=same_room,tag=luigi,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
tag @s remove talk
execute if data entity @s data{sound:"cry_0"} run playsound 3ds_remake:entity.toad.cry_0 neutral @a[tag=same_room] ~ ~ ~ 1
execute if data entity @s data{sound:"cry_1"} run playsound 3ds_remake:entity.toad.cry_1 neutral @a[tag=same_room] ~ ~ ~ 1
execute if data entity @s data{sound:"mama_mia"} run playsound 3ds_remake:entity.toad.mama_mia neutral @a[tag=same_room] ~ ~ ~ 1
execute if data entity @s data{sound:"wow"} run playsound 3ds_remake:entity.toad.wow neutral @a[tag=same_room] ~ ~ ~ 1
execute if data entity @s data{sound:"yahoo"} run playsound 3ds_remake:entity.toad.yahoo neutral @a[tag=same_room] ~ ~ ~ 1
data remove entity @s data.sound