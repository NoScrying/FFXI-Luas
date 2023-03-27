function get_sets()
	send_command('bind f9 gs c toggle melee set') -- F9 = Cycle through
	send_command('bind !f10 gs c toggle Niche set') -- F10 = Cycle through
	send_command('bind f10 gs c toggle run set') -- F10 = Cycle through
	send_command('bind f12 gs c toggle TH set') -- F10 = Cycle through
	send_command('bind f7 gs c toggle Weapons set') -- F10 = Cycle through
	send_command('bind !f7 gs c toggle Sub_Weapons set') -- F10 = Cycle through
	send_command('bind !numpad1 gs c toggle Buff set')
	send_command('bind !numpad0 gs c toggle Emergency MEVA')
	send_command('bind !f9 gs c toggle Apoc set')
	Melee_Index = 1
	Niche_Index = 1
	Run_Index = 1
	TH_Index = 1
	Weapons_Index = 1
	Sub_Weapons_Index = 1
	Buff_Index = 1	
	Apoc_Index = 1

	Weapons_Set_Names = {'Caladbolg','Apocalypse'}
	sets.weapons = {}
	sets.weapons.Caladbolg = {
    main="Caladbolg",
	sub="Utu Grip",
}
	sets.weapons.Apocalypse = {
    main="Apocalypse",
	sub="Utu Grip",
}
	
	Sub_Weapons_Set_Names = {'Lycurgos','Loxotic'}--,'Naegling'
	sets.sub_weapons = {}
	sets.sub_weapons.Naegling = {
    main="Naegling",
	sub="Blurred Shield +1",
	}
	sets.sub_weapons.Loxotic = {
    main={ name="Loxotic Mace +1", augments={'Path: A',}},
	sub="Blurred Shield +1",
	}	
	sets.sub_weapons.Lycurgos = {
    main="Lycurgos",
	sub="Utu Grip",
	}	
	
	MEVA_Set_Name = {'MEVA'}
	sets.MEVA = {
    ammo="Staunch Tathlum",
    head="Sakpata's Helm",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    neck="Warder's Charm +1",
    waist="Carrier's Sash",
    left_ear="Tuisto Earring",
    right_ear="Eabani Earring",
    left_ring="Archon Ring",
    right_ring="Purity Ring",
    back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
	Niche_Set_Names = {'Subtle_Blow'}
	sets.niche = {}
	sets.niche.Subtle_Blow = {
	ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Hjarrandi Helm",
    body="Sacro Breastplate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Flam. Gambieras +2",
    neck={ name="Bathy Choker +1", augments={'Path: A',}},
    waist="Ioskeha Belt +1",
    left_ear="Cessance Earring",
    right_ear="Crep. Earring",
    left_ring="Chirich Ring",
    right_ring="Chirich Ring +1",
    back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}
	Apoc_Set_Names = {'Apoc','DT'}
	sets.Apoc = {} 
	sets.Apoc.Apoc = {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    --head="Flamma Zucchetto +2",
    head="Hjarrandi Helm",	
    body="Hjarrandi Breastplate",
    hands={ name="Valorous Mitts", augments={'"Store TP"+7','Accuracy+14',}},
    legs={ name="Odyssean Cuisses", augments={'Accuracy+25 Attack+25','"Store TP"+6','Accuracy+10',}},
    feet="Flamma Gambieras +2",
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist="Ioskeha Belt +1",
    left_ear="Brutal Earring",
	right_ear="Cessance Earring",
    left_ring="Chirich Ring",
    right_ring="Chirich Ring +1",
    back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.Apoc.DT = {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Sakpata's Helm",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist="Ioskeha Belt +1",
    --waist="Asklepian Belt",
    left_ear="Cessance Earring",
	right_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    left_ring="Chirich Ring",
    right_ring="Chirich Ring +1",
    back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.Apoc.NotSAMSJ = {
	ear2="Brutal Earring",
	ear1={ name="Lugra Earring +1", augments={'Path: A',}},
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
	}
	
	Melee_Set_Names = {'normal', 'DT'}
	sets.melee = {} 					-- Leave this empty.
	sets.melee.normal = {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Hjarrandi Helm",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Flam. Gambieras +2",
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist="Ioskeha Belt +1",
    left_ear="Cessance Earring",
    right_ear="Crep. Earring",
    left_ring="Chirich Ring",
    right_ring="Chirich Ring +1",
    back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.melee.DT = {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Sakpata's Helm",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist="Ioskeha Belt +1",
    --waist="Asklepian Belt",
    left_ear="Cessance Earring",
	right_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    left_ring="Chirich Ring",
    right_ring="Chirich Ring +1",
    back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.melee.NotSAMSJ = {
	ear2="Brutal Earring",
	ear1={ name="Lugra Earring +1", augments={'Path: A',}},
	}
	
	Run_Set_Names = {'Refresh','Regen'}
	sets.run = {}
	sets.run.Refresh =  {
    ammo="Aurgelmir Orb",
    head="Sakpata's Helm",
    --body="Sacro Breastplate",
	body="Chozoron Coselete",
    hands="Sakpata\'s Gauntlets",
    legs="Carmine Cuisses +1",
    feet="Sakpata's Leggings",
    neck="Sibyl Scarf",
    waist="Platinum Moogle Belt",
    left_ear="Infused Earring",
    right_ear="Odnowa Earring +1",
	left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.run.Regen =  {
    ammo="Aurgelmir Orb",
    head="Baghere Salade",
    body="Sacro Breastplate",
    hands="Sakpata\'s Gauntlets",
    legs="Carmine Cuisses +1",
    feet="Sakpata's Leggings",
    neck={ name="Bathy Choker +1", augments={'Path: A',}},
    waist="Platinum Moogle Belt",
    left_ear="Infused Earring",
    right_ear="Odnowa Earring +1",
	left_ring="Chirich Ring",
    right_ring="Chirich Ring +1",
    back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
	TH_Set_Names = {'TH'}
	sets.TH = {}
	sets.TH.TH = {
    head="White Rarab Cap +1",
	hands={ name="Valorous Mitts", augments={'"Mag.Atk.Bns."+1','Attack+11','"Treasure Hunter"+1','Accuracy+8 Attack+8','Mag. Acc.+3 "Mag.Atk.Bns."+3',}},
	ammo="Perfect Lucky Egg",
    waist="Chaac Belt",
	}
	
	sets.ws = {} 					-- Leave this empty.
	sets.ws.lugra = {
	right_ear={ name="Lugra Earring +1", augments={'Path: A',}},
	}
	sets.ws.moonshade = {
	right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
	}
	
	sets.ws['Resolution']	= {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Sakpata's Helm",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Lugra Earring +1", augments={'Path: A',}},
	right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Refuscent Ring",
    right_ring="Sroda Ring",
    back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Spinning Slash']	= {
	ammo="Knobkierrie",
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Sakpata\'s Breastplate",
    hands="Sakpata\'s Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Heathen's Sollerets +2",
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}},
    left_ring="Epaminondas's Ring",
    right_ring="Rufescent Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+9','Weapon skill damage +10%',}},
	}	
	sets.ws['Torcleaver']	= {
    ammo="Knobkierrie",
    head={ name="Odyssean Helm", augments={'Accuracy+28','Weapon skill damage +4%','CHR+10','Attack+11',}},
    body="Hjarrandi Breast.",
    hands={ name="Odyssean Gauntlets", augments={'Accuracy+18','Weapon skill damage +5%','STR+6',}},
    legs={ name="Valorous Hose", augments={'Attack+22','Weapon skill damage +5%','VIT+8','Accuracy+2',}},
    --legs="Sakpata's Cuisses",
    feet="Heathen's Sollerets +2",
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Thrud Earring",
    left_ring="Epaminondas's Ring",
    right_ring="Rufescent Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+9','Weapon skill damage +10%',}},
	}
	sets.ws['Shockwave']	= {
    ammo="Knobkierrie",
    head="Sakpata's Helm",
    body="Heath. Cuirass +2",
    hands="Sakpata's Gauntlets",
	legs="Heath. Flanchard +2",
    feet="Heathen's Sollerets +2",
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist="Eschan Stone",
    left_ear="Malignance Earring",
    right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}},
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Stikini Ring +1",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+9','Weapon skill damage +10%',}},
	}
	sets.ws['Cross Reaper']	= {
	ammo="Knobkierrie",
	head="Ratri Sallet",
    --head={ name="Odyssean Helm", augments={'Accuracy+3','Weapon skill damage +4%','STR+5','Attack+6',}},
    body="Ratri Breastplate",
    --body={ name="Valorous Mail", augments={'Weapon skill damage +4%','STR+13','Attack+5',}},
    hands={ name="Odyssean Gauntlets", augments={'Accuracy+18','Weapon skill damage +5%','STR+6',}},
    legs="Ratri Cuisses",
    feet="Heathen's Sollerets +2",
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
	right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}},
    left_ring="Epaminondas's Ring",
    right_ring="Sroda Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+9','Weapon skill damage +10%',}},	
	}
	sets.ws['Catastrophe']	= {
	ammo="Knobkierrie",
	head="Ratri Sallet",
    --head={ name="Odyssean Helm", augments={'Accuracy+3','Weapon skill damage +4%','STR+5','Attack+6',}},
    body="Ratri Breastplate",
    --body={ name="Valorous Mail", augments={'Weapon skill damage +4%','STR+13','Attack+5',}},
    hands={ name="Odyssean Gauntlets", augments={'Accuracy+18','Weapon skill damage +5%','STR+6',}},
    legs="Ratri Cuisses",
    feet="Heathen's Sollerets +2",
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}},
    left_ring="Epaminondas's Ring",
    right_ring="Sroda Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+9','Weapon skill damage +10%',}},	
	}
	sets.ws['Quietus']	= {
	ammo="Knobkierrie",
	head="Ratri Sallet",
    --head={ name="Odyssean Helm", augments={'Accuracy+3','Weapon skill damage +4%','STR+5','Attack+6',}},
    body="Ratri Breastplate",
    --body={ name="Valorous Mail", augments={'Weapon skill damage +4%','STR+13','Attack+5',}},
    hands={ name="Odyssean Gauntlets", augments={'Accuracy+18','Weapon skill damage +5%','STR+6',}},
    legs="Ratri Cuisses",
    feet="Heathen's Sollerets +2",
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
	right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}},
    left_ring="Epaminondas's Ring",
    right_ring="Sroda Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+9','Weapon skill damage +10%',}},	
	}
	sets.ws['Entropy']	= {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Flamma Zucchetto +2",
    body="Sakpata\'s Breastplate",
    hands="Sakpata\'s Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Cessance Earring",
    right_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    left_ring="Epaminondas's Ring",
    right_ring="Rufescent Ring",
    back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Spiral Hell']	= {
	ammo="Knobkierrie",
	head="Ratri Sallet",
    --head={ name="Odyssean Helm", augments={'Accuracy+3','Weapon skill damage +4%','STR+5','Attack+6',}},
    body="Ratri Breastplate",
    --body={ name="Valorous Mail", augments={'Weapon skill damage +4%','STR+13','Attack+5',}},
    hands={ name="Odyssean Gauntlets", augments={'Accuracy+18','Weapon skill damage +5%','STR+6',}},
    legs="Ratri Cuisses",
    feet="Heathen's Sollerets +2",
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
	right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}},
    left_ring="Epaminondas's Ring",
    right_ring="Sroda Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+9','Weapon skill damage +10%',}},	
	}
	sets.ws['Insurgency']	= {
	ammo="Knobkierrie",
	head="Ratri Sallet",
    --head={ name="Odyssean Helm", augments={'Accuracy+3','Weapon skill damage +4%','STR+5','Attack+6',}},
    body="Ratri Breastplate",
    --body={ name="Valorous Mail", augments={'Weapon skill damage +4%','STR+13','Attack+5',}},
    hands={ name="Odyssean Gauntlets", augments={'Accuracy+18','Weapon skill damage +5%','STR+6',}},
    legs="Ratri Cuisses",
    feet="Heathen's Sollerets +2",
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
	right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}},
    left_ring="Epaminondas's Ring",
    right_ring="Sroda Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+9','Weapon skill damage +10%',}},	
	}
	sets.ws['Guillotine']	= {
	ammo="Knobkierrie",
    head={ name="Odyssean Helm", augments={'Accuracy+3','Weapon skill damage +4%','STR+5','Attack+6',}},
    body={ name="Valorous Mail", augments={'Weapon skill damage +4%','STR+13','Attack+5',}},
    hands="Sakpata\'s Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Heathen's Sollerets +2",
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}},
    left_ring="Epaminondas's Ring",
    right_ring="Rufescent Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+9','Weapon skill damage +10%',}},	
	}
	sets.ws['Savage Blade']	= {
	ammo="Knobkierrie",
    head={ name="Odyssean Helm", augments={'Accuracy+3','Weapon skill damage +4%','STR+5','Attack+6',}},
    body={ name="Valorous Mail", augments={'Weapon skill damage +4%','STR+13','Attack+5',}},
    hands={ name="Odyssean Gauntlets", augments={'Accuracy+18','Weapon skill damage +5%','STR+6',}},
    legs="Ratri Cuisses",
    feet="Heathen's Sollerets +2",
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}},
    left_ring="Epaminondas's Ring",
    right_ring="Rufescent Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+9','Weapon skill damage +10%',}},		

	}
	sets.ws['Chant du Cygne']	= {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Hjarrandi Breastplate",
    hands="Sakpata\'s Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Heathen's Sollerets +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Lugra Earring +1", augments={'Path: A',}},
