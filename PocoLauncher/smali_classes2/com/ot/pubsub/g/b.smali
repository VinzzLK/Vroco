.class public Lcom/ot/pubsub/g/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "b"

.field private static volatile f:Lcom/ot/pubsub/g/b;

.field private static g:Ljava/lang/String;

.field private static j:Ljava/lang/String;


# instance fields
.field private final h:Landroid/content/Context;

.field private final i:Landroid/content/Context;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/ot/pubsub/g/b;->k:Z

    .line 50
    invoke-static {}, Lcom/ot/pubsub/util/b;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ot/pubsub/g/b;->h:Landroid/content/Context;

    .line 51
    invoke-static {}, Lcom/ot/pubsub/util/b;->b()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ot/pubsub/g/b;->i:Landroid/content/Context;

    .line 52
    invoke-static {}, Lcom/ot/pubsub/util/b;->e()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/ot/pubsub/g/b;->j:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/ot/pubsub/g/b;
    .locals 2

    .line 39
    sget-object v0, Lcom/ot/pubsub/g/b;->f:Lcom/ot/pubsub/g/b;

    if-nez v0, :cond_1

    .line 40
    const-class v0, Lcom/ot/pubsub/g/b;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/ot/pubsub/g/b;->f:Lcom/ot/pubsub/g/b;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Lcom/ot/pubsub/g/b;

    invoke-direct {v1}, Lcom/ot/pubsub/g/b;-><init>()V

    sput-object v1, Lcom/ot/pubsub/g/b;->f:Lcom/ot/pubsub/g/b;

    .line 44
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 46
    :cond_1
    :goto_0
    sget-object v0, Lcom/ot/pubsub/g/b;->f:Lcom/ot/pubsub/g/b;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .line 135
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "content://com.miui.analytics.OneTrackProvider/insId"

    .line 138
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 139
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 140
    sget-object v2, Lcom/ot/pubsub/g/b;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object p0, p0, Lcom/ot/pubsub/g/b;->i:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 144
    invoke-static {p1}, Lcom/ot/pubsub/util/t;->e(Ljava/lang/String;)V

    .line 145
    sget-object p1, Lcom/ot/pubsub/g/b;->a:Ljava/lang/String;

    const-string v0, "setRemoteCacheInstanceId e"

    invoke-static {p1, v0, p0}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "content://com.miui.analytics.OneTrackProvider/insId"

    .line 116
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "pkg"

    .line 117
    sget-object v4, Lcom/ot/pubsub/g/b;->j:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v3, "sign"

    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/ot/pubsub/g/b;->j:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ot/pubsub/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 119
    iget-object p0, p0, Lcom/ot/pubsub/g/b;->i:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 120
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 122
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 125
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 128
    sget-object v2, Lcom/ot/pubsub/g/b;->a:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v0

    const-string p0, "getRemoteCacheInstanceId e"

    invoke-static {v2, p0, v3}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-object v1
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object p0, p0, Lcom/ot/pubsub/g/b;->h:Landroid/content/Context;

    invoke-static {p0}, Lcom/ot/pubsub/util/t;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 151
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-static {}, Lcom/ot/pubsub/util/t;->f()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 155
    :cond_0
    invoke-static {p0}, Lcom/ot/pubsub/util/t;->e(Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 71
    :cond_0
    sput-object p1, Lcom/ot/pubsub/g/b;->g:Ljava/lang/String;

    .line 72
    iget-boolean v0, p0, Lcom/ot/pubsub/g/b;->k:Z

    if-eqz v0, :cond_1

    .line 73
    invoke-direct {p0, p1}, Lcom/ot/pubsub/g/b;->b(Ljava/lang/String;)V

    .line 75
    :cond_1
    sget-object p0, Lcom/ot/pubsub/g/b;->g:Ljava/lang/String;

    invoke-static {p0}, Lcom/ot/pubsub/util/t;->e(Ljava/lang/String;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .line 79
    sget-object v0, Lcom/ot/pubsub/g/b;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    sget-object p0, Lcom/ot/pubsub/g/b;->g:Ljava/lang/String;

    return-object p0

    .line 84
    :cond_0
    iget-boolean v0, p0, Lcom/ot/pubsub/g/b;->k:Z

    if-eqz v0, :cond_2

    .line 85
    invoke-direct {p0}, Lcom/ot/pubsub/g/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-direct {p0}, Lcom/ot/pubsub/g/b;->d()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 90
    invoke-direct {p0, v1}, Lcom/ot/pubsub/g/b;->b(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 91
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 93
    invoke-static {v0}, Lcom/ot/pubsub/util/t;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_2
    invoke-direct {p0}, Lcom/ot/pubsub/g/b;->d()Ljava/lang/String;

    move-result-object v0

    .line 99
    :cond_3
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 100
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ot/pubsub/g/b;->g:Ljava/lang/String;

    .line 101
    iget-boolean v1, p0, Lcom/ot/pubsub/g/b;->k:Z

    if-eqz v1, :cond_4

    .line 103
    invoke-direct {p0, v0}, Lcom/ot/pubsub/g/b;->b(Ljava/lang/String;)V

    .line 106
    :cond_4
    sget-object p0, Lcom/ot/pubsub/g/b;->g:Ljava/lang/String;

    invoke-static {p0}, Lcom/ot/pubsub/util/t;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 108
    :cond_5
    sput-object v0, Lcom/ot/pubsub/g/b;->g:Ljava/lang/String;

    .line 110
    :goto_1
    sget-object p0, Lcom/ot/pubsub/g/b;->g:Ljava/lang/String;

    return-object p0
.end method
