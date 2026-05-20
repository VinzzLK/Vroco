.class public Lcom/ot/pubsub/j/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ot/pubsub/j/d$a;,
        Lcom/ot/pubsub/j/d$b;
    }
.end annotation


# static fields
.field private static volatile e:Lcom/ot/pubsub/j/d; = null

.field private static i:I = 0xdbba0


# instance fields
.field private f:Lcom/ot/pubsub/j/b;

.field private g:Lcom/ot/pubsub/j/d$a;

.field private volatile j:Z

.field private k:Landroid/content/BroadcastReceiver;

.field private l:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/ot/pubsub/j/d;->j:Z

    .line 224
    new-instance v0, Lcom/ot/pubsub/j/e;

    invoke-direct {v0, p0}, Lcom/ot/pubsub/j/e;-><init>(Lcom/ot/pubsub/j/d;)V

    iput-object v0, p0, Lcom/ot/pubsub/j/d;->k:Landroid/content/BroadcastReceiver;

    .line 297
    new-instance v0, Lcom/ot/pubsub/j/g;

    invoke-direct {v0, p0}, Lcom/ot/pubsub/j/g;-><init>(Lcom/ot/pubsub/j/d;)V

    iput-object v0, p0, Lcom/ot/pubsub/j/d;->l:Landroid/content/BroadcastReceiver;

    .line 163
    invoke-direct {p0}, Lcom/ot/pubsub/j/d;->j()V

    .line 164
    invoke-direct {p0}, Lcom/ot/pubsub/j/d;->m()V

    .line 165
    invoke-direct {p0}, Lcom/ot/pubsub/j/d;->g()V

    .line 166
    new-instance v0, Lcom/ot/pubsub/j/d$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/ot/pubsub/j/d$a;-><init>(Lcom/ot/pubsub/j/d;Landroid/os/Looper;Lcom/ot/pubsub/j/e;)V

    iput-object v0, p0, Lcom/ot/pubsub/j/d;->g:Lcom/ot/pubsub/j/d$a;

    return-void
.end method

.method public static a()Lcom/ot/pubsub/j/d;
    .locals 1

    .line 43
    sget-object v0, Lcom/ot/pubsub/j/d;->e:Lcom/ot/pubsub/j/d;

    if-nez v0, :cond_0

    .line 44
    invoke-static {}, Lcom/ot/pubsub/j/d;->b()V

    .line 46
    :cond_0
    sget-object v0, Lcom/ot/pubsub/j/d;->e:Lcom/ot/pubsub/j/d;

    return-object v0
.end method

