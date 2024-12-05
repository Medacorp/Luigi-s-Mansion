scoreboard players add @s ActionTime 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"attach_head_backwards"}
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.bowser.reattach_head hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={ActionTime=40}] facing entity @e[tag=same_room,tag=luigi,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
data modify entity @s[scores={ActionTime=41}] data.animation set value {namespace:"luigis_mansion",id:"headless_run"}
scoreboard players set #temp Move 50
execute at @s[y_rotation=-90..90] unless block ~ ~ ~2 #luigis_mansion:bowser_ignores run function luigis_mansion:entities/bowser/attack/headless_run/z
execute at @s[y_rotation=90..-90] unless block ~ ~ ~-2 #luigis_mansion:bowser_ignores run function luigis_mansion:entities/bowser/attack/headless_run/z
execute at @s[y_rotation=-180..0] unless block ~2 ~ ~ #luigis_mansion:bowser_ignores run function luigis_mansion:entities/bowser/attack/headless_run/x
execute at @s[y_rotation=0..180] unless block ~-2 ~ ~ #luigis_mansion:bowser_ignores run function luigis_mansion:entities/bowser/attack/headless_run/x
execute at @s[scores={ActionTime=40..139}] run function luigis_mansion:entities/ghost/move_forward
execute if entity @s[scores={ActionTime=140}] facing entity @e[tag=same_room,tag=luigi,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
data modify entity @s[scores={ActionTime=141}] data.animation set value {namespace:"luigis_mansion",id:"correct_head"}
data remove entity @s[scores={ActionTime=180}] data.animation
tag @s[scores={ActionTime=180}] remove headless_run
scoreboard players set @s[scores={ActionTime=180}] ActionTime 0

execute unless entity @s[scores={ActionTime=40..139}] positioned ^ ^ ^-1 if entity @e[distance=..3,tag=luigi,limit=1] run function luigis_mansion:entities/bowser/collide
execute unless entity @s[scores={ActionTime=40..139}] at @e[tag=this_head,limit=1] positioned ^ ^1.4 ^ if entity @e[distance=..3,tag=luigi,limit=1] run function luigis_mansion:entities/bowser/collide
execute if entity @s[scores={ActionTime=40..139}] positioned ^ ^ ^-1 if entity @e[distance=..3,tag=luigi,limit=1] run function luigis_mansion:entities/bowser/stomp_on
execute if entity @s[scores={ActionTime=40..139}] at @e[tag=this_head,limit=1] positioned ^ ^1.4 ^ if entity @e[distance=..3,tag=luigi,limit=1] run function luigis_mansion:entities/bowser/stomp_on