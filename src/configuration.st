USING Siemens.Simatic.S71500.Tasks;

TYPE
    MachineStatus: (NotStarted, Started, Stopped);
END_TYPE

CONFIGURATION MyConfiguration
    TASK MyProgramCycleTask : Siemens.Simatic.S71500.Tasks.ProgramCycle;
    PROGRAM MyCyclicProgram WITH MyProgramCycleTask : MyProgram;

    TASK MyStartupTask : Startup;
    PROGRAM MyStartupProgram WITH MyStartupTask : LoadConfiguration;

    VAR_GLOBAL
        MovingXInput AT %I0.0: BOOL;
        MovingZInput AT %I0.1: BOOL;
        ItemDetectedInput AT %I0.2: BOOL;
        LidAtPlaceInput AT %I0.3: BOOL;
        LidClampedInput AT %I0.4: BOOL;
        PosAtLimitLidsInput AT %I0.5: BOOL;
        BaseAtPlaceInput AT %I0.6: BOOL;
        BaseClampedInput AT %I0.7: BOOL;
        PosAtLimitBasesInput AT %I1.0: BOOL;
        PartLeavingInput AT %I1.1: BOOL;
        StartInput AT %I1.2: BOOL;
        ResetInput AT %I1.3: BOOL;
        StopInput AT %I1.4: BOOL;
        EmergencyStopInput AT %I1.5: BOOL;
        AutoInput AT %I1.6: BOOL;
        FactoryIORunningInput AT %I1.7: BOOL;
        MoveXOutput AT %Q0.0: BOOL;
        MoveZOutput AT %Q0.1: BOOL;
        GrabOutput AT %Q0.2: BOOL;
        LidsConveyorOutput AT %Q0.3: BOOL;
        ClampLidOutput AT %Q0.4: BOOL;
        PosRaiseLidsOutput AT %Q0.5: BOOL;
        BasesConveyorOutput AT %Q0.6: BOOL;
        ClampBaseOutput AT %Q0.7: BOOL;
        PosRaiseBasesOutput AT %Q1.0: BOOL;
        StartLightOutput AT %Q1.1: BOOL;
        ResetLightOutput AT %Q1.2: BOOL;
        StopLightOutput AT %Q1.3: BOOL;
        CounterOutput AT %QD30: DINT;
    END_VAR

    VAR_GLOBAL
        BasesConveyor : Conveyor;
        LidsConveyor : Conveyor;
        ClampBase: ClampBase;
        BaseAtPlace: DiffuseSensor;
        PartLeaving: DiffuseSensor;

        MachineStatus: MachineStatus;
    END_VAR    
END_CONFIGURATION
