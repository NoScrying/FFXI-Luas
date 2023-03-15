function get_sets()
	send_command('bind f9 gs c toggle DW set') -- F9 = Cycle through
	send_command('bind f10 gs c toggle refresh set') -- F10 = Cycle through
	send_command('bind !f9 gs c toggle SW set') -- F12 = Cycle through
	send_command('bind f12 gs c toggle TH set') -- F12 = Cycle through
	--send_command('bind !f12 gs c toggle Dagger set') -- F12 = Cycle through
	send_command('bind f7 gs c toggle Crocea set') -- F12 = Cycle through
	send_command('bind !f7 gs c toggle Sword set') -- F12 = Cycle through
	send_command('bind numpad1 gs c toggle Buff set') -- F12 = Cycle through
	send_command('bind !12 gs c toggle Nuke set') -- F12 = Cycle through	

	DW_Index = 1
	Refresh_Index = 1
	SW_Index = 1
	TH_Index = 1
	Crocea_Index = 1
	Sword_Index = 1
	Buff_Index = 1	
	Dagger_Index = 1
	Nuke_Index = 1
	
	Crocea_Set_Names = {'Daybreak','Ternion Dagger','Kaja Knife'} --'Odin', 'Crocea_TPBonus'
	sets.Crocea = {}
	sets.Crocea.Daybreak = {
    main={ name="Crocea Mors", augments={'Path: C',}},
    sub="Daybreak",
	}
	sets.Crocea['Ternion Dagger'] = {
    main={ name="Crocea Mors", augments={'Path: C',}},
    sub={ name="Ternion Dagger +1", augments={'Path: A',}},
	}
	sets.Crocea['Kaja Knife'] = {
    main={ name="Crocea Mors", augments={'Path: C',}},
    sub="Kaja Knife",
	}	
	
	Sword_Set_Names = {'Naegling', 'Excalibur','Excalibur_TPbonus'} --'Odin'
	sets.Sword = {}
	sets.Sword.Naegling = {
    main="Naegling",
    sub="Machaera +2",
	}
	sets.Sword.Excalibur = {
    main="Excalibur",
    sub={ name="Ternion Dagger +1", augments={'Path: A',}},
	}
	sets.Sword.Excalibur_TPbonus = {
    main="Excalibur",
    sub="Machaera +2",
	}
	sets.Sword.Odin = {
	ammo="Regal Gem",
    main="Wind Knife",
    sub="Qutrub Knife",
    waist="Orpheus's Sash",
	}	
	
	DW_Set_Names = {'DW','DT',}--'DA'
	sets.DW = {} 					-- Leave this empty.
	sets.DW.DW = {
	ammo="Aurgelmir Orb",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Ayanmo Manopolas +2",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Malignance Boots",
    neck="Anu Torque",
    waist="Orpheus's Sash",
    left_ear="Sherida Earring",
    --right_ear="Cessance Earring",
	right_ear="Suppanomimi",
    --left_ear="Eabani Earring",
    left_ring="Chirich Ring",
    right_ring="Chirich Ring +1",
    back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.DW.DA = {
	ammo="Aurgelmir Orb",
    head="Malignance Chapeau",
    body="Ayanmo Corazza +2",
    hands="Ayanmo Manopolas +2",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Malignance Boots",
    neck="Anu Torque",
    waist="Orpheus's Sash",
    left_ear="Sherida Earring",
    --right_ear="Cessance Earring",
	right_ear="Suppanomimi",
    --left_ear="Eabani Earring",
    left_ring="Chirich Ring",
    right_ring="Chirich Ring +1",
    back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.malig = {}
	sets.malig.hands = {
	hands="Malignance Gloves",
	}	
	
	sets.DW.DT = {
	ammo="Aurgelmir Orb",
    head="Malignance Chapeau",
    body="Malignance Tabard",
	hands="Malignance Gloves",
    legs="Malignance Tights",
    feet="Malignance Boots",
    --neck="Anu Torque",
    neck="Warder's Charm",
    waist="Carrier's Sash",
	--waist="Orpheus's Sash",
    --left_ear="Sherida Earring",
    --right_ear="Cessance Earring",
    left_ear="Eabani Earring",
    right_ear="Suppanomimi",
    left_ring="Defending Ring",
    right_ring="Chirich Ring +1",
    back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}

	
	TH_Set_Names = {'TH3'}
	sets.TH = {}
	sets.TH.TH3 = {
	ammo="Perfect Lucky Egg",
    head="Malignance Chapeau",
    body="Lethargy Sayon +2",
    hands="Leth. Ganth. +2",
    legs="Malignance Tights",
    feet={ name="Chironic Slippers", augments={'Mag. Acc.+1','Damage taken-1%','"Treasure Hunter"+2',}},
    neck={ name="Bathy Choker +1", augments={'Path: A',}},
    waist="Chaac Belt",
	left_ear="Suppanomimi",
	right_ear="Sherida Earring",
    left_ring="Chirich Ring +1",
    right_ring="Chirich Ring",
    back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
	SW_Set_Names = {'SW', 'DT'}
	sets.SW = {}
	sets.SW.SW = {
	ammo="Aurgelmir Orb",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Ayanmo Manopolas +2",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck="Anu Torque",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear="Cessance Earring",
    left_ring="Defending Ring",
    right_ring="Chirich Ring +1",
    back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.SW.DT = {
	ammo="Aurgelmir Orb",
    head="Malignance Chapeau",
    body="Malignance Tabard",
	hands="Malignance Gloves",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck={ name="Bathy Choker +1", augments={'Path: A',}},
    --waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    waist="Orpheus's Sash",
    left_ear="Sherida Earring",
    right_ear="Cessance Earring",
    left_ring="Chirich Ring +1",
    right_ring="Defending Ring",
    back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}	

	Refresh_Set_Names = {'battle'}
	sets.refresh = {}
	sets.refresh.battle = {
	ammo="Homiliary",
    head="Vitiation Chapeau +1",
    body="Lethargy Sayon +2",
    hands="Leth. Ganth. +2",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
	feet="Malignance Boots",
    neck="Sibyl Scarf",
	waist="Flume Belt",
    left_ear="Sherida Earring",
    right_ear="Cessance Earring",
	--left_ear="Suppanomimi",
    --right_ear="Eabani Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
	sets.ws = {} 					-- Leave this empty.
	sets.ws['Savage Blade']	= {
	ammo="Oshasha's Treatise",
    head="Jhakri Coronal +2",
    body="Jhakri Robe +2",
    hands="Jhakri Cuffs +2",
    legs="Jhakri Slops +2",
    feet="Leth. Houseaux +2",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Sroda Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	}
	sets.ws['Knights of Round']	= {
	ammo="Oshasha's Treatise",
    head="Jhakri Coronal +2",
    body="Jhakri Robe +2",
    hands="Jhakri Cuffs +2",
    legs="Jhakri Slops +2",
    feet="Leth. Houseaux +2",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Sroda Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	}
	
	sets.ws['Circle Blade']	= {
	ammo="Aurgelmir Orb",
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
	body="Jhakri Robe +2",
    hands="Atrophy Gloves +3",
    legs="Jhakri Slops +2",
    feet="Leth. Houseaux +2",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epaminondas's Ring",
    right_ring="Rajas Ring",
    back={ name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	}
	
	sets.ws['Chant du Cygne']	= {
	ammo="Aurgelmir Orb",
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
	body="Jhakri Robe +2",
    hands="Atrophy Gloves +3",
    legs="Jhakri Slops +2",
    feet="Ayanmo Gambieras +2",
    neck="Rep. Plat. Medal",
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    left_ring="Epaminondas's Ring",
    right_ring="Rajas Ring",
    back={ name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}

	sets.ws['Death Blossom']	= {
	ammo="Oshasha's Treatise",
    head="Malignance Chapeau",
    body="Malignance Tabard",
	hands="Malignance Gloves",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck={ name="Dls. Torque +1", augments={'Path: A',}},
    waist="Eschan Stone",
    left_ear="Malignance Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Crepuscular Ring",
    right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+7',}},
	}
	sets.ws['Requiescat']	= {
    ammo="Oshasha's Treatise",
    head="Jhakri Coronal +2",
    body="Lethargy Sayon +2",
    hands="Atrophy Gloves +3",
    legs="Leth. Fuseau +2",
    feet="Leth. Houseaux +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Regal Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Rufescent Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	}
	sets.ws['Sanguine Blade']	= {
	--ammo="Regal Gem",
	ammo="Sroda Tathlum",
    head="Pixie Hairpin +1",
    body="Lethargy Sayon +2",
    --hands="Leth. Ganth. +2",
    hands="Jhakri Cuffs +2",
    legs="Leth. Fuseau +2",
    feet="Leth. Houseaux +2",
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Regal Earring",
    right_ear="Malignance Earring",
    left_ring="Archon Ring",
    --right_ring="Epaminondas's Ring",
    right_ring="Freke Ring",
    back={ name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	}
	sets.ws['Seraph Blade']	= {
	--ammo="Regal Gem",
	ammo="Sroda Tathlum",
    head="Jhakri Coronal +2",
    body="Lethargy Sayon +2",
    --hands="Leth. Ganth. +2",
    hands="Jhakri Cuffs +2",
    legs="Leth. Fuseau +2",
    feet="Leth. Houseaux +2",
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Malignance Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Weatherspoon Ring",
    --right_ring="Epaminondas's Ring",
    right_ring="Freke Ring",
    back={ name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	}
	sets.ws['Shining Blade']	= {
	--ammo="Regal Gem",
	ammo="Sroda Tathlum",
    head="Jhakri Coronal +2",
    body="Lethargy Sayon +2",
    --hands="Leth. Ganth. +2",
    hands="Jhakri Cuffs +2",
    legs="Leth. Fuseau +2",
    feet="Leth. Houseaux +2",
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Malignance Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Weatherspoon Ring",
    --right_ring="Epaminondas's Ring",
    right_ring="Freke Ring",
    back={ name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	}
	sets.ws['Red Lotus Blade']	= {
	--ammo="Regal Gem",
	ammo="Sroda Tathlum",
    head="Jhakri Coronal +2",
    body="Lethargy Sayon +2",
    --hands="Leth. Ganth. +2",
    hands="Jhakri Cuffs +2",
    legs="Leth. Fuseau +2",
    feet="Leth. Houseaux +2",
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Malignance Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Weatherspoon Ring",
    --right_ring="Epaminondas's Ring",
    right_ring="Freke Ring",
    back={ name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	}
	
	sets.ws['Black Halo']	= {
	ammo="Oshasha's Treatise",
    head="Jhakri Coronal +2",
    body="Jhakri Robe +2",
    hands="Jhakri Cuffs +2",
    legs="Jhakri Slops +2",
    feet="Leth. Houseaux +2",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Sroda Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	}
	sets.ws['Realmrazer']	= {
	ammo="Oshasha's Treatise",
    head="Jhakri Coronal +2",
    body="Jhakri Robe +2",
    hands="Atrophy Gloves +3",
    legs={ name="Taeon Tights", augments={'Accuracy+25','"Triple Atk."+2','STR+5 DEX+5',}},
    feet="Leth. Houseaux +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epaminondas's Ring",
    right_ring="Rajas Ring",
    back={ name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	}
	
	sets.ws['Aeolian Edge'] = {
	-- ammo="Perfect Lucky Egg",
    -- feet={ name="Chironic Slippers", augments={'Mag. Acc.+1','Damage taken-1%','"Treasure Hunter"+2',}},
    -- waist="Chaac Belt",
    -- --ammo="Oshasha's Treatise",
    -- --feet="Leth. Houseaux +2",
    -- --waist="Orpheus's Sash",
    -- head="Jhakri Coronal +2",
    -- body="Lethargy Sayon +2",
    -- hands="Jhakri Cuffs +2",
    -- legs="Leth. Fuseau +2",
    -- neck="Sibyl Scarf",
    -- left_ear="Regal Earring",
    -- right_ear="Malignance Earring",
    -- left_ring="Freke Ring",
    -- right_ring="Epaminondas's Ring",
    -- back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+7',}},
	}

	sets.ws['Evisceration'] = {
	ammo="Oshasha's Treatise",
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Jhakri Robe +2",
    hands="Atrophy Gloves +3",
    legs={ name="Taeon Tights", augments={'Accuracy+25','"Triple Atk."+2','STR+5 DEX+5',}},
    feet="Leth. Houseaux +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epaminondas's Ring",
    right_ring="Rajas Ring",
    back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Exenterator'] = {
	ammo="Oshasha's Treatise",
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Jhakri Robe +2",
    hands="Atrophy Gloves +3",
    legs={ name="Taeon Tights", augments={'Accuracy+25','"Triple Atk."+2','STR+5 DEX+5',}},
    feet="Leth. Houseaux +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epaminondas's Ring",
    right_ring="Rajas Ring",
    back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
	sets.ja = {} 					-- Leave this empty.
	
	sets.idle = {} 					-- Leave this empty.
	
	sets.precast = {}               -- leave this empty
	sets.precast.fastcast = {
	ammo="Impatiens",
    head={ name="Carmine Mask", augments={'Accuracy+15','Mag. Acc.+10','"Fast Cast"+3',}},
	body="Vitiation Tabard +1",
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    legs="Ayanmo Cosciales +2",
    feet={ name="Carmine Greaves", augments={'Accuracy+10','DEX+10','MND+15',}},
    neck="Voltsurge Torque",
    waist="Witful Belt",
    left_ear="Malignance Earring",
    right_ear={ name="Lethargy Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
    left_ring="Weatherspoon Ring",
    right_ring="Lebeche Ring",
    back="Ogapepo Cape",
	}
	sets.precast['Dispelga'] = set_combine(sets.precast.fastcast,{ main = "Daybreak" })
	
	Nuke_Set_Names = {'elemental','MB'}
	sets.Nuke = {}
	sets.Nuke.elemental = {
    ammo="Sroda Tathlum",
    head="Ea Hat",
    body="Lethargy Sayon +2",
    hands="Lethargy Gantherots +2",
    legs="Leth. Fuseau +2",
    feet="Leth. Houseaux +2",
    neck="Sibyl Scarf",
    waist="Eschan Stone",
    left_ear="Malignance Earring",
    right_ear="Regal Earring",
    left_ring="Jhakri Ring",
    right_ring="Freke Ring",
    back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+7',}},
	}
	
	sets.Nuke.MB = {
    ammo="Sroda Tathlum",
    head="Ea Hat",
    body="Ea Houppelande",
    hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    legs="Leth. Fuseau +2",
    feet="Jhakri Pigaches +2",
    neck="Mizu. Kubikazari",
    waist="Eschan Stone",
    left_ear="Malignance Earring",
    right_ear="Regal Earring",
    left_ring="Mujin Band",
    right_ring="Freke Ring",
    back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+7',}},
	}
	
	
    sets.midcast = {}               -- leave this empty  
	sets.midcast.enfeebling = {
	ammo="Regal Gem",
    head={ name="Carmine Mask", augments={'Accuracy+15','Mag. Acc.+10','"Fast Cast"+3',}},
    body="Lethargy Sayon +2",
    hands="Lethargy Gantherots +2",
    legs={ name="Chironic Hose", augments={'Mag. Acc.+21 "Mag.Atk.Bns."+21','INT+10','Mag. Acc.+11','"Mag.Atk.Bns."+5',}},
    feet={ name="Vitiation Boots +3", augments={'Immunobreak Chance',}},
    neck={ name="Dls. Torque +1", augments={'Path: A',}},
    waist="Eschan Stone",
    left_ear="Malignance Earring",
    right_ear="Snotra Earring",
    --left_ring="Kishar Ring",
    left_ring="Stikini Ring +1",
    --right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Stikini Ring +1",
    back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+7',}},
}
	sets.midcast.Macc = {
	ammo="Regal Gem",
    head="Jhakri Coronal +2",
    --hands="Jhakri Cuffs +2",
    body="Lethargy Sayon +2",
    hands="Lethargy Gantherots +2",
    legs={ name="Chironic Hose", augments={'Mag. Acc.+21 "Mag.Atk.Bns."+21','INT+10','Mag. Acc.+11','"Mag.Atk.Bns."+5',}},
    feet={ name="Vitiation Boots +3", augments={'Immunobreak Chance',}},
    neck={ name="Dls. Torque +1", augments={'Path: A',}},
    waist="Eschan Stone",
    left_ear="Malignance Earring",
    right_ear="Snotra Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Aurist's Cape +1", augments={'Path: A',}},
}	

	
	sets.midcast.enhancingskill = {
	ammo="Staunch Tathlum",
    --sub="Pukulatmuj +1",
    head={ name="Carmine Mask", augments={'Accuracy+15','Mag. Acc.+10','"Fast Cast"+3',}},
    --body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
	body="Vitiation Tabard +1",
    hands="Vitiation Gloves +2",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Leth. Houseaux +2",
    neck="Melic Torque",
	waist="Olympus Sash",
    left_ear="Augmenting Earring",
    right_ear="Mimir Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +10','Enh. Mag. eff. dur. +20',}},
	}
	sets.midcast.barspell = {
	ammo="Staunch Tathlum",
    --sub="Pukulatmuj +1",
    head={ name="Carmine Mask", augments={'Accuracy+15','Mag. Acc.+10','"Fast Cast"+3',}},
    --body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
	body="Vitiation Tabard +1",
    hands="Vitiation Gloves +2",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Leth. Houseaux +2",
    neck="Sroda Necklace",
	waist="Olympus Sash",
    left_ear="Augmenting Earring",
    right_ear="Mimir Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +10','Enh. Mag. eff. dur. +20',}},
	}

	sets.midcast.phalanx = {
	ammo="Staunch Tathlum",
	sub="Sakpata's Sword",
    head={ name="Taeon Chapeau", augments={'"Fast Cast"+5','Phalanx +3',}},
    body={ name="Taeon Tabard", augments={'"Fast Cast"+5','Phalanx +3',}},
    hands={ name="Taeon Gloves", augments={'"Fast Cast"+5','Phalanx +3',}},
    legs={ name="Taeon Tights", augments={'"Fast Cast"+5','Phalanx +3',}},
    feet={ name="Taeon Boots", augments={'"Fast Cast"+5','Phalanx +3',}},
    neck={ name="Dls. Torque +1", augments={'Path: A',}},
	waist="Embla Sash",
    left_ear="Mimir Earring",
    right_ear={ name="Lethargy Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +10','Enh. Mag. eff. dur. +20',}},
	}		
	
	sets.midcast.enhancingskillPT = {	
	sub="",
	ammo="Staunch Tathlum",
    head={ name="Carmine Mask", augments={'Accuracy+15','Mag. Acc.+10','"Fast Cast"+3',}},
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    hands="Vitiation Gloves +2",
    legs="Leth. Fuseau +2",
    feet="Leth. Houseaux +2",
    neck={ name="Dls. Torque +1", augments={'Path: A',}},
    waist="Embla Sash",
    left_ear="Mimir Earring",
    right_ear={ name="Lethargy Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +10','Enh. Mag. eff. dur. +20',}},
}	
	

	
	sets.midcast.enhancingduration = {
	ammo="Staunch Tathlum",
    head={ name="Telchine Cap", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    hands="Atrophy Gloves +3",
     legs={ name="Telchine Braconi", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    feet="Leth. Houseaux +2",
    neck={ name="Dls. Torque +1", augments={'Path: A',}},
	waist="Embla Sash",
    left_ear="Mimir Earring",
    right_ear={ name="Lethargy Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +10','Enh. Mag. eff. dur. +20',}},
	}
	
	sets.midcast.enhancingdurationPT = {
	ammo="Staunch Tathlum",
    head="Lethargy Chappel",
    body="Lethargy Sayon +2",
    hands="Lethargy Gantherots +2",
    legs="Leth. Fuseau +2",
    feet="Leth. Houseaux +2",
    neck={ name="Dls. Torque +1", augments={'Path: A',}},
	waist="Embla Sash",
    left_ear="Mimir Earring",
    right_ear={ name="Lethargy Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +10','Enh. Mag. eff. dur. +20',}},
	}
	
	sets.midcast.refresh = {
	ammo="Staunch Tathlum",
	head="Amalric Coif",
    body="Atrophy Tabard +2",
    hands="Atrophy Gloves +3",
    legs="Leth. Fuseau +2",
    feet="Leth. Houseaux +2",
    neck={ name="Dls. Torque +1", augments={'Path: A',}},
	waist="Gishdubar Sash",
    left_ear="Aredan Earring",
    right_ear={ name="Lethargy Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +10','Enh. Mag. eff. dur. +20',}},
	}
	
	sets.midcast.cure = {
	ammo="Staunch Tathlum",
	head={ name="Telchine Cap", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    hands={ name="Telchine Gloves", augments={'"Cure" potency +7%',}},
    legs={ name="Telchine Braconi", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
	feet={ name="Vanya Clogs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
	waist="Gishdubar Sash",
    neck="Phalaina Locket",
    left_ear="Halasz Earring",
    right_ear="Magnetic Earring",
	left_ring="Kunaji Ring",
    right_ring="Menelaus's Ring",
    back="Tempered Cape +1",
	}
	sets.midcast.regen = {
	ammo="Staunch Tathlum",
    sub="Bolelabunga",
    head={ name="Taeon Chapeau", augments={'"Regen" potency+3',}},
    body={ name="Telchine Chas.", augments={'"Regen" potency+3',}},
    hands={ name="Taeon Gloves", augments={'"Cure" potency +5%','"Regen" potency+3',}},
    legs={ name="Taeon Tights", augments={'"Regen" potency+3',}},
    feet={ name="Taeon Boots", augments={'"Regen" potency+3',}},
	waist="Embla Sash",
    neck={ name="Dls. Torque +1", augments={'Path: A',}},
    left_ear="Mimir Earring",
    right_ear={ name="Lethargy Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +10','Enh. Mag. eff. dur. +20',}},
	}
	



	ElementalGear = {}
	ElementalGear.Obi = "Hachirin-no-Obi"
	ElementalGear.Cape = "Twilight Cape"
	ElementalGear.Ring = "Archon Ring"
	ElementalGear.Head = "Pixie Hairpin +1"
	sets.midcast.CureWithLightWeather = {back=ElementalGear.Cape,waist=ElementalGear.Obi}
	sets.midcast.NukeWithMatchingWeather = {back=ElementalGear.Cape,waist=ElementalGear.Obi}

	
    sets.aftercast = {}             -- leave this empty
	
	Buff_Set_Names = {'Holywater'}
	sets.buff = {} 					-- Leave this empty.
	sets.buff.reive = {
	neck="Ygnas\'s Resolve +1",
	}
	sets.buff.Holywater = {
    neck="Nicander's Necklace",
    left_ring="Blenmot's Ring",
    right_ring="Purity Ring",
    waist="Gishdubar Sash",	
    feet={ name="Vanya Clogs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
	}
	sets.buff.CursnaOthers = {
    neck="Malison Medallion",
	body="Vitiation Tabard +1",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    waist="Gishdubar Sash",
    feet={ name="Vanya Clogs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
    left_ring="Ephedra Ring",
    right_ring="Menelaus's Ring",
	}
	sets.buff.CursnaSelf = {
    neck="Nicander's Necklace",
	body="Vitiation Tabard +1",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    waist="Gishdubar Sash",
    feet={ name="Vanya Clogs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
    left_ring="Ephedra Ring",
    right_ring="Menelaus's Ring",
	}
end

function precast(spell)
    if  spell.action_type == 'Magic' then
        equip(sets.precast.fastcast)
	end
    if sets.ws[spell.name] then
        equip(sets.ws[spell.name])        
    end  
    if sets.ja[spell.name] then
        equip(sets.ja[spell.name])
	end

end

function midcast(spell)
	if spell.name:match ('Sleep') or spell.name:match ('Blind') or spell.name =="Frazzle II" or spell.name:match ('Gravity') or spell.name:match ('Dispel')or spell.name:match ('Break')or spell.name:match ('Bind')then
			equip(sets.midcast.Macc)
	elseif spell.skill == 'Enfeebling Magic' or spell.name =="Frazzle III" then
			equip(sets.midcast.enfeebling)
				if spell.name:match('Diaga') then
					equip(sets.TH.TH3)
			end
		end	
	if spell.name:match('Refresh') or spell.name:match('Aquaveil') then
		equip(sets.midcast.refresh) else
			if spell.name:match('Regen') then
				equip(sets.midcast.regen) else
					if spell.name:match('Refresh') or spell.name:match('Aquaveil') then
						equip(sets.midcast.refresh) else
									if buffactive['Composure'] and spell.skill == 'Enhancing Magic' and spell.target.type == 'PLAYER' or spell.target.type == 'NPC' then
										equip(sets.midcast.enhancingdurationPT) else
											if spell.skill == 'Enhancing Magic' and spell.target.type == 'SELF' or spell.target.type == 'PLAYER' or spell.target.type == 'NPC' then
												equip(sets.midcast.enhancingduration)
										
									end
								end
							end
						end
					end
				
	if spell.name:match('Bar') then
		equip(sets.midcast.barspell)
	end
	if spell.name:match('Phalanx') then
		equip(sets.midcast.phalanx)
			if spell.name:match('Phalanx II') then
				equip(sets.midcast.enhancingskillPT) else
			end
		end
	if spell.target.type == 'SELF' and spell.name:match('Temper') or spell.name:match('En') or spell.name:match('Gain-') or spell.name:match('Stoneskin') then
		equip(sets.midcast.enhancingskill)		
	end	
    if spell.action_type == 'Magic' then
        if spell.skill == 'Elemental Magic' then
            equip(sets.Nuke[Nuke_Set_Names[Nuke_Index]])
            if world.weather_element == spell.element or world.day_element == spell.element then
                equip(sets.midcast.NukeWithMatchingWeather)
			end
		end
	end

    if spell.action_type == 'Magic' then
		if spell.skill == 'Healing Magic' then
			equip(sets.midcast.cure)
				if spell.name:match('Cursna') and spell.target.type == 'SELF' then
					equip(sets.buff.CursnaSelf)	else
				if spell.name:match('Cursna') and spell.target.type == 'PLAYER' then
					equip(sets.buff.CursnaOthers)
				end
			end
		end
	end
end


function aftercast(spell)
	idle()
end
 
function status_change(new,old)
	idle()
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
    if buff == "doom" then
        if gain then
            equip(sets.buff.Holywater)
             disable('ring1','ring2','waist','neck','feet')
        else
            enable('ring1','ring2','waist','neck','feet')
			idle()
        end
    end
end

function idle()
	if player.status=='Engaged' and player.sub_job ~='NIN' or player.sub_job ~= 'DNC'then
		equip(sets.SW[SW_Set_Names[SW_Index]])
			if player.equipment.main ~= "Crocea Mors" then
				equip(sets.malig.hands)	
		end
	end
	if player.status=='Engaged' and player.sub_job =='NIN' or player.sub_job == 'DNC' then
        equip(sets.DW[DW_Set_Names[DW_Index]])
			if player.equipment.main ~= "Crocea Mors" then
				equip(sets.malig.hands)	
			end 
		end
	if player.status =='Idle' then
		equip(sets.refresh.battle)
	end
end

function self_command(command)
	if command == 'toggle DW set' then
        DW_Index = DW_Index +1
    if DW_Index > #DW_Set_Names then DW_Index = 1 end
        windower.add_to_chat('DW mode is now: '..DW_Set_Names[DW_Index])
        equip(sets.DW[DW_Set_Names[DW_Index]])
    end
	if command == 'toggle refresh set' then
        Refresh_Index = Refresh_Index +1
    if Refresh_Index > #Refresh_Set_Names then Refresh_Index = 1 end
        windower.add_to_chat('Idle mode is now: '..Refresh_Set_Names[Refresh_Index])
        equip(sets.refresh[Refresh_Set_Names[Refresh_Index]])
    end
	if command == 'toggle SW set' then
        SW_Index = SW_Index +1
    if SW_Index > #SW_Set_Names then SW_Index = 1 end
        windower.add_to_chat('SW mode is now: '..SW_Set_Names[SW_Index])
        equip(sets.SW[SW_Set_Names[SW_Index]])
    end
	if command == 'toggle TH set' then
        TH_Index = TH_Index +1
    if TH_Index > #TH_Set_Names then TH_Index = 1 end
        windower.add_to_chat('TH mode is now: '..TH_Set_Names[TH_Index])
        equip(sets.TH[TH_Set_Names[TH_Index]])
    end
	if command == 'toggle Sword set' then
        Sword_Index = Sword_Index +1
    if Sword_Index > #Sword_Set_Names then Sword_Index = 1 end
        windower.add_to_chat('Sword set is now: '..Sword_Set_Names[Sword_Index])
        equip(sets.Sword[Sword_Set_Names[Sword_Index]])
    end
	if command == 'toggle Crocea set' then
        Crocea_Index = Crocea_Index +1
    if Crocea_Index > #Crocea_Set_Names then Crocea_Index = 1 end
        windower.add_to_chat('Crocea Mors Sub Weapon is now: '..Crocea_Set_Names[Crocea_Index])
        equip(sets.Crocea[Crocea_Set_Names[Crocea_Index]])
    end
	if command == 'toggle Buff set' then
        Buff_Index = Buff_Index +1
    if Buff_Index > #Buff_Set_Names then Buff_Index = 1 end
        windower.add_to_chat('Buff mode is now: '..Buff_Set_Names[Buff_Index])
        equip(sets.buff[Buff_Set_Names[Buff_Index]])
    end
	if command == 'toggle Nuke set' then
        Nuke_Index = Nuke_Index +1
    if Nuke_Index > #Nuke_Set_Names then Nuke_Index = 1 end
        windower.add_to_chat('Nuke mode is now: '..Nuke_Set_Names[Nuke_Index])
    end
end


function file_unload()
send_command('unbind f9')
send_command('unbind !f9')
send_command('unbind f10')
send_command('unbind !f10')
send_command('unbind f12')
send_command('unbind !f12')
send_command('unbind f7')
send_command('unbind !f7')
send_command('unbind numpad1')
end
