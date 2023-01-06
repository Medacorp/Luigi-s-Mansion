Furniture spawning takes certain variables, they are classified and listed below. The variables are saved in the storage "luigis_mansion:data furniture" object.

```
furniture: {
    // Display and sound
    pose:[0.0f,0.01f,0.0f], //The pose the furniture armor stand's head gets; default = 0.0f,0.01f,0.0f; the jaw is ignored and the pitch is copied over to the armor stand, ignoring execution rotation pitch.
    no_long_shake:1b, //When set disables the long shaking animation from manual search; default = 0b.
    no_short_shake:1b, //When set disables the short shaking animation from manual search; default = 0b.
    no_visual_shake:1b, //When set disables the shaking animations visually; sound will still play; default = 0b.
    use_medium_shake:1b, //When set forces a shake animation used by room clear chests, rather than the other 2; default = 0b.
    sound:6, //What furniture shake sound; defaults to 0.
    
    //search details
    searchable: ["<method>"], //Sets what method can result in searching; if "interact" is absent here, but provided in shake_animation, interact will still try to shake it, and open it, but it won't get searched; methods: time(will search automatically), interact, vacuum, dust, fire, water, ice; default = none.
    shake_animation: [<method>], //Sets what method can result in the furniture shaking; methods: interact, vacuum, dust, fire, water, ice; default = none.
    searched:1b, //When set the furniture should spawn triggering its searched animation; if set for room clear chests, also stops the spawn sound from playing; default = 0b.
    no_search_animation:1b, //When set the furniture has no search animation at all (eg on a chest doesn't open it); if set alongside searched, the furniture spawns in in the searched state, skipping the animation; default = 0b.
    must_face:1b, //When set requires the player to face the opposite direction compared to this furniture (with 90 degree total range) in other to manually search it; default = 0b.
    cannot_search_when_open:1b, //When set prevents the furniture from searching again if it has been opened; if set alongside searched, makes loot drop immedietly on spawn; default = 0b.
    
    //search result
    no_dust:1b, //When set stop dust from popping out if the furniture is empty; default = 0b.
    loot:{ //Loot to spawn; do note that no dust will spawn if loot is attempted to be spawned, but the spawning is aborted (so make sure to check if it can spawn before applying the data); default = none.
        works_in_lab:1b, //When set will still spawn while in the lab; default = 0b.
        no_roll:1b, //When set will not spawn from non-manual/time search of rolling furniture; default = 0b.
        //See loot documentation for other variables.
    },
    dialog:"<name>", //Dialog to trigger on manual search (requires searchable to have hand option); default = none.
    can_hide_boo:1b, //If this furniture is randomly selected by boos to hide in; default = 0b.
    scan_message:'{"translate":"..."}', //Message as a result from GBH scan; set to "warp" warps the scanner if they're not gooigi, not in a dialog, and the can_warp mansion variable is turned on (if conditions are not met, will send the message "Huh...?" instead); Gooigi scan always results in the "......." string when set; not provided = ignored by GBH.
    
    //non-default setup
    <type>_elemental_source:{ //Elemental source data; can only be applied to furniture supporting that elemental type; default = none/all 0b.
        always_spawn:1b, //When set the elemental ghost spawns regardless of distance; default = 0b.
        must_vacuum:1b, //When set the elemental ghost only pops up when vacuuming nearby; ignored if always_spawn is set; default = 0b.
        must_be_searched:1b, //When set the elemental ghost only pops up when the furniture has triggered it's open animation (ignored if it has none, or it is disabled); default = 0b.
        timer:1b //When set it turns the spawning back on after 30 seconds of being disabled; default = 0b.
    }, 
    candle_flames:[ //Variables for the flames this candlabra has, one entry per flame.
        {
            lit:1b, //Whether this flame is lit; default = 0b.
            purple:1b, //Whether this flame is purple; default = 0b.
            cannot_extinguish:1b, //Whether this flame can be turned off by vacuum, dust and ice (water will still turn it off); default = 0b.
            fire_elemental_source:{
                //See <type>_elemental_source, above.
            }
        }
    ]
}
```

Furniture shake sounds:
```
value | sound type
0     | heavy_generic
1     | generic
2     | heavy_metal
3     | metal
4     | stone
5     | wood
6     | ceramic
7     | plant
8     | fridge
9     | oven
10    | plate
11    | concrete
12    | cello
13    | drum
14    | harp
15    | saxophone
16    | xylophone
17    | chest
```