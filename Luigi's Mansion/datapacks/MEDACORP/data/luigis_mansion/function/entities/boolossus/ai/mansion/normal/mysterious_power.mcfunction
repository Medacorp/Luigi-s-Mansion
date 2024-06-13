execute facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute unless data storage luigis_mansion:data current_state.current_data.technical_data{mysterious_power:1b} unless data storage luigis_mansion:data dialogs[{room:52}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"mysterious_power"},room:52,progress:0}
execute if data storage luigis_mansion:data current_state.current_data.technical_data{mysterious_power:1b} unless data storage luigis_mansion:data dialogs[{room:52}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"mysterious_power_repeat"},room:52,progress:0}

tag @s add me
tag @e[tag=hidden,tag=ghost,tag=same_room,tag=!me] add remove_from_existence
scoreboard players set @e[tag=ghost,tag=same_room,tag=!vanish,tag=!me] ActionTime 0
tag @e[tag=ghost,tag=same_room,tag=!me] add vanish
tag @e[tag=ghost,tag=same_room,tag=!me] remove laugh
tag @e[tag=ghost,tag=same_room,tag=!me] remove complain
tag @e[tag=ghost,tag=same_room,tag=!me] remove attack
tag @e[tag=ghost,tag=same_room,tag=!me] remove appear
tag @s remove me