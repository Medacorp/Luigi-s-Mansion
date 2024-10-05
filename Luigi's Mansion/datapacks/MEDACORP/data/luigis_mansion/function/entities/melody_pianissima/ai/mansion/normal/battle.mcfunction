execute as @a[tag=same_room,tag=!spectator] run function luigis_mansion:other/music/set/piano

tag @s add visible
execute unless entity @e[tag=haunted_music_sheet,tag=same_room,scores={WaitTime=0..}] if entity @s[scores={VulnerableTime=0}] run playsound luigis_mansion:entity.melody_pianissima.complain hostile @a[tag=same_room] ~ ~ ~ 1
execute unless entity @e[tag=haunted_music_sheet,tag=same_room,scores={WaitTime=0..}] if entity @s[scores={VulnerableTime=0}] run scoreboard players set @e[tag=haunted_music_sheet,tag=same_room,scores={WaitTime=-59..}] WaitTime -59
execute unless entity @e[tag=haunted_music_sheet,tag=same_room,scores={WaitTime=0..}] run scoreboard players set @s[scores={VulnerableTime=0}] VulnerableTime 60
data modify entity @s[scores={VulnerableTime=1..}] data.animation set value {namespace:"luigis_mansion",id:"complain"}
data remove entity @s[scores={VulnerableTime=0}] data.animation