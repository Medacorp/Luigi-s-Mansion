execute at @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},limit=1] at @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] run function luigis_mansion:entities/ghost/set_target
scoreboard players set #temp Move 50
execute at @s facing entity @a[tag=target,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute at @s unless entity @a[tag=target,limit=1,distance=..8] rotated ~ 0 run function luigis_mansion:entities/ghost/move_forward_force
scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=20}] run function luigis_mansion:entities/bowser_head/spit_ice
scoreboard players set @s[scores={ActionTime=40}] ActionTime 0
data modify entity @s data.rotation set from entity @s Rotation[1]
data modify entity @s data.animation set value {namespace:"luigis_mansion",id:"shoot"}