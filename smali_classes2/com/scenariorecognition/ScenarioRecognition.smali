.class public Lcom/scenariorecognition/ScenarioRecognition;
.super Ljava/lang/Object;
.source "ScenarioRecognition.java"


# static fields
.field private static sModule:Lcom/scenariorecognition/ScenarioRecognition;


# instance fields
.field private MAX_ATTEMPTS:I

.field private invokeFailTimes:I

.field private mInstance:Ljava/lang/Object;

.field private mParaInstance:Ljava/lang/Object;

.field private mParaMethod:Ljava/lang/reflect/Method;

.field private mSetMethod:Ljava/lang/reflect/Method;

.field private mSetMethodWithPara:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .locals 13

    .line 62
    const-class v0, Ljava/lang/String;

    const-string v1, "setScenarioState"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0xa

    .line 47
    iput v2, p0, Lcom/scenariorecognition/ScenarioRecognition;->MAX_ATTEMPTS:I

    const/4 v2, 0x0

    .line 63
    iput v2, p0, Lcom/scenariorecognition/ScenarioRecognition;->invokeFailTimes:I

    const/4 v3, 0x1

    :try_start_0
    const-string v4, "miui.scenariorecognition.ScenarioRecognitionManager"

    .line 65
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getInstance"

    new-array v6, v2, [Ljava/lang/Class;

    .line 66
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 67
    invoke-virtual {v5, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/scenariorecognition/ScenarioRecognition;->mInstance:Ljava/lang/Object;

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    .line 68
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v2

    aput-object v8, v6, v3

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x2

    aput-object v9, v6, v10

    invoke-virtual {v4, v1, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Lcom/scenariorecognition/ScenarioRecognition;->mSetMethod:Ljava/lang/reflect/Method;

    const-string v6, "miui.scenariorecognition.PluginParameter"

    .line 70
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v11, "create"

    new-array v12, v2, [Ljava/lang/Class;

    .line 71
    invoke-virtual {v6, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    new-array v12, v2, [Ljava/lang/Object;

    invoke-virtual {v11, v7, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Lcom/scenariorecognition/ScenarioRecognition;->mParaInstance:Ljava/lang/Object;

    const-string v7, "putString"

    new-array v11, v10, [Ljava/lang/Class;

    aput-object v0, v11, v2

    aput-object v0, v11, v3

    .line 72
    invoke-virtual {v6, v7, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/scenariorecognition/ScenarioRecognition;->mParaMethod:Ljava/lang/reflect/Method;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    aput-object v8, v0, v2

    aput-object v8, v0, v3

    aput-object v9, v0, v10

    aput-object v6, v0, v5

    .line 73
    invoke-virtual {v4, v1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/scenariorecognition/ScenarioRecognition;->mSetMethodWithPara:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "CoreScenarioRecognition reflect fail"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    iget v0, p0, Lcom/scenariorecognition/ScenarioRecognition;->invokeFailTimes:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/scenariorecognition/ScenarioRecognition;->invokeFailTimes:I

    :goto_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/scenariorecognition/ScenarioRecognition;
    .locals 2

    const-class v0, Lcom/scenariorecognition/ScenarioRecognition;

    monitor-enter v0

    .line 58
    :try_start_0
    sget-object v1, Lcom/scenariorecognition/ScenarioRecognition;->sModule:Lcom/scenariorecognition/ScenarioRecognition;

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Lcom/scenariorecognition/ScenarioRecognition;

    invoke-direct {v1}, Lcom/scenariorecognition/ScenarioRecognition;-><init>()V

    sput-object v1, Lcom/scenariorecognition/ScenarioRecognition;->sModule:Lcom/scenariorecognition/ScenarioRecognition;

    .line 60
    :cond_0
    sget-object v1, Lcom/scenariorecognition/ScenarioRecognition;->sModule:Lcom/scenariorecognition/ScenarioRecognition;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public setScenarioState(JJZ)V
    .locals 5

    .line 87
    iget v0, p0, Lcom/scenariorecognition/ScenarioRecognition;->invokeFailTimes:I

    iget v1, p0, Lcom/scenariorecognition/ScenarioRecognition;->MAX_ATTEMPTS:I

    if-le v0, v1, :cond_0

    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/scenariorecognition/ScenarioRecognition;->mInstance:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/scenariorecognition/ScenarioRecognition;->mSetMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    const/4 v3, 0x3

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 92
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, v1

    const/4 p1, 0x2

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v3, p1

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object p1, p0, Lcom/scenariorecognition/ScenarioRecognition;->mSetMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "CoreScenarioRecognition reflect fail"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    iget p1, p0, Lcom/scenariorecognition/ScenarioRecognition;->invokeFailTimes:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/scenariorecognition/ScenarioRecognition;->invokeFailTimes:I

    goto :goto_0

    .line 99
    :cond_1
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "CoreScenarioRecognition instance is null!"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    iget p1, p0, Lcom/scenariorecognition/ScenarioRecognition;->invokeFailTimes:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/scenariorecognition/ScenarioRecognition;->invokeFailTimes:I

    :goto_0
    return-void
.end method

.method public setScenarioState(JJZLjava/lang/String;)V
    .locals 7

    .line 105
    iget v0, p0, Lcom/scenariorecognition/ScenarioRecognition;->invokeFailTimes:I

    iget v1, p0, Lcom/scenariorecognition/ScenarioRecognition;->MAX_ATTEMPTS:I

    if-le v0, v1, :cond_0

    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/scenariorecognition/ScenarioRecognition;->mInstance:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/scenariorecognition/ScenarioRecognition;->mParaInstance:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 110
    :try_start_0
    iget-object v2, p0, Lcom/scenariorecognition/ScenarioRecognition;->mParaMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "CoreScenarioRecognition"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    aput-object p6, v4, v1

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object p6, p0, Lcom/scenariorecognition/ScenarioRecognition;->mSetMethodWithPara:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/scenariorecognition/ScenarioRecognition;->mInstance:Ljava/lang/Object;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x3

    iget-object p2, p0, Lcom/scenariorecognition/ScenarioRecognition;->mParaInstance:Ljava/lang/Object;

    aput-object p2, v2, p1

    invoke-virtual {p6, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "CoreScenarioRecognition reflect fail"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
    iget p1, p0, Lcom/scenariorecognition/ScenarioRecognition;->invokeFailTimes:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/scenariorecognition/ScenarioRecognition;->invokeFailTimes:I

    goto :goto_0

    .line 117
    :cond_1
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "CoreScenarioRecognition instance is null!"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 118
    iget p1, p0, Lcom/scenariorecognition/ScenarioRecognition;->invokeFailTimes:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/scenariorecognition/ScenarioRecognition;->invokeFailTimes:I

    :goto_0
    return-void
.end method
