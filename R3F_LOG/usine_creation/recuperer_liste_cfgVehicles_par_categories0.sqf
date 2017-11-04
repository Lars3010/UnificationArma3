/**
 * Récupère les liste des catégories (CfgVehicleClasses) et pour chacune d'elles les véhicules associés (CfgVehicles)
 *
 * @param 0 (optionnel) l'éventuelle usine pour laquelle récupérer les catégories autorisées (en fonction de la white ou black list)
 * @param 1 (optionnel) true pour conserver les catégories vides (càd sans entrée dans le CfgVehicles) (défaut : false)
 *
 * @return tableau au format [tableau des catégories, tableau 2D des véhicules associés à chaque catégorie]
 *
 * Retrieves the list of categories (CfgVehicleClasses) and for each of them the associated vehicles (CfgVehicles)
 *
 * @param 0 (optional) the possible factory for which to recover the authorized categories (according to the white or black list)
 * @param 1 (optional) true to keep the categories empty (ie without entry in the CfgVehicles) (default: false)
 *
 * @return table in [category table, 2D table of vehicles associated with each category]
 *
 * Copyright (C) 2014 Team ~R3F~
 *
 * This program is free software under the terms of the GNU General Public License version 3.
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

 /*[
 	["Sand Bags", "Bunkers", "Statics"], <- categories

 	[
 		["Land_BagFence_Corner_F",
 		"Land_BagFence_End_F",
 		"Land_BagFence_Long_F",
 		"Land_BagFence_Round_F",
 		"Land_BagFence_Round_F",
 		"Land_BagFence_Short_F"],

 		[
 			"Land_BagBunker_Small_F",
 			"Land_BagBunker_Tower_F"
 		],

 		[
 			"B_HMG_01_high_F"
 		]
 	],

 	[
 		[10, 10, 10, 10, 10, 10],
 		[100, 500],
 		[200]
 	]
 ]*/

private ["_usine", "_montrer_categories_vides", "_nb_config", "_idx_categorie", "_idx_config", "_config", "_side", "_setting"];
private ["_cfgVehicles_categories", "_cfgVehicles_categories_toLower", "_cfgVehicles_par_categories", "_clean_cfgVehicles_categories", "_clean_cfgVehicles_par_categories"];

_usine = if (count _this > 0) then {_this select 0} else {objNull};
_montrer_categories_vides = if (count _this > 1) then {_this select 1} else {false};

_cfgVehicles_categories = [];
_cfgVehicles_categories_toLower = [];
_cfgVehicles_par_categories = [];

// Récupération de la liste des catégories de véhicules
// Retrieving the list of vehicle categories
_nb_config = count (configFile >> "CfgVehicleClasses");
for [{_idx_config = 0}, {_idx_config < _nb_config}, {_idx_config = _idx_config+1}] do //loop through all config files
{
	_config = (configFile >> "CfgVehicleClasses") select _idx_config; //select config
	if (isClass _config) then //check if it is a config class
	{
		// Si la catégorie est autorisé (en fonction de la white ou black list)
		// If the category is allowed (depending on the white or black list)
		if (isNull _usine || {(_usine getVariable "R3F_LOG_CF_blackwhitelist_mode" == "white") isEqualTo (toLower configName _config in (_usine getVariable "R3F_LOG_CF_blackwhitelist_categories"))}) then
		{
			_cfgVehicles_categories pushBack (configName _config); //array of categories
			_cfgVehicles_categories_toLower pushBack (toLower configName _config); //array of categories in lower case
			_cfgVehicles_par_categories pushBack [];
		};
	};
};

// Création de la liste des véhicules, classés par catégorie
// Create the list of vehicles, sorted by category
_nb_config = count (configFile >> "CfgVehicles");
for [{_idx_config = 0}, {_idx_config < _nb_config}, {_idx_config = _idx_config+1}] do
{
	_config = (configFile >> "CfgVehicles") select _idx_config;
	if (isClass _config) then
	{
		// Objet instanciable
		// instantiable object
		if (getNumber (_config >> "scope") == 2 && !(configName _config isKindOf "Man")) then
		{
			// Si l'objet correspond à une side valide
			// If the object matches a valid side
			if (isNull _usine || {getNumber (_config >> "side") in (_usine getVariable "R3F_LOG_CF_num_sides")}) then
			{
				_idx_categorie = _cfgVehicles_categories_toLower find (toLower getText (_config >> "vehicleClass"));

				if (_idx_categorie != -1) then
				{
					// Check if the object/vehicle is not blacklisted
					/*if !(configName _config in R3F_LOG_CF_blacklist_objects) then
					{
						(_cfgVehicles_par_categories select _idx_categorie) pushBack (configName _config); //see if you can invert this statement and allow it to whitelist instead
					};*/

					//_usine getVariable "R3F_LOG_CF_blackwhitelist_categories";
					/*_list = _usine getVariable "R3F_LOG_CF_blackwhitelist_categories";*/
					_side = _usine getVariable "R3F_LOG_CF_num_sides" select 0;
					//player sideChat(format["%1",_side]);
					switch (_side) do
					{
					    //cases (insertable by snippet)
						case 0: {_setting = R3F_LOG_CF_east_objects};
						case 1: {_setting = R3F_LOG_CF_west_objects};
						case 2: {_setting = R3F_LOG_CF_independent_objects};
						default {_setting = R3F_LOG_CFG_CF_whitelist_default_categories};
					};
					//player globalChat( format["%1",_cfgVehicles_par_categories]);
					//_setting = R3F_LOG_CFG_CF_whitelist_light_categories;
					if (configName _config in _setting) then //Get whitelist dynamicly instead of static
					{
						(_cfgVehicles_par_categories select _idx_categorie) pushBack (configName _config);

					};
				};
			};
		};
	};
};

// Suppression des catégories ne possédant aucun objet
// Remove categories with no objects
_clean_cfgVehicles_categories = [];
_clean_cfgVehicles_par_categories = [];
{
	if (_montrer_categories_vides || count (_cfgVehicles_par_categories select _forEachIndex) > 0) then
	{
		_clean_cfgVehicles_categories pushBack _x;
		_clean_cfgVehicles_par_categories pushBack (_cfgVehicles_par_categories select _forEachIndex);
	};
} forEach _cfgVehicles_categories;

[_clean_cfgVehicles_categories, _clean_cfgVehicles_par_categories]
