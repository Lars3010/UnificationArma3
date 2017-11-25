    _credits = east_factory getVariable "R3F_LOG_CF_credits";
    // Add 100 to the value
    _credits = _credits + 300;
    // Set the new credits
    east_factory setVariable ["R3F_LOG_CF_credits", _credits, true];
