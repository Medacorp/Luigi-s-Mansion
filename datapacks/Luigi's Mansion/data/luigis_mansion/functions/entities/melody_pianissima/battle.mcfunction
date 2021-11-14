execute as @a[tag=same_room,tag=!spectator] unless entity @s[scores={MusicGroup=0,MusicType=25}] run function luigis_mansion:other/music/set/piano

execute if entity @s[tag=!visible] run function luigis_mansion:entities/melody_pianissima/turn_visible
execute unless entity @e[tag=haunted_music_sheet,scores={WaitTime=0..}] run scoreboard players set @s[tag=!complain] AnimationProg 0
execute unless entity @e[tag=haunted_music_sheet,scores={WaitTime=0..}] run tag @s add complain
execute unless entity @e[tag=haunted_music_sheet,scores={WaitTime=0..}] if entity @s[scores={VulnerableTime=0}] run playsound luigis_mansion:entity.melody_pianissima.complain hostile @a[tag=same_room] ~ ~ ~ 1
execute unless entity @e[tag=haunted_music_sheet,scores={WaitTime=0..}] run scoreboard players set @s VulnerableTime 60
execute if entity @e[tag=haunted_music_sheet,scores={WaitTime=0..}] run scoreboard players set @s[scores={VulnerableTime=0},tag=complain] AnimationProg 0
execute if entity @e[tag=haunted_music_sheet,scores={WaitTime=0..}] run tag @s[scores={VulnerableTime=0}] remove complain