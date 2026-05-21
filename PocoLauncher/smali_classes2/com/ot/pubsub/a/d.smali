.class public Lcom/ot/pubsub/a/d;
.super Ljava/lang/Object;


# static fields
.field private static e:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private d:Lcom/ot/pubsub/a/c;

.field private f:Lcom/ot/pubsub/PubSubTrack$ICommonPropertyProvider;

.field private g:Landroid/content/Context;

.field private h:Lcom/ot/pubsub/Configuration;

.field private i:Lcom/ot/pubsub/util/q;

.field private j:Lcom/ot/pubsub/PubSubTrack$IEventHook;

.field private k:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ot/pubsub/Configuration;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    new-instance v0, Lcom/ot/pubsub/a/k;

    invoke-direct {v0, p0}, Lcom/ot/pubsub/a/k;-><init>(Lcom/ot/pubsub/a/d;)V

    iput-object v0, p0, Lcom/ot/pubsub/a/d;->k:Landroid/content/BroadcastReceiver;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 63
    iput-object p1, p0, Lcom/ot/pubsub/a/d;->g:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/ot/pubsub/a/d;->h:Lcom/ot/pubsub/Configuration;

    .line 65
    invoke-direct {p0, p1}, Lcom/ot/pubsub/a/d;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/ot/pubsub/a/d;)Lcom/ot/pubsub/Configuration;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ot/pubsub/a/d;->h:Lcom/ot/pubsub/Configuration;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 7

    .line 69
    iget-object p1, p0, Lcom/ot/pubsub/a/d;->h:Lcom/ot/pubsub/Configuration;

    invoke-virtual {p1}, Lcom/ot/pubsub/Configuration;->isInternational()Z

    move-result p1

    iget-object v0, p0, Lcom/ot/pubsub/a/d;->h:Lcom/ot/pubsub/Configuration;

    invoke-virtual {v0}, Lcom/ot/pubsub/Configuration;->getRegion()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ot/pubsub/util/l;->a(ZLjava/lang/String;)V

    .line 70
    sget-object p1, Lcom/ot/pubsub/a/d;->e:Ljava/util/concurrent/ExecutorService;

    if-nez p1, :cond_0

    .line 71
    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object p1, Lcom/ot/pubsub/a/d;->e:Ljava/util/concurrent/ExecutorService;

    .line 75
    :cond_0
    new-instance p1, Lcom/ot/pubsub/util/q;

    iget-object v0, p0, Lcom/ot/pubsub/a/d;->h:Lcom/ot/pubsub/Configuration;

    invoke-direct {p1, v0}, Lcom/ot/pubsub/util/q;-><init>(Lcom/ot/pubsub/Configuration;)V

    iput-object p1, p0, Lcom/ot/pubsub/a/d;->i:Lcom/ot/pubsub/util/q;

    .line 76
    new-instance v0, Lcom/ot/pubsub/a/q;

    iget-object v1, p0, Lcom/ot/pubsub/a/d;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/ot/pubsub/a/d;->h:Lcom/ot/pubsub/Configuration;

    invoke-direct {v0, v1, v2, p1}, Lcom/ot/pubsub/a/q;-><init>(Landroid/content/Context;Lcom/ot/pubsub/Configuration;Lcom/ot/pubsub/util/q;)V

    iput-object v0, p0, Lcom/ot/pubsub/a/d;->d:Lcom/ot/pubsub/a/c;

    .line 77
    invoke-direct {p0}, Lcom/ot/pubsub/a/d;->c()V

    .line 79
    iget-object p1, p0, Lcom/ot/pubsub/a/d;->h:Lcom/ot/pubsub/Configuration;

    invoke-virtual {p1}, Lcom/ot/pubsub/Configuration;->isOverrideMiuiRegionSetting()Z

    move-result p1

    invoke-static {p1}, Lcom/ot/pubsub/util/l;->a(Z)V

    .line 80
    invoke-direct {p0}, Lcom/ot/pubsub/a/d;->d()V

    .line 81
    sget-object p1, Lcom/ot/pubsub/a/d;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/ot/pubsub/a/e;

    invoke-direct {v0, p0}, Lcom/ot/pubsub/a/e;-><init>(Lcom/ot/pubsub/a/d;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/ot/pubsub/a/d;Ljava/lang/String;)Z
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/ot/pubsub/a/d;->c(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/ot/pubsub/a/d;)Lcom/ot/pubsub/a/c;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ot/pubsub/a/d;->d:Lcom/ot/pubsub/a/c;

    return-object p0
