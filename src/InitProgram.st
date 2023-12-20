PROGRAM LoadConfiguration
    VAR_EXTERNAL
        BasesConveyor : Conveyor;
        LidsConveyor : Conveyor;
        ClampBase: ClampBase;
        BaseAtPlace: DiffuseSensor;
        PartLeaving: DiffuseSensor;

        LidsConveyorOutput : BOOL;
        BasesConveyorOutput : BOOL;
    END_VAR
    
    ClampBase.Init(REF(BaseAtPlace), REF(PartLeaving));
    BasesConveyor.Stop();
    LidsConveyor.Stop();
END_PROGRAM