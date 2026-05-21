.class public Lcom/ot/pubsub/i/b/b;
.super Ljava/lang/Object;


# static fields
.field private static final b:Ljava/lang/String; = "b"

.field private static volatile c:Lcom/ot/pubsub/i/b/b;


# instance fields
.field private volatile d:Z

.field private e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ot/pubsub/i/b/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/ot/pubsub/i/b/b;->d:Z

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ot/pubsub/i/b/b;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static a()Lcom/ot/pubsub/i/b/b;
    .locals 2

    .line 29
    sget-object v0, Lcom/ot/pubsub/i/b/b;->c:Lcom/ot/pubsub/i/b/b;

    if-nez v0, :cond_1

    .line 30
    const-class v0, Lcom/ot/pubsub/i/b/b;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/ot/pubsub/i/b/b;->c:Lcom/ot/pubsub/i/b/b;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/ot/pubsub/i/b/b;

    invoke-direct {v1}, Lcom/ot/pubsub/i/b/b;-><init>()V

    sput-object v1, Lcom/ot/pubsub/i/b/b;->c:Lcom/ot/pubsub/i/b/b;

    .line 34
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 36
    :cond_1
    :goto_0
    sget-object v0, Lcom/ot/pubsub/i/b/b;->c:Lcom/ot/pubsub/i/b/b;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 88
    :try_start_0
    invoke-static {}, Lcom/ot/pubsub/util/t;->b()Ljava/lang/String;

    move-result-object p0

    .line 89
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    sget-object v0, Lcom/ot/pubsub/c/a;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/ot/pubsub/c/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 91
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/ot/pubsub/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 96
    invoke-static {p0}, Lcom/ot/pubsub/util/t;->a(Ljava/lang/String;)V

    return-void

    .line 102
    :cond_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 103
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/ot/pubsub/c/a;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/ot/pubsub/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 105
    invoke-static {p0}, Lcom/ot/pubsub/util/t;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 107
    sget-object p1, Lcom/ot/pubsub/i/b/b;->b:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "putProjectIdTokenBySP Exception:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private b(Lcom/ot/pubsub/i/b/a;)V
    .locals 1

    .line 193
    invoke-static {}, Lcom/ot/pubsub/j/d;->a()Lcom/ot/pubsub/j/d;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/ot/pubsub/j/d;->a(Z)V

    .line 194
    invoke-static {}, Lcom/ot/pubsub/j/d;->a()Lcom/ot/pubsub/j/d;

    move-result-object p0

    invoke-virtual {p0, p1, p1}, Lcom/ot/pubsub/j/d;->a(IZ)V

    .line 195
    invoke-static {}, Lcom/ot/pubsub/j/d;->a()Lcom/ot/pubsub/j/d;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/ot/pubsub/j/d;->a(IZ)V

    return-void
.end method

