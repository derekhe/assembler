PROGRAM MyProgram
    VAR_EXTERNAL
        MovingXInput : BOOL;
        MovingZInput : BOOL;
        ItemDetectedInput : BOOL;
        LidAtPlaceInput : BOOL;
        LidClampedInput : BOOL;
        PosAtLimitLidsInput : BOOL;
        BaseAtPlaceInput : BOOL;
        BaseClampedInput : BOOL;
        PosAtLimitBasesInput : BOOL;
        PartLeavingInput : BOOL;
        StartInput : BOOL;
        ResetInput : BOOL;
        StopInput : BOOL;
        EmergencyStopInput : BOOL;
        AutoInput : BOOL;
        FactoryIORunningInput : BOOL;
        MoveXOutput : BOOL;
        MoveZOutput : BOOL;
        GrabOutput : BOOL;
        LidsConveyorOutput : BOOL;
        ClampLidOutput : BOOL;
        PosRaiseLidsOutput : BOOL;
        BasesConveyorOutput : BOOL;
        ClampBaseOutput : BOOL;
        PosRaiseBasesOutput : BOOL;
        StartLightOutput : BOOL;
        ResetLightOutput : BOOL;
        StopLightOutput : BOOL;
        CounterOutput : DINT;
        BasesConveyor : Conveyor;
        LidsConveyor : Conveyor;
        ClampBase : ClampBase;
        BaseAtPlace : DiffuseSensor;
        PartLeaving : DiffuseSensor;
        MachineStatus : MachineStatus;
    END_VAR
    CyclicIO();

    IF StartInput THEN
        StartLightOutput := TRUE;
        MachineStatus := MachineStatus#Started;
    ELSE
        StartLightOutput := FALSE;
    END_IF;

    IF NOT(StopInput) THEN
        StopLightOutput := TRUE;
        MachineStatus := MachineStatus#Stopped;
    ELSE
        StopLightOutput := FALSE;
    END_IF;
    
    CASE MachineStatus OF
        MachineStatus#NotStarted:
            ;
        MachineStatus#Started:
            BasesConveyor.Start();
            LidsConveyor.Start();
        MachineStatus#Stopped:
            BasesConveyor.Stop();
            LidsConveyor.Stop();
    END_CASE;

    BasesConveyor.Execute(BasesConveyorOutput);
    LidsConveyor.Execute(LidsConveyorOutput);
END_PROGRAM
