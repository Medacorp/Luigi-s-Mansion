execute if entity @s[tag=!reached_target] unless data entity @s data.path run function luigis_mansion:entities/ghost/set_specific_path {index:0}
scoreboard players set @s[tag=!reached_target,scores={TargetTask=0}] TargetTask 5
scoreboard players add @s[tag=reached_target] ActionTime 1
teleport @s[tag=reached_target] ~ ~ ~ facing 681 11.6 79
execute if entity @s[scores={ActionTime=30}] positioned 681 10.8125 79 unless entity @e[nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"billiards_ball"}}}}]},distance=..0.7,limit=1] positioned ~ ~1.1875 ~ rotated -165 0 run function luigis_mansion:spawn_entities/ball/billiards/white
execute if entity @s[scores={ActionTime=70}] run playsound luigis_mansion:entity.slim_bankshot.shoot hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=70}] run tag @e[nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"billiards_ball"}}}}]},tag=white,limit=1] add move
tag @s[scores={ActionTime=91}] remove reached_target
scoreboard players set @s[tag=!reached_target] ActionTime 0