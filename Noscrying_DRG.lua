texts = require('texts')
local res = require('resources')
include('organizer-lib')
function get_sets()
	send_command('bind f7 gs c toggle Weapons set') -- F10 = Cycle through
	send_command('bind f9 gs c toggle melee set') -- F9 = Cycle through
	send_command('bind f10 gs c toggle run set') -- F10 = Cycle through
	send_command('bind f12 gs c toggle TH set') -- F10 = Cycle through
	send_command('bind !numpad1 input //send @all gs c toggle Holy Water')
	send_command('bind !numpad0 gs c toggle Emergency MEVA')
	send_command('bind !pause input //send @others /Savage Blade')
	send_command('bind !pageup input //send Nolyte /Savage Blade')	
	send_command('bind !pagedown input //send Kiokura /Savage Blade')
	send_command('bind !end input //send Kiokura /LeadenSalute')
	send_command('bind !delete input //send Kiokura /LastStand')
	send_command('lua l pettp')

	Melee_Index = 1
	Run_Index = 1
	TH_Index = 1
	Weapons_Index = 1

	sets["WarpRing"] = {
	right_ring= "Warp Ring"
	}
	sets["DemRing"] = {
	left_ring= "Dim. Ring (Dem)"
	}

	Weapons_Set_Names = {'Naegling','Shining One'}
	sets.weapons = {}
	sets.weapons.Naegling = {
    main="Naegling",
	sub="Regis",
	}
	sets.weapons["Shining One"] = {
    main="Shining One",
	sub="Utu Grip",
	}

	Melee_Set_Names = {'normal','Hybrid'} --, 'DT'
	sets.melee = {} 					-- Leave this empty.
	sets.melee.normal = {
    ammo="Coiste Bodhar",
    head="Hjarrandi Helm",
    body="Hjarrandi Breast.",
    hands="Peltast's Vambraces +2",
    legs="Peltast's Cuissots +2",
    feet="Flam. Gambieras +2",
    neck="Null Loop",
    waist="Sailfi Belt +1",
    left_ear="Sroda Earring",
    right_ear="Sherida Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Chirich Ring +1",
    back="Null Shawl",
	}
	sets.melee.Hybrid = {
    ammo="Staunch Tathlum +1",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Pel. Vambraces +2",
    legs="Nyame Flanchard",
	feet="Peltast's Schynbalds +2",
    neck="Warder's Charm +1",
    waist="Ioskeha Belt +1",
    left_ear="Alabaster Earring",
    right_ear="Sherida Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Chirich Ring +1",
    back="Null Shawl",
	}	
	sets.melee.DT = {
    ammo="Vanir Battery",
    head="Null Masque",
    body="Adamantite Armor",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Null Loop",
    waist="Ioskeha Belt +1",
    left_ear="Alabaster Earring",
    right_ear="Sanare Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Chirich Ring +1",
    back="Null Shawl",
	}

	MEVA_Set_Name = {'MEVA'}
	sets.MEVA = {
    ammo="Shadow Sachet",
    head="Null Masque",
    body="Adamantite Armor",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Warder's Charm +1",
    waist="Plat. Mog. Belt",
    left_ear="Arete Del Luna +1",
    right_ear="Sanare Earring",
    left_ring="Shadow Ring",
    right_ring="Purity Ring",
    back="Null Shawl",
	}
	
	Run_Set_Names = {'DT/Regen','Refresh'}--'MEVA',
	sets.run = {}
	sets.run["DT/Regen"] =  {
    ammo="Staunch Tathlum +1",
    head="Null Masque",
    body="Sacro Breastplate",
    hands="Gleti's Gauntlets",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Gleti's Boots",
    neck="Loricate Torque +1",
    waist="Carrier's Sash",
    left_ear="Arete Del Luna +1",
    right_ear="Sanare Earring",
    left_ring="Murky Ring",
    right_ring="Defending Ring",
    back="Null Shawl",
	}
	sets.run.MEVA = {
    ammo="Shadow Sachet",			--, Status Resistance +10, -3DT,
    head="Null Masque",
    body="Adamantite Armor",
    hands="Nyame Gauntlets",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Nyame Sollerets",
    neck="Warder's Charm +1", 		--, +20 Element Resist, +5% Magic Absorb chance
    waist="Null Belt",
    left_ear="Arete Del Luna +1",
    right_ear="Sanare Earring",
    left_ring="Murky Ring",
    right_ring="Purity Ring",
    back="Null Shawl",
	}	
	sets.run.Refresh = {
    ammo="Staunch Tathlum +1",
    head="Null Masque",
    body="Chozor. Coselete",
    hands="Gleti's Gauntlets",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Gleti's Boots",
    neck="Sibyl Scarf",
    waist="Flume Belt",
    left_ear="Alabaster Earring",
    right_ear="Sanare Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back="Null Shawl",
	}	
	TH_Set_Names = {'TH'}
	sets.TH = {}
	sets.TH.TH = {
    head="White Rarab Cap +1",
	hands={ name="Valorous Mitts", augments={'"Mag.Atk.Bns."+1','Attack+11','"Treasure Hunter"+1','Accuracy+8 Attack+8','Mag. Acc.+3 "Mag.Atk.Bns."+3',}},
	ammo="Perfect Lucky Egg",
    waist="Chaac Belt",
	}
	
	MEVA_Set_Name = {'MEVA'}
	sets.MEVA = {
    ammo="Shadow Sachet",
    head="Null Masque",
    body="Adamantite Armor",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Warder's Charm +1", 		--, +20 Element Resist, +5% Magic Absorb chance
    waist="Null Belt",
    left_ear="Arete Del Luna +1",
    right_ear="Sanare Earring",
    left_ring="Murky Ring",
    right_ring="Purity Ring",
    back="Null Shawl",
	}	
	
	sets.ws = {} 					-- Leave this empty.
	sets.ws['Stardiver']	= {
    ammo="Coiste Bodhar",
    head="Ptero. Armet +3",
    body="Dagon Breast.",
    hands="Peltast's Vambraces +2",
    legs="Peltast's Cuissots +2",
    feet="Gleti's Boots",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Peltast's Earring +1",
    left_ring="Niqmaddu Ring",
    right_ring="Ephramad's Ring",
    back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
	sets.ws['Impulse Drive']	= {
    ammo="Knobkierrie",
    head="Peltast's Mezail +2",
    --body="Gleti's Cuirass",
    body="Ruwa Breastplate",
    hands="Pteroslaver Finger Gauntlets +3",
    legs="Vishap Brais +3",
    feet="Sulev. Leggings +2",
    neck="Dragoon's Collar +1",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Peltast's Earring +1",
    left_ring="Epaminondas's Ring",
    right_ring="Ephramad's Ring",
    back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}

	sets.ws['Drakesbane']	= {
    ammo="Knobkierrie",
    head="Peltast's Mezail +2",
    --body="Gleti's Cuirass",
    body="Ruwa Breastplate",
    hands="Pteroslaver Finger Gauntlets +3",
    legs="Peltast's Cuissots +2",
    feet="Sulev. Leggings +2",
    neck="Dragoon's Collar +1",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Peltast's Earring +1",
    left_ring="Niqmaddu Ring",
    right_ring="Ephramad's Ring",
    back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	
	sets.ws["Camlann's Torment"]	= {
    ammo="Knobkierrie",
    head="Peltast's Mezail +2",
    --body="Gleti's Cuirass",
    body="Ruwa Breastplate",
    hands="Pteroslaver Finger Gauntlets +3",
    legs="Vishap Brais +3",
    feet="Sulev. Leggings +2",
    neck="Dragoon's Collar +1",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear="Peltast's Earring +1",
    left_ring="Niqmaddu Ring",
    right_ring="Ephramad's Ring",
    back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	
	sets.ws['Wheeling Thrust']	= {
    ammo="Knobkierrie",
    head="Peltast's Mezail +2",
    --body="Gleti's Cuirass",
    body="Ruwa Breastplate",
    hands="Pteroslaver Finger Gauntlets +3",
    legs="Vishap Brais +3",
    feet="Sulev. Leggings +2",
    neck="Dragoon's Collar +1",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear="Peltast's Earring +1",
    left_ring="Niqmaddu Ring",
    right_ring="Ephramad's Ring",
    back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	
	sets.ws['Sonic Thrust']	= {
    ammo="Knobkierrie",
    head="Peltast's Mezail +2",
    --body="Gleti's Cuirass",
    body="Ruwa Breastplate",
    hands="Pteroslaver Finger Gauntlets +3",
    legs="Vishap Brais +3",
    feet="Sulev. Leggings +2",
    neck="Dragoon's Collar +1",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Peltast's Earring +1",
    left_ring="Niqmaddu Ring",
    right_ring="Ephramad's Ring",
    back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Leg Sweep']	= {
    ammo="Pemphredo Tathlum",
    head="Null Masque",
    body="Adamantite Armor",
    hands="Pel. Vambraces +2",
    legs="Peltast's Cuissots +2",
	feet="Peltast's Schynbalds +2",
    neck="Null Loop",
    waist="Null Belt",
    left_ear="Crep. Earring",
    right_ear={ name="Pel. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Crit.hit rate+3',}},
    left_ring="Weather. Ring +1",
    right_ring="Metamor. Ring +1",
    back="Null Shawl",
	}	
	sets.ws['Savage Blade']	= {
    ammo="Knobkierrie",
    head="Peltast's Mezail +2",
    --body="Gleti's Cuirass",
    body="Ruwa Breastplate",
    hands="Pteroslaver Finger Gauntlets +3",
    legs="Vishap Brais +3",
    feet="Sulev. Leggings +2",
    neck="Dragoon's Collar +1",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Peltast's Earring +1",
    left_ring="Ephramad's Ring",
    right_ring="Epaminondas's Ring",		--, +10 STP, +10% Haste, +10 Crit, +8 Acc
    back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}	
	sets.ja = {} 					-- Leave this empty
	sets.ja['Call Wyvern'] = {
	body="Wyrm Mail +1",
	}
	sets.ja['Angon'] = {
	ammo="Angon",
    hands="Pteroslaver Finger Gauntlets +3",
	}
	sets.ja['Ancient Circle'] = {
    legs="Vishap Brais +3",
	}
	sets.ja['Jump'] = {
    ammo="Coiste Bodhar",
    head="Flam. Zucchetto +2",
    body="Vishap Mail +2",
    hands="Vishap Finger Gauntlets +2",
    legs="Sulev. Cuisses +2",
    feet="Ostro Greaves",
    neck="Null Loop",
    waist="Kentarch Belt +1",
    left_ear="Sroda Earring",
    right_ear="Sherida Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Chirich Ring +1",
    back="Null Shawl",
	}
	sets.ja['High Jump'] = set_combine (sets.ja['Jump'], {
    legs="Vishap Brais +3",
	})
	sets.ja['Spirit Jump'] = set_combine (sets.ja['Jump'], {
    legs="Peltast's Cuissots +2",
	feet="Peltast's Schynbalds +2",
	})
	sets.ja['Soul Jump'] = set_combine (sets.ja['Jump'], {
    legs="Peltast's Cuissots +2",
	})
	sets.ja['Spirit Surge'] = set_combine (sets.ja['Jump'], {
    body="Wyrm Mail +2",
	})
	sets.ja['Spirit Link'] = {
    hands="Peltast's Vambraces +2",
	head="Vishap Armet",
	}
	sets.ja["Restoring Breath"] = {
    ammo="Sapience Orb",
	head="Vishap Armet +1",
    body="Adamantite Armor",
    hands="Regal Gloves",
    legs="Vishap Brais +3",
    feet="Nyame Sollerets",
    neck="Loricate Torque +1",
    waist="Plat. Mog. Belt",
    left_ear="Alabaster Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Moonlight Ring",
    right_ring="Gelatinous Ring +1",
    back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.ja["33% HP Restoring Breath"] = set_combine (sets.ja["Restoring Breath"], {
	head="Ptero. Armet +3",
	})

	sets.ja["Steady Wing"] = {
	head="Pteroslaver Armet +3",
    back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	legs="Vishap Brais +1",
	}
	
	sets.idle = {} 					-- Leave this empty
	
	sets.precast = {}               -- leave this empty
	sets.precast.fastcast = {
    ammo="Sapience Orb",
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body="Sacro Breastplate",
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    legs="Enif Cosciales",
    feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    neck="Voltsurge Torque",
    waist="Flume Belt",
    left_ear="Enchntr. Earring +1",
    right_ear="Loquac. Earring",
    left_ring="Lebeche Ring",
    right_ring="Weather. Ring +1",
    back={ name="Brigantia's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Fast Cast"+10','Phys. dmg. taken-10%',}},
	} 	
    sets.midcast = {}               -- leave this empty  
	sets.midcast["Healing Breath"] = set_combine (sets.ja["Restoring Breath"], {
	})
	sets.midcast.phalanx = {
	ammo="Staunch Tathlum +1", 
    head={ name="Taeon Chapeau", augments={'Spell interruption rate down -8%','Phalanx +3',}},
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    hands={ name="Taeon Gloves", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    legs={ name="Taeon Tights", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    feet={ name="Taeon Boots", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    neck="Hoxne Torque",
	waist="Olympus Sash",
    left_ear="Andoaa Earring",
    right_ear="Mimir Earring",
    left_ring={name = "Stikini Ring +1", bag = "Wardrobe 2"},
    right_ring={name = "Stikini Ring +1", bag = "Wardrobe 1"},
    back={ name="Brigantia's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Fast Cast"+10','Phys. dmg. taken-10%',}},
	}	
	sets.midcast.RecastDT = {
    ammo="Sapience Orb",
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body="Adamantite Armor",
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    legs="Pelt. Cuissots +2",
    feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    neck="Voltsurge Torque",
    waist="Null Belt",
    left_ear="Alabaster Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Murky Ring",
    right_ring="Weather. Ring +1",
    back={ name="Brigantia's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Fast Cast"+10','Phys. dmg. taken-10%',}},
	}
	
	sets.buff = {}
	sets.buff.reive = {
	neck="Ygnas\'s Resolve +1",
	}

 
hasso_info = texts.new('${text}', {
    pos = {
        x = 681,
        y = 762,
    },
	bg = {
		alpha   = 150,   -- 0-255 (0 = transparent, 255 = opaque)
	},	
    text = {
        font = 'Consolas',
        size = 10,
        red = 255,
        green = 255,
        blue = 255,
    },
    flags = {
        right = false,
        bottom = false,
        bold = true,
		draggable = false,
    }
})
hasso_info:show()
update_hasso_panel()

remedy_box = texts.new('', {
    pos = {x = 555, y = 930},
    text = {
        font = 'Consolas',
        size = 8,
        stroke = {width = 2},
    },
	bg = {
		alpha = 0,
	},	
    flags = {
        right = false,
        bottom = false,
        bold = true,
		draggable = false,
    }
})
panacea_box = texts.new('', {
    pos = {x = 555, y = 880},
    text = {
        font = 'Consolas',
        size = 8,
        stroke = {width = 2},
    },
	bg = {
		alpha = 0,
	},	
    flags = {
        right = false,
        bottom = false,
        bold = true,
		draggable = false,
    }
})
holywater_box = texts.new('', {
    pos = {x = 561, y = 830},
    text = {
        font = 'Consolas',
        size = 8,
        stroke = {width = 2},
    },
	bg = {
		alpha = 0,
	},	
    flags = {
        right = false,
        bottom = false,
        bold = true,
		draggable = false,
    }
})
vile_box = texts.new('', {
    pos = {x = 550, y = 965},
    text = {
        font = 'Consolas',
        size = 8,
        stroke = {width = 2},
    },
	bg = {
		alpha = 0,
	},	
    flags = {
        right = false,
        bottom = false,
        bold = true,
		draggable = false,
    }
})
vile1_box = texts.new('', {
    pos = {x = 532, y = 980},
    text = {
        font = 'Consolas',
        size = 8,
        stroke = {width = 2},
    },
	bg = {
		alpha = 0,
	},	
    flags = {
        right = false,
        bottom = false,
        bold = true,
		draggable = false,
    }
})
InstantWarp_box = texts.new('', {
    pos = {x = 680, y = 1068},
    text = {
        font = 'Consolas',
        size = 8,
        stroke = {width = 2},
    },
	bg = {
		alpha = 0,
	},	
    flags = {
        right = false,
        bottom = false,
        bold = true,
		draggable = false,
    }
})
Item_box = texts.new('${text}', {
    pos = {
        x = 1215,
        y = 930,
    },
    bg = {
        alpha = 190,
    },
    text = {
        font = 'Consolas',
        size = 10,
        red = 255,
        green = 255,
        blue = 255,
    },
    flags = {
        right = false,
        bottom = false,
        bold = true,
        draggable = false,
    }
})

Item_box:show()
remedy_box:show()
panacea_box:show()
holywater_box:show()
vile_box:show()
vile1_box:show()
InstantWarp_box:show()


update_item_boxes()
count_item()
end

function precast(spell)
    if  spell.action_type == 'Magic' then
        equip(sets.precast.fastcast)
	end
    if sets.ja[spell.name] then
        equip(sets.ja[spell.name])
	end
    if sets.ws[spell.name] then
        equip(sets.ws[spell.name])        
    end         
end

function midcast(spell)
    if  spell.action_type == 'Magic' then
        equip(sets.midcast.RecastDT)
	end
	if spell.name:match('Phalanx') then
		equip(sets.midcast.phalanx)
	end
	if T{"Stone","Dia","Foot Kick"}:contains(spell.name) then
        equip(sets.midcast["Healing Breath"])
	end
    if spell.name == "Restoring Breath" then
        if player.hpp <= 33 then
            equip(sets.ja["33% HP Restoring Breath"])
        elseif player.hpp <= 50 then
            equip(sets.ja["Restoring Breath"])
        end
    end
end

function aftercast(spell)
    if spell.name == "Restoring Breath" then
        send_command('wait 3; gs c idle')
    else
        idle()
    end
	update_item_boxes()
end

function buff_change(buff,gain)
    if buff == 'Reive Mark' then
        if gain then
            equip(sets.buff.reive)
            disable("neck")
        else
            enable("neck")
            equip(sets.Idle)
        end
    end
    if buff == 'Hasso' then
        update_hasso_panel()
    end
end


function idle()
	if player.status=='Engaged' then --, "~=" means "Is Not", So if sub is not NIN or DNC, then uses this set
		equip(sets.melee[Melee_Set_Names[Melee_Index]])
	end
	if player.status =='Idle' then
        equip(sets.run[Run_Set_Names[Run_Index]]) 
    end
     update_hasso_panel()
end
 
function status_change(new,old)
	idle()
    update_hasso_panel()
	update_item_boxes()
end
  

function self_command(command)
	if command == 'toggle melee set' then
        Melee_Index = Melee_Index +1
        if Melee_Index > #Melee_Set_Names then Melee_Index = 1 end
        windower.add_to_chat('TP mode is now: '..Melee_Set_Names[Melee_Index])
        equip(sets.melee[Melee_Set_Names[Melee_Index]])
    end
	if command == 'toggle run set' then
        Run_Index = Run_Index +1
        if Run_Index > #Run_Set_Names then Run_Index = 1 end
        windower.add_to_chat('Run mode is now: '..Run_Set_Names[Run_Index])
		equip(sets.run[Run_Set_Names[Run_Index]])
	end
	if command == 'toggle TH set' then
        TH_Index = TH_Index +1
    if TH_Index > #TH_Set_Names then TH_Index = 1 end
        windower.add_to_chat('TH mode is now: '..TH_Set_Names[TH_Index])
        equip(sets.TH[TH_Set_Names[TH_Index]])
    end
	if command == 'toggle Emergency MEVA' then
        windower.add_to_chat('Equipping Emergency MEVA/DT')
		equip(sets.MEVA)
	end
	if command == 'toggle Weapons set' then
        Weapons_Index = Weapons_Index +1
        if Weapons_Index > #Weapons_Set_Names then Weapons_Index = 1 end
        windower.add_to_chat('Weapon is now: '..Weapons_Set_Names[Weapons_Index])
		equip(sets.weapons[Weapons_Set_Names[Weapons_Index]])
	end
	if command == 'toggle Emergency MEVA' then
        windower.add_to_chat('Equipping Emergency MEVA/DT')
		equip(sets.MEVA)
	end
    if command == 'idle' then
        idle()
    end
end

function color_pet_tp(tp)
    if not tp then
        return '\\cs(255,0,0)0\\cr'
    elseif tp >= 3000 then
        return '\\cs(255,0,0)'..tp..'\\cr'
    elseif tp >= 1000 then
        return '\\cs(0,255,0)'..tp..'\\cr'
    else
        return '\\cs(255,255,255)'..tp..'\\cr'
    end
end
function sub_job_change(new, old)
    update_hasso_panel(new)
end

local last_pet_tp = -1
local last_hasso = nil
local last_subjob = nil

function update_hasso_panel(subjob)

    subjob = subjob or player.sub_job

    local hasso_text

    if subjob == 'SAM' then
        local hasso = buffactive['Hasso']

        hasso_text = string.format(
            'Hasso: %s',
            hasso and '\\cs(0,255,0)ON\\cr' or '\\cs(255,0,0)OFF\\cr'
        )
    else
        hasso_text = 'Hasso: \\cs(160,160,160)N/A\\cr'
    end

    local wyvern_tp = 0

    if pet.isvalid then
        wyvern_tp = pet.tp or 0
    end

    hasso_info:show()

    hasso_info:text(string.format(
        '%s\nWyvern TP: %d',
        hasso_text,
        wyvern_tp
    ))
end
function count_item(name)
    local item = res.items:with('en', name)
    if not item then return 0 end

    local inv = windower.ffxi.get_items('inventory')
    local count = 0

    for i = 1, inv.max do
        local slot = inv[i]
        if slot and slot.id == item.id then
            count = count + slot.count
        end
    end

    return count
end
function update_item_boxes()

    remedy_box:text(('Rem: %d'):format(count_item('Remedy')))
    panacea_box:text(('Pan: %d'):format(count_item('Panacea')))
    holywater_box:text(('HW: %d'):format(count_item('Holy Water')))
    vile_box:text(('VElix: %d'):format(count_item('Vile Elixir')))
    vile1_box:text(('VElix +1: %d'):format(count_item('Vile Elixir +1')))
    InstantWarp_box:text(('Warp: %d'):format(count_item('Instant Warp')))
	Item_box:text(
		('Reraise : %d\n' ..
		'Hi-RR   : %d\n' ..
		'Insta RR: %d\n' ..
		'Utsusemi: %d\n' ..
		'Silent Oil: %d\n' ..
		'Prism Powder: %d\n' ..
		'Grape Daifuku: %d'):format(
			count_item('Reraiser'),
			count_item('Hi-Reraiser'),
			count_item('Instant Reraise'),
			count_item('Shihei'),
			count_item('Silent Oil'),
			count_item('Prism Powder'),
			count_item('Grape Daifuku')
		))
end

function user_unload()
send_command('unbind f9')
send_command('unbind !f9')
send_command('unbind f10')
send_command('unbind !f10')
send_command('unbind f12')
send_command('unbind !f12')
send_command('unbind f7')
send_command('unbind !f7')
send_command('unbind !numpad0')
send_command('lua u pettp')

remedy_box:destroy()
panacea_box:destroy()
holywater_box:destroy()
vile_box:destroy()
vile1_box:destroy()
InstantWarp_box:destroy()
Item_box:destroy()
end