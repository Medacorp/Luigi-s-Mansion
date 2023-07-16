playsound luigis_mansion:entity.heart.flash hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set #temp VulnerableTime 16
scoreboard players operation #temp VulnerableTime *= #temp PathStep
scoreboard players remove #temp VulnerableTime 16
scoreboard players set @s VulnerableTime 80
scoreboard players operation @s VulnerableTime -= #temp VulnerableTime
scoreboard players set @s[scores={VulnerableTime=..0}] VulnerableTime 1
scoreboard players operation @s StunTime = @s VulnerableTime
scoreboard players reset #temp VulnerableTime
data modify entity @s[tag=basher] ArmorItems[3].id set value "minecraft:leather_chestplate"
data modify entity @s[tag=basher] HandItems[0].id set value "minecraft:leather_chestplate"
data modify entity @s[tag=basher] HandItems[1].id set value "minecraft:leather_chestplate"
data modify entity @s[tag=basher] CustomNameVisible set value 1b