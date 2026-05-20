.class public final Lcom/miui/maml/NotifierManager;
.super Ljava/lang/Object;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/NotifierManager$MultiBroadcastNotifier;,
        Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;,
        Lcom/miui/maml/NotifierManager$DarkModeNotifier;,
        Lcom/miui/maml/NotifierManager$ContentChangeNotifier;,
        Lcom/miui/maml/NotifierManager$MobileDataNotifier;,
        Lcom/miui/maml/NotifierManager$BroadcastNotifier;,
        Lcom/miui/maml/NotifierManager$BaseNotifier;,
        Lcom/miui/maml/NotifierManager$OnNotifyListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NotifierManager"

.field private static final RECEIVER_EXPORTED:I = 0x2

.field public static TYPE_CONFIG_CHANGE:Ljava/lang/String; = "ConfigChange"

.field public static TYPE_DARK_MODE:Ljava/lang/String; = "DarkMode"

.field public static TYPE_MOBILE_DATA:Ljava/lang/String; = "MobileData"

.field public static TYPE_TIME_CHANGED:Ljava/lang/String; = "TimeChanged"

.field public static TYPE_WIFI_STATE:Ljava/lang/String; = "WifiState"

.field private static sInstance:Lcom/miui/maml/NotifierManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNotifiers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/maml/NotifierManager$BaseNotifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    .line 45
    iput-object p1, p0, Lcom/miui/maml/NotifierManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static createNotifier(Ljava/lang/String;Landroid/content/Context;)Lcom/miui/maml/NotifierManager$BaseNotifier;
    .locals 3

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createNotifier:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotifierManager"

    invoke-static {v1, v0}, Lcom/miui/maml/util/MamlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sget-object v0, Lcom/miui/maml/NotifierManager;->TYPE_MOBILE_DATA:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    new-instance p0, Lcom/miui/maml/NotifierManager$MobileDataNotifier;

    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager$MobileDataNotifier;-><init>(Landroid/content/Context;)V

    return-object p0

    .line 53
    :cond_0
    sget-object v0, Lcom/miui/maml/NotifierManager;->TYPE_WIFI_STATE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    new-instance p0, Lcom/miui/maml/NotifierManager$MultiBroadcastNotifier;

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    const-string v2, "android.net.wifi.STATE_CHANGE"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/miui/maml/NotifierManager$MultiBroadcastNotifier;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    return-object p0

    .line 58
    :cond_1
    sget-object v0, Lcom/miui/maml/NotifierManager;->TYPE_TIME_CHANGED:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    new-instance p0, Lcom/miui/maml/NotifierManager$MultiBroadcastNotifier;

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    const-string v1, "android.intent.action.TIME_SET"

    const-string v2, "android.intent.action.DATE_CHANGED"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/miui/maml/NotifierManager$MultiBroadcastNotifier;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    return-object p0

    .line 63
    :cond_2
    sget-object v0, Lcom/miui/maml/NotifierManager;->TYPE_DARK_MODE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    new-instance p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;

    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager$DarkModeNotifier;-><init>(Landroid/content/Context;)V

    return-object p0

    .line 65
    :cond_3
    sget-object v0, Lcom/miui/maml/NotifierManager;->TYPE_CONFIG_CHANGE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 66
    new-instance p0, Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;

    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager$ConfigChangeNotifier;-><init>(Landroid/content/Context;)V

    return-object p0

    .line 69
    :cond_4
    new-instance v0, Lcom/miui/maml/NotifierManager$BroadcastNotifier;

    invoke-direct {v0, p1, p0}, Lcom/miui/maml/NotifierManager$BroadcastNotifier;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/maml/NotifierManager;
    .locals 2

    const-class v0, Lcom/miui/maml/NotifierManager;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Lcom/miui/maml/NotifierManager;->sInstance:Lcom/miui/maml/NotifierManager;

    if-nez v1, :cond_0

    .line 74
    new-instance v1, Lcom/miui/maml/NotifierManager;

    invoke-direct {v1, p0}, Lcom/miui/maml/NotifierManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/maml/NotifierManager;->sInstance:Lcom/miui/maml/NotifierManager;

    .line 76
    :cond_0
    sget-object p0, Lcom/miui/maml/NotifierManager;->sInstance:Lcom/miui/maml/NotifierManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private safeGet(Ljava/lang/String;)Lcom/miui/maml/NotifierManager$BaseNotifier;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/miui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    monitor-enter v0

    .line 135
    :try_start_0
    iget-object p0, p0, Lcom/miui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/NotifierManager$BaseNotifier;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 136
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public acquireNotifier(Ljava/lang/String;Lcom/miui/maml/NotifierManager$OnNotifyListener;)V
    .locals 3

    const-string v0, "NotifierManager"

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquireNotifier:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/miui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    monitor-enter v0

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/NotifierManager$BaseNotifier;

    if-nez v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/miui/maml/NotifierManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/miui/maml/NotifierManager;->createNotifier(Ljava/lang/String;Landroid/content/Context;)Lcom/miui/maml/NotifierManager$BaseNotifier;

    move-result-object v1

    if-nez v1, :cond_0

    .line 92
    monitor-exit v0

    return-void

    .line 93
    :cond_0
    invoke-virtual {v1}, Lcom/miui/maml/NotifierManager$BaseNotifier;->init()V

    .line 94
    iget-object p0, p0, Lcom/miui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-virtual {v1, p2}, Lcom/miui/maml/NotifierManager$BaseNotifier;->addListener(Lcom/miui/maml/NotifierManager$OnNotifyListener;)V

    return-void

    :catchall_0
    move-exception p0

    .line 96
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public pause(Ljava/lang/String;Lcom/miui/maml/NotifierManager$OnNotifyListener;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager;->safeGet(Ljava/lang/String;)Lcom/miui/maml/NotifierManager$BaseNotifier;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 120
    :cond_0
    invoke-virtual {p0, p2}, Lcom/miui/maml/NotifierManager$BaseNotifier;->pauseListener(Lcom/miui/maml/NotifierManager$OnNotifyListener;)I

    move-result p1

    if-nez p1, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->pause()V

    :cond_1
    return-void
.end method

.method public releaseNotifier(Ljava/lang/String;Lcom/miui/maml/NotifierManager$OnNotifyListener;)V
    .locals 3

    const-string v0, "NotifierManager"

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseNotifier:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/miui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    monitor-enter v0

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/NotifierManager$BaseNotifier;

    if-nez v1, :cond_0

    .line 106
    monitor-exit v0

    return-void

    .line 108
    :cond_0
    invoke-virtual {v1, p2}, Lcom/miui/maml/NotifierManager$BaseNotifier;->removeListener(Lcom/miui/maml/NotifierManager$OnNotifyListener;)V

    .line 109
    invoke-virtual {v1}, Lcom/miui/maml/NotifierManager$BaseNotifier;->getRef()I

    move-result p2

    if-nez p2, :cond_1

    .line 110
    invoke-virtual {v1}, Lcom/miui/maml/NotifierManager$BaseNotifier;->finish()V

    .line 111
    iget-object p0, p0, Lcom/miui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public declared-synchronized resume(Ljava/lang/String;Lcom/miui/maml/NotifierManager$OnNotifyListener;)V
    .locals 1

    monitor-enter p0

    .line 125
    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager;->safeGet(Ljava/lang/String;)Lcom/miui/maml/NotifierManager$BaseNotifier;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 127
    monitor-exit p0

    return-void

    .line 129
    :cond_0
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/miui/maml/NotifierManager$BaseNotifier;->resumeListener(Lcom/miui/maml/NotifierManager$OnNotifyListener;)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 130
    invoke-virtual {p1}, Lcom/miui/maml/NotifierManager$BaseNotifier;->resume()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
