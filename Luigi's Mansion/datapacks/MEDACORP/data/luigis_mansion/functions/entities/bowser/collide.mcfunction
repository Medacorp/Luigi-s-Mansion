advancement grant @s only luigis_mansion:challenges/waluigi_pinball bowser
data modify storage luigis_mansion:data damage set value {method:"luigis_mansion:walked_into",amount:20,knockback:"large",attacker:-1}
execute store result storage luigis_mansion:data damage.attacker int 1 run scoreboard players get @e[tag=bowser,distance=..0.1,limit=1] GhostNr
function luigis_mansion:entities/player/damage