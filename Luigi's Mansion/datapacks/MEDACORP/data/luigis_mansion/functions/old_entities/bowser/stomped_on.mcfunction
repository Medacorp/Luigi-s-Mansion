data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"stomp"},amount:20,animation:"knockback/large",attacker:-1}
execute store result storage luigis_mansion:data damage.attacker int 1 run scoreboard players get @e[tag=bowser,distance=..0.1,limit=1] GhostNr
function luigis_mansion:entities/player/damage