include('organizer-lib')
function get_sets()
	send_command('bind f9 gs c toggle melee set') -- F9 = Cycle through
	send_command('bind !f7 gs c toggle Gun set') -- F9 = Cycle through
	send_command('bind f10 gs c toggle CP set') -- F12 = Cycle through
	send_command('bind f7 gs c toggle Weapons set') -- F12 = Cycle through
	send_command('bind f12 gs c toggle TH set') -- F10 = Cycle through
	send_command('bind !pause input //send @others /Savage Blade')
	send_command('bind !pageup input //send Nolyte /Savage Blade')	
	send_command('bind !pagedown input //send Kiokura /Savage Blade')
	send_command('bind !end input //send Kiokura /LeadenSalute')
	send_command('bind !delete input //send Kiokura /LastStand')
	
	Melee_Index = 1
	Gun_Index = 1
	CP_Index = 1
	Weapons_Index = 1
	TH_Index = 1

	sets["WarpRing"] = {
	right_ring= "Warp Ring"
	}
	sets["DemRing"] = {
	left_ring= "Dim. Ring (Dem)"
	}
	
	sets.ranged = {}
	sets.ranged.normal = {
    ammo="Decimating Bullet",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Malignance Gloves",
    legs="Chasseur's Culottes +2",
    feet="Malignance Boots",
    neck="Iskur Gorget",
    waist="Null Belt",
    left_ear="Crep. Earring",
    right_ear="Telos Earring",
    left_ring="Ilabrat Ring",
    right_ring="Crepuscular Ring",
    back="Null Shawl",
	}
	sets.ranged.Triple = set_combine(sets.ranged.normal, {
	legs="Oshosi Trousers",
	body="Chasseur's Frac +2",
	hands="Lanun Gants +3",
	fet="Oshosi Leggings",
	})
	sets.ranged.precast = {
    ammo="Decimating Bullet",
    head="Ikenga's Hat",
    body="Laksamana's Frac +3",
    hands="Lanun Gants +3",
    legs="Chasseur's Culottes +2",
    feet="Meg. Jam. +2",
    neck="Commodore Charm",
    waist="Kwahu Kachina Belt",
    left_ear="Crep. Earring",
    right_ear="Beyla Earring",
    left_ring="Cacoethic Ring",
    right_ring="Crepuscular Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}},
	}

	Melee_Set_Names = {'Hybrid','normal','ATK'}--, 'Crit','DT'
	sets.melee = {}                 -- Leave this empty
	sets.melee.normal = {
	ammo="Eminent Bullet",
    head="Adhemar Bonnet +1",
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
	legs="Meghanada Chausses +2",
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck="Null Loop",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Telos Earring",
    right_ear="Suppanomimi",
    --left_ear="Brutal Earring",
    --right_ear="Cessance Earring",
    left_ring="Chirich Ring +1",		--, +10 STP, +10% Haste, +10 Crit, +8 Acc
    right_ring="Epona\'s Ring",
    back="Null Shawl",
	}
	sets.melee.DT = {
    ammo="Eminent Bullet",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Malignance Gloves",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck="Null Loop",
    waist="Shetal Stone",
    left_ear="Eabani Earring",
    right_ear="Suppanomimi",
    left_ring="Chirich Ring +1",		--, +10 STP, +10% Haste, +10 Crit, +8 Acc
    right_ring="Murky Ring",
    back="Null Shawl",
	}
	sets.melee.Hybrid = {
    ammo="Eminent Bullet",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Malignance Gloves",
    legs="Chasseur's Culottes +2",
    feet="Malignance Boots",
    neck="Null Loop",
    waist="Shetal Stone",
    left_ear="Brutal Earring",
    right_ear="Suppanomimi",
    left_ring="Chirich Ring +1",
    right_ring="Murky Ring",
    back="Null Shawl",
	}
	sets.melee.Crit = {	
    ammo="Eminent Bullet",
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Sayadio's Kaftan",
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck="Null Loop",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Odr Earring",
    right_ear="Suppanomimi",
    left_ring="Chirich Ring +1",
    right_ring="Epona's Ring",
    back="Null Shawl",
	}
	sets.melee.ATK = {
    main="Naegling",
    sub="Gleti's Knife",
    range={ name="Anarchy +2", augments={'Delay:+60','TP Bonus +1000',}},
    ammo="Eminent Bullet",
    head="Meghanada Visor +2",
    body="Meg. Cuirie +2",
    hands="Meg. Gloves +2",
    legs="Meg. Chausses +2",
    feet="Meg. Jam. +2",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Telos Earring",
    right_ear="Suppanomimi",
    left_ring="Ilabrat Ring",
    right_ring="Epona's Ring",
    back={ name="Camulus's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	}

	TH_Set_Names = {'TH'}
	sets.TH = {}
	sets.TH.TH = {
    head="White Rarab Cap +1",
    waist="Chaac Belt",
    feet={ name="Herculean Boots", augments={'"Dual Wield"+1','Attack+5','"Treasure Hunter"+1',}},
	}
	
	Weapons_Set_Names = {'Ranged', 'Naegling','Tauret'} --'Evis',,'Melee'
	sets.Weapons = {}
	sets.Weapons.Ranged = {
	main="Lanun Knife",
	sub="Nusku Shield",
	}
	sets.Weapons.Tauret = {
	main="Tauret",	
	sub="Blurred Knife +1",
	}	
	sets.Weapons.Naegling = {
	main="Naegling",	
	sub="Blurred Knife +1",
	}	
	sets.Weapons.Melee = {
	main="Naegling",	
	sub="Gleti's Knife",
	}		

	
	CP_Set_Names = {'Run',"Regen"}
	sets.CP = {}
	sets.CP.Run = {
	ammo="Eminent Bullet",
    head="Null Masque",
    body="Adamantite Armor",
    hands="Nyame Gauntlets",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Nyame Sollerets",
    neck="Warder's Charm +1",
    waist="Carrier's Sash",
    left_ear="Crep. Earring",
    right_ear="Suppanomimi",
    left_ring="Purity Ring",
    right_ring="Murky Ring",
    back="Null Shawl",
	}
	sets.CP.Regen = {
    head="Null Masque",
    body="Adamantite Armor",
    hands="Nyame Gauntlets",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Nyame Sollerets",
    neck={ name="Bathy Choker +1", augments={'Path: A',}},
    waist="Flume Belt",
    left_ear="Infused Earring",
    right_ear="Suppanomimi",
    left_ring="Chirich Ring +1",
    right_ring="Murky Ring",
    back="Null Shawl",
	}	
	Gun_Set_Names = {'Anarchy +2', "Doomsday Leaden", "Doomsday Last Stand"}
	sets.Gun = {}
	sets.Gun["Anarchy +2"] = {
    range={ name="Anarchy +2", augments={'Delay:+60','TP Bonus +1000',}},
	}
	
	sets.Gun["Doomsday Leaden"] = {
	range={ name="Doomsday", augments={'"Mag.Atk.Bns."+20','Weapon skill damage +7%','STR+15 AGI+15',}},
	}
	sets.Gun["Doomsday Last Stand"] = {
    range={ name="Doomsday", augments={'Rng.Acc.+18 Rng.Atk.+18','"Store TP"+6','DMG:+20',}},
	}	
	sets.ws = {}                    -- Leave this empty
	sets.ws['Savage Blade'] = {
	ammo="Animikii Bullet",
    -- head="Meghanada Visor +2",
    -- body="Meg. Cuirie +2",
    -- hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','STR+13',}},
    -- legs="Meg. Chausses +2",
    -- feet="Meg. Jam. +2",
    -- neck="Rep. Plat. Medal",
    -- waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    -- left_ear="Ishvara Earring",
    -- right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    -- left_ring="Epaminondas's Ring",
    -- right_ring="Sroda Ring",
    -- back={ name="Camulus's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},

    head={ name="Herculean Helm", augments={'Accuracy+3','AGI+2','Weapon skill damage +7%','Accuracy+18 Attack+18','Mag. Acc.+15 "Mag.Atk.Bns."+15',}},
    body="Laksamana's Frac +3",
    hands="Meg. Gloves +2",
    legs="Nyame Flanchard",
    feet="Lanun Bottes +3",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epaminondas's Ring",
    right_ring="Ephramad's Ring",
    back={ name="Camulus's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	}

	sets.ws['Evisceration'] = {
    ammo="Animikii Bullet",
    head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    body="Meg. Cuirie +2",
    hands="Mummu Wrists +2",
    legs="Mummu Kecks +2",
    feet="Mummu Gamash. +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Odr Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Ephramad's Ring",
    right_ring="Ilabrat Ring",
    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
	sets.ws['Aeolian Edge'] = {
    ammo="Animikii Bullet",
    head={ name="Herculean Helm", augments={'Accuracy+3','AGI+2','Weapon skill damage +7%','Accuracy+18 Attack+18','Mag. Acc.+15 "Mag.Atk.Bns."+15',}},
    body={ name="Nyame Mail", augments={'Path: B',}},
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
    neck="Null Loop",
    waist="Orpheus's Sash",
    left_ear="Friomisi Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Dingir Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},

	}

	sets.ws['Requiescat'] = {
	ammo="Animikii Bullet",
    head={ name="Herculean Helm", augments={'Accuracy+3','AGI+2','Weapon skill damage +7%','Accuracy+18 Attack+18','Mag. Acc.+15 "Mag.Atk.Bns."+15',}},
    body="Nyame Mail",
    hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','STR+13',}},
    legs="Nyame Flanchard",
    feet="Lanun Bottes +3",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epaminondas's Ring",
    right_ring="Ephramad's Ring",
    back={ name="Camulus's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	}

	sets.ws['Last Stand'] = {
    ammo="Eminent Bullet",
    head="Ikenga's Hat",
    body="Laksamana's Frac +3",
	hands="Chasseur's Gants +2",
    legs="Chasseur's Culottes +2",
    feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
    neck="Iskur Gorget",
    waist="Null Belt",
    left_ear="Beyla Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Ephramad's Ring",
    right_ring="Dingir Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}},
	}

	sets.ws['Wildfire'] = {
	ammo="Orichalcum Bullet",
    head={ name="Herculean Helm", augments={'Accuracy+3','AGI+2','Weapon skill damage +7%','Accuracy+18 Attack+18','Mag. Acc.+15 "Mag.Atk.Bns."+15',}},
    body="Laksamana's Frac +3",
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet="Lanun Bottes +3",
    neck="Null Loop",
    waist="Orpheus's Sash",
	left_ear="Friomisi Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Arvina Ringlet +1",
    right_ring="Dingir Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},

	}	
	sets.ws['Hot Shot'] = {
    ammo="Eminent Bullet",
    head="Nyame Helm",
    body="Laksamana's Frac +3",
	hands="Chasseur's Gants +2",
    legs="Nyame Flanchard",
    feet="Lanun Bottes +3",
    neck="Null Loop",
    waist="Null Belt",
    left_ear="Beyla Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Ephramad's Ring",
    right_ring="Dingir Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}},
	}

	sets.ws['Leaden Salute'] = {
    ammo="Orichalc. Bullet",
    head="Pixie Hairpin +1",
    body="Laksamana's Frac +3",
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
    neck="Null Loop",
    waist="Orpheus's Sash",
    left_ear="Friomisi Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Archon Ring",
    right_ring="Dingir Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}

	sets.ws['Detonator'] = {
    ammo="Eminent Bullet",
    head="Ikenga's Hat",
    body="Laksamana's Frac +3",
	hands="Chasseur's Gants +2",
    legs="Chasseur's Culottes +2",
    feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
    neck="Iskur Gorget",
    waist="Null Belt",
    left_ear="Beyla Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Ephramad's Ring",
    right_ring="Dingir Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}},
	}

	sets.ja = {}                    -- Leave this empty
    sets.ja["Phantom Roll"] = {
    head={ name="Lanun Tricorne", augments={'Enhances "Winning Streak" effect',}},
	hands="Chasseur's Gants +2",
	body="Chasseur's Frac +2",
    legs="Chasseur's Culottes +2",
	feet="Chasseur's Bottes +1",
    neck="Regal Necklace",
    left_ring ="Luzaf's Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
    }
	sets.ja["Double-Up"] = { 
	left_ring ="Luzaf's Ring",
	neck="Regal Necklace",
	}
	sets.ja['Random Deal'] = {
    body={ name="Lanun Frac +1", augments={'Enhances "Loaded Deck" effect',}},
	}
	sets.ja['Wild Card'] = {
    feet="Lanun Bottes +3",	
	}
	sets.ja['Fold'] = {
	hands="Lanun Gants +3",
	}
	
	sets.ja['Earth Shot'] = {
	ammo="Animikii Bullet", -- MAB
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
	feet="Chasseur's Bottes +2",
    neck="Null Loop",
    waist="Orpheus's Sash",
    left_ear="Crematio Earring",
    right_ear="Friomisi Earring",
    left_ring="Arvina Ringlet +1",
    right_ring="Dingir Ring",
    back={ name="Gunslinger's Cape", augments={'Enmity-5','"Mag.Atk.Bns."+5','"Phantom Roll" ability delay -2',}},
	
    -- ammo="Decimating Bullet", -- STP
    -- head="Malignance Chapeau",
    -- body="Malignance Tabard",
    -- hands="Malignance Gloves",
    -- legs="Chasseur's Culottes +2",
    -- feet="Malignance Boots",
    -- neck="Iskur Gorget",
    -- waist="Null Belt",
    -- left_ear="Crep. Earring",
    -- right_ear="Telos Earring",
    -- left_ring="Ilabrat Ring",
    -- right_ring="Crepuscular Ring",
    -- back="Null Shawl",
	}
	sets.ja['Wind Shot'] = set_combine(sets.ja['Earth Shot'],{
	})
	sets.ja['Fire Shot'] = set_combine(sets.ja['Earth Shot'],{
	})
	sets.ja['Water Shot'] = set_combine(sets.ja['Earth Shot'],{
	})
	sets.ja['Thunder Shot'] = set_combine(sets.ja['Earth Shot'],{
	})
	sets.ja['Ice Shot'] = set_combine(sets.ja['Earth Shot'],{
	})
	sets.ja['Light Shot'] = {
    ammo="Animikii Bullet",
    head="Malignance Chapeau",
    body="Chasseur's Frac +2",
	hands="Chasseur's Gants +2",
    legs="Chasseur's Culottes +2",
	feet="Chasseur's Bottes +2",
    neck="Null Loop",
    waist="Null Belt",
    left_ear="Crepuscular Earring",
    right_ear="Chasseur's Earring",
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Crepuscular Ring",
    back="Null Shawl",
	}
	sets.ja['Dark Shot'] = set_combine(sets.ja['Light Shot'],{
	})
	sets.buff = {} 					-- Leave this empty.
	sets.buff.reive = {
	neck="Ygnas\'s Resolve +1",
	}
	sets.buff.Hachirin = {
	waist="Hachirin-no-Obi",
	}
	sets.buff.adoulin = {
	body="Councilor\'s Garb",
	}
	sets.buff.domain = {
	head="Heidrek Mask",
	body="Heidrek Harness",
	}

    sets.idle = {}                  -- Leave this empty
	sets.idle.normal = {
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Nyame Sollerets",
    neck="Regal Necklace",
    waist="Orpheus's Sash",
    left_ear="Crepuscular Earring",
    right_ear="Suppanomimi",
    left_ring="Crepuscular Ring",
    right_ring="Murky Ring",
    back="Null Shawl",
	} 

    sets.precast = {}               -- leave this empty  
	sets.precast.fastcast = {
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}}, --8
    legs={ name="Taeon Tights", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ring="Lebeche Ring",
	right_ring="Weatherspoon Ring +1",
	neck="Voltsurge Torque",
    right_ear="Loquacious Earring",
	}
	sets.precast.DT = {
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Null Loop",
    waist="Shetal Stone",
    left_ear="Eabani Earring",
    right_ear="Suppanomimi",
    left_ring="Epona\'s Ring",
    right_ring="Murky Ring",
    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
    sets.midcast = {}               -- leave this empty 
	sets.midcast.Utsusemi = {
        head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    hands={ name="Taeon Gloves", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    legs={ name="Taeon Tights", augments={'Spell interruption rate down -10%','Phalanx +3',}},
        feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ring="Lebeche Ring",
	right_ring="Kishar Ring",
	neck="Voltsurge Torque",
    right_ear="Loquacious Earring",
	}	
    sets.aftercast = {}             -- leave this empty
 
 	Buff_Set_Names = {'Holywater'}
	sets.buff = {} 					-- Leave this empty.
	sets.buff.reive = {
	neck="Ygnas\'s Resolve +1",
	}
	sets.buff.Holywater = {
    neck="Nicander's Necklace",
    left_ring="Blenmot's Ring +1",
    right_ring="Purity Ring",
	}
	
	sets.buff.adoulin = {
	body="Councilor\'s Garb"
	}
	sets.buff.Sleep = {
	head="Frenzy Sallet",
	}
	sets.buff.Phalanx = {
    head={ name="Taeon Chapeau", augments={'Spell interruption rate down -8%','Phalanx +3',}},
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    hands={ name="Taeon Gloves", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    legs={ name="Taeon Tights", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    feet={ name="Taeon Boots", augments={'Spell interruption rate down -10%','Phalanx +3',}},
	waist="Flume Belt",
	neck="Loricate Torque +1",
	left_ring="Gelatinous Ring +1",
	ring_ring="Murky Ring",
	left_ear="Alabaster Earring",
    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
end
 
function precast(spell)
    if  spell.action_type == 'Magic' then
        equip(sets.precast.fastcast)
	end
	if sets.ja[spell.name] then
		equip(sets.ja[spell.name])
    elseif spell.type == "CorsairRoll" then
        equip(sets.ja["Phantom Roll"])
    end
    if sets.ws[spell.name] then
        equip(sets.ws[spell.name])        
			if spell.name:match("Leaden Salute") or spell.name:match("Wildfire") then 
					if world.weather_element == spell.element and world.day_element == spell.element then
						equip(sets.buff.Hachirin)
					end
				end
			end
	if spell.action_type == 'Ranged Attack' then
		equip (sets.ranged.precast)
	end
end


 
function midcast(spell)
    if spell.name:match('Utsusemi')then
        equip(sets.precast.DT)
	end
    if sets.ja[spell.name] then
        equip(sets.ja[spell.name])
    elseif spell.type == "CorsairRoll" then
        equip(sets.ja["Phantom Roll"])
    end
	if spell.action_type == 'Ranged Attack' then
		equip (sets.ranged.normal)
			if buffactive["Triple Shot"] then
			equip(sets.ranged.Triple)
		end
	end
end
 
function aftercast(spell)
	idle()
end
 
 
function idle()
	if player.status =='Engaged' then
		equip(sets.melee[Melee_Set_Names[Melee_Index]])
			if buffactive['Reive Mark'] then
				equip(sets.buff.reive)
			end
		end
	if player.status =='Idle' then
		equip(sets.CP.Run)
	end
end
 
function status_change(new,old)
	idle()
end

function self_command(command)
	if command == 'toggle melee set' then
        Melee_Index = Melee_Index +1
    if Melee_Index > #Melee_Set_Names then Melee_Index = 1 end
        windower.add_to_chat('TP mode is now: '..Melee_Set_Names[Melee_Index])
        equip(sets.melee[Melee_Set_Names[Melee_Index]])
    end
	if command == 'toggle Gun set' then
        Gun_Index = Gun_Index +1
    if Gun_Index > #Gun_Set_Names then Gun_Index = 1 end
        windower.add_to_chat('Gun is now: '..Gun_Set_Names[Gun_Index])
        equip(sets.Gun[Gun_Set_Names[Gun_Index]])
    end
	if command == 'toggle CP set' then
        CP_Index = CP_Index +1
    if CP_Index > #CP_Set_Names then CP_Index = 1 end
        windower.add_to_chat('Movement mode is now: '..CP_Set_Names[CP_Index])
        equip(sets.CP[CP_Set_Names[CP_Index]])
    end
	if command == 'toggle Weapons set' then
        Weapons_Index = Weapons_Index +1
    if Weapons_Index > #Weapons_Set_Names then Weapons_Index = 1 end
        windower.add_to_chat('Weapon is now: '..Weapons_Set_Names[Weapons_Index])
        equip(sets.Weapons[Weapons_Set_Names[Weapons_Index]])
    end
	if command == 'toggle TH set' then
        TH_Index = TH_Index +1
    if TH_Index > #TH_Set_Names then TH_Index = 1 end
        windower.add_to_chat('TH4 equipped')
        equip(sets.TH[TH_Set_Names[TH_Index]])
    end
	if command == 'react_return' then
        windower.add_to_chat('Phalanx received')
		idle()
	end
end

function file_unload() --, Unbinds defined keybinds when changing jobs, can also use "send_command('clearbinds')" to wipe any and all
send_command('unbind f9')
send_command('unbind !f9')
send_command('unbind ^f9')
send_command('unbind f10')
send_command('unbind !f10')
send_command('unbind f12')
send_command('unbind !f12')
send_command('unbind f7')
send_command('unbind !f7')
send_command('unbind !numpad1')
send_command('unbind ^numpad1')
send_command('unbind !numpad0')
send_command('unbind !numpad7')
end
