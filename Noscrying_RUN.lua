function get_sets()
	send_command('bind f7 gs c toggle Weapons set') 
	send_command('bind !f7 gs c toggle Sub_Weapons set') 
	send_command('bind f9 gs c toggle TP set') --, Loads when changing job, this means if you hit f9 it toggles the sets
	send_command('bind !f9 gs c toggle Tank_Mode') --! turns tanking tp off
	send_command('bind f10 gs c toggle run set') 
	send_command('bind f12 gs c toggle TH set') 
	send_command('bind !numpad1 gs c toggle Buff set')
	send_command('bind !numpad0 gs c toggle Emergency MEVA')
	Run_Index = 1 --, Index for gearsets, needed for when there is more than 1 in a set and you wish you toggle beween them
	TH_Index = 1
	Weapons_Index = 1
	Sub_Weapons_Index = 1	
	Buff_Index = 1	

	Weapons_Set_Names = {'Zantetsuken X','Aettir'} --, Define set names, allows the lua to know what you are referring to.
	sets.weapons = {}
	sets.weapons["Zantetsuken X"] = {
    main="Zantetsuken X",
	sub="Utu Grip",
}
	sets.weapons.Aettir = {
    main="Aettir",
	sub="Utu Grip",
}
	
	Sub_Weapons_Set_Names = {'Lycurgos'}
	sets.sub_weapons = {}
	sets.sub_weapons.Lycurgos = {
    main="Lycurgos",
	sub="Utu Grip",
	}	
	
	sets.DD_Mode = {}
	sets.DD_Mode.index = {'Normal: 30PDT', 'Hybrid: 43PDT'}
	DD_Mode_ind = 1

	sets.DD_Mode["Normal: 30PDT"] = { -- 3QA, 22TA, 36DA, Temper+28 = 64DA, Embolden +12 = 76DA, -30PDT, -12MDT
    ammo="Yamarang",
    head="Adhemar Bonnet +1",
    --body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    body="Ayanmo Corazza +2",
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
	legs="Meghanada Chausses +2",
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    --neck="Anu Torque",
	neck="Futhark Torque +2",
    waist="Ioskeha Belt +1",
    left_ear="Cessance Earring",
    right_ear="Sherida Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Epona's Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}

	sets.DD_Mode["Hybrid: 43PDT"] = { -- 3QA, 33DA, Temper+28 = 61DA, Embolden +12 = 73DA, -43PDT, -45MDT, +11 Inquartata, Parry+5%
    ammo="Staunch Tathlum +1",
    head="Blistering Sallet +1",
    body="Ayanmo Corazza +2",
    hands="Turms Mittens +1",
    legs="Eri. Leg Guards +2",
    feet="Turms Leggings +1",
    neck="Futhark Torque +2",
    waist="Ioskeha Belt +1",
    left_ear="Odnowa Earring +1",
    right_ear="Sherida Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Defending Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Parrying rate+5%',}},
	}
	sets.DD_Mode.Inquartata = {
    hands="Turms Mittens +1",
	body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs="Eri. Leg Guards +2",
    feet="Turms Leggings +1",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Parrying rate+5%',}},
	}
	
	sets.Tank_Mode = {}
	sets.Tank_Mode.index = { 'DT: 49PDT','Parry: 42PDT'}
	Tank_Mode_ind = 1
	
	sets.Tank_Mode["DT: 49PDT"] = { --, -49PDT (PDT should be as close to 50 as possible, Protect adds to defense which is separate from PDT), -43MDT (MDT only need to be -21% in any set, Shell V is -29% MDT), Inquartata +6, Parry +5%, 3750HP, +28 DA
    ammo="Staunch Tathlum +1",
    head="Erilaz Galea +2",
    body="Erilaz Surcoat +2",
    hands="Turms Mittens +1",
    --hands="Erilaz Gauntlets +2",
    legs="Erilaz Leg Guards +2",
    feet="Erilaz Greaves +2",
    neck="Futhark Torque +2",
    -- waist="Engraved Belt",
	waist="Platinum Moogle Belt",
    left_ear="Odnowa Earring +1",
    right_ear="Tuisto Earring",
    left_ring="Moonlight Ring",
    right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
    --right_ring="Moonlight Ring",
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Parrying rate+5%',}},
	}

	sets.Tank_Mode["Parry: 42PDT"] = { --, -42PDT, -44MDT, +11 Inquartata, Parry +5%, +37 DA
    ammo="Staunch Tathlum +1",
    head="Erilaz Galea +2",
    body="Erilaz Surcoat +2",
    hands="Turms Mittens +1",
    legs="Eri. Leg Guards +2",
    feet="Turms Leggings +1",
    neck="Futhark Torque +2",
	waist="Platinum Moogle Belt",
    left_ear="Odnowa Earring +1",
    right_ear="Tuisto Earring",
    left_ring="Moonlight Ring",
    right_ring="Defending Ring",
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Parrying rate+5%',}},
	}
	sets.Tank_Mode.Inquartata = {
    hands="Turms Mittens +1",
    legs="Eri. Leg Guards +2",
    feet="Turms Leggings +1",
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Parrying rate+5%',}},
	}	

	MEVA_Set_Name = {'MEVA'}
	sets.MEVA = { 		--, +20-30 Elemental Resist, +10 Status Resist, +5% Negate Magic Damage chance, +676 MEVA, -51% PDT, -32% MDT
    ammo="Staunch Tathlum +1", 	--, +10 Status Resist, -2% DT
    head="Erilaz Galea +2", 	--, +109 MEVA
    body="Erilaz Surcoat +2", 	--, +120 MEVA
    hands="Turms Mittens +1", 	--, +101 MEVA
    legs="Eri. Leg Guards +2", 	--, +147 MEVA, -12% DT
    feet="Erilaz Greaves +2", 	--, +147 MEVA, -10% DT
    neck="Futhark Torque +2",
    waist="Engraved Belt", 	--, +20-30 Element Resist
    left_ear="Odnowa Earring +1",--, -5% MDT, -3% PDT
    right_ear="Tuisto Earring", 
    --left_ring="Archon Ring", 	--, +5% Negate Magic Damage chance
    left_ring="Moonlight Ring",
    right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}}, --, -7% PDT, +1% MDT
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Phys. dmg. taken-10%',}}, --, +30 MEVA, -10% PDT
	}	
	
	Run_Set_Names = {'DT','Regen','Refresh'}
	sets.run = {}
	sets.run.DT =  { --, -51PDT, -32MDT
    ammo="Staunch Tathlum +1",
    head="Erilaz Galea +2",
    body="Erilaz Surcoat +2",
    hands="Erilaz Gauntlets +2",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Erilaz Greaves +2",
    neck="Warder's Charm +1",
	waist="Platinum Moogle Belt",
    left_ear="Odnowa Earring +1",
    right_ear="Tuisto Earring",
    left_ring="Moonlight Ring",
    right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Phys. dmg. taken-10%',}},
	}
	sets.run.Regen =  { -- Refresh 4/Tic, Regen 18/Tic
    ammo="Homiliary",
    head="Rawhide Mask",
    body="Runeist Coat +1",
    hands="Turms Mittens +1",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Turms Leggings +1",
    neck={ name="Bathy Choker +1", augments={'Path: A',}},
    waist="Engraved Belt",
    left_ear="Odnowa Earring +1",
    right_ear="Infused Earring",
    left_ring="Chirich Ring +1",
    right_ring="Chirich Ring",
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Phys. dmg. taken-10%',}},
	}
	sets.run.Refresh =  { -- Refresh 7/Tic
    ammo="Homiliary",
    head="Rawhide Mask",
    body="Runeist Coat +1",
    hands="Erilaz Gauntlets +2",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Erilaz Greaves +2",
    neck="Sibyl Scarf",
    waist="Engraved Belt",
    left_ear="Odnowa Earring +1",
    right_ear="Infused Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Phys. dmg. taken-10%',}},
	}
	
	TH_Set_Names = {'TH'}
	sets.TH = {}
	sets.TH.TH = {
    head="White Rarab Cap +1",
	ammo="Perfect Lucky Egg",
    waist="Chaac Belt",
    feet={ name="Herculean Boots", augments={'"Dual Wield"+1','Attack+5','"Treasure Hunter"+1',}},
	}
	
	sets.CureHP = {
    left_ear="Odnowa Earring +1", 	--, +110HP
    right_ear="Tuisto Earring", 	--, +150HP
	left_ring="Moonlight Ring",	--, +110HP
	right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},	--, +135HP
	back="Moonbeam Cape",		--, +250HP
	}
	sets.RegenHP = {
    left_ear="Tuisto Earring", 		--, +150HP
	left_ring="Moonlight Ring",	--, +110HP
	right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},	--, +135HP
	back="Moonbeam Cape",		--, +250HP
	}		
	sets.TankHP = {
    neck="Unmoving Collar +1", 		--, +200HP
	waist="Platinum Moogle Belt", 	--, +270HP'ish
    left_ear="Odnowa Earring +1", 	--, +110HP
    right_ear="Tuisto Earring", 	--, +150HP
	}
	sets.TankWS = {
    neck="Unmoving Collar +1", 		--, +200HP
	waist="Platinum Moogle Belt", 	--, +270HP'ish
    right_ear="Tuisto Earring", 	--, +150HP
	left_ring="Moonlight Ring",	--, +110HP
	}
	
	sets.ws = {} 					-- Leave this empty.
	sets.ws['Resolution']	= { --FTP Replicating WS, Prefer Multi Attack to WSD
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head={ name="Lustratio Cap +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','STR+13',}},
    legs="Meg. Chausses +2",
    feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
    neck="Fotia Gorget",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    --waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Sherida Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Epona's Ring",
    back={ name="Ogma's Cape", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
	}
	
	sets.ws['Spinning Slash']	= {
    ammo="Knobkierrie",
    head={ name="Lustratio Cap +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
    body="Erilaz Surcoat +2",
    hands="Meg. Gloves +2",
    legs="Meg. Chausses +2",
    feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Sherida Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}},
	}	
	
	sets.ws['Freezebite']	= {
	ammo="Knobkierrie",
    head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +5%','STR+9','Mag. Acc.+1',}},
    body={ name="Carm. Scale Mail", augments={'Attack+15','"Mag.Atk.Bns."+10','"Dbl.Atk."+2',}},
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
	left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Friomisi Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}},
	}
	sets.ws['Herculean Slash']	= {
	ammo="Knobkierrie",
    head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +5%','STR+9','Mag. Acc.+1',}},
    body={ name="Carm. Scale Mail", augments={'Attack+15','"Mag.Atk.Bns."+10','"Dbl.Atk."+2',}},
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
	left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Friomisi Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}},
	}
	sets.ws['Shockwave']	= { --, Use MACC to ensure additional effect proc, Sleepga
    ammo="Knobkierrie",
	head="Erilaz Galea +2", 
    body="Erilaz Surcoat +2",
    hands="Erilaz Gauntlets +2",
    legs="Erilaz Leg Guards +2",
    feet="Erilaz Greaves +2",
    neck="Erra Pendant",
    waist="Eschan Stone",
    left_ear="Crepuscular Earring",
    right_ear={ name="Erilaz Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Stikini Ring +1",
    back="Moonbeam Cape",
	}
	sets.ws['Ground Strike']	= {
    ammo="Knobkierrie",
    head={ name="Lustratio Cap +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
    body="Erilaz Surcoat +2",
    hands="Meg. Gloves +2",
    legs="Meg. Chausses +2",
    feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Sherida Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}},
	}	
	
	sets.ws['Dimidiation']	= {
    ammo="Knobkierrie",
    head={ name="Lustratio Cap +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
	body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    --body="Erilaz Surcoat +2",
    hands="Meg. Gloves +2",
    legs={ name="Lustr. Subligar +1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
    feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
    neck="Fotia Gorget",
    waist={ name="Kentarch Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Sherida Earring",
    left_ring="Niqmaddu Ring",
    --right_ring="Ilabrat Ring",
    right_ring="Epaminondas's Ring",	
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}},
	}

	sets.ws.epami = {
	right_ring="Epaminondas's Ring",	
	}
	sets.ws['Savage Blade']	= {
    ammo="Knobkierrie",
    head={ name="Lustratio Cap +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
    body="Erilaz Surcoat +2",
    hands="Meg. Gloves +2",
    legs="Meg. Chausses +2",
    feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Sherida Earring",
    left_ring="Ifrit Ring +1",
    right_ring="Epaminondas's Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}},
	}
	sets.ws['Chant du Cygne']	= {
    ammo="Knobkierrie",
    head="Adhemar Bonnet +1",
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands="Meg. Gloves +2",
    legs="Meg. Chausses +2",
    feet="Meg. Jam. +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Sherida Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Epona's Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}	
	
	sets.ws['Sanguine Blade']	= { --, Mix MACC and MAB for high Drain rate
	ammo="Knobkierrie",
    head="Pixie Hairpin +1",
    body={ name="Carm. Scale Mail", augments={'Attack+15','"Mag.Atk.Bns."+10','"Dbl.Atk."+2',}},
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Crep. Earring",
    right_ear="Friomisi Earring",
    left_ring="Archon Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}},
	}
	
	sets.ws['Upheaval']	= {
	ammo="Knobkierrie",
    head={ name="Lustratio Cap +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands="Meg. Gloves +2",
    legs={ name="Lustr. Subligar +1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
    feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Sherida Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}},
	}
	
	sets.ws['Steel Cyclone']	= {
    ammo="Knobkierrie",
    head={ name="Lustratio Cap +1", augments={'Accuracy+20','DEX+8','"Crit.hit rate"+3',}},
    body="Erilaz Surcoat +2",
    hands="Meg. Gloves +2",
    legs={ name="Lustr. Subligar +1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
    feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Sherida Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Ifrit Ring +1",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}},
	}

	sets.ws['Fell Cleave']	= {
    ammo="Knobkierrie",
    head={ name="Lustratio Cap +1", augments={'Accuracy+20','DEX+8','"Crit.hit rate"+3',}},
    body="Erilaz Surcoat +2",
    hands="Meg. Gloves +2",
    legs={ name="Lustr. Subligar +1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
    feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Sherida Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Ifrit Ring +1",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}},
	}
	
	sets.ws['Armor Break']	= { --, Use MACC to ensure additional effect proc, Defense Down
    ammo="Knobkierrie",
	head="Erilaz Galea +2", 
    body="Erilaz Surcoat +2",
    hands="Erilaz Gauntlets +2",
    legs="Erilaz Leg Guards +2",
    feet="Erilaz Greaves +2",
    neck="Erra Pendant",
    waist="Eschan Stone",
    left_ear="Crepuscular Earring",
    right_ear={ name="Erilaz Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Stikini Ring +1",
    back="Moonbeam Cape",
	}
	sets.ws['Decimation']	= {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Adhemar Bonnet +1",
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','STR+13',}},
    legs="Meg. Chausses +2",
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Sherida Earring",
    left_ring="Epona's Ring",
    right_ring="Refuscent Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}	
	sets.ws['Smash Axe']	= {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Adhemar Bonnet +1",
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands="Meg. Gloves +2",
    legs="Meg. Chausses +2",
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Sherida Earring",
    left_ring="Epona's Ring",
    right_ring="Refuscent Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Ruinator']	= {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Adhemar Bonnet +1",
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands="Meg. Gloves +2",
    legs="Meg. Chausses +2",
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Sherida Earring",
    left_ring="Epona's Ring",
    right_ring="Refuscent Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}	

	sets.ja = {} 			-- Leave this empty
	sets.ja.Enmity = { 		--, +74% Enmity (Enmity gear is a percentage increase or decrease, not an addition
    head="Halitus Helm", 		--, 8
    body="Emet Harness", 		--, 9
	hands="Nilas Gloves", 		--, 5
    legs="Erilaz Leg Guards +2", 	--, 12
    feet="Erilaz Greaves +2",		--, 8
    neck="Moonlight Necklace", 		--, 15 Enmity
    waist="Warwolf Belt", 		--, 3
    left_ear="Friomisi Earring", 	--, 2
    right_ear="Eris' Earring", 		--, 2
    left_ring="Supershear Ring", 	--, 5
    right_ring="Provocare Ring", 	--, 5
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Phys. dmg. taken-10%',}}, --, 10
	}
		
	sets.ja['Vallation'] = set_combine(sets.ja.Enmity, { --, When we define a set as as "sets.ja['xx'], then we can in our precast set, refer to all named in this way, while still specifying a single set.
	body="Runeist Coat +1",
	legs="Futhark Trousers +1",
	})
	sets.ja['Embolden'] = set_combine(sets.ja.Enmity, { --, Adoulin cape lowers Embolden Duration penalty, from 50% -> 35%
    head="Erilaz Galea +2",
	legs="Futhark Trousers +1",
    back={ name="Evasionist's Cape", augments={'Enmity+4','"Embolden"+15','"Dbl.Atk."+1',}},
	})
	sets.ja['Valiance'] = set_combine(sets.ja.Enmity, {
	body="Runeist Coat +1",
	legs="Futhark Trousers +1",
	})
	sets.ja['Vivacious Pulse'] = set_combine(sets.ja.Enmity,{ --, Higher Divine Magic skill provides more HP, More of the same Runes provides more HP
    head="Erilaz Galea +2",
	legs="Runeist Trousers +1",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back="Moonbeam Cape",
	})
	sets.ja['Pflug'] = set_combine(sets.ja.Enmity, {
	})
	sets.ja['Gambit'] = set_combine(sets.ja.Enmity, {
	hands="Runeist Mitons",
	})
	sets.ja['Battuta'] = set_combine(sets.ja.Enmity, {
    head={ name="Fu. Bandeau +1", augments={'Enhances "Battuta" effect',}},
	})

	sets.ja['Rayke'] = set_combine(sets.ja.Enmity, {
	})
	sets.ja['Weapon Bash'] = set_combine(sets.ja.Enmity, {
	})
	sets.ja['Swordplay'] = set_combine(sets.ja.Enmity, {
	})
	sets.ja['Souleater'] = set_combine(sets.ja.Enmity, {
	})
	sets.ja['Last Resort'] = set_combine(sets.ja.Enmity, {
	})
	sets.ja['One for All'] = { --, Higher HP provides higher Magic Stoneskin
    head="Erilaz Galea +2",
    body="Erilaz Surcoat +2",
    hands="Turms Mittens +1",
    legs="Eri. Leg Guards +2",
    feet="Turms Leggings +1",
    neck="Unmoving Collar +1",
    waist="Platinum Moogle Belt",
    left_ear="Odnowa Earring +1",
    right_ear="Tuisto Earring",
    left_ring="Moonlight Ring",
    right_ring="Moonlight Ring",
    back="Moonbeam Cape",	
	}
	sets.ja['Ignis'] = {
    ammo="Staunch Tathlum +1",
    head="Erilaz Galea +2",
    body="Erilaz Surcoat +2",
    hands="Turms Mittens +1",
    legs="Eri. Leg Guards +2",
    feet="Erilaz Greaves +2",
    neck="Warder's Charm +1",
    waist="Engraved Belt",
    left_ear="Tuisto Earring",
    right_ear="Eabani Earring",
    left_ring="Archon Ring",
    right_ring="Defending Ring",
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Phys. dmg. taken-10%',}},	
	}
	sets.ja['Gelus'] = {
    ammo="Staunch Tathlum +1",
    head="Erilaz Galea +2",
    body="Erilaz Surcoat +2",
    hands="Turms Mittens +1",
    legs="Eri. Leg Guards +2",
    feet="Erilaz Greaves +2",
    neck="Warder's Charm +1",
    waist="Engraved Belt",
    left_ear="Tuisto Earring",
    right_ear="Eabani Earring",
    left_ring="Archon Ring",
    right_ring="Defending Ring",
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Phys. dmg. taken-10%',}},	
	}
	sets.ja['Tellus'] = {
    ammo="Staunch Tathlum +1",
    head="Erilaz Galea +2",
    body="Erilaz Surcoat +2",
    hands="Turms Mittens +1",
    legs="Eri. Leg Guards +2",
    feet="Erilaz Greaves +2",
    neck="Warder's Charm +1",
    waist="Engraved Belt",
    left_ear="Tuisto Earring",
    right_ear="Eabani Earring",
    left_ring="Archon Ring",
    right_ring="Defending Ring",
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Phys. dmg. taken-10%',}},	
	}
	sets.ja['Sulpor'] = {
    ammo="Staunch Tathlum +1",
    head="Erilaz Galea +2",
    body="Erilaz Surcoat +2",
    hands="Turms Mittens +1",
    legs="Eri. Leg Guards +2",
    feet="Erilaz Greaves +2",
    neck="Warder's Charm +1",
    waist="Engraved Belt",
    left_ear="Tuisto Earring",
    right_ear="Eabani Earring",
    left_ring="Archon Ring",
    right_ring="Defending Ring",
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Phys. dmg. taken-10%',}},	
	}
	sets.ja['Unda'] = {
    ammo="Staunch Tathlum +1",
    head="Erilaz Galea +2",
    body="Erilaz Surcoat +2",
    hands="Turms Mittens +1",
    legs="Eri. Leg Guards +2",
    feet="Erilaz Greaves +2",
    neck="Warder's Charm +1",
    waist="Engraved Belt",
    left_ear="Tuisto Earring",
    right_ear="Eabani Earring",
    left_ring="Archon Ring",
    right_ring="Defending Ring",
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Phys. dmg. taken-10%',}},	
	}
	sets.ja['Flabra'] = {
    ammo="Staunch Tathlum +1",
    head="Erilaz Galea +2",
    body="Erilaz Surcoat +2",
    hands="Turms Mittens +1",
    legs="Eri. Leg Guards +2",
    feet="Erilaz Greaves +2",
    neck="Warder's Charm +1",
    waist="Engraved Belt",
    left_ear="Tuisto Earring",
    right_ear="Eabani Earring",
    left_ring="Archon Ring",
    right_ring="Defending Ring",
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Phys. dmg. taken-10%',}},	
	}
	sets.ja['Lux'] = {
    ammo="Staunch Tathlum +1",
    head="Erilaz Galea +2",
    body="Erilaz Surcoat +2",
    hands="Turms Mittens +1",
    legs="Eri. Leg Guards +2",
    feet="Erilaz Greaves +2",
    neck="Warder's Charm +1",
    waist="Engraved Belt",
    left_ear="Tuisto Earring",
    right_ear="Eabani Earring",
    left_ring="Archon Ring",
    right_ring="Defending Ring",
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Phys. dmg. taken-10%',}},	
	}
	sets.ja['Tenebrae'] = {
    ammo="Staunch Tathlum +1",
    head="Erilaz Galea +2",
    body="Erilaz Surcoat +2",
    hands="Turms Mittens +1",
    legs="Eri. Leg Guards +2",
    feet="Erilaz Greaves +2",
    neck="Warder's Charm +1",
    waist="Engraved Belt",
    left_ear="Tuisto Earring",
    right_ear="Eabani Earring",
    left_ring="Archon Ring",
    right_ring="Defending Ring",
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Phys. dmg. taken-10%',}},	
	}
	sets.ja['Lunge'] = {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +5%','STR+9','Mag. Acc.+1',}},
    body={ name="Carm. Scale Mail", augments={'Attack+15','"Mag.Atk.Bns."+10','"Dbl.Atk."+2',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Friomisi Earring",
    right_ear="Hecate's Earring",
    left_ring="Fenrir Ring",
    right_ring="Mujin Band",
    back="Argocham. Mantle",
	}
	sets.ja['Swipe'] = {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +5%','STR+9','Mag. Acc.+1',}},
    body={ name="Carm. Scale Mail", augments={'Attack+15','"Mag.Atk.Bns."+10','"Dbl.Atk."+2',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Friomisi Earring",
    right_ear="Hecate's Earring",
    left_ring="Fenrir Ring",
    right_ring="Mujin Band",
    back="Argocham. Mantle",
	}
	sets.ja.Dark = {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Pixie Hairpin +1",
    body={ name="Carm. Scale Mail", augments={'Attack+15','"Mag.Atk.Bns."+10','"Dbl.Atk."+2',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Friomisi Earring",
    right_ear="Hecate's Earring",
    left_ring="Fenrir Ring",
    right_ring="Archon Ring",
    back="Argocham. Mantle",
	}
	sets.ja.Light = {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +5%','STR+9','Mag. Acc.+1',}},
    body={ name="Carm. Scale Mail", augments={'Attack+15','"Mag.Atk.Bns."+10','"Dbl.Atk."+2',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Friomisi Earring",
    right_ear="Hecate's Earring",
    left_ring="Fenrir Ring",
    right_ring="Weatherspoon Ring",
    back="Argocham. Mantle",
	}	
	sets.idle = {} 					-- Leave this empty
	
	sets.precast = {}               -- leave this empty
	sets.precast.fastcast = { 	--, QM+3%, 75% (Cap 80%) Inspiration 1 = 12% Fast Cast on Valiance or Vallation, Merit+10 = +52 SIRD
    ammo="Sapience Orb",		--, 2
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}}, --, 14
    body="Erilaz Surcoat +2", 		--, 10
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}}, --, 8
    legs="Aya. Cosciales +2",		--, 6
    feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}}, --, 8
    neck="Voltsurge Torque", 		--, 4
    waist="Audumbla Sash",  		--, 10 SIRD, -4 PDT
    left_ear="Loquacious Earring", 	--, 2
    right_ear="Enchanter's Earring +1", --, 2
    left_ring="Kishar Ring", 		--, 4
    right_ring="Weatherspoon Ring", --, 5, QM+3%
    back={ name="Ogma's Cape", augments={'"Fast Cast"+10','Spell interruption rate down-10%',}}, --,10
	} 
	sets.precast.enhancing = { 	--, QM+5%, 80% (Cap 80%) Inspiration 1 = 12% Fast Cast on Valiance or Vallation, Merit+10 = +30 SIRD
    ammo="Impatiens",			--, QM+2%
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}}, --, 14
    body="Erilaz Surcoat +2", 		--, 10
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}}, --, 8
    legs="Futhark Trousers +1", 	--, 13 (Only works for Enhancing Magic)
    feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}}, --, 8
    neck="Futhark Torque +2",
    waist="Siegel Sash", 		--, 8 (Only works for Enhancing Magic)
    left_ear="Loquacious Earring", 	--, 2
    right_ear="Enchanter's Earring +1", --, 2
    left_ring="Weatherspoon Ring", 	--, 5, QM+3%
    right_ring="Defending Ring",
    back={ name="Ogma's Cape", augments={'"Fast Cast"+10','Spell interruption rate down-10%',}}, --10
	}

    sets.midcast = {}               -- leave this empty  
	sets.midcast.sird = set_combine(sets.ja.Enmity, {--, Merit+10 == 105% (Cap 102%)
    ammo="Impatiens", 			--, 10
	head="Erilaz Galea +2", 	--, 15
    hands="Rawhide Gloves", 		--, 15
    legs="Carmine Cuisses +1", 		--, 20
    neck="Moonlight Necklace", 		--, 15
    waist="Audumbla Sash",  		--, 10
	left_ring="Moonlight Ring",
    right_ring="Defending Ring",
    back={ name="Ogma's Cape", augments={'"Fast Cast"+10','Spell interruption rate down-10%',}}, --, 10
	})

	sets.midcast.enmity = { 	--, +54% Enmity (Enmity gear is a percentage increase or decrease, not an addition), Merit+10 = +88 SIRD, -41% PDT, -22% MDT
	ammo="Impatiens", 		--, 10 SIRD
	head="Erilaz Galea +2", 	--, 15 SIRD
    body="Emet Harness", 		--, 9 Enmity, -5 PDT
    hands="Rawhide Gloves", 		--, 15 SIRD
    legs="Erilaz Leg Guards +2", 	--, 12 Enmity, -12% DT
    feet="Erilaz Greaves +2",		--, 8 Enmity, -10% DT
    neck="Moonlight Necklace", 		--, 15 Enmity, 15 SIRD
    waist="Audumbla Sash",  		--, 10 SIRD, -4 PDT
    left_ear="Halasz Earring", 		--, 5 SIRD
    right_ear="Magnetic Earring", 	--, 8 SIRD
    left_ring="Supershear Ring", 	--, 5 Enmity
    right_ring="Provocare Ring", 	--, 5 Enmity
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Phys. dmg. taken-10%',}}, --, 10 Enmity, 10PDT
	}
	sets.midcast.MaxEnmity = { 	--, +74% Enmity, Merit+10 = +35 SIRD, -37% PDT, -22 MDT
	ammo="Impatiens", 		--, 10 SIRD
    head="Halitus Helm", 		--, 8 Enmity
    body="Emet Harness", 		--, 9 Enmity, -5 PDT
    hands="Nilas Gloves", 		--, 5 Enmity
    legs="Erilaz Leg Guards +2", 	--, 12 Enmity, -12% DT
    feet="Erilaz Greaves +2", 		--, 8 Enmity, -10% DT
    neck="Moonlight Necklace", 		--, 15 Enmity, +15 SIRD
    waist="Warwolf Belt", 		--, 3 Enmity
    left_ear="Friomisi Earring", 	--, 2 Enmity
    right_ear="Eris' Earring", 		--, 2 Enmity
    left_ring="Supershear Ring", 	--, 5 Enmity
    right_ring="Provocare Ring", 	--, 5 Enmity
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Phys. dmg. taken-10%',}}, --, 10 Enmity, 10PDT
	}
	sets.midcast.Foil = { 		--, +42% Enmity, Merit+10 = +88 SIRD, -29% PDT, -10% MDT, +40% Duration
	ammo="Impatiens", 		--, 10 SIRD
	head="Erilaz Galea +2", 	--, 15 SIRD, +20% Duration
    body="Emet Harness", 		--, 9 Enmity, -5 PDT
    hands="Rawhide Gloves", 		--, 15 SIRD
    legs={ name="Futhark Trousers +1", augments={'Enhances "Inspire" effect',}}, --, +20% Duration
    feet="Erilaz Greaves +2", 		--, 8 Enmity, -10% DT
    neck="Moonlight Necklace", 		--, 10 Enmity, +10 SIRD
    waist="Audumbla Sash",  		--, 10 SIRD, -4 PDT
    left_ear="Halasz Earring", 		--, 5 SIRD
    right_ear="Magnetic Earring", 	--, 8 SIRD
    left_ring="Supershear Ring", 	--, 5 Enmity
    right_ring="Provocare Ring", 	--, 5 Enmity
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Phys. dmg. taken-10%',}}, --, 10 Enmity, 10PDT
	}	
	sets.midcast.regen = {		--, Merit+10 = +80 SIRD +18 Regen, +30% Potency, +39 seconds, +20% Duration +25% Healing/Enhancing MP Cost  = Regen IV 58/tic, 168 Seconds = 3248 HP, Embolden 73/Tic, 110 Seconds = 2628, don't do it.
	ammo="Impatiens",
    head="Runeist Bandeau +2",
    body={ name="Taeon Tabard", augments={'Mag. Evasion+19','Spell interruption rate down -9%','"Regen" potency+3',}},
    hands={ name="Taeon Gloves", augments={'Mag. Evasion+15','Spell interruption rate down -10%','"Regen" potency+3',}},
    --legs={ name="Taeon Tights", augments={'Mag. Evasion+17','Spell interruption rate down -9%','"Regen" potency+3',}},
    legs={ name="Futhark Trousers +1", augments={'Enhances "Inspire" effect',}},	
    feet={ name="Taeon Boots", augments={'Mag. Evasion+18','Spell interruption rate down -9%','"Regen" potency+3',}},
    neck="Sacro Gorget",
    waist="Sroda Belt",
    left_ear="Magnetic Earring",
    right_ear={ name="Erilaz Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
	left_ring="Evanescence Ring",
    right_ring="Defending Ring",
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Phys. dmg. taken-10%',}}, --, 10 Enmity, 10PDT
	}	
	sets.midcast.Cure = {		--, +45% Cure Potency, +5% Cure Self, Merit+10 = +106 SIRD, +25% Healing MP cost, ML45 /BLU gets Magic Fruit, which is Cure IV Potency but without extra MP cost as it is Blue Magic.
	-- ammo="Impatiens",		--, SIRD set
	-- head="Erilaz Galea +2", 		
    -- hands="Rawhide Gloves",
    -- legs="Carmine Cuisses +1",
	-- feet="Karasutengu Kogake",
    -- left_ear="Halasz Earring",
    -- right_ear="Magnetic Earring",
    -- left_ring="Kunaji Ring", 	--, +5
    -- right_ring="Defending Ring",
    -- neck="Sacro Gorget", 		--, +10
    -- waist="Sroda Belt", 		--, +35
    -- back={ name="Ogma's Cape", augments={'"Fast Cast"+10','Spell interruption rate down-10%',}},
		
    ammo="Impatiens", 			--, DT Set -48% PDT, -40% MDT, +45% Cure Potency, +25% Healing MP cost, Merit+10 = +50 SIRD
    head="Erilaz Galea +2",
    body="Erilaz Surcoat +2",
    hands="Erilaz Gauntlets +2",	--, -10% DT
    legs="Erilaz Leg Guards +2", 	--, -12% DT
    feet="Erilaz Greaves +2", 		--, -10% DT
    neck="Sacro Gorget", 		--, +10
    waist="Sroda Belt", 		--, +35
    left_ear="Odnowa Earring +1",	--, -3% DT -2% MDT
    right_ear="Tuisto Earring",
    left_ring="Moonlight Ring", 	--, -4% DT
    left_ring="Defending Ring", 	--, -10% DT
    back={ name="Ogma's Cape", augments={'"Fast Cast"+10','Spell interruption rate down-10%',}},
	}
	
	sets.midcast.phalanx = { 	--, ML41 = Skill 527 = Phalanx Tier 8, -35 Damage, +17 = -52 Damage, Merit+10 = 60% SIRD
	ammo="Impatiens",
    head={ name="Fu. Bandeau +1", augments={'Enhances "Battuta" effect',}},
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    hands={ name="Taeon Gloves", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    legs={ name="Taeon Tights", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    feet={ name="Taeon Boots", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    neck="Melic Torque",
	waist="Olympus Sash",
    left_ear="Andoaa Earring",
    right_ear="Mimir Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back="Moonbeam Cape",
	}
	sets.midcast.phalanxSIRD = {	--, ML41 = Skill 481 = Phalanx Tier 7 , -34 Damage, +12 = -46 Damage, Merit+10 = 105% SIRD
	ammo="Impatiens",		--, 10
    head="Erilaz Galea +2", 		--, 15
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}}, 	--, 10
    hands={ name="Taeon Gloves", augments={'Spell interruption rate down -10%','Phalanx +3',}},	--, 10
    legs={ name="Taeon Tights", augments={'Spell interruption rate down -10%','Phalanx +3',}},	--, 10
    feet={ name="Taeon Boots", augments={'Spell interruption rate down -10%','Phalanx +3',}},	--, 10
    neck="Moonlight Necklace", 		--, 15
    waist="Audumbla Sash",  		--, 10
    left_ear="Odnowa Earring +1",
    right_ear="Tuisto Earring",
	left_ring="Evanescence Ring",	--, 5
    right_ring="Defending Ring",
    back={ name="Ogma's Cape", augments={'"Fast Cast"+10','Spell interruption rate down-10%',}}, --, 10
	}
	sets.midcast.enhancingduration = {	--, Enhancing Skill +84, +40% Duration, Skill 553
	ammo="Impatiens",
    head="Erilaz Galea +2", 			--, +20%
    body="Manasa Chasuble", 			--, 12
    hands="Runeist Mitons", 			--, 15
    legs={ name="Futhark Trousers +1", augments={'Enhances "Inspire" effect',}}, --, 20%
    feet="Erilaz Greaves +2",
    neck="Melic Torque", 			--, 10
	waist="Olympus Sash", 			--, 5
    left_ear="Andoaa Earring", 			--, 5
    right_ear="Mimir Earring", 			--, 10
    left_ring="Stikini Ring +1",		--, 8
    right_ring="Stikini Ring +1", 		--, 8
    back="Merciful Cape", 			--, 5
	}
	sets.midcast.enhancingskill = {		--, DD Mode: 	Enhancing Skill +106, ML40 = Skill 588 = Temper +28 Double Attack, Embolden +42,	
	ammo="Impatiens",			--, Tank Mode: 	Enhancing Skill +76,  ML40 = Skill 558 = Temper +25 Double Attack, Embolden +37,
    head={ name="Carmine Mask", augments={'Accuracy+15','Mag. Acc.+10','"Fast Cast"+3',}}, --10
    body="Manasa Chasuble", 			--, 12
    hands="Runeist Mitons", 			--, 15
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}}, --18
    feet="Erilaz Greaves +2",
    neck="Melic Torque", 			--, 10
	waist="Olympus Sash", 			--, 5
    left_ear="Andoaa Earring", 			--, 5
    right_ear="Mimir Earring", 			--, 10
    left_ring="Stikini Ring +1", 		--, 8
    right_ring="Stikini Ring +1", 		--, 8
    back="Merciful Cape", 			--, 5
	}
	sets.midcast.refresh = { 	--, +20 Seconds, +20% Duration, +3 Refresh Potency, 32DT, Absorbs 7% Damage to MP
	ammo="Impatiens",
    head="Erilaz Galea +2",
    body="Erilaz Surcoat +2",
    hands="Erilaz Gauntlets +2",
    legs={ name="Futhark Trousers +1", augments={'Enhances "Inspire" effect',}},
    feet="Erilaz Greaves +2",
    neck="Elite Royal Collar",
    waist="Gishdubar Sash",
    left_ear="Sherida Earring",
    right_ear="Magnetic Earring",
	left_ring="Evanescence Ring",
    right_ring="Defending Ring",
    back="Moonbeam Cape",
	}
	
    sets.midcast.MACC = { 		--, +326 MACC
    ammo="Impatiens",
	head="Erilaz Galea +2", 	--, 51
    body="Erilaz Surcoat +2", 	 	--, 54
    hands="Erilaz Gauntlets +2", 	--, 52
    legs="Erilaz Leg Guards +2", 	--, 53
    feet="Erilaz Greaves +2", 	 	--, 50
    neck="Erra Pendant", 		--, 17
    waist="Eschan Stone", 		--, 7
    left_ear="Crepuscular Earring", 	--, 10
    right_ear={ name="Erilaz Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}}, --, 6
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}}, --, 15
    right_ring="Stikini Ring +1", 	--, 11
    back="Moonbeam Cape",
	}
	Buff_Set_Names = {'Holywater'}
	sets.buff = {} 					-- Leave this empty.
	sets.buff.reive = {
	neck="Ygnas\'s Resolve +1",
	}
	sets.buff.Holywater = { --, +42% Holy Water (Doom removal chance), 33% Base +42% = 75% Chance
    neck="Nicander's Necklace",
    left_ring="Blenmot's Ring",
    right_ring="Purity Ring",
	}
	
	ElementalGear = {}
	ElementalGear.Obi = "Hachirin-no-Obi"
	ElementalGear.Cape = "Twilight Cape"
	ElementalGear.RingDark = "Archon Ring"
	ElementalGear.RingLight = "Weatherspoon Ring"
	ElementalGear.Head = "Pixie Hairpin +1"
	sets.midcast.CureWithLightWeather = {back=ElementalGear.Cape,waist=ElementalGear.Obi}
	sets.midcast.NukeWithMatchingWeather = {back=ElementalGear.Cape,waist=ElementalGear.Obi}
	sets.midcast.DarkNukes = {back=ElementalGear.Cape,waist=ElementalGear.Obi,head=ElementalGear.Head,ring2=ElementalGear.RingDark}
	sets.midcast.LightNukes = {back=ElementalGear.Cape,waist=ElementalGear.Obi,ring2=ElementalGear.RingLight}
	
	sets.adoulin = {}
	sets.adoulin.movement = {body="Councilor's Garb",}   --auto swaps when in adoulin 
 

end

function precast(spell) --, "==" indicates "Is", "~=" indicates "Is not", See examples in RDM.lua
    if  spell.type == 'JobAbility' then
        if Tank_Mode == false then
			equip(sets.ja.enmity)
				elseif Tank_Mode == true then
					equip(set_combine(sets.ja.enmity, sets.TankHP))
			end
		end	
    if  spell.action_type == 'Magic' then --, All magic types uses assigned set
		if Tank_Mode == false then
			equip(sets.precast.fastcast)
				elseif Tank_Mode == true then
					equip(set_combine(sets.precast.fastcast, sets.TankHP))
			end
		end
	if spell.skill == 'Enhancing Magic' then --, If specifically Enhancing magic, then uses this set instead	
		if Tank_Mode == false then
			equip(sets.precast.enhancing)
				elseif Tank_Mode == true then
					equip(set_combine(sets.precast.enhancing, sets.TankHP))
			end
		end
    if sets.ja[spell.name] then --, When set is setup as specified, then uses the preassigned set
        if Tank_Mode == false then
			equip(sets.ja[spell.name])
				elseif Tank_Mode == true then
					equip(set_combine(sets.ja[spell.name], sets.TankHP))
			end
		end
    if sets.ws[spell.name] then
		if Tank_Mode == false then
			equip(sets.ws[spell.name])
				elseif Tank_Mode == true then
					equip(set_combine(sets.ws[spell.name], sets.TankWS))
			end
		end
	if spell.name:match('Lunge') or spell.name:match('Swipe')then
		equip(sets.ja[spell.name])
            if world.weather_element == spell.element or world.day_element == spell.element then
                equip(sets.midcast.NukeWithMatchingWeather)
			end
		if buffactive['Lux'] and spell.name:match('Lunge') or spell.name:match('Swipe')then
			equip(sets.midcast.LightNukes)
		end
		if buffactive['Tenebrae'] and spell.name:match('Lunge') or spell.name:match('Swipe')then
			equip(sets.midcast.DarkNukes)
		end
	end
end


function midcast(spell) --, Midcast works in hierachy. The lower on the list the higher priority when using lazy If/End statements, otherwise when using If/Else/End, "Else" takes priority. See RDM lua for examples
	if spell.skill == 'Enhancing Magic' then
		if Tank_Mode == false then
			equip(sets.midcast.enhancingduration)
				elseif Tank_Mode == true then
					equip(set_combine(sets.midcast.enhancingduration, sets.TankHP))
			end
		end
	if spell.name:match('Refresh') then
		if Tank_Mode == false then
			equip(sets.midcast.refresh)
				elseif Tank_Mode == true then
					equip(set_combine(sets.midcast.refresh, sets.TankHP))
			end
		end
	if spell.name:match('Poison') or spell.name:match('Absorb') or spell.skill == 'Blue Magic' then  
		if Tank_Mode == false then
			equip(sets.midcast.enmity)
				elseif Tank_Mode == true then
					equip(set_combine(sets.midcast.enmity, sets.TankHP))
			end
		end	
	if spell.name =='Flash' or spell.name =='Stun' then
		if Tank_Mode == false then
			equip(sets.midcast.MaxEnmity)
				elseif Tank_Mode == true then
					equip(set_combine(sets.midcast.MaxEnmity, sets.TankHP))
			end
		end
	if spell.name =='Foil' or spell.name =="Crusade" then
		if Tank_Mode == false then
			equip(sets.midcast.Foil)
				elseif Tank_Mode == true then
					equip(set_combine(sets.midcast.Foil, sets.TankHP))
			end
		end
	if spell.name == 'Temper' or spell.name:match('Bar') then --,Spell.name == "xx" has to match name exactly, Spell.name:match ('xx') is like a variable that matches any prefix
		if Tank_Mode == false then
			equip(sets.midcast.enhancingskill)
				elseif Tank_Mode == true then
					equip(set_combine(sets.midcast.enhancingskill, sets.TankHP))
			end
		end	
	if spell.name:match('Regen') then
		equip(sets.midcast.regen)
			if Tank_Mode == true then
				if	player.status == "Engaged" then
				equip(set_combine(sets.midcast.regen, sets.RegenHP))
			end
		end
	end	
	if spell.name:match('Phalanx') then
		equip(sets.midcast.phalanx)
			if Tank_Mode == true then
				if	player.status == "Engaged" then
				equip(sets.midcast.phalanxSIRD)
			end
		end
	end
    if spell.name:match('Magic Fruit') or spell.name:match('Cure') or spell.name:match('Healing Breeze')or spell.name:match('Wild Carrot')then
		if Tank_Mode == false then
			equip(sets.midcast.Cure)
				elseif Tank_Mode == true then
					equip(set_combine(sets.midcast.Cure, sets.CureHP))
		end
	end
end 



function aftercast(spell) --, idle() makes the aftercast use the "Idle ()" states.
	idle()
end

function buff_change(buff,gain) --, See list of buff names under Gearswap libraries, or just check name in-game when they are active
    if buff == 'Reive Mark' then
        if gain then
            equip(sets.buff.reive)
            disable("neck")
        else
            enable("neck")			
        end
	end
    --Embolden cape lock--
    if buff == 'Embolden' then --, Checks for the name of the Buff/Debuff to look out for
        if gain then --, Checks whether or not it is Active
            equip(sets.ja['Embolden'])
            disable('head','legs','back') --, Locks specific armor slots so they cannot change.
            add_to_chat(123,'[Embolden] ON -- Back Locked')
        else
            enable('head','legs','back') --, re-enables armor slots, when the buff/debuff is gone
            add_to_chat(158,'[Embolden] OFF -- Back Unlocked')
		end
    end
	if buff =='Battuta' then
	if gain then
		if Tank_Mode == false then
		equip(sets.DD_Mode.Inquartata)
	else if Tank_Mode == true then
		equip(sets.Tank_Mode[sets.Tank_Mode.index[Tank_Mode_ind]])
		end
	end
end
end
	idle()
end

function idle() --, Engaged/Idle sets do not have to be here, can also be under self_command or anywhere really.
	if player.status =="Engaged" then --, When drawing weapon
		if Tank_Mode == true then
			equip(sets.Tank_Mode[sets.Tank_Mode.index[Tank_Mode_ind]]) --, Equips the last gearset you changed to, is not static
		elseif DD_Mode == true then
			equip(sets.DD_Mode[sets.DD_Mode.index[DD_Mode_ind]])
	end
end
	if buffactive['Battuta'] then
		if Tank_Mode == false then
		equip(sets.DD_Mode.Inquartata)
	else if Tank_Mode == true then
		equip(sets.Tank_Mode[sets.Tank_Mode.index[Tank_Mode_ind]])
	end
	end
end
	if player.status =='Idle' then --, When holstering weapon
		equip(sets.run[Run_Set_Names[Run_Index]])
	end
end


function status_change(new,old) --, Checks player status when changing, is necessary to auto-equip from Idle mode to Engaged
	idle()
end

Tank_Mode = true --, If true, default set is tanking TP array.
DD_Mode = true --, TP set order, looks for Tanking TP set before 2H TP

function self_command(command) --, Allows of use of various commands
	if command == 'toggle TP set' then --, When using the command as specified at the top of this lua, then executes these functions
		if Tank_Mode == true then --, Checks whether or not the Tank_Mode Mode is active,
			Tank_Mode_ind = Tank_Mode_ind + 1 --, Cycles through the Index, starts at 1 when switching or starting game
			if Tank_Mode_ind > #sets.Tank_Mode.index then Tank_Mode_ind = 1 end 
			windower.add_to_chat('Tank mode --> ' .. sets.Tank_Mode.index[Tank_Mode_ind] ..'') --, Sends a message ingame, not visible to others.
			if player.status == 'Engaged' then
				equip(sets.Tank_Mode[sets.Tank_Mode.index[Tank_Mode_ind]])
			end
		elseif Tank_Mode == false then
			if DD_Mode == true then
				DD_Mode_ind = DD_Mode_ind + 1
				if DD_Mode_ind > #sets.DD_Mode.index then DD_Mode_ind = 1 end
				windower.add_to_chat('DD mode --> ' .. sets.DD_Mode.index[DD_Mode_ind] ..'')
				if player.status == 'Engaged' then
						equip(sets.DD_Mode[sets.DD_Mode.index[DD_Mode_ind]])
					end
				end
			end		
		end
	if command == 'toggle Tank_Mode set' then
		Tank_Mode_ind = Tank_Mode_ind + 1
		if Tank_Mode_ind > #sets.Tank_Mode.index then Tank_Mode_ind = 1 end
		windower.add_to_chat('Tank mode --> ' .. sets.Tank_Mode.index[Tank_Mode_ind] ..'')
		if player.status == 'Engaged' then
			equip(sets.Tank_Mode[sets.Tank_Mode.index[Tank_Mode_ind]])
		end
	elseif command == 'toggle Tank_Mode' then
		if Tank_Mode == true then
			Tank_Mode = false
			windower.add_to_chat('<----- Tanking Mode: [Off] ----->')
        else
			Tank_Mode = true
			windower.add_to_chat('<----- Tanking Mode: [On] ----->')
		end
		status_change(player.status)
	elseif command == 'toggle DD_Mode' then
		if DD_Mode == true then
			DD_Mode = false
			windower.add_to_chat('<----- DD Mode: [Off] ----->')
        else
			DD_Mode = true
			windower.add_to_chat('<----- DD Mode: [On] ----->')
		end
	end
	if command == 'toggle run set' then
        Run_Index = Run_Index +1
        if Run_Index > #Run_Set_Names then Run_Index = 1 end
        windower.add_to_chat('Movement is now: '..Run_Set_Names[Run_Index]..' mode')
		equip(sets.run[Run_Set_Names[Run_Index]])
	end
	if command == 'toggle TH set' then
        TH_Index = TH_Index +1
    if TH_Index > #TH_Set_Names then TH_Index = 1 end
        windower.add_to_chat('TH4 equipped')
        equip(sets.TH[TH_Set_Names[TH_Index]])
    end
	if command == 'toggle Weapons set' then
        Weapons_Index = Weapons_Index +1
        if Weapons_Index > #Weapons_Set_Names then Weapons_Index = 1 end
        windower.add_to_chat('Weapon is now: '..Weapons_Set_Names[Weapons_Index])
		equip(sets.weapons[Weapons_Set_Names[Weapons_Index]])
	end
	if command == 'toggle Sub_Weapons set' then
        Sub_Weapons_Index = Sub_Weapons_Index +1
        if Sub_Weapons_Index > #Sub_Weapons_Set_Names then Sub_Weapons_Index = 1 end
        windower.add_to_chat('Sub Weapon is now: '..Sub_Weapons_Set_Names[Sub_Weapons_Index])
		equip(sets.sub_weapons[Sub_Weapons_Set_Names[Sub_Weapons_Index]])
	end
	if command == 'toggle Buff set' then
        Buff_Index = Buff_Index +1
    if Buff_Index > #Buff_Set_Names then Buff_Index = 1 end
        windower.add_to_chat(Buff_Set_Names[Buff_Index]..'+75% equipped')
        equip(sets.buff[Buff_Set_Names[Buff_Index]])
    end
	if command == 'toggle Emergency MEVA' then
        windower.add_to_chat('Emergency MEVA/DT On')
		equip(sets.MEVA)
	end
end

--windower.add_to_chat('DT mode is now: '..DT_mode)


function file_unload() --, Unbinds defined keybinds when changing jobs, can also use "send_command('clearbinds')" to wipe any and all
send_command('unbind f7')
send_command('unbind !f7')
send_command('unbind f9')
send_command('unbind !f9')
send_command('unbind f10')
send_command('unbind !f10')
send_command('unbind f12')
send_command('unbind !f12')
send_command('unbind !numpad1')
send_command('unbind !numpad0')
end
