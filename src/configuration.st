CONFIGURATION MyConfiguration
    TASK MyProgramCycleTask : Siemens.Simatic.S71500.Tasks.ProgramCycle;
    PROGRAM MyCyclicProgram WITH MyProgramCycleTask : MyProgram;

    VAR_GLOBAL
        MovingX AT %I0.0: BOOL;
        MovingZ AT %I0.1: BOOL;
        ItemDetected AT %I0.2: BOOL;
        LidAtPlace AT %I0.3: BOOL;
        LidClamped AT %I0.4: BOOL;
        PosAtLimitLids AT %I0.5: BOOL;
        BaseAtPlace AT %I0.6: BOOL;
        BaseClamped AT %I0.7: BOOL;
        PosAtLimitBases AT %I1.0: BOOL;
        PartLeaving AT %I1.1: BOOL;
        Start AT %I1.2: BOOL;
        Reset AT %I1.3: BOOL;
        Stop AT %I1.4: BOOL;
        EmergencyStop AT %I1.5: BOOL;
        Auto AT %I1.6: BOOL;
        FactoryIORunning AT %I1.7: BOOL;
        MoveX AT %Q0.0: BOOL;
        MoveZ AT %Q0.1: BOOL;
        Grab AT %Q0.2: BOOL;
        LidsConveyor AT %Q0.3: BOOL;
        ClampLid AT %Q0.4: BOOL;
        PosRaiseLids AT %Q0.5: BOOL;
        BasesConveyor AT %Q0.6: BOOL;
        ClampBase AT %Q0.7: BOOL;
        PosRaiseBases AT %Q1.0: BOOL;
        StartLight AT %Q1.1: BOOL;
        ResetLight AT %Q1.2: BOOL;
        StopLight AT %Q1.3: BOOL;
        Counter AT %QD30: DINT;
    END_VAR
END_CONFIGURATION