.method static synthetic a(Lcom/ot/pubsub/j/d;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/ot/pubsub/j/d;->l()V

    return-void
.end method

.method static synthetic a(Lcom/ot/pubsub/j/d;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/ot/pubsub/j/d;->j:Z

    return p1
.end method

.method public static b()V
    .locals 2

    .line 51
    sget-object v0, Lcom/ot/pubsub/j/d;->e:Lcom/ot/pubsub/j/d;

    if-nez v0, :cond_1

    .line 52
    const-class v0, Lcom/ot/pubsub/j/d;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/ot/pubsub/j/d;->e:Lcom/ot/pubsub/j/d;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lcom/ot/pubsub/j/d;

    invoke-direct {v1}, Lcom/ot/pubsub/j/d;-><init>()V

    sput-object v1, Lcom/ot/pubsub/j/d;->e:Lcom/ot/pubsub/j/d;

    .line 56
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/ot/pubsub/j/d;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/ot/pubsub/j/d;->k()V

    return-void
.end method

.method static synthetic c(Lcom/ot/pubsub/j/d;)Lcom/ot/pubsub/j/d$a;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/ot/pubsub/j/d;->g:Lcom/ot/pubsub/j/d$a;

    return-object p0
.end method

.method static synthetic d(Lcom/ot/pubsub/j/d;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/ot/pubsub/j/d;->j:Z

    return p0
.end method

.method static synthetic f()I
    .locals 1

    .line 29
    sget v0, Lcom/ot/pubsub/j/d;->i:I

    return v0
.end method

.method private g()V
    .locals 2

    .line 170
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "mi_ad_pubsub_uploader_worker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 172
    new-instance v1, Lcom/ot/pubsub/j/b;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ot/pubsub/j/b;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/ot/pubsub/j/d;->f:Lcom/ot/pubsub/j/b;

    return-void
.end method

.method private h()Z
    .locals 1

    .line 188
    invoke-static {}, Lcom/ot/pubsub/util/k;->a()Z

    move-result p0

    const-string v0, "UploaderEngine"

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/ot/pubsub/util/l;->c(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/ot/pubsub/g/c;->a()Lcom/ot/pubsub/g/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ot/pubsub/g/c;->e()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const-string p0, "not match the upload status\uff0c\u5373\u5c06\u8fd4\u56de"

    .line 189
    invoke-static {v0, p0}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private i()Z
    .locals 1

    .line 196
    invoke-static {}, Lcom/ot/pubsub/util/k;->a()Z

    move-result p0

    const-string v0, "UploaderEngine"

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/ot/pubsub/util/l;->c(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/ot/pubsub/g/f;->a()Lcom/ot/pubsub/g/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ot/pubsub/g/f;->d()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const-string p0, "hb data not match the upload status\uff0c\u5373\u5c06\u8fd4\u56de"

    .line 197
    invoke-static {v0, p0}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private j()V
    .locals 3

    .line 211
    :try_start_0
    invoke-static {}, Lcom/ot/pubsub/util/b;->b()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 215
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.SCREEN_ON"

    .line 216
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    .line 217
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    iget-object p0, p0, Lcom/ot/pubsub/j/d;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 220
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "UploaderEngine"

    const-string v1, "registerScreenReceiver: %s"

    invoke-static {p0, v1, v0}, Lcom/ot/pubsub/util/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private k()V
    .locals 3

    .line 246
    iget-object p0, p0, Lcom/ot/pubsub/j/d;->g:Lcom/ot/pubsub/j/d$a;

    if-eqz p0, :cond_0

    const/16 v0, 0x7b

    .line 247
    sget v1, Lcom/ot/pubsub/j/d;->i:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private l()V
    .locals 1

    .line 252
    iget-object p0, p0, Lcom/ot/pubsub/j/d;->g:Lcom/ot/pubsub/j/d$a;

    if-eqz p0, :cond_0

    const/16 v0, 0x7b

    .line 253
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private m()V
    .locals 3

    .line 285
    :try_start_0
    invoke-static {}, Lcom/ot/pubsub/util/b;->b()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 289
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 290
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    iget-object p0, p0, Lcom/ot/pubsub/j/d;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerNetReceiver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UploaderEngine"

    invoke-static {v0, p0}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(IZ)V
    .locals 1

    monitor-enter p0

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/ot/pubsub/j/d;->f:Lcom/ot/pubsub/j/b;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0, p1, p2}, Lcom/ot/pubsub/j/b;->a(IZ)V

    goto :goto_0

    :cond_0
    const-string p1, "UploaderEngine"

    const-string p2, "*** impossible, upload timer should not be null"

    .line 74
    invoke-static {p1, p2}, Lcom/ot/pubsub/util/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/ot/pubsub/j/d;->f:Lcom/ot/pubsub/j/b;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0, p1}, Lcom/ot/pubsub/j/b;->a(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "UploaderEngine"

    const-string v0, "*** impossible, upload timer should not be null"

    .line 65
    invoke-static {p1, v0}, Lcom/ot/pubsub/util/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(I)Z
    .locals 6

    const/16 v0, 0x64

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    .line 130
    :try_start_0
    invoke-direct {p0}, Lcom/ot/pubsub/j/d;->i()Z

    move-result p0

    const/4 v3, 0x0

    if-nez p0, :cond_0

    return v3

    .line 134
    :cond_0
    :goto_0
    sget-boolean p0, Lcom/ot/pubsub/util/j;->a:Z

    if-eqz p0, :cond_1

    move v0, v1

    :cond_1
    if-lt v3, v0, :cond_2

    return v2

    .line 140
    :cond_2
    invoke-static {}, Lcom/ot/pubsub/g/f;->a()Lcom/ot/pubsub/g/f;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ot/pubsub/g/f;->a(I)Lcom/ot/pubsub/j/a;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "UploaderEngine"

    if-eqz p0, :cond_5

    .line 141
    :try_start_1
    iget-object v5, p0, Lcom/ot/pubsub/j/a;->a:Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 146
    :cond_3
    invoke-static {p0}, Lcom/ot/pubsub/j/c;->b(Lcom/ot/pubsub/j/a;)V

    .line 148
    iget-boolean p0, p0, Lcom/ot/pubsub/j/a;->d:Z

    if-eqz p0, :cond_4

    const-string p0, "No more records "

    .line 150
    invoke-static {v4, p0}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    const-string p0, "\u6ee1\u8db3\u6761\u4ef6\u7684\u8bb0\u5f55\u4e3a\u7a7a\uff0c\u5373\u5c06\u8fd4\u56de"

    .line 142
    invoke-static {v4, p0}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_2
    return v2
.end method

.method public declared-synchronized c()V
    .locals 2

    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/ot/pubsub/j/d;->f:Lcom/ot/pubsub/j/b;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Lcom/ot/pubsub/j/b;->a()V

    goto :goto_0

    :cond_0
    const-string v0, "UploaderEngine"

    const-string v1, "*** impossible, isInitCheckUpload timer should not be null"

    .line 82
    invoke-static {v0, v1}, Lcom/ot/pubsub/util/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Z
    .locals 6

    const/16 v0, 0x64

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    .line 92
    :try_start_0
    invoke-direct {p0}, Lcom/ot/pubsub/j/d;->h()Z

    move-result p0

    const/4 v3, 0x0

    if-nez p0, :cond_0

    return v3

    .line 96
    :cond_0
    :goto_0
    sget-boolean p0, Lcom/ot/pubsub/util/j;->a:Z

    if-eqz p0, :cond_1

    move v0, v1

    :cond_1
    if-lt v3, v0, :cond_2

    return v2

    .line 103
    :cond_2
    invoke-static {}, Lcom/ot/pubsub/g/c;->a()Lcom/ot/pubsub/g/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ot/pubsub/g/c;->c()Lcom/ot/pubsub/j/a;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "UploaderEngine"

    if-eqz p0, :cond_5

    .line 104
    :try_start_1
    iget-object v5, p0, Lcom/ot/pubsub/j/a;->a:Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 109
    :cond_3
    invoke-static {p0}, Lcom/ot/pubsub/j/c;->a(Lcom/ot/pubsub/j/a;)V

    .line 111
    iget-boolean p0, p0, Lcom/ot/pubsub/j/a;->d:Z

    if-eqz p0, :cond_4

    const-string p0, "No more records "

    .line 113
    invoke-static {v4, p0}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    const-string p0, "\u6ee1\u8db3\u6761\u4ef6\u7684\u8bb0\u5f55\u4e3a\u7a7a\uff0c\u5373\u5c06\u8fd4\u56de"

    .line 105
    invoke-static {v4, p0}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_2
    return v2
.end method

.method public e()V
    .locals 1

    .line 331
    new-instance v0, Lcom/ot/pubsub/j/i;

    invoke-direct {v0, p0}, Lcom/ot/pubsub/j/i;-><init>(Lcom/ot/pubsub/j/d;)V

    invoke-static {v0}, Lcom/ot/pubsub/g/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method
