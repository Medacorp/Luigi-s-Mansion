scoreboard players add @s ActionTime 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"dodge"}
tag @s[scores={ActionTime=30}] remove dodge
scoreboard players set @s[scores={ActionTime=30}] ActionTime 0