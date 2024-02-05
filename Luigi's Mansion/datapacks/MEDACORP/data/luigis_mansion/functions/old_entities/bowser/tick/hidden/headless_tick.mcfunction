execute at @e[nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"king_boo"}}}}]},limit=1] run tag @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] add bowser_target
scoreboard players set #temp Move 50
execute at @s facing entity @a[tag=bowser_target,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute at @s unless entity @a[tag=bowser_target,limit=1,distance=..8] rotated ~ 0 run function luigis_mansion:old_entities/bowser/move_forward
scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=15}] run playsound luigis_mansion:entity.bowser.spit hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={ActionTime=20}] run function luigis_mansion:old_entities/bowser/spit_ice
scoreboard players set @s[scores={ActionTime=40}] ActionTime 0
data modify entity @s Pose.Head[0] set from entity @s Rotation[1]
tag @a[tag=bowser_target] remove bowser_target
function luigis_mansion:old_animations/bowser/decapitated