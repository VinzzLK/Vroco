.class public Lcom/miui/home/launcher/AppUsageMonitor;
.super Ljava/lang/Object;
.source "AppUsageMonitor.java"


# instance fields
.field private context:Landroid/content/Context;

.field private currentMode:I

.field private handler:Landroid/os/Handler;

.field private openTimestamps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private temperatureControlRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$6gYThkskTzgZbqjDS8zTcqbPt8E(JLjava/lang/Long;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/AppUsageMonitor;->lambda$onAppOpened$0(JLjava/lang/Long;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$c15YjuBRWvBrH8S4jFs5e9gEgA8(Lcom/miui/home/launcher/AppUsageMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/AppUsageMonitor;->triggerTemperatureControlMode()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 21
    iput v0, p0, Lcom/miui/home/launcher/AppUsageMonitor;->currentMode:I

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/home/launcher/AppUsageMonitor;->handler:Landroid/os/Handler;

    .line 25
    new-instance v0, Lcom/miui/home/launcher/AppUsageMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/AppUsageMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/AppUsageMonitor;)V

    iput-object v0, p0, Lcom/miui/home/launcher/AppUsageMonitor;->temperatureControlRunnable:Ljava/lang/Runnable;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/AppUsageMonitor;->openTimestamps:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lcom/miui/home/launcher/AppUsageMonitor;->context:Landroid/content/Context;

    return-void
.end method

.method private static synthetic lambda$onAppOpened$0(JLjava/lang/Long;)Z
    .locals 2

    .line 41
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr p0, v0

    const-wide/16 v0, 0x2af8

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private triggerEvaluationMode()V
    .locals 2

    .line 78
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendEnterDesktopInterruptionEvent()V

    .line 79
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.home.launcher.ACTION_EVALUATION_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/miui/home/launcher/AppUsageMonitor;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x1

    .line 81
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/AppUsageMonitor;->setCurrentMode(I)V

    return-void
.end method

.method private triggerTemperatureControlMode()V
    .locals 2

    .line 85
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendExitDesktopInterruptionEvent()V

    .line 86
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.home.launcher.ACTION_TEMPERATURE_CONTROL_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/miui/home/launcher/AppUsageMonitor;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x2

    .line 88
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/AppUsageMonitor;->setCurrentMode(I)V

    return-void
.end method


# virtual methods
.method public onAppOpened()V
    .locals 8

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAppOpened currentMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/AppUsageMonitor;->currentMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppUsageMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget v0, p0, Lcom/miui/home/launcher/AppUsageMonitor;->currentMode:I

    const-wide/16 v2, 0x1388

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 38
    iget-object v0, p0, Lcom/miui/home/launcher/AppUsageMonitor;->openTimestamps:Ljava/util/List;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Lcom/miui/home/launcher/AppUsageMonitor;->openTimestamps:Ljava/util/List;

    new-instance v6, Lcom/miui/home/launcher/AppUsageMonitor$$ExternalSyntheticLambda1;

    invoke-direct {v6, v4, v5}, Lcom/miui/home/launcher/AppUsageMonitor$$ExternalSyntheticLambda1;-><init>(J)V

    invoke-interface {v0, v6}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    times="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/home/launcher/AppUsageMonitor;->openTimestamps:Ljava/util/List;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/miui/home/launcher/AppUsageMonitor;->openTimestamps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_3

    .line 49
    iget-object v0, p0, Lcom/miui/home/launcher/AppUsageMonitor;->openTimestamps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    iget-object v4, p0, Lcom/miui/home/launcher/AppUsageMonitor;->openTimestamps:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x7

    if-lt v0, v4, :cond_1

    .line 50
    iget-object v4, p0, Lcom/miui/home/launcher/AppUsageMonitor;->openTimestamps:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Lcom/miui/home/launcher/AppUsageMonitor;->openTimestamps:Ljava/util/List;

    add-int/lit8 v7, v0, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x5dc

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_3

    .line 58
    invoke-direct {p0}, Lcom/miui/home/launcher/AppUsageMonitor;->triggerEvaluationMode()V

    .line 59
    iget-object v0, p0, Lcom/miui/home/launcher/AppUsageMonitor;->openTimestamps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 60
    iget-object v0, p0, Lcom/miui/home/launcher/AppUsageMonitor;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/AppUsageMonitor;->temperatureControlRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 61
    iget-object v0, p0, Lcom/miui/home/launcher/AppUsageMonitor;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/miui/home/launcher/AppUsageMonitor;->temperatureControlRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/AppUsageMonitor;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/AppUsageMonitor;->temperatureControlRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 67
    iget-object v0, p0, Lcom/miui/home/launcher/AppUsageMonitor;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/miui/home/launcher/AppUsageMonitor;->temperatureControlRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_2
    return-void
.end method

.method public onScreenOff()V
    .locals 2

    const-string v0, "AppUsageMonitor"

    const-string v1, "Screen off"

    .line 72
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/miui/home/launcher/AppUsageMonitor;->openTimestamps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x2

    .line 74
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/AppUsageMonitor;->setCurrentMode(I)V

    return-void
.end method

.method public setCurrentMode(I)V
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCurrentMode currentMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppUsageMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iput p1, p0, Lcom/miui/home/launcher/AppUsageMonitor;->currentMode:I

    return-void
.end method
