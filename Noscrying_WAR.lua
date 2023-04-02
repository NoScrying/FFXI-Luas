function get_sets()
	send_command('bind f9 gs c toggle melee set') -- F9 = Cycle through
	send_command('bind !f9 gs c toggle DW set') -- F9 = Cycle through
	send_command('bind f10 gs c toggle run set') -- F10 = Cycle through
	send_command('bind !f12 gs c toggle Niche set') -- F10 = Cycle through
	send_command('bind f12 gs c toggle TH set') -- F10 = Cycle through
	send_command('bind f7 gs c toggle Weapons set') -- F10 = Cycle through
	send_command('bind !f7 gs c toggle Sub_Weapons set') -- F10 = Cycle through
	send_command('bind numpad1 gs c toggle Buff set') -- F12 = Cycle through
	
	Melee_Index = 1
	Run_Index = 1
	TH_Index = 1
	DW_Index = 1
	Weapons_Index = 1
	Sub_Weapons_Index = 1
	Niche_Index = 1
	Buff_Index = 1	
	
	
	Weapons_Set_Names = {'Naegling','Shining_One'}
	sets.weapons = {}
	sets.weapons.Naegling = {
    main="Naegling",
	sub="Blurred Shield +1",
	}
	sets.weapons.Lycurgos = {
    main="Lycurgos",
	sub="Utu Grip",
	}
	sets.weapons.Shining_One = {
    main="Shining One",
	sub="Utu Grip",
	}
	sets.weapons.Loxotic = {
    main={ name="Loxotic Mace +1", augments={'Path: A',}},
	sub="Blurred Shield +1",
	}
	
	Sub_Weapons_Set_Names = {'Lycurgos','Loxotic'}--'Kaja_Greatsword','Lycurgos',
	sets.sub_weapons = {}
	sets.sub_weapons.Loxotic = {
    main={ name="Loxotic Mace +1", augments={'Path: A',}},
	sub="Blurred Shield +1",
	}
	sets.sub_weapons.Kaja_Greatsword = {
    main="Kaja Claymore",
	sub="Utu Grip",
	}
	sets.sub_weapons.Lycurgos = {
    main="Lycurgos",
	sub="Utu Grip",
	}

	Melee_Set_Names = {'normal', 'DT'}
	sets.melee = {} 					-- Leave this empty.
	sets.melee.normal = {
    -- ammo="Aurgelmir Orb",
    -- head="Hjarrandi Helm",
    -- body="Boii Lorica +2",
    -- hands="Sakpata's Gauntlets",
    -- legs="Boii Cuisses +2",
    -- feet="Flam. Gambieras +2",
    -- neck={ name="War. Beads +1", augments={'Path: A',}},
    -- waist="Ioskeha Belt +1",
    -- left_ear="Dedition Earring",
    -- right_ear="Crep. Earring",
    -- left_ring="Chirich Ring",
    -- right_ring="Chirich Ring +1",
    -- back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
--
    ammo="Aurgelmir Orb",
    head="Hjarrandi Helm",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Boii Cuisses +2",
    feet="Flam. Gambieras +2",
    neck={ name="War. Beads +1", augments={'Path: A',}},
    waist="Ioskeha Belt +1",
    left_ear="Brutal Earring",
    right_ear={ name="Boii Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
    left_ring="Niqmaddu Ring",
    right_ring="Chirich Ring +1",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.melee.DT = {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Sakpata's Helm",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    neck={ name="War. Beads +1", augments={'Path: A',}},
    waist="Ioskeha Belt +1",
    right_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    left_ear="Cessance Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Chirich Ring +1",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
	Niche_Set_Names = {'Counter'}
	sets.niche = {}
	sets.niche.Counter = {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Sakpata's Helm",
    body="Sacro Breastplate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
	feet="Sakpata's Leggings",
    neck={ name="Bathy Choker +1", augments={'Path: A',}},
    waist="Cornelia's Belt",
    left_ear="Dedition Earring",
    right_ear="Crep. Earring",
	left_ring="Niqmaddu Ring",
    right_ring="Defending Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.melee.Sword_and_board = set_combine(sets.melee.normal,{
    --legs={ name="Tatenashi Haidate +1", augments={'Path: A',}},
	legs="Boii Cuisses +2",
	})
	
	DW_Set_Names = {'NormalDW', 'DTDW'}
	sets.DW = {}
	sets.DW.NormalDW = set_combine(sets.melee.normal,{
	left_ear="Suppanomimi",
    right_ear="Eabani Earring",
	})
	sets.DW.DTDW = set_combine(sets.melee.DT,{
	left_ear="Suppanomimi",
    right_ear="Eabani Earring",
	})


	TH_Set_Names = {'TH'}
	sets.TH = {}
	sets.TH.TH = {
    head="White Rarab Cap +1",
	hands={ name="Valorous Mitts", augments={'"Mag.Atk.Bns."+1','Attack+11','"Treasure Hunter"+1','Accuracy+8 Attack+8','Mag. Acc.+3 "Mag.Atk.Bns."+3',}},
	ammo="Perfect Lucky Egg",
    waist="Chaac Belt",
	}	

	Run_Set_Names = {'DT'}
	sets.run = {}
	sets.run.DT =  {
    ammo="Staunch Tathlum",
    head="Baghere Salade",
    body="Sacro Breastplate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
	feet="Hermes' Sandals",
    neck={ name="Bathy Choker +1", augments={'Path: A',}},
    waist="Platinum Moogle Belt",
    left_ear="Infused Earring",
    right_ear="Odnowa Earring +1",
	left_ring="Defending Ring",
    right_ring="Chirich Ring +1",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}

	
	sets.ws = {} 					-- Leave this empty.
	sets.ws.lugra = {
	right_ear={ name="Lugra Earring +1", augments={'Path: A',}},
	}
	
	sets.ws['Resolution']	= {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Sakpata's Plate",
    hands="Boii Mufflers +2",
    legs={ name="Tatena. Haidate +1", augments={'Path: A',}},
    feet="Sulev. Leggings +2",
    neck={ name="War. Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Sroda Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
	sets.ws['Ground Strike']	= {
	ammo="Knobkierrie",
    head={ name="Odyssean Helm", augments={'Accuracy+28','Weapon skill damage +4%','CHR+10','Attack+11',}},
    body={ name="Valorous Mail", augments={'Weapon skill damage +4%','STR+13','Attack+5',}},
    hands="Boii Mufflers +2",
    legs={ name="Valorous Hose", augments={'Attack+22','Weapon skill damage +5%','VIT+8','Accuracy+2',}},
    feet="Sulevia's Leggings +2",
    neck={ name="War. Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    right_ear="Moonshade Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Rufescent Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	
	sets.ws['King\'s Justice']	= {
	ammo="Knobkierrie",
    head="Flamma Zucchetto +2",
    body="Sakpata\'s Breastplate",
    hands="Sakpata\'s Gauntlets",
	legs="Boii Cuisses +2",
    feet="Sulevia's Leggings +2",
    neck={ name="War. Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear="Moonshade Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Upheaval']	= {
	ammo="Knobkierrie",
    head={ name="Odyssean Helm", augments={'Accuracy+28','Weapon skill damage +4%','CHR+10','Attack+11',}},
    body={ name="Valorous Mail", augments={'Weapon skill damage +4%','STR+13','Attack+5',}},
    hands="Boii Mufflers +2",
    legs={ name="Valorous Hose", augments={'Attack+22','Weapon skill damage +5%','VIT+8','Accuracy+2',}},
    feet="Sulevia's Leggings +2",
    neck={ name="War. Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear="Moonshade Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Ukko\'s Fury']	= {
	ammo="Knobkierrie",
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Hjarrandi Breastplate",
    hands="Flamma Manopolas +2",
	legs="Boii Cuisses +2",
    feet="Sulevia's Leggings +2",
    neck={ name="War. Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear="Moonshade Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Armor Break']	= {
	ammo="Knobkierrie",
    head={ name="Odyssean Helm", augments={'Accuracy+28','Weapon skill damage +4%','CHR+10','Attack+11',}},
    body={ name="Valorous Mail", augments={'Weapon skill damage +4%','STR+13','Attack+5',}},
    hands="Boii Mufflers +2",
    legs={ name="Valorous Hose", augments={'Attack+22','Weapon skill damage +5%','VIT+8','Accuracy+2',}},
    feet="Sulevia's Leggings +2",
    neck={ name="War. Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    right_ear="Moonshade Earring",
    left_ring="Petrov Ring",
    right_ring="Rufescent Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Steel Cyclone']	= {
	ammo="Knobkierrie",
    head={ name="Odyssean Helm", augments={'Accuracy+28','Weapon skill damage +4%','CHR+10','Attack+11',}},
    body={ name="Valorous Mail", augments={'Weapon skill damage +4%','STR+13','Attack+5',}},
    hands="Boii Mufflers +2",
    legs={ name="Valorous Hose", augments={'Attack+22','Weapon skill damage +5%','VIT+8','Accuracy+2',}},
    feet="Sulevia's Leggings +2",
    neck={ name="War. Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear="Moonshade Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Fell Cleave']	= {
	ammo="Knobkierrie",
    head={ name="Odyssean Helm", augments={'Accuracy+28','Weapon skill damage +4%','CHR+10','Attack+11',}},
    body={ name="Valorous Mail", augments={'Weapon skill damage +4%','STR+13','Attack+5',}},
    hands="Boii Mufflers +2",
    legs={ name="Valorous Hose", augments={'Attack+22','Weapon skill damage +5%','VIT+8','Accuracy+2',}},
    feet="Sulevia's Leggings +2",
    neck={ name="War. Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear="Moonshade Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Decimation']	= {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head={ name="Odyssean Helm", augments={'Accuracy+28','Weapon skill damage +4%','CHR+10','Attack+11',}},
    body={ name="Valorous Mail", augments={'Weapon skill damage +4%','STR+13','Attack+5',}},
    hands={ name="Tatena. Gote +1", augments={'Path: A',}},
    legs={ name="Tatena. Haidate +1", augments={'Path: A',}},
    feet={ name="Tatena. Sune. +1", augments={'Path: A',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Thrud Earring",
    right_ear="Moonshade Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Sroda Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Mistral Axe']	= {
	ammo="Knobkierrie",
    head="Flamma Zucchetto +2",
    body="Sakpata\'s Breastplate",
	hands="Boii Mufflers +2",
    legs={ name="Tatenashi Haidate +1", augments={'Path: A',}},
    feet="Sulevia's Leggings +2",
    neck={ name="War. Beads +1", augments={'Path: A',}},
    waist="Fotia Belt",
    left_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    right_ear="Moonshade Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Rampage']	= {
	ammo="Knobkierrie",
    head="Flamma Zucchetto +2",
    body="Sakpata\'s Breastplate",
    hands={ name="Tatena. Gote +1", augments={'Path: A',}},
    legs={ name="Tatena. Haidate +1", augments={'Path: A',}},
    feet="Sulevia's Leggings +2",
    neck={ name="War. Beads +1", augments={'Path: A',}},
    waist="Fotia Belt",
    left_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    right_ear="Moonshade Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Ruinator']	= {
	ammo="Knobkierrie",
    head="Flamma Zucchetto +2",
    body="Sakpata\'s Breastplate",
    hands={ name="Tatena. Gote +1", augments={'Path: A',}},
    legs={ name="Tatena. Haidate +1", augments={'Path: A',}},
    feet={ name="Tatena. Sune. +1", augments={'Path: A',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    right_ear="Moonshade Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Calamity']	= {
    ammo="Knobkierrie",
    head={ name="Odyssean Helm", augments={'Accuracy+28','Weapon skill damage +4%','CHR+10','Attack+11',}},
    body="Hjarrandi Breast.",
    hands="Boii Mufflers +2",
    legs={ name="Valorous Hose", augments={'Attack+22','Weapon skill damage +5%','VIT+8','Accuracy+2',}},
    feet="Sulev. Leggings +2",
    neck={ name="War. Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	
	sets.ws['Savage Blade']	= {
	ammo="Knobkierrie",
    head={ name="Odyssean Helm", augments={'Accuracy+28','Weapon skill damage +4%','CHR+10','Attack+11',}},
    body={ name="Valorous Mail", augments={'Weapon skill damage +4%','STR+13','Attack+5',}},
    hands="Boii Mufflers +2",
    legs={ name="Valorous Hose", augments={'Attack+22','Weapon skill damage +5%','VIT+8','Accuracy+2',}},
    feet="Sulevia's Leggings +2",
    neck={ name="War. Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear="Moonshade Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Vorpal Blade']	= {
    ammo="Knobkierrie",
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Hjarrandi Breast.",
    hands="Flam. Manopolas +2",
    legs="Boii Cuisses +2",
    feet="Flam. Gambieras +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Requiescat']	= {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Flamma Zucchetto +2",
    body="Sakpata\'s Breastplate",
    hands="Sakpata\'s Gauntlets",
    legs={ name="Tatenashi Haidate +1", augments={'Path: A',}},
    feet="Sulevia's Leggings +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    right_ear="Moonshade Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Sanguine Blade']	= {
    ammo="Knobkierrie",
    head="Pixie Hairpin +1",
    body="Sacro Breastplate",
    hands="Boii Mufflers +2",
    legs="Boii Cuisses +2",
    feet="Sulev. Leggings +2",
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Friomisi Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Archon Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}	

	sets.ws['Stardiver']	= {
	ammo="Knobkierrie",
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Hjarrandi Breastplate",
    hands={ name="Tatena. Gote +1", augments={'Path: A',}},
    legs={ name="Tatena. Haidate +1", augments={'Path: A',}},
    feet={ name="Tatena. Sune. +1", augments={'Path: A',}},
    neck={ name="War. Beads +1", augments={'Path: A',}},
    waist="Fotia Belt",
    left_ear="Thrud Earring",
    right_ear="Moonshade Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Sroda Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Sonic Thrust']	= {
	ammo="Knobkierrie",
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Hjarrandi Breastplate",
    hands="Flamma Manopolas +2",
	legs="Boii Cuisses +2",
    feet="Sulevia's Leggings +2",
    neck={ name="War. Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear="Moonshade Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Impulse Drive']	= {
	ammo="Knobkierrie",
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Hjarrandi Breastplate",
	--hands="Flamma Manopolas +2",
    hands="Boii Mufflers +2",
	legs="Boii Cuisses +2",
    feet="Sulevia's Leggings +2",
    neck={ name="War. Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear="Moonshade Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Judgment']	= {
	ammo="Knobkierrie",
    head={ name="Odyssean Helm", augments={'Accuracy+28','Weapon skill damage +4%','CHR+10','Attack+11',}},
    body={ name="Valorous Mail", augments={'Weapon skill damage +4%','STR+13','Attack+5',}},
    hands="Boii Mufflers +2",
    legs="Boii Cuisses +2",
    feet="Sulevia's Leggings +2",
    neck={ name="War. Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear="Moonshade Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Realmrazer']	= {
    ammo="Knobkierrie",
    head={ name="Odyssean Helm", augments={'Accuracy+28','Weapon skill damage +4%','CHR+10','Attack+11',}},
    body={ name="Valorous Mail", augments={'Weapon skill damage +4%','STR+13','Attack+5',}},
    hands={ name="Tatena. Gote +1", augments={'Path: A',}},
    legs={ name="Tatena. Haidate +1", augments={'Path: A',}},
    feet={ name="Tatena. Sune. +1", augments={'Path: A',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Thrud Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}	
	sets.ws['Flash Nova']	= {
    ammo="Knobkierrie",
    head={ name="Odyssean Helm", augments={'Accuracy+28','Weapon skill damage +4%','CHR+10','Attack+11',}},
    body="Sacro Breastplate",
    hands="Boii Mufflers +2",
    legs="Boii Cuisses +2",
    feet="Sulev. Leggings +2",
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Friomisi Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Weather. Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}		
	sets.ws['Evisceration']	= {
    ammo="Knobkierrie",
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Hjarrandi Breast.",
    hands="Flam. Manopolas +2",
    legs="Boii Cuisses +2",
    feet="Flam. Gambieras +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.ja = {} 					-- Leave this empty

	sets.ja['Berserk'] = {
    body="Pumm. Lorica +1",
    feet={ name="Agoge Calligae +1", augments={'Enhances "Tomahawk" effect',}},
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.ja['Warcry'] = {
    head={ name="Agoge Mask +1", augments={'Enhances "Savagery" effect',}},
    body="Emet Harness",
    feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    hands="Yorium Gauntlets",
    legs="Odyssean Cuisses",
    neck="Unmoving Collar",
    waist="Flume Belt",
    left_ear="Friomisi Earring",
    right_ear="Eris' Earring",
    left_ring="Supershear Ring",
    right_ring="Provocare Ring",
	}	
	sets.ja['Tomahawk'] = {
	ammo="Thr. Tomahawk",
    feet={ name="Agoge Calligae +1", augments={'Enhances "Tomahawk" effect',}},
	}
	sets.ja['Aggressor'] = {	
	body="Warrior's Lorica +1",
    feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    hands="Yorium Gauntlets",
    legs="Odyssean Cuisses",
    neck="Unmoving Collar",
    waist="Flume Belt",
    left_ear="Friomisi Earring",
    right_ear="Eris' Earring",
    left_ring="Supershear Ring",
    right_ring="Provocare Ring",
	}
	sets.ja['Retaliation'] = {	
    neck="Unmoving Collar",
    body="Emet Harness",
    feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    hands="Yorium Gauntlets",
    legs="Odyssean Cuisses",
    waist="Flume Belt",
    left_ear="Friomisi Earring",
    right_ear="Eris' Earring",
    left_ring="Supershear Ring",
    right_ring="Provocare Ring",
	}
	sets.ja['Blood Rage'] = {
    body="Boii Lorica +2",
	}
	sets.ja['Restraint'] = {
	hands="Boii Mufflers +2",
	}
	sets.ja['Provoke'] = {	
    body="Emet Harness",
    feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    hands="Yorium Gauntlets",
    legs="Odyssean Cuisses",
    neck="Unmoving Collar",
    waist="Flume Belt",
    left_ear="Friomisi Earring",
    right_ear="Eris' Earring",
    left_ring="Supershear Ring",
    right_ring="Provocare Ring",
	}
	sets.ja['Brazen Rush'] = {
	ammo="Aurgelmir Orb",
    head="Hjarrandi Helm",
    body="Boii Lorica +2",
    hands={ name="Valorous Mitts", augments={'"Store TP"+7','Accuracy+14',}},
    legs={ name="Odyssean Cuisses", augments={'Accuracy+25 Attack+25','"Store TP"+6','Accuracy+10',}},
    feet="Flam. Gambieras +2",
    neck={ name="War. Beads +1", augments={'Path: A',}},
    waist="Ioskeha Belt +1",
    left_ear="Dedition Earring",
    right_ear="Crep. Earring",
    left_ring="Chirich Ring",
    right_ring="Chirich Ring +1",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.idle = {} 					-- Leave this empty
	sets.idle.normal = {
    ammo="Staunch Tathlum",
    head="Baghere Salade",
    body="Sacro Breastplate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
	feet="Hermes' Sandals",
    neck={ name="Bathy Choker +1", augments={'Path: A',}},
	waist="Asklepian Belt",
    left_ear="Crepuscular Earring",
    right_ear="Odnowa Earring +1",
	left_ring="Defending Ring",
    right_ring="Chirich Ring +1",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
	sets.precast = {}               -- leave this empty
	sets.precast.fastcast = {
	ammo="Impatiens",
    head="Sakpata's Helm",
    neck="Voltsurge Torque",
    body="Sacro Breastplate",
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
	legs="Carmine Cuisses +1",
	feet={ name="Carmine Greaves", augments={'Accuracy+10','DEX+10','MND+15',}},
	left_ring="Lebeche Ring",
	right_ring="Weatherspoon Ring",
    left_ear="Malignance Earring",	
    right_ear="Loquacious Earring",
	} 	
    sets.midcast = {}               -- leave this empty  
	
	Buff_Set_Names = {'Holywater','Phalanx'}
	sets.buff = {} 					-- Leave this empty.
	sets.buff.reive = {
	neck="Ygnas\'s Resolve +1",
	}
	sets.buff.Holywater = {
    neck="Nicander's Necklace",
    left_ring="Blenmot's Ring",
    right_ring="Purity Ring",
	}
	sets.buff.Phalanx = {
    legs="Sakpata's Cuisses",
    body={ name="Yorium Cuirass", augments={'Phalanx +3',}},
    hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
	}

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
			if player.tp >= 1500 and player.equipment.sub == "Blurred Shield +1" then
				equip (sets.ws.lugra)
					elseif player.tp >= 2500 then
						equip (sets.ws.lugra)
			end
		end		
	end        

function midcast(spell)

end

function aftercast(spell)
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
    end


function idle()
	if player.status =='Engaged' then
		equip(sets.melee[Melee_Set_Names[Melee_Index]])
			if buffactive['Brazen Rush'] then
				equip(sets.ja['Brazen Rush'])
			end
	if player.status == 'Engaged' and player.equipment.sub == 'Ternion Dagger +1' or player.equipment.sub == 'Zantetsuken' then
		equip(sets.DW[DW_Set_Names[DW_Index]])
	end	
end
	if player.status =='Idle' then
		equip(sets.idle.normal)
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
	if command == 'toggle run set' then
        Run_Index = Run_Index +1
        if Run_Index > #Run_Set_Names then Run_Index = 1 end
        windower.add_to_chat('Movement is now: '..Run_Set_Names[Run_Index])
		equip(sets.run[Run_Set_Names[Run_Index]])
	end
	if command == 'toggle TH set' then
        TH_Index = TH_Index +1
    if TH_Index > #TH_Set_Names then TH_Index = 1 end
        windower.add_to_chat('TH mode is now: '..TH_Set_Names[TH_Index])
        equip(sets.TH[TH_Set_Names[TH_Index]])
    end
	if command == 'toggle DW set' then
        DW_Index = DW_Index +1
        if DW_Index > #DW_Set_Names then DW_Index = 1 end
        windower.add_to_chat('DW mode is now: '..DW_Set_Names[DW_Index])
		equip(sets.DW[DW_Set_Names[DW_Index]])
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
	if command == 'toggle Niche set' then
        Niche_Index = Niche_Index +1
        if Niche_Index > #Niche_Set_Names then Niche_Index = 1 end
        windower.add_to_chat('Niche mode is now: '..Niche_Set_Names[Niche_Index])
		equip(sets.niche[Niche_Set_Names[Niche_Index]])
	end
	if command == 'toggle Buff set' then
        Buff_Index = Buff_Index +1
    if Buff_Index > #Buff_Set_Names then Buff_Index = 1 end
        windower.add_to_chat('Buff mode is now: '..Buff_Set_Names[Buff_Index])
        equip(sets.buff[Buff_Set_Names[Buff_Index]])
    end
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
end
