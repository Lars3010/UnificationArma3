/**
 * Enregistre les valeurs des champs avant fermeture de la bo�te de dialogue de l'usine de cr�ation.
 * ouvrir_usine.sqf s'en servira pour la pr�remplir � l'ouverture
 *
 * Copyright (C) 2014 Team ~R3F~
 *
 * This program is free software under the terms of the GNU General Public License version 3.
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

disableSerialization; // A cause des displayCtrl

private ["_usine", "_dlg_liste_objets", "_ctrl_liste_objets", "_sel_categorie", "_sel_objet"];

#include "dlg_constantes.h"

_usine = uiNamespace getVariable "R3F_LOG_dlg_LO_usine";

_dlg_liste_objets = findDisplay R3F_LOG_IDD_dlg_liste_objets;

_ctrl_liste_objets = _dlg_liste_objets displayCtrl R3F_LOG_IDC_dlg_LO_liste_objets;

_sel_categorie = lbCurSel (_dlg_liste_objets displayCtrl R3F_LOG_IDC_dlg_LO_liste_categories);
_sel_objet = 0 max (_usine getVariable "R3F_LOG_CF_mem_idx_objet");
_usine setVariable ["R3F_LOG_CF_mem_idx_objet", 0];

lbClear _ctrl_liste_objets;

if (count (_usine getVariable "R3F_LOG_CF_cfgVehicles_par_categories") > 0) then
{
	// Insertion de chaque type d'objets disponibles dans la liste
	// Insert each type of available objects in the list
	{
		private ["_classe", "_config", "_nom", "_icone", "_cout", "_tab_icone", "_index"];

		_classe = _x;
		_config = configFile >> "CfgVehicles" >> _classe;
		_nom = getText (_config >> "displayName");
		_icone = getText (_config >> "icon");
		_cout = [_classe] call R3F_LOG_FNCT_determiner_cout_creation;

		// Ic�ne par d�faut
		// Default icon
		if (_icone == "") then
		{
			_icone = "\A3\ui_f\data\map\VehicleIcons\iconObject_ca.paa";
		};

		// Si le chemin commence par A3\ ou a3\, on rajoute un \ au d�but
		// If the path starts with A3 \ or a3 \, we add a \ to the beginning
		_tab_icone = toArray toLower _icone;
		if (count _tab_icone >= 3 &&
			{
				_tab_icone select 0 == (toArray "a" select 0) &&
				_tab_icone select 1 == (toArray "3" select 0) &&
				_tab_icone select 2 == (toArray "\" select 0)
			}) then
		{
			_icone = "\" + _icone;
		};

		// Si ic�ne par d�faut, on rajoute le chemin de base par d�faut
		// If default, we add the default base path
		_tab_icone = toArray _icone;
		if (_tab_icone select 0 != (toArray "\" select 0)) then
		{
			_icone = format ["\A3\ui_f\data\map\VehicleIcons\%1_ca.paa", _icone];
		};

		// Si pas d'extension de fichier, on rajoute ".paa"
		// If no file extension, we add ".paa"
		_tab_icone = toArray _icone;
		if (count _tab_icone >= 4 && {_tab_icone select (count _tab_icone - 4) != (toArray "." select 0)}) then
		{
			_icone = _icone + ".paa";
		};

		_index = _ctrl_liste_objets lbAdd format ["%1 (%2 cred.)", _nom, [_cout] call R3F_LOG_FNCT_formater_nombre_entier_milliers];
		_ctrl_liste_objets lbSetPicture [_index, _icone];
		_ctrl_liste_objets lbSetData [_index, _classe];
	} forEach (_usine getVariable "R3F_LOG_CF_cfgVehicles_par_categories" select _sel_categorie);

	// Ajout d'une ligne vide car l'affichage des listes de BIS est bugu� (dernier �l�ment masqu�).....
	// Add an empty line because the BIS list display is bugged  (last hidden item)
	_ctrl_liste_objets lbSetData [_ctrl_liste_objets lbAdd "", ""];

	// S�lectionner l'objet m�moriser en le pla�ant visuellement au centre de la liste
	// Select the object to memorize by placing it visually at the center of the list
	_ctrl_liste_objets lbSetCurSel (lbSize _ctrl_liste_objets - 1);
	_ctrl_liste_objets lbSetCurSel (_sel_objet - 8 max 0);
	_ctrl_liste_objets lbSetCurSel _sel_objet;
};
