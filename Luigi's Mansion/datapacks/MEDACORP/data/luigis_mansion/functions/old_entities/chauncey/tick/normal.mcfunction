execute at @s[scores={Room=10},tag=!vanish] positioned ~ ~1 ~ run function luigis_mansion:old_entities/chauncey/tick/nursery/normal
execute at @s[scores={Room=73},tag=!vanish] run function luigis_mansion:old_entities/chauncey/tick/fight/normal

tag @s[tag=vanish,scores={Room=73}] add disappear
tag @s[tag=vanish,scores={Room=73}] remove vanish

execute if entity @s[scores={Room=10},tag=attack] run function luigis_mansion:old_entities/chauncey/attack
execute if entity @s[scores={Room=73},tag=attack] run function luigis_mansion:old_entities/chauncey/fake_attack
execute if entity @s[tag=!attack,tag=laugh] run function luigis_mansion:old_entities/chauncey/laugh
execute if entity @s[tag=!attack,tag=complain] run function luigis_mansion:old_entities/chauncey/complain
execute at @s[tag=sleep] run function luigis_mansion:old_animations/chauncey/sleep
execute at @s[tag=wake_up] run function luigis_mansion:old_animations/chauncey/wake_up
execute at @s[tag=scream_wake] run function luigis_mansion:old_animations/chauncey/scream_wake
execute at @s[tag=yawn] run function luigis_mansion:old_animations/chauncey/yawn
execute at @s[tag=move] run function luigis_mansion:old_animations/chauncey/move
execute at @s[tag=grab_rambler] run function luigis_mansion:old_animations/chauncey/grab_rambler
execute at @s[tag=rambling] run function luigis_mansion:old_animations/chauncey/rambling
execute at @s[tag=knocked_back] run function luigis_mansion:old_animations/chauncey/knocked_back
execute at @s[tag=look_down] run function luigis_mansion:old_animations/chauncey/look_down
execute at @s[tag=scream] run function luigis_mansion:old_animations/chauncey/scream
execute at @s[tag=wink] run function luigis_mansion:old_animations/chauncey/wink
execute at @s[tag=dizzy] run function luigis_mansion:old_animations/chauncey/dizzy
execute at @s[tag=bounce] run function luigis_mansion:old_animations/chauncey/bounce
# run twice per tick
execute at @s[tag=fast_bounce] run function luigis_mansion:old_animations/chauncey/bounce
execute at @s[tag=fast_bounce] run function luigis_mansion:old_animations/chauncey/bounce
execute at @s[tag=!scream,tag=!move,tag=!laugh,tag=!look_down,tag=!wink,tag=!sleep,tag=!grab_rambler,tag=!rambling,tag=!knocked_back,tag=!dizzy,tag=!bounce,tag=!fast_bounce,tag=!wake_up,tag=!scream_wake,tag=!yawn,tag=!attack,tag=!complain] run function luigis_mansion:old_animations/chauncey/idle