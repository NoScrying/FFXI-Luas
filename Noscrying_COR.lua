function get_sets()
	send_command('bind f9 gs c toggle melee set') -- F9 = Cycle through
	send_command('bind f7 gs c toggle Gun set') -- F9 = Cycle through
	send_command('bind f10 gs c toggle CP set') -- F12 = Cycle through
	send_command('bind !f7 gs c toggle Weapons set') -- F12 = Cycle through
	send_command('bind f12 gs c toggle TH set') -- F10 = Cycle through
	Melee_Index = 1
	Gun_Index = 1
	CP_Index = 1
	Weapons_Index = 1
	TH_Index = 1

	
	sets.ranged = {}
	sets.ranged.normal = {
	ammo="Adlivun Bullet",
    head="Malignance Chapeau",
    body="Malignance Tabard",
	hands="Malignance Gloves",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck="Iskur Gorget",
    waist="Kwahu Kachina Belt",
    left_ear="Crepuscular Earring",
    right_ear="Beyla Earring",
    left_ring="Cacoethic Ring",
    right_ring="Crepuscular Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}},
}
	sets.ranged.precast = {
    ammo="Adlivun Bullet",
    head={ name="Taeon Chapeau", augments={'"Mag.Atk.Bns."+18','"Snapshot"+5','"Snapshot"+5',}},
    body={ name="Taeon Tabard", augments={'"Snapshot"+5','AGI+10',}},
    hands={ name="Carmine Fin. Ga.", augments={'Rng.Atk.+15','"Mag.Atk.Bns."+10','"Store TP"+5',}},
    legs="Nahtirah Trousers",
    feet="Meg. Jam. +2",
    neck="Commodore Charm",
    waist="Kwahu Kachina Belt",
    left_ear="Crepuscular Earring",
    right_ear="Beyla Earring",
    left_ring="Cacoethic Ring",
    right_ring="Crepuscular Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}},
}

	Melee_Set_Names = {'normal', 'DT','Hybrid'}
	sets.melee = {}                 -- Leave this empty
	sets.melee.normal = {
	ammo="Adlivun Bullet",
    head="Adhemar Bonnet +1",
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
	legs="Meghanada Chausses +2",
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck="Lissome Necklace",
    waist="Shetal Stone",
    left_ear="Eabani Earring",
    right_ear="Suppanomimi",
    --left_ear="Brutal Earring",
    --right_ear="Cessance Earring",
    left_ring="Epona\'s Ring",
    right_ring="Chirich Ring +1",
    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}
	sets.melee.DT = {
    ammo="Eminent Bullet",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Malignance Gloves",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck="Lissome Necklace",
    waist="Shetal Stone",
    left_ear="Eabani Earring",
    right_ear="Suppanomimi",
    left_ring="Defending Ring",
    right_ring="Chirich Ring +1",
    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}
	sets.melee.Hybrid = {
    ammo="Eminent Bullet",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Malignance Gloves",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Malignance Boots",
    neck="Lissome Necklace",
    waist="Shetal Stone",
    left_ear="Crep. Earring",
    right_ear="Suppanomimi",
    left_ring="Ilabrat Ring",
    right_ring="Chirich Ring +1",
    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.melee.Kite = {
	ammo="Eminent Bullet",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Malignance Gloves",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Malignance Boots",
    neck={ name="Bathy Choker +1", augments={'Path: A',}},
    waist="Platinum Moogle Belt",
    left_ear="Eabani Earring",
    right_ear="Suppanomimi",
    left_ring={ name="Dark Ring", augments={'Phys. dmg. taken -6%','Magic dmg. taken -3%',}},
    right_ring="Defending Ring",
    back="Moonbeam Cape",
}

	TH_Set_Names = {'TH'}
	sets.TH = {}
	sets.TH.TH = {
    head="White Rarab Cap +1",
    waist="Chaac Belt",
    feet={ name="Herculean Boots", augments={'"Dual Wield"+1','Attack+5','"Treasure Hunter"+1',}},
	}
	
	Weapons_Set_Names = {'Ranged', 'Blurred','Melee'}
	sets.Weapons = {}
	sets.Weapons.Ranged = {
	main="Fettering Blade",
	sub="Nusku Shield",
	}
	sets.Weapons.Blurred = {
	main="Naegling",	
	sub="Blurred Knife +1",
	}	
	sets.Weapons.Melee = {
	main="Naegling",	
	sub="Kaja Knife",
	}		
	
	CP_Set_Names = {'Run'}
	sets.CP = {}
	sets.CP.Run = {
	ammo="Eminent Bullet",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Malignance Gloves",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Malignance Boots",
    neck="Elite Royal Collar",
	waist="Flume Belt",
    left_ear="Crepuscular Earring",
    right_ear="Suppanomimi",
    left_ring={ name="Dark Ring", augments={'Phys. dmg. taken -6%','Magic dmg. taken -3%',}},
    right_ring="Defending Ring",
    back="Moonbeam Cape",
	}
	
	Gun_Set_Names = {'Savage', 'Leaden'}
	sets.Gun = {}
	sets.Gun.Savage = {
    range={ name="Anarchy +2", augments={'Delay:+60','TP Bonus +1000',}},
	}
	
	sets.Gun.Leaden = {
	range={ name="Doomsday", augments={'"Mag.Atk.Bns."+20','Weapon skill damage +7%','STR+15 AGI+15',}},
	}
	
	sets.ws = {}                    -- Leave this empty
	sets.ws['Savage Blade'] = {
	ammo="Animikii Bullet",
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Meg. Cuirie +2",
    hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','STR+13',}},
    legs="Meg. Chausses +2",
    feet="Meg. Jam. +2",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epaminondas's Ring",
    right_ring="Sroda Ring",
    back={ name="Camulus's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
}

	sets.ws['Evisceration'] = {
	ammo="Animikii Bullet",
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
	body="Mummu Jacket +2",
	hands="Mummu Wrists +2",
    legs="Mummu Kecks +2",
	feet="Mummu Gamahes +2",
	neck="Fotia Gorget",
	waist="Fotia Belt",
	left_ear={ name="Lugra Earring +1", augments={'Path: A',}},
	right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
	left_ring="Epona\'s Ring",
	right_ring="Mummu Ring",
    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
	sets.ws['Aeolian Edge'] = {
	ammo="Animikii Bullet",
    head={ name="Taeon Chapeau", augments={'"Mag.Atk.Bns."+18','Weapon Skill Acc.+18','AGI+10',}},
    body="Rawhide Vest",
    hands={ name="Carmine Fin. Ga.", augments={'Rng.Atk.+15','"Mag.Atk.Bns."+10','"Store TP"+5',}},
	legs="Shneddick Tights +1",
    feet={ name="Adhemar Gamashes", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
	left_ear="Friomisi Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epaminondas's Ring",
    right_ring="Fenrir Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}},
}

	sets.ws['Requiescat'] = {
	ammo="Animikii Bullet",
    head="Meghanada Visor +2",
    body="Meg. Cuirie +2",
    hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','STR+13',}},
    legs="Meg. Chausses +2",
    feet="Meg. Jam. +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epaminondas's Ring",
    right_ring="Rufescent Ring",
    back={ name="Camulus's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
}

	sets.ws['Last Stand'] = {
	ammo="Eminent Bullet",
    head="Meghanada Visor +2",
    body="Meg. Cuirie +2",
    hands="Meg. Gloves +2",
    legs="Meg. Chausses +2",
    feet="Meg. Jam. +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
	left_ear="Crepuscular Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Ilabrat Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}},
}

	sets.ws['Wildfire'] = {
	ammo="Bronze Bullet",
    head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +5%','STR+9','Mag. Acc.+1',}},
    body={ name="Carm. Scale Mail", augments={'Attack+15','"Mag.Atk.Bns."+10','"Dbl.Atk."+2',}},
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
	left_ear="Friomisi Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Arvina Ringlet +1",
    right_ring="Epaminondas's Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}},
}	
	sets.ws['Hot Shot'] = {
    ammo="Bronze Bullet",
    head="Meghanada Visor +2",
    body="Meg. Cuirie +2",
    hands="Meg. Gloves +2",
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Fotia Gorget",
    waist="Orpheus's Sash",
    left_ear="Crep. Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Ilabrat Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}},
}

	sets.ws['Leaden Salute'] = {
	ammo="Bronze Bullet",
    head="Pixie Hairpin +1",
    body={ name="Carm. Scale Mail", augments={'Attack+15','"Mag.Atk.Bns."+10','"Dbl.Atk."+2',}},
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
	left_ear="Friomisi Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Archon Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}},
}

	sets.ws['Detonator'] = {
	ammo="Eminent Bullet",
    head="Meghanada Visor +2",
    body="Meg. Cuirie +2",
    hands="Meg. Gloves +2",
    legs="Meg. Chausses +2",
    feet="Meg. Jam. +2",
    neck="Fotia Gorget",
    waist="Kwahu Kachina Belt",
    left_ear="Crepuscular Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Ilabrat Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}},
}

	sets.ja = {}                    -- Leave this empty
	sets.ja["Dancer's Roll"] = { 
	neck="Regal Necklace",
    head={ name="Lanun Tricorne", augments={'Enhances "Winning Streak" effect',}},
	hands="Chasseur's Gants",
    legs={ name="Desultor Tassets", augments={'"Phantom Roll" ability delay -5','"Repair" potency +10%',}},
	left_ring ="Luzaf\'s Ring",
    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}
	sets.ja["Fighter's Roll"] = { 
	neck="Regal Necklace",
    head={ name="Lanun Tricorne", augments={'Enhances "Winning Streak" effect',}},
	hands="Chasseur's Gants",
    legs={ name="Desultor Tassets", augments={'"Phantom Roll" ability delay -5','"Repair" potency +10%',}},
	left_ring ="Luzaf\'s Ring",
    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}
	sets.ja["Samurai Roll"] = {
	neck="Regal Necklace",
    head={ name="Lanun Tricorne", augments={'Enhances "Winning Streak" effect',}},
	hands="Chasseur's Gants",
    legs={ name="Desultor Tassets", augments={'"Phantom Roll" ability delay -5','"Repair" potency +10%',}},
	left_ring ="Luzaf\'s Ring",
    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}
	sets.ja["Monk's Roll"] = {
	neck="Regal Necklace",
    head={ name="Lanun Tricorne", augments={'Enhances "Winning Streak" effect',}},
	hands="Chasseur's Gants",
    legs={ name="Desultor Tassets", augments={'"Phantom Roll" ability delay -5','"Repair" potency +10%',}},
	left_ring ="Luzaf\'s Ring",
    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}
	sets.ja["Chaos Roll"] = { 
	neck="Regal Necklace",
    head={ name="Lanun Tricorne", augments={'Enhances "Winning Streak" effect',}},
	hands="Chasseur's Gants",
    legs={ name="Desultor Tassets", augments={'"Phantom Roll" ability delay -5','"Repair" potency +10%',}},
	left_ring ="Luzaf\'s Ring",
    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}
	sets.ja["Hunter's Roll"] = { 
    head={ name="Lanun Tricorne", augments={'Enhances "Winning Streak" effect',}},
	hands="Chasseur's Gants",
    legs={ name="Desultor Tassets", augments={'"Phantom Roll" ability delay -5','"Repair" potency +10%',}},
	neck="Regal Necklace",
	left_ring ="Luzaf\'s Ring",
    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}
	sets.ja["Tactician's Roll"] = { 
    head={ name="Lanun Tricorne", augments={'Enhances "Winning Streak" effect',}},
	hands="Chasseur's Gants",
    body="Chasseur's Frac",
    legs={ name="Desultor Tassets", augments={'"Phantom Roll" ability delay -5','"Repair" potency +10%',}},
	neck="Regal Necklace",
	left_ring ="Luzaf\'s Ring",
    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}
	sets.ja["Bolter's Roll"] = { 
    head={ name="Lanun Tricorne", augments={'Enhances "Winning Streak" effect',}},
	hands="Chasseur's Gants",
    legs={ name="Desultor Tassets", augments={'"Phantom Roll" ability delay -5','"Repair" potency +10%',}},
	neck="Regal Necklace",
	left_ring ="Luzaf\'s Ring",
    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}
	sets.ja["Drachen Roll"] = { 
    head={ name="Lanun Tricorne", augments={'Enhances "Winning Streak" effect',}},
	hands="Chasseur's Gants",
    legs={ name="Desultor Tassets", augments={'"Phantom Roll" ability delay -5','"Repair" potency +10%',}},
	neck="Regal Necklace",
	left_ring ="Luzaf\'s Ring",
    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}
	sets.ja["Beast Roll"] = { 
    head={ name="Lanun Tricorne", augments={'Enhances "Winning Streak" effect',}},
	hands="Chasseur's Gants",
    legs={ name="Desultor Tassets", augments={'"Phantom Roll" ability delay -5','"Repair" potency +10%',}},
	neck="Regal Necklace",
	left_ring ="Luzaf\'s Ring",
    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}
	sets.ja["Puppet Roll"] = { 
    head={ name="Lanun Tricorne", augments={'Enhances "Winning Streak" effect',}},
	hands="Chasseur's Gants",
    legs={ name="Desultor Tassets", augments={'"Phantom Roll" ability delay -5','"Repair" potency +10%',}},
	neck="Regal Necklace",
	left_ring ="Luzaf\'s Ring",
    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}
	sets.ja["Wizard's Roll"] = { 
    head={ name="Lanun Tricorne", augments={'Enhances "Winning Streak" effect',}},
	hands="Chasseur\'s Gants",
    legs={ name="Desultor Tassets", augments={'"Phantom Roll" ability delay -5','"Repair" potency +10%',}},
	neck="Regal Necklace",
	left_ring ="Luzaf\'s Ring",
    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}
	sets.ja["Allies' Roll"] = { 
    head={ name="Lanun Tricorne", augments={'Enhances "Winning Streak" effect',}},
	hands="Chasseur\'s Gants",
    legs={ name="Desultor Tassets", augments={'"Phantom Roll" ability delay -5','"Repair" potency +10%',}},
	neck="Regal Necklace",
	left_ring ="Luzaf\'s Ring",
    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}

	sets.ja["Rogue's Roll"] = { 
    head={ name="Lanun Tricorne", augments={'Enhances "Winning Streak" effect',}},
	hands="Chasseur\'s Gants",
    legs={ name="Desultor Tassets", augments={'"Phantom Roll" ability delay -5','"Repair" potency +10%',}},
	neck="Regal Necklace",
	left_ring ="Luzaf\'s Ring",
    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}
	sets.ja["Evoker's Roll"] = { 
    head={ name="Lanun Tricorne", augments={'Enhances "Winning Streak" effect',}},
	hands="Chasseur\'s Gants",
    legs={ name="Desultor Tassets", augments={'"Phantom Roll" ability delay -5','"Repair" potency +10%',}},
	neck="Regal Necklace",
    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}
	sets.ja["Double-Up"] = { 
	left_ring ="Luzaf\'s Ring",
	neck="Regal Necklace",
}
	sets.ja['Random Deal'] = {
    body={ name="Lanun Frac +1", augments={'Enhances "Loaded Deck" effect',}},
	}
	
	sets.ja['Earth Shot'] = {

	ammo="Animikii Bullet",
    head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +5%','STR+9','Mag. Acc.+1',}},
    body={ name="Carm. Scale Mail", augments={'Attack+15','"Mag.Atk.Bns."+10','"Dbl.Atk."+2',}},
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Sibyl Scarf",
    waist="Eschan Stone",
    left_ear="Hecate\'s Earring",
    right_ear="Friomisi Earring",
    left_ring="Arvina Ringlet +1",
    right_ring="Fenrir Ring",
    back={ name="Gunslinger's Cape", augments={'Enmity-5','"Mag.Atk.Bns."+5','"Phantom Roll" ability delay -2',}},
}
	sets.ja['Wind Shot'] = {

	ammo="Animikii Bullet",
    head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +5%','STR+9','Mag. Acc.+1',}},
    body={ name="Carm. Scale Mail", augments={'Attack+15','"Mag.Atk.Bns."+10','"Dbl.Atk."+2',}},
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Sibyl Scarf",
    waist="Eschan Stone",
    left_ear="Hecate\'s Earring",
    right_ear="Friomisi Earring",
    left_ring="Arvina Ringlet +1",
    right_ring="Fenrir Ring",
    back={ name="Gunslinger's Cape", augments={'Enmity-5','"Mag.Atk.Bns."+5','"Phantom Roll" ability delay -2',}},
}
	sets.ja['Fire Shot'] = {

	ammo="Animikii Bullet",
    head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +5%','STR+9','Mag. Acc.+1',}},
    body={ name="Carm. Scale Mail", augments={'Attack+15','"Mag.Atk.Bns."+10','"Dbl.Atk."+2',}},
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Sibyl Scarf",
    waist="Eschan Stone",
    left_ear="Hecate\'s Earring",
    right_ear="Friomisi Earring",
    left_ring="Arvina Ringlet +1",
    right_ring="Fenrir Ring",
    back={ name="Gunslinger's Cape", augments={'Enmity-5','"Mag.Atk.Bns."+5','"Phantom Roll" ability delay -2',}},
}
	sets.ja['Water Shot'] = {

	ammo="Animikii Bullet",
    head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +5%','STR+9','Mag. Acc.+1',}},
    body={ name="Carm. Scale Mail", augments={'Attack+15','"Mag.Atk.Bns."+10','"Dbl.Atk."+2',}},
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Sibyl Scarf",
    waist="Eschan Stone",
    left_ear="Hecate\'s Earring",
    right_ear="Friomisi Earring",
    left_ring="Arvina Ringlet +1",
    right_ring="Fenrir Ring",
    back={ name="Gunslinger's Cape", augments={'Enmity-5','"Mag.Atk.Bns."+5','"Phantom Roll" ability delay -2',}},
}
	sets.ja['Thunder Shot'] = {

	ammo="Animikii Bullet",
    head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +5%','STR+9','Mag. Acc.+1',}},
    body={ name="Carm. Scale Mail", augments={'Attack+15','"Mag.Atk.Bns."+10','"Dbl.Atk."+2',}},
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Sibyl Scarf",
    waist="Eschan Stone",
    left_ear="Hecate\'s Earring",
    right_ear="Friomisi Earring",
    left_ring="Arvina Ringlet +1",
    right_ring="Fenrir Ring",
    back={ name="Gunslinger's Cape", augments={'Enmity-5','"Mag.Atk.Bns."+5','"Phantom Roll" ability delay -2',}},
}
	sets.ja['Ice Shot'] = {

	ammo="Animikii Bullet",
    head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +5%','STR+9','Mag. Acc.+1',}},
    body={ name="Carm. Scale Mail", augments={'Attack+15','"Mag.Atk.Bns."+10','"Dbl.Atk."+2',}},
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Sibyl Scarf",
    waist="Eschan Stone",
    left_ear="Hecate\'s Earring",
    right_ear="Friomisi Earring",
    left_ring="Arvina Ringlet +1",
    right_ring="Fenrir Ring",
    back={ name="Gunslinger's Cape", augments={'Enmity-5','"Mag.Atk.Bns."+5','"Phantom Roll" ability delay -2',}},
}
	sets.ja['Light Shot'] = {
    ammo="Animikii Bullet",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Malignance Gloves",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck="Commodore Charm",
    waist="Eschan Stone",
    left_ear="Crepuscular Earring",
    right_ear="Enchntr. Earring",
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Crepuscular Ring",
    back={ name="Gunslinger's Cape", augments={'Enmity-5','"Mag.Atk.Bns."+5','"Phantom Roll" ability delay -2',}},
}
	sets.ja['Dark Shot'] = {
    ammo="Animikii Bullet",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Malignance Gloves",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck="Commodore Charm",
    waist="Eschan Stone",
    left_ear="Crepuscular Earring",
    right_ear="Enchntr. Earring",
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Crepuscular Ring",
    back={ name="Gunslinger's Cape", augments={'Enmity-5','"Mag.Atk.Bns."+5','"Phantom Roll" ability delay -2',}},
}
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
    head="Malignance Chapeau",
    body="Malignance Tabard",
	hands="Malignance Gloves",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Malignance Boots",
    neck="Regal Necklace",
    waist="Orpheus's Sash",
    left_ear="Crepuscular Earring",
    right_ear="Suppanomimi",
    left_ring="Crepuscular Ring",
    right_ring="Defending Ring",
    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
} 

    sets.precast = {}               -- leave this empty  
	sets.precast.fastcast = {
    head={ name="Carmine Mask", augments={'Accuracy+15','Mag. Acc.+10','"Fast Cast"+3',}},
    body={ name="Taeon Tabard", augments={'"Fast Cast"+5','Phalanx +3',}},
    hands={ name="Taeon Gloves", augments={'"Fast Cast"+5','Phalanx +3',}},
    legs={ name="Taeon Tights", augments={'"Fast Cast"+5','Phalanx +3',}},
    feet={ name="Carmine Greaves", augments={'Accuracy+10','DEX+10','MND+15',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ring="Lebeche Ring",
	right_ring="Weatherspoon Ring",
	neck="Voltsurge Torque",
    right_ear="Loquacious Earring",
	}
	sets.precast.DT = {
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Malignance Gloves",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck="Lissome Necklace",
    waist="Shetal Stone",
    left_ear="Eabani Earring",
    right_ear="Suppanomimi",
    left_ring="Epona\'s Ring",
    right_ring="Defending Ring",
    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
    sets.midcast = {}               -- leave this empty 
	sets.midcast.Utsusemi = {
    head={ name="Carmine Mask", augments={'Accuracy+15','Mag. Acc.+10','"Fast Cast"+3',}},
    body={ name="Taeon Tabard", augments={'"Fast Cast"+5','Phalanx +3',}},
    hands={ name="Taeon Gloves", augments={'"Fast Cast"+5','Phalanx +3',}},
    legs={ name="Taeon Tights", augments={'"Fast Cast"+5','Phalanx +3',}},
    feet={ name="Carmine Greaves", augments={'Accuracy+10','DEX+10','MND+15',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ring="Lebeche Ring",
	right_ring="Kishar Ring",
	neck="Voltsurge Torque",
    right_ear="Loquacious Earring",
	}	
    sets.aftercast = {}             -- leave this empty
 

end
 
function precast(spell)
    if  spell.type ~= 'JobAbility' then
        equip(sets.precast.DT)
		    if sets.ja[spell.name] then
				equip(sets.ja[spell.name])
		end
	end  
    if  spell.action_type == 'Magic' then
        equip(sets.precast.fastcast)
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
	end
	if spell.action_type == 'Ranged Attack' then
		equip (sets.ranged.normal)
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
        windower.add_to_chat('TH mode is now: '..TH_Set_Names[TH_Index])
        equip(sets.TH[TH_Set_Names[TH_Index]])
    end
end