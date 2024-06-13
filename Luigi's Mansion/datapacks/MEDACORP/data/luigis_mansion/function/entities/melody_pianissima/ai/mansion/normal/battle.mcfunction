execute as @a[tag=same_room,tag=!spectator] run function luigis_mansion:other/music/set/piano
data modify entity @s ArmorItems[3].components."minecraft:custom_data".scan_message set value {sender:"me",message:'{"type":"translatable","translate":"luigis_mansion:message.melody_pianissima.scan.2"}',plural_message:'{"type":"translatable","translate":"luigis_mansion:message.melody_pianissima.scan.2.more"}'}

tag @s add visible
execute unless entity @e[tag=haunted_music_sheet,scores={WaitTime=0..}] if entity @s[scores={VulnerableTime=0}] run playsound luigis_mansion:entity.melody_pianissima.complain hostile @a[tag=same_room] ~ ~ ~ 1
execute unless entity @e[tag=haunted_music_sheet,scores={WaitTime=0..}] if entity @s[scores={VulnerableTime=0}] run scoreboard players set @e[tag=haunted_music_sheet,scores={WaitTime=-59..}] WaitTime -59
execute unless entity @e[tag=haunted_music_sheet,scores={WaitTime=0..}] run scoreboard players set @s[scores={VulnerableTime=0}] VulnerableTime 60
data modify entity @s[scores={VulnerableTime=1..}] data.animation set value {namespace:"luigis_mansion",id:"complain"}
data remove entity @s[scores={VulnerableTime=0}] data.animation