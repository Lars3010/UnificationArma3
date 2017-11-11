giveMoney = 1;
while {giveMoney == 1} do {
    sleep 60;
    _credits = west_factory getVariable "R3F_LOG_CF_credits";
    // Add 100 to the value
    _credits = _credits + 100;
    // Set the new credits
    west_factory setVariable ["R3F_LOG_CF_credits", _credits, true];

    _credits = east_factory getVariable "R3F_LOG_CF_credits";
    // Add 100 to the value
    _credits = _credits + 100;
    // Set the new credits
    east_factory setVariable ["R3F_LOG_CF_credits", _credits, true];
};
