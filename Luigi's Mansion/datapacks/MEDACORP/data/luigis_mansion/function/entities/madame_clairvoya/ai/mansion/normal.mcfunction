tag @s[tag=!visible,tag=talk] remove talk
tag @s[scores={VulnerableTime=1..},tag=talk] remove talk
execute if entity @s[tag=!visible] run function luigis_mansion:entities/madame_clairvoya/ai/mansion/normal/shine
execute if entity @s[tag=visible] run function luigis_mansion:entities/madame_clairvoya/ai/mansion/normal/visible