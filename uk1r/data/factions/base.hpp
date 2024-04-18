class base {
	addons[] = {};
	scope = 1; // Set this to 2 for factions you want to be visible.
	side = 8; // 0 = Opfor, 1 = Blufor, 2 = Indep, 3 = Civilian. 
	class units {
		class base {
			backpack[] = {};
			headgear[] = {};
			identity[] = {};
			items[] = {};
			goggles[] = {};
			uniform[] = {};
			vest[] = {};
			weaponLauncher[] = {};
			weaponPrimary[] = {};
			weaponSecondary[] = {};
			textures[] = {}; // {selection, path_to_texture}
		};
	};
	class groups {
		class infantry {
			/*
			--- Example group ---
			class sentry {
				roles[] = {}; // E.g. patrol, guard, medical etc...
				class units {
					class unit0 {
						type = "";
						rank = "";
					};
					class unit1 {
						type = "";
						rank = "";
					};
				};
			};
			*/
		};
		class motorized {

		};
		class mechanized {

		};
		class armour {

		};
		class air {

		};
	};
};