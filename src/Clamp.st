CLASS ClampBase
    VAR
        _baseAtPlace: REF_TO DiffuseSensor;
        _partLeaving: REF_TO DiffuseSensor;
        _baseClamped:BOOL;
        _clampBase: BOOL;
    END_VAR

    METHOD PUBLIC Init
        VAR_INPUT
            BaseAtPlace: REF_TO DiffuseSensor;
            PartLeaving: REF_TO DiffuseSensor;
        END_VAR
        _baseAtPlace := BaseAtPlace;
        _partLeaving := PartLeaving;
    END_METHOD

    METHOD PUBLIC IsObjectReached : BOOL
        IsObjectReached := _baseAtPlace^.IsObjectDetected();
    END_METHOD

    METHOD PUBLIC IsObjectLeft : BOOL
        IsObjectLeft := _partLeaving^.IsObjectDetected();
    END_METHOD

    METHOD PUBLIC IsObjectClamped : BOOL
        IsObjectClamped := _baseClamped;
    END_METHOD

    METHOD PUBLIC ClampObject
        _clampBase := TRUE;
    END_METHOD

    METHOD PUBLIC Execute
        VAR_INPUT
            baseClamped: BOOL;            
        END_VAR
        VAR_OUTPUT
            clampBase: BOOL;
        END_VAR

        _baseClamped := baseClamped;

        IF(THIS.IsObjectReached()) THEN
            THIS.ClampObject();
        END_IF;

        clampBase := _clampBase;
    END_METHOD
END_CLASS
