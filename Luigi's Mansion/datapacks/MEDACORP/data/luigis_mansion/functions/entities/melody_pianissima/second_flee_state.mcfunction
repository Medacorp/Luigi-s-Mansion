scoreboard players set @s TargetTask 0
scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.melody_pianissima.hurt hostile @a[tag=same_room] ~ ~ ~ 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"hurt"}
scoreboard players set @s[scores={ActionTime=24}] ActionTime 0