right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}},
    left_ring="Epaminondas's Ring",
    right_ring="Rufescent Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+9','Weapon skill damage +10%',}},
	}	
	sets.ws['Upheaval']	= {
	ammo="Knobkierrie",
    head={ name="Odyssean Helm", augments={'Accuracy+3','Weapon skill damage +4%','STR+5','Attack+6',}},
    body={ name="Valorous Mail", augments={'Weapon skill damage +4%','STR+13','Attack+5',}},
    hands="Sakpata\'s Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Heathen's Sollerets +2",
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}},
    left_ring="Epaminondas's Ring",
    right_ring="Rufescent Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+9','Weapon skill damage +10%',}},	

	}
	sets.ws['Steel Cyclone']	= {
	ammo="Knobkierrie",
    head={ name="Odyssean Helm", augments={'Accuracy+3','Weapon skill damage +4%','STR+5','Attack+6',}},
    body={ name="Valorous Mail", augments={'Weapon skill damage +4%','STR+13','Attack+5',}},
    hands="Sakpata\'s Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Heathen's Sollerets +2",
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}},
    left_ring="Epaminondas's Ring",
    right_ring="Rufescent Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+9','Weapon skill damage +10%',}},	

	}
	sets.ws['Sanguine Blade']	= {
	ammo="Knobkierrie",
    head="Flamma Zucchetto +2",
    body="Sacro Breastplate",
    hands="Sakpata\'s Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Heathen's Sollerets +2",
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}},
    left_ring="Epaminondas's Ring",
    right_ring="Rufescent Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+9','Weapon skill damage +10%',}},
	}
	sets.ws['Fell Cleave']	= {
	ammo="Knobkierrie",
    head={ name="Odyssean Helm", augments={'Accuracy+3','Weapon skill damage +4%','STR+5','Attack+6',}},
    body={ name="Valorous Mail", augments={'Weapon skill damage +4%','STR+13','Attack+5',}},
    hands="Sakpata\'s Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Heathen's Sollerets +2",
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}},
    left_ring="Epaminondas's Ring",
    right_ring="Rufescent Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+9','Weapon skill damage +10%',}},	

	}
	sets.ws['Armor Break']	= {
	ammo="Knobkierrie",
    head="Sakpata's Helm",
    body="Heath. Cuirass +2",
    hands="Sakpata's Gauntlets",
legs="Heath. Flanchard +2",
    feet="Heathen's Sollerets +2",
    neck="Erra Pendant",
    waist="Eschan Stone",
    left_ear="Crepuscular Earring",
right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}},
    left_ring="Crepuscular Ring",
    right_ring="Rufescent Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+9','Weapon skill damage +10%',}},	
	}
	sets.ws['Decimation']	= {
	ammo="Knobkierrie",
    head={ name="Odyssean Helm", augments={'Accuracy+3','Weapon skill damage +4%','STR+5','Attack+6',}},
    body={ name="Valorous Mail", augments={'Weapon skill damage +4%','STR+13','Attack+5',}},
    hands="Sakpata\'s Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Heathen's Sollerets +2",
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}},
    left_ring="Epaminondas's Ring",
    right_ring="Rufescent Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+9','Weapon skill damage +10%',}},	
	}	
	sets.ws['Smash Axe']	= {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Flamma Zucchetto +2",
    body="Sakpata\'s Breastplate",
    hands="Sakpata\'s Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Heathen's Sollerets +2",
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epaminondas's Ring",
    right_ring="Rufescent Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+9','Weapon skill damage +10%',}},
	}
	sets.ws['Ruinator']	= {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Flamma Zucchetto +2",
    body="Sakpata\'s Breastplate",
    hands="Sakpata\'s Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Heathen's Sollerets +2",
    neck={ name="Abyssal Beads +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}},
    left_ring="Epaminondas's Ring",
    right_ring="Rufescent Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+9','Weapon skill damage +10%',}},
	}	

	sets.ja = {} 					-- Leave this empty
	sets.ja.enmity = {
    head="Sakpata's Helm",
    body="Emet Harness",
    hands="Yorium Gauntlets",
    legs="Odyssean Cuisses",
    neck={ name="Unmoving Collar +1", augments={'Path: A',}},
    waist="Flume Belt",
    left_ear="Eris' Earring",
    right_ear="Friomisi Earring",
    left_ring="Supershear Ring",
    right_ring="Provocare Ring",
	}
	sets.ja['Nethervoid'] = {
	legs="Heath. Flanchard +2",
	}
	sets.ja['Diabolic Eye'] = {
    hands={ name="Fall. Fin. Gaunt. +2", augments={'Enhances "Diabolic Eye" effect',}},
	}
	sets.ja['Last Resort'] = {
    back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.ja['Dark Seal'] = {
    head={ name="Fallen's Burgeonet", augments={'Enhances "Dark Seal" effect',}},
	}
	sets.ja['Arcane Circle'] = {
    feet="Chaos Sollerets",
	}
	sets.ja['Weapon Bash'] = {
    body="Emet Harness",
    hands="Yorium Gauntlets",
    legs="Odyssean Cuisses",
    neck="Unmoving Collar",
    waist="Flume Belt",
    left_ear="Friomisi Earring",
    right_ear="Eris' Earring",
    left_ring="Supershear Ring",
    right_ring="Provocare Ring",
	}
	sets.ja['Vallation'] = set_combine(sets.ja.enmity, { 
	})
	sets.ja['Valiance'] = set_combine(sets.ja.enmity, {
	})
	sets.ja['Pflug'] = set_combine(sets.ja.enmity, {
	})	
	sets.ja['Swordplay'] = set_combine(sets.ja.enmity, {
	})	
	
	sets.idle = {} 					-- Leave this empty
	sets.idle.normal = {
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Sulevia's Mask +1",
    body="Sakpata\'s Breastplate",
    hands="Sakpata\'s Gauntlets",
    legs="Carmine Cuisses +1",
    feet="Heathen's Sollerets +2",
    neck={ name="Bathy Choker +1", augments={'Path: A',}},
	waist="Asklepian Belt",
    left_ear="Infused Earring",
    right_ear="Odnowa Earring +1",
	left_ring="Defending Ring",
    right_ring="Chirich Ring +1",
    back="Moonbeam Cape",
	}
	
	sets.precast = {}               -- leave this empty
	sets.precast.fastcast = {
	ammo="Impatiens",
    head={ name="Carmine Mask", augments={'Accuracy+15','Mag. Acc.+10','"Fast Cast"+3',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    neck="Voltsurge Torque",
    body="Sacro Breastplate",
	legs="Carmine Cuisses +1",
	feet={ name="Carmine Greaves", augments={'Accuracy+10','DEX+10','MND+15',}},
	left_ring="Lebeche Ring",
	right_ring="Weatherspoon Ring",
    left_ear="Malignance Earring",	
    right_ear="Loquacious Earring",
    back={ name="Ankou's Mantle", augments={'"Fast Cast"+10','Spell interruption rate down-10%',}},
	} 
		
		
    sets.midcast = {}               -- leave this empty  
    sets.midcast.DarkMagic = {	
     head="Sakpata's Helm",
    body="Heathen's Cuirass +2",
    hands={ name="Fall. Fin. Gaunt. +2", augments={'Enhances "Diabolic Eye" effect',}},
	legs="Heath. Flanchard +2",
    feet="Heathen's Sollerets +2",
    neck="Erra Pendant",
    waist="Eschan Stone",
    left_ear="Malignance Earring",
    right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}},
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Niht Mantle", augments={'Attack+6','Dark magic skill +9','"Drain" and "Aspir" potency +24',}},
	}
    sets.midcast.MAB = {	
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Sakpata's Helm",
    body="Sacro Breastplate",
    hands={ name="Fall. Fin. Gaunt. +2", augments={'Enhances "Diabolic Eye" effect',}},
    legs="Heath. Flanchard +2",
    feet="Heathen's Sollerets +2",
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Malignance Earring",
    right_ear="Friomisi Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back="Argocham. Mantle",
	}
    sets.midcast.Absorb = {	
    head="Sakpata's Helm",
    body="Heathen's Cuirass +2",
    hands={ name="Fall. Fin. Gaunt. +2", augments={'Enhances "Diabolic Eye" effect',}},
	legs="Heath. Flanchard +2",
    feet="Ratri Sollerets",
    neck="Erra Pendant",
    waist="Eschan Stone",
    left_ear="Malignance Earring",
    right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}},
    left_ring="Kishar Ring",
    right_ring="Stikini Ring +1",
    back="Chuparrosa Mantle",
	}
	sets.midcast.Drain = {	
    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
    head="Sakpata's Helm",
	body="Heathen's Cuirass +2",
    hands={ name="Fall. Fin. Gaunt. +2", augments={'Enhances "Diabolic Eye" effect',}},
	legs="Heath. Flanchard +2",
    feet="Ratri Sollerets",
    neck="Erra Pendant",
    waist="Orpheus's Sash",
    left_ear="Malignance Earring",
    right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}},
    left_ring="Evanescence Ring",
    right_ring="Archon Ring",
    back={ name="Niht Mantle", augments={'Attack+6','Dark magic skill +9','"Drain" and "Aspir" potency +24',}},
	}
	sets.midcast.spikes = {	
    ammo="Staunch Tathlum",
    head="Ratri Sallet",
    body="Heath. Cuirass +2",
    hands="Ratri Gadlings",
    legs="Ratri Cuisses",
    feet="Ratri Sollerets",
    neck="Unmoving Collar +1",
    waist="Platinum Moogle Belt",
    left_ear="Odnowa Earring +1",
    right_ear="Tuisto Earring",
    left_ring="Moonbeam Ring",
    right_ring="Moonbeam Ring",
    back="Moonbeam Cape",	
	}
	sets.midcast.sird = {	--merits+5 == 106% (Cap 102%)
    ammo="Staunch Tathlum", --10
    head="Ratri Sallet",
    body="Heathen's Cuirass +2",
    hands="Ratri Gadlings",
    legs={ name="Founder's Hose", augments={'MND+6','Mag. Acc.+10','Attack+7','Breath dmg. taken -2%',}}, --30
    feet="Odyssean Greaves", --20
    neck="Willpower Torque", --5
    waist="Resolute Belt", --8
    left_ear="Halasz Earring", --5
    right_ear="Magnetic Earring", --8
    left_ring="Moonbeam Ring",
    right_ring="Evanescence Ring", --5
    back={ name="Ankou's Mantle", augments={'"Fast Cast"+10','Spell interruption rate down-10%',}}, --10
	}
    sets.midcast.Macc = {	
    ammo="Impatiens",
    head="Sakpata's Helm",
    body="Heath. Cuirass +2",
    hands="Sakpata's Gauntlets",
	legs="Heath. Flanchard +2",
    feet="Heathen's Sollerets +2",
    neck="Erra Pendant",
    waist="Eschan Stone",
    left_ear="Malignance Earring",
    right_ear={ name="Heath. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Weapon skill damage +2%',}},
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Stikini Ring +1",
    back="Chuparrosa Mantle",
	}
	sets.midcast.enmity = {
    head="Sakpata's Helm",
    body="Emet Harness",
    hands="Yorium Gauntlets",
    legs="Odyssean Cuisses",
    neck="Unmoving Collar",
    waist="Flume Belt",
    left_ear="Friomisi Earring",
    right_ear="Eris' Earring",
    left_ring="Supershear Ring",
    right_ring="Provocare Ring",
	}
	
	Buff_Set_Names = {'Holywater'}
	sets.buff = {} 					-- Leave this empty.
	sets.buff.reive = {
	neck="Ygnas\'s Resolve +1",
	}
	sets.buff.Holywater = {
    neck="Nicander's Necklace",
    left_ring="Blenmot's Ring",
    right_ring="Purity Ring",
	}
	
	ElementalGear = {}
	ElementalGear.Obi = "Hachirin-no-Obi"
	ElementalGear.Cape = "Twilight Cape"
	sets.midcast.NukeWithMatchingWeather = {back=ElementalGear.Cape,waist=ElementalGear.Obi}
	
	sets.adoulin = {}
	sets.adoulin.movement = {body="Councilor's Garb",}   --auto swaps when in adoulin 
 

end

function precast(spell)
	if spell.action_type == 'Magic' then
        equip(sets.precast.fastcast)
    end	
    if sets.ja[spell.name] then
        equip(sets.ja[spell.name])
	end
    if sets.ws[spell.name] then
        equip(sets.ws[spell.name])  
			if player.tp >= 2500 and not sets.ws['Catastrophe'] then
				equip (sets.ws.moonshade)				
		end
	end
end

function midcast(spell)
	if spell.action_type == 'Magic' then
		equip(sets.MEVA)
	end
	if spell.skill == 'Dark Magic' then
		equip(sets.midcast.DarkMagic)
	end
	if spell.name:match('Aspir') or spell.name:match('Drain') or spell.name:match('Sleep') or spell.name:match('Poison')then
		equip(sets.midcast.Drain)
	end
	if spell.name:match('Absorb-')then	
		equip(sets.midcast.Absorb)
			if spell.name == "Absorb-Attri" or spell.name == "Absorb-TP" or spell.name == "Stun" or spell.name == "Absorb-ACC" or spell.name == "Sleep II" or spell.name == "Bind" or spell.name == "Break" then
				equip(sets.midcast.Macc)
			end
		end

	if spell.name:match('Poisonga') then
		equip(sets.midcast.enmity)
	end
	
	if spell.name:match('Dread Spikes') and player.max_HP >= 7000 then
		equip(sets.midcast.sird)
			else if spell.name:match('Dread Spikes') and player.max_HP <=7000 then 
				equip(sets.midcast.spikes)
		end
	end
        if spell.skill == 'Elemental Magic' then
            equip(sets.midcast.MAB)
	end
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
    if buff == 'Dark Seal' then
        if gain then
            equip(sets.ja['Dark Seal'])
            disable("Head")
        else
            enable("Head")
            equip(sets.Idle)
        end
    end
end

function idle()
    if player.status=='Engaged' then
        equip(sets.melee[Melee_Set_Names[Melee_Index]])
			if player.sub_job ~= "SAM" then
				equip(sets.melee.NotSAMSJ)
			end
		end
    if player.status=='Engaged' then
		if player.equipment.main == "Apocalypse" then
			equip(equip(sets.Apoc[Apoc_Set_Names[Apoc_Index]]))
				if player.sub_job ~= "SAM" then
					equip(sets.Apoc.NotSAMSJ)
				end
			end
		end
	if player.status =='Idle' then
        equip(sets.run.Regen) 
			if player.mpp <= 50 then
				equip(sets.run.Refresh)
			end
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
        windower.add_to_chat('Movement mode is now: '..Run_Set_Names[Run_Index])
		equip(sets.run[Run_Set_Names[Run_Index]])
	end
	if command == 'toggle TH set' then
        TH_Index = TH_Index +1
    if TH_Index > #TH_Set_Names then TH_Index = 1 end
        windower.add_to_chat('TH mode is now: '..TH_Set_Names[TH_Index])
        equip(sets.TH[TH_Set_Names[TH_Index]])
    end
	if command == 'toggle Weapons set' then
        Weapons_Index = Weapons_Index +1
        if Weapons_Index > #Weapons_Set_Names then Weapons_Index = 1 end
        windower.add_to_chat('Weapon is now: '..Weapons_Set_Names[Weapons_Index])
		equip(sets.weapons[Weapons_Set_Names[Weapons_Index]])
	end
	if command == 'toggle Apoc set' then
        Apoc_Index = Apoc_Index +1
        if Apoc_Index > #Apoc_Set_Names then Apoc_Index = 1 end
        windower.add_to_chat('Apoc Armor is now: '..Apoc_Set_Names[Apoc_Index])
		equip(sets.Apoc[Apoc_Set_Names[Apoc_Index]])
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
        windower.add_to_chat('Buff mode is now: '..Buff_Set_Names[Buff_Index])
        equip(sets.buff[Buff_Set_Names[Buff_Index]])
    end
	if command == 'toggle Niche set' then
        Niche_Index = Niche_Index +1
        if Niche_Index > #Niche_Set_Names then Niche_Index = 1 end
        windower.add_to_chat('Niche mode is now: '..Niche_Set_Names[Niche_Index])
		equip(sets.niche[Niche_Set_Names[Niche_Index]])
	end
	if command == 'toggle Emergency MEVA' then
        windower.add_to_chat('Equipping Emergency MEVA/DT')
		equip(sets.MEVA)
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
send_command('unbind !numpad1')
send_command('unbind !numpad0')
end
