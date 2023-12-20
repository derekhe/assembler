CLASS Conveyor
    VAR
        _started: BOOL;
    END_VAR

    METHOD PUBLIC Start
        _started := TRUE;
    END_METHOD

    METHOD PUBLIC Stop
        _started := FALSE;
    END_METHOD

    METHOD PUBLIC Execute
        VAR_OUTPUT
            output: BOOL;
        END_VAR
        output := _started;
    END_METHOD
END_CLASS