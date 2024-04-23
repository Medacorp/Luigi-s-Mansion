execute if data entity @s[tag=hit_player] ArmorItems[3].components."minecraft:custom_data".owner run function luigis_mansion:entities/ghost/owner_laugh with entity @s ArmorItems[3].components."minecraft:custom_data"
execute if data entity @s[tag=!hit_player] ArmorItems[3].components."minecraft:custom_data".owner run function luigis_mansion:entities/ghost/owner_complain with entity @s ArmorItems[3].components."minecraft:custom_data"
scoreboard players set @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"haunted_object"}}}] WaitTime 0
tag @s remove attack
tag @s remove collided
execute if entity @s[tag=!dead] run playsound luigis_mansion:entity.haunted_object.hit hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=!dead] store result entity @s Pos[0] double 0.01 run scoreboard players get @s HomeX
execute if entity @s[tag=!dead] store result entity @s Pos[1] double 0.01 run scoreboard players get @s HomeY
execute if entity @s[tag=!dead] store result entity @s Pos[2] double 0.01 run scoreboard players get @s HomeZ
execute if entity @s[tag=!dead] store result entity @s Rotation[0] float 1 run scoreboard players get @s HomeRotationX
execute if entity @s[tag=!dead] store result entity @s Rotation[1] float 1 run scoreboard players get @s HomeRotationY