.class public Lcom/miui/home/safemode/SafeModeOneTrack;
.super Ljava/lang/Object;
.source "SafeModeOneTrack.java"


# static fields
.field private static final IS_GLOBAL:Z

.field private static final KEY_TIP_OPERATION:Ljava/lang/String;

.field private static final KEY_TIP_TRIGGER:Ljava/lang/String;

.field private static final SAFE_MODE_APP_ID:Ljava/lang/String;

.field private static mPubSubTrackInstance:Lcom/ot/pubsub/PubSubTrack;

.field private static mSafeModeOneTrack:Lcom/xiaomi/onetrack/OneTrack;

.field private static volatile sInstance:Lcom/miui/home/safemode/SafeModeOneTrack;


# direct methods
.method public static synthetic $r8$lambda$ooorWI5w1d8NTkgLL8P5G4ah_kY(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/safemode/SafeModeOneTrack;->lambda$trackSafeModeEvent$0(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 18
    sget-boolean v0, Lcom/miui/home/safemode/Build;->IS_INTERNATIONAL_BUILD:Z

    sput-boolean v0, Lcom/miui/home/safemode/SafeModeOneTrack;->IS_GLOBAL:Z

    if-eqz v0, :cond_0

    const-string v1, "31000401997"

    goto :goto_0

    :cond_0
    const-string v1, "31000401963"

    .line 21
    :goto_0
    sput-object v1, Lcom/miui/home/safemode/SafeModeOneTrack;->SAFE_MODE_APP_ID:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "1530.1.1.1.36312"

    goto :goto_1

    :cond_1
    const-string v1, "1501.2.1.1.36198"

    .line 27
    :goto_1
    sput-object v1, Lcom/miui/home/safemode/SafeModeOneTrack;->KEY_TIP_TRIGGER:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "1530.1.1.1.36309"

    goto :goto_2

    :cond_2
    const-string v0, "1501.2.1.1.36201"

    .line 29
    :goto_2
    sput-object v0, Lcom/miui/home/safemode/SafeModeOneTrack;->KEY_TIP_OPERATION:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/home/safemode/SafeModeOneTrack;
    .locals 2

    .line 71
    sget-object v0, Lcom/miui/home/safemode/SafeModeOneTrack;->sInstance:Lcom/miui/home/safemode/SafeModeOneTrack;

    if-nez v0, :cond_0

    .line 72
    const-class v0, Lcom/miui/home/safemode/SafeModeOneTrack;

    monitor-enter v0

    .line 73
    :try_start_0
    new-instance v1, Lcom/miui/home/safemode/SafeModeOneTrack;

    invoke-direct {v1}, Lcom/miui/home/safemode/SafeModeOneTrack;-><init>()V

    sput-object v1, Lcom/miui/home/safemode/SafeModeOneTrack;->sInstance:Lcom/miui/home/safemode/SafeModeOneTrack;

    .line 74
    sget-object v1, Lcom/miui/home/safemode/SafeModeOneTrack;->sInstance:Lcom/miui/home/safemode/SafeModeOneTrack;

    invoke-direct {v1, p0}, Lcom/miui/home/safemode/SafeModeOneTrack;->init(Landroid/content/Context;)V

    .line 75
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 77
    :cond_0
    :goto_0
    sget-object p0, Lcom/miui/home/safemode/SafeModeOneTrack;->sInstance:Lcom/miui/home/safemode/SafeModeOneTrack;

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 61
    sget-boolean v0, Lcom/miui/home/safemode/SafeModeOneTrack;->IS_GLOBAL:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-direct {p0, p1}, Lcom/miui/home/safemode/SafeModeOneTrack;->initPubSub(Landroid/content/Context;)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/safemode/SafeModeOneTrack;->initOneTrack(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private initOneTrack(Landroid/content/Context;)V
    .locals 2

    .line 48
    :try_start_0
    new-instance p0, Lcom/xiaomi/onetrack/Configuration$Builder;

    invoke-direct {p0}, Lcom/xiaomi/onetrack/Configuration$Builder;-><init>()V

    sget-object v0, Lcom/miui/home/safemode/SafeModeOneTrack;->SAFE_MODE_APP_ID:Ljava/lang/String;

    .line 49
    invoke-virtual {p0, v0}, Lcom/xiaomi/onetrack/Configuration$Builder;->setAppId(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object p0

    sget-object v0, Lcom/xiaomi/onetrack/OneTrack$Mode;->PLUGIN:Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 50
    invoke-virtual {p0, v0}, Lcom/xiaomi/onetrack/Configuration$Builder;->setMode(Lcom/xiaomi/onetrack/OneTrack$Mode;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object p0

    const/4 v0, 0x1

    .line 51
    invoke-virtual {p0, v0}, Lcom/xiaomi/onetrack/Configuration$Builder;->setUseCustomPrivacyPolicy(Z)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object p0

    const/4 v1, 0x0

    .line 52
    invoke-virtual {p0, v1}, Lcom/xiaomi/onetrack/Configuration$Builder;->setAutoTrackActivityAction(Z)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object p0

    .line 53
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/Configuration$Builder;->build()Lcom/xiaomi/onetrack/Configuration;

    move-result-object p0

    .line 48
    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/OneTrack;->createInstance(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)Lcom/xiaomi/onetrack/OneTrack;

    move-result-object p0

    sput-object p0, Lcom/miui/home/safemode/SafeModeOneTrack;->mSafeModeOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    .line 54
    invoke-virtual {p0, v0}, Lcom/xiaomi/onetrack/OneTrack;->setCustomPrivacyPolicyAccepted(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SafeModeOneTrack"

    const-string v0, "init"

    .line 56
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private initPubSub(Landroid/content/Context;)V
    .locals 1

    .line 35
    :try_start_0
    new-instance p0, Lcom/ot/pubsub/Configuration$Builder;

    invoke-direct {p0}, Lcom/ot/pubsub/Configuration$Builder;-><init>()V

    .line 36
    sget-object v0, Lcom/miui/home/safemode/SafeModeOneTrack;->SAFE_MODE_APP_ID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ot/pubsub/Configuration$Builder;->setAppId(Ljava/lang/String;)Lcom/ot/pubsub/Configuration$Builder;

    const-string v0, "safemode-425511"

    .line 37
    invoke-virtual {p0, v0}, Lcom/ot/pubsub/Configuration$Builder;->setProjectId(Ljava/lang/String;)Lcom/ot/pubsub/Configuration$Builder;

    const-string v0, "c4cd74234fb8cc93d84a4842b92d3f541edb2ded"

    .line 38
    invoke-virtual {p0, v0}, Lcom/ot/pubsub/Configuration$Builder;->setPrivateKeyId(Ljava/lang/String;)Lcom/ot/pubsub/Configuration$Builder;

    .line 39
    invoke-virtual {p0}, Lcom/ot/pubsub/Configuration$Builder;->build()Lcom/ot/pubsub/Configuration;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/ot/pubsub/PubSubTrack;->createInstance(Landroid/content/Context;Lcom/ot/pubsub/Configuration;)Lcom/ot/pubsub/PubSubTrack;

    move-result-object p0

    sput-object p0, Lcom/miui/home/safemode/SafeModeOneTrack;->mPubSubTrackInstance:Lcom/ot/pubsub/PubSubTrack;

    const/4 p1, 0x1

    .line 40
    invoke-virtual {p0, p1}, Lcom/ot/pubsub/PubSubTrack;->setCustomPrivacyPolicyAccepted(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SafeModeOneTrack"

    const-string v0, "init"

    .line 42
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static synthetic lambda$trackSafeModeEvent$0(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3

    const-string v0, "SafeModeOneTrack"

    .line 97
    :try_start_0
    sget-boolean v1, Lcom/miui/home/safemode/SafeModeOneTrack;->IS_GLOBAL:Z

    if-eqz v1, :cond_0

    .line 98
    sget-object v1, Lcom/miui/home/safemode/SafeModeOneTrack;->mPubSubTrackInstance:Lcom/ot/pubsub/PubSubTrack;

    const-string v2, "ot_31000401997"

    invoke-virtual {v1, v2, p0, p1}, Lcom/ot/pubsub/PubSubTrack;->track(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 100
    :cond_0
    sget-object v1, Lcom/miui/home/safemode/SafeModeOneTrack;->mSafeModeOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    invoke-virtual {v1, p0, p1}, Lcom/xiaomi/onetrack/OneTrack;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 102
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    const-string p0, ""

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", params="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string p1, "trackMiuiWidgetEvent trackEvent fail"

    .line 104
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method private trackSafeModeEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 95
    new-instance p0, Lcom/miui/home/safemode/SafeModeOneTrack$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1, p2}, Lcom/miui/home/safemode/SafeModeOneTrack$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p0}, Lcom/miui/home/safemode/SafeBgThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public trackSuccess(I)V
    .locals 3

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 89
    sget-object v1, Lcom/miui/home/safemode/SafeModeOneTrack;->KEY_TIP_OPERATION:Ljava/lang/String;

    const-string v2, "tip"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "crash_level"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "operation"

    .line 91
    invoke-direct {p0, p1, v0}, Lcom/miui/home/safemode/SafeModeOneTrack;->trackSafeModeEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public trackTrigger(I)V
    .locals 3

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 82
    sget-object v1, Lcom/miui/home/safemode/SafeModeOneTrack;->KEY_TIP_TRIGGER:Ljava/lang/String;

    const-string v2, "tip"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "crash_level"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "trigger"

    .line 84
    invoke-direct {p0, p1, v0}, Lcom/miui/home/safemode/SafeModeOneTrack;->trackSafeModeEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
