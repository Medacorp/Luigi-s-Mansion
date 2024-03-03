execute facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
function luigis_mansion:dialog/mysterious_power/normal

tag @s add me
tag @e[tag=hidden,tag=ghost,tag=exact_same_room,tag=!me] add remove_from_existence
scoreboard players set @e[tag=ghost,tag=exact_same_room,tag=!vanish,tag=!me] ActionTime 0
tag @e[tag=ghost,tag=exact_same_room,tag=!me] add vanish
tag @e[tag=ghost,tag=exact_same_room,tag=!me] remove laugh
tag @e[tag=ghost,tag=exact_same_room,tag=!me] remove complain
tag @e[tag=ghost,tag=exact_same_room,tag=!me] remove attack
tag @e[tag=ghost,tag=exact_same_room,tag=!me] remove appear
tag @s remove me