.end method

.method static synthetic b(Lcom/ot/pubsub/a/d;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/ot/pubsub/a/d;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/ot/pubsub/a/d;)Lcom/ot/pubsub/PubSubTrack$IEventHook;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ot/pubsub/a/d;->j:Lcom/ot/pubsub/PubSubTrack$IEventHook;

    return-object p0
.end method

.method private c()V
    .locals 3

    .line 135
    :try_start_0
    invoke-static {}, Lcom/ot/pubsub/util/b;->b()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.SCREEN_ON"

    .line 140
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    .line 141
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    iget-object p0, p0, Lcom/ot/pubsub/a/d;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 144
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "PubSubTrackImp"

    const-string v1, "registerScreenReceiver: %s"

    invoke-static {p0, v1, v0}, Lcom/ot/pubsub/util/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .locals 3

    .line 241
    invoke-static {p1}, Lcom/ot/pubsub/util/m;->a(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Invalid eventname: %s. Eventname can only consist of numbers, letters, underscores ,and can not start with a number or \"onetrack_\" or \"ot_\""

    .line 243
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "PubSubTrackImp"

    invoke-static {v1, p1}, Lcom/ot/pubsub/util/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    xor-int/2addr p0, v0

    return p0
.end method

.method static synthetic d(Lcom/ot/pubsub/a/d;)Lcom/ot/pubsub/util/q;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ot/pubsub/a/d;->i:Lcom/ot/pubsub/util/q;

    return-object p0
.end method

.method private d(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    const/4 v0, 0x0

    .line 250
    :try_start_0
    iget-object v1, p0, Lcom/ot/pubsub/a/d;->f:Lcom/ot/pubsub/PubSubTrack$ICommonPropertyProvider;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/ot/pubsub/PubSubTrack$ICommonPropertyProvider;->getDynamicProperty(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    const/4 v1, 0x0

    .line 251
    invoke-static {p1, v1}, Lcom/ot/pubsub/util/m;->a(Ljava/util/Map;Z)Lorg/json/JSONObject;

    move-result-object p1

    .line 253
    iget-object p0, p0, Lcom/ot/pubsub/a/d;->h:Lcom/ot/pubsub/Configuration;

    invoke-static {p0}, Lcom/ot/pubsub/util/m;->a(Lcom/ot/pubsub/Configuration;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ot/pubsub/util/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 254
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 255
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 257
    :goto_1
    invoke-static {p1, v1}, Lcom/ot/pubsub/util/m;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 259
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCommonProperty: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PubSubTrackImp"

    invoke-static {p1, p0}, Lcom/ot/pubsub/util/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private d()V
    .locals 2

    .line 152
    :try_start_0
    invoke-static {}, Lcom/ot/pubsub/util/b;->b()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 156
    :cond_0
    check-cast v0, Landroid/app/Application;

    new-instance v1, Lcom/ot/pubsub/a/j;

    invoke-direct {v1, p0}, Lcom/ot/pubsub/a/j;-><init>(Lcom/ot/pubsub/a/d;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerLifecycleCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PubSubTrackImp"

    invoke-static {v0, p0}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private e()V
    .locals 1

    .line 225
    invoke-static {}, Lcom/ot/pubsub/g/i;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    new-instance v0, Lcom/ot/pubsub/a/m;

    invoke-direct {v0, p0}, Lcom/ot/pubsub/a/m;-><init>(Lcom/ot/pubsub/a/d;)V

    invoke-static {v0}, Lcom/ot/pubsub/util/e;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/ot/pubsub/a/d;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/ot/pubsub/a/d;->e()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 115
    sget-object v0, Lcom/ot/pubsub/a/d;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/ot/pubsub/a/i;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/ot/pubsub/a/i;-><init>(Lcom/ot/pubsub/a/d;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/ot/pubsub/a/d;->h:Lcom/ot/pubsub/Configuration;

    invoke-virtual {v0}, Lcom/ot/pubsub/Configuration;->isUseCustomPrivacyPolicy()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 328
    :cond_0
    sget-object v0, Lcom/ot/pubsub/a/d;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ot/pubsub/a/f;

    invoke-direct {v1, p0, p1}, Lcom/ot/pubsub/a/f;-><init>(Lcom/ot/pubsub/a/d;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
