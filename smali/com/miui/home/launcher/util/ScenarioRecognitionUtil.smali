.class public final Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;
.super Ljava/lang/Object;
.source "ScenarioRecognitionUtil.kt"


# static fields
.field public static final INSTANCE:Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;

    invoke-direct {v0}, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;->INSTANCE:Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setScenarioState(JZ)V
    .locals 7

    .line 36
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setScenarioState, type: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", isStart: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ScenarioRecognitionUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 38
    invoke-static {}, Lcom/scenariorecognition/ScenarioRecognition;->getInstance()Lcom/scenariorecognition/ScenarioRecognition;

    move-result-object v1

    move-wide v2, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/scenariorecognition/ScenarioRecognition;->setScenarioState(JJZ)V

    return-void
.end method

.method public final setScenarioState(JZLjava/lang/String;)V
    .locals 8

    const-string p0, "ScenarioRecognitionUtil"

    if-nez p4, :cond_0

    const-string/jumbo p1, "setScenarioState, packageName is null"

    .line 43
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setScenarioState, type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isStart: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 49
    invoke-static {}, Lcom/scenariorecognition/ScenarioRecognition;->getInstance()Lcom/scenariorecognition/ScenarioRecognition;

    move-result-object v1

    move-wide v2, p1

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/scenariorecognition/ScenarioRecognition;->setScenarioState(JJZLjava/lang/String;)V

    return-void
.end method
