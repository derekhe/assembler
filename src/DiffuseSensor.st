CLASS DiffuseSensor
    VAR
        _input : BOOL;
    END_VAR

    METHOD PUBLIC IsObjectDetected : BOOL
        IsObjectDetected := NOT _input;
    END_METHOD

    METHOD PUBLIC Execute
        VAR_INPUT
            input : BOOL;
        END_VAR
        _input := input;
    END_METHOD
END_CLASS