.method private c(Ljava/lang/String;)Lcom/ot/pubsub/i/b/a;
    .locals 2

    const/4 p0, 0x0

    .line 67
    :try_start_0
    invoke-static {}, Lcom/ot/pubsub/util/t;->b()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    .line 71
    :cond_0
    sget-object v1, Lcom/ot/pubsub/c/a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ot/pubsub/c/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 77
    invoke-static {p1}, Lcom/ot/pubsub/i/b/a;->a(Ljava/lang/String;)Lcom/ot/pubsub/i/b/a;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method private d(Ljava/lang/String;)Lcom/ot/pubsub/i/b/a;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 116
    :try_start_0
    iget-boolean v2, p0, Lcom/ot/pubsub/i/b/b;->d:Z

    if-nez v2, :cond_1

    sget-object v2, Lcom/ot/pubsub/i/b/b;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/ot/pubsub/util/l;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 120
    iput-boolean v2, p0, Lcom/ot/pubsub/i/b/b;->d:Z

    .line 121
    invoke-static {}, Lcom/ot/pubsub/b/o;->a()Lcom/ot/pubsub/b/o;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/ot/pubsub/b/o;->a(Ljava/lang/String;)Lcom/ot/pubsub/Configuration;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 123
    invoke-virtual {p1}, Lcom/ot/pubsub/Configuration;->getPrivateKeyId()Ljava/lang/String;

    move-result-object p1

    .line 124
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "timestamp"

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {}, Lcom/ot/pubsub/g/l;->a()Lcom/ot/pubsub/g/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ot/pubsub/g/l;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v2}, Lcom/ot/pubsub/i/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-static {p1}, Lcom/ot/pubsub/i/b/a;->a(Ljava/lang/String;)Lcom/ot/pubsub/i/b/a;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    goto :goto_1

    .line 132
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/ot/pubsub/i/b/b;->d:Z

    return-object v0

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Lcom/ot/pubsub/i/b/b;->d:Z

    .line 133
    throw p1

    .line 132
    :catch_0
    :cond_2
    :goto_1
    iput-boolean v1, p0, Lcom/ot/pubsub/i/b/b;->d:Z

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/ot/pubsub/i/b/b;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ot/pubsub/i/b/a;

    invoke-virtual {p0, v0}, Lcom/ot/pubsub/i/b/b;->a(Lcom/ot/pubsub/i/b/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object p0, p0, Lcom/ot/pubsub/i/b/b;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ot/pubsub/i/b/a;

    iget-object p0, p0, Lcom/ot/pubsub/i/b/a;->d:Ljava/lang/String;

    return-object p0

    .line 49
    :cond_0
    invoke-direct {p0, p1}, Lcom/ot/pubsub/i/b/b;->c(Ljava/lang/String;)Lcom/ot/pubsub/i/b/a;

    move-result-object v0

    .line 50
    invoke-virtual {p0, v0}, Lcom/ot/pubsub/i/b/b;->a(Lcom/ot/pubsub/i/b/a;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    iget-object p0, p0, Lcom/ot/pubsub/i/b/b;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object p0, v0, Lcom/ot/pubsub/i/b/a;->d:Ljava/lang/String;

    return-object p0

    .line 55
    :cond_1
    invoke-direct {p0, p1}, Lcom/ot/pubsub/i/b/b;->d(Ljava/lang/String;)Lcom/ot/pubsub/i/b/a;

    move-result-object v0

    .line 56
    invoke-virtual {p0, v0}, Lcom/ot/pubsub/i/b/b;->a(Lcom/ot/pubsub/i/b/a;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    iget-object v1, p0, Lcom/ot/pubsub/i/b/b;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v1, v0, Lcom/ot/pubsub/i/b/a;->g:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/ot/pubsub/i/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0, v0}, Lcom/ot/pubsub/i/b/b;->b(Lcom/ot/pubsub/i/b/a;)V

    .line 60
    iget-object p0, v0, Lcom/ot/pubsub/i/b/a;->d:Ljava/lang/String;

    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method public a(Lcom/ot/pubsub/i/b/a;)Z
    .locals 5

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 169
    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/ot/pubsub/i/b/a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return p0

    .line 172
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 174
    iget-wide v2, p1, Lcom/ot/pubsub/i/b/a;->f:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    return p0

    :cond_2
    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    .line 178
    div-long/2addr v0, v2

    const-wide/16 v2, 0xb4

    add-long/2addr v0, v2

    .line 179
    iget v2, p1, Lcom/ot/pubsub/i/b/a;->e:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    .line 180
    sget-object v2, Lcom/ot/pubsub/i/b/b;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interval:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "_expires:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/ot/pubsub/i/b/a;->e:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_isValid:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/ot/pubsub/i/b/b;->e:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/ot/pubsub/i/b/a;

    invoke-direct {v1}, Lcom/ot/pubsub/i/b/a;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ""

    .line 140
    invoke-static {v0}, Lcom/ot/pubsub/util/t;->a(Ljava/lang/String;)V

    .line 142
    invoke-direct {p0, p1}, Lcom/ot/pubsub/i/b/b;->d(Ljava/lang/String;)Lcom/ot/pubsub/i/b/a;

    move-result-object v0

    .line 143
    invoke-virtual {p0, v0}, Lcom/ot/pubsub/i/b/b;->a(Lcom/ot/pubsub/i/b/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/ot/pubsub/i/b/b;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v1, v0, Lcom/ot/pubsub/i/b/a;->g:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/ot/pubsub/i/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-direct {p0, v0}, Lcom/ot/pubsub/i/b/b;->b(Lcom/ot/pubsub/i/b/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 149
    sget-object p1, Lcom/ot/pubsub/i/b/b;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceRefreshToken Exception\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/ot/pubsub/util/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
