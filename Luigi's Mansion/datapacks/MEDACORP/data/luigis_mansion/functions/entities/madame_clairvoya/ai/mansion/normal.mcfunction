tag @s[tag=!visible,tag=talk] remove talk
tag @s[scores={VulnerableTime=1..},tag=talk] remove talk
execute if entity @s[tag=!visible] run function luigis_mansion:entities/madame_clairvoya/ai/mansion/normal/shine
execute if entity @s[tag=visible] run function luigis_mansion:entities/madame_clairvoya/ai/mansion/normal/visible

execute at @s[nbt={data:{animation:{namespace:"luigis_mansion",id:"power"}}}] positioned ^0.4 ^1.4 ^0.5 run particle minecraft:dust{color:[1f,0f,1f],scale:1f} ~ ~ ~ 0 0 0 0 1
execute at @s[nbt={data:{animation:{namespace:"luigis_mansion",id:"power"}}}] positioned ^-0.4 ^1.4 ^0.5 run particle minecraft:dust{color:[1f,0f,1f],scale:1f} ~ ~ ~ 0 0 0 0 1