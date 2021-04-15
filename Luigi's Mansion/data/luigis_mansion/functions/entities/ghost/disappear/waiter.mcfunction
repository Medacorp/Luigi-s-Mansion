execute if entity @s[tag=waiter] run tag @e[tag=this_entity,limit=1] add waiter
execute if entity @s[tag=waiter] store result entity @e[tag=this_entity,limit=1] Pos[0] double 0.01 run scoreboard players get @s HomeX
execute if entity @s[tag=waiter] store result entity @e[tag=this_entity,limit=1] Pos[1] double 0.01 run scoreboard players get @s HomeY
execute if entity @s[tag=waiter] store result entity @e[tag=this_entity,limit=1] Pos[2] double 0.01 run scoreboard players get @s HomeZ
execute if entity @s[tag=waiter] run data modify entity @e[tag=this_entity,limit=1] Tags append from entity @s Tags[]
execute if entity @s[tag=waiter] run tag @e[tag=this_entity,limit=1] remove stunnable
execute if entity @s[tag=waiter] run tag @e[tag=this_entity,limit=1] remove normal_ghost
execute if entity @s[tag=waiter] run tag @e[tag=this_entity,limit=1] remove disappear
execute if entity @s[tag=waiter] run tag @e[tag=this_entity,limit=1] remove vanish
execute if entity @s[tag=waiter] run tag @e[tag=this_entity,limit=1] add only_forced_spawn