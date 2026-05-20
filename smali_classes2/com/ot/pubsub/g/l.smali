.class public Lcom/ot/pubsub/g/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ot/pubsub/g/l$a;
    }
.end annotation


# static fields
.field private static h:Ljava/lang/String; = ""

.field private static i:Ljava/lang/String; = ""

.field private static j:Ljava/lang/String; = ""

.field private static k:Ljava/lang/String; = ""

.field private static l:Ljava/lang/String; = ""

.field private static m:Ljava/lang/String; = ""

.field private static n:Ljava/lang/String; = ""

.field private static final s:[B

.field private static final t:[B

.field private static final u:[B

.field private static final v:[B

.field private static final w:[B

.field private static final x:[B

.field private static final y:[B

.field private static z:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x11

    new-array v0, v0, [B

    .line 43
    fill-array-data v0, :array_0

    sput-object v0, Lcom/ot/pubsub/g/l;->s:[B

    const/16 v0, 0x16

    new-array v0, v0, [B

    .line 44
    fill-array-data v0, :array_1

    sput-object v0, Lcom/ot/pubsub/g/l;->t:[B

    const/16 v0, 0x15

    new-array v0, v0, [B

    .line 45
    fill-array-data v0, :array_2

    sput-object v0, Lcom/ot/pubsub/g/l;->u:[B

    const/16 v0, 0x17

    new-array v0, v0, [B

    .line 46
    fill-array-data v0, :array_3

    sput-object v0, Lcom/ot/pubsub/g/l;->v:[B

    const/16 v0, 0x1c

    new-array v0, v0, [B

    .line 47
    fill-array-data v0, :array_4

    sput-object v0, Lcom/ot/pubsub/g/l;->w:[B

    const/16 v0, 0x1d

    new-array v0, v0, [B

    .line 48
    fill-array-data v0, :array_5

    sput-object v0, Lcom/ot/pubsub/g/l;->x:[B

    const/16 v0, 0x1b

    new-array v0, v0, [B

    .line 49
    fill-array-data v0, :array_6

    sput-object v0, Lcom/ot/pubsub/g/l;->y:[B

    .line 52
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/ot/pubsub/g/l;->z:Ljava/util/concurrent/ConcurrentHashMap;

    return-void

    nop

    :array_0
    .array-data 1
        0x74t
        0x72t
        0x61t
        0x63t
        0x6bt
        0x69t
        0x6et
        0x67t
        0x2et
        0x6dt
        0x69t
        0x75t
        0x69t
        0x2et
        0x63t
        0x6ft
        0x6dt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x74t
        0x72t
        0x61t
        0x63t
        0x6bt
        0x69t
        0x6et
        0x67t
        0x2et
        0x69t
        0x6et
        0x74t
        0x6ct
        0x2et
        0x6dt
        0x69t
        0x75t
        0x69t
        0x2et
        0x63t
        0x6ft
        0x6dt
    .end array-data

    nop

    :array_2
    .array-data 1
        0x74t
        0x72t
        0x61t
        0x63t
        0x6bt
        0x69t
        0x6et
        0x67t
        0x2et
        0x72t
        0x75t
        0x73t
        0x2et
        0x6dt
        0x69t
        0x75t
        0x69t
        0x2et
        0x63t
        0x6ft
        0x6dt
    .end array-data

    nop

    :array_3
    .array-data 1
        0x74t
        0x72t
        0x61t
        0x63t
        0x6bt
        0x69t
        0x6et
        0x67t
        0x2et
        0x69t
        0x6et
        0x64t
        0x69t
        0x61t
        0x2et
        0x6dt
        0x69t
        0x75t
        0x69t
        0x2et
        0x63t
        0x6ft
        0x6dt
    .end array-data

    :array_4
    .array-data 1
        0x73t
        0x64t
        0x6bt
        0x63t
        0x6ft
        0x6et
        0x66t
        0x69t
        0x67t
        0x2et
        0x61t
        0x64t
        0x2et
        0x69t
        0x6et
        0x74t
        0x6ct
        0x2et
        0x78t
        0x69t
        0x61t
        0x6ft
        0x6dt
        0x69t
        0x2et
        0x63t
        0x6ft
        0x6dt
    .end array-data

    :array_5
    .array-data 1
        0x73t
        0x64t
        0x6bt
        0x63t
        0x6ft
        0x6et
        0x66t
        0x69t
        0x67t
        0x2et
        0x61t
        0x64t
        0x2et
        0x69t
        0x6et
        0x64t
        0x69t
        0x61t
        0x2et
        0x78t
        0x69t
        0x61t
        0x6ft
        0x6dt
        0x69t
        0x2et
        0x63t
        0x6ft
        0x6dt
    .end array-data

    nop

    :array_6
    .array-data 1
        0x73t
        0x64t
        0x6bt
        0x63t
        0x6ft
        0x6et
        0x66t
        0x69t
        0x67t
        0x2et
        0x61t
        0x64t
        0x2et
        0x72t
        0x75t
        0x73t
        0x2et
        0x78t
        0x69t
        0x61t
        0x6ft
        0x6dt
        0x69t
        0x2et
        0x63t
        0x6ft
        0x6dt
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-direct {p0}, Lcom/ot/pubsub/g/l;->f()V

    .line 57
    sget-object p0, Lcom/ot/pubsub/g/l;->z:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v0, Lcom/ot/pubsub/g/l;->n:Ljava/lang/String;

    const-string v1, "IN"

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object p0, Lcom/ot/pubsub/g/l;->z:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v0, Lcom/ot/pubsub/g/l;->m:Ljava/lang/String;

    const-string v1, "RU"

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ot/pubsub/g/m;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/ot/pubsub/g/l;-><init>()V

    return-void
.end method

.method public static a()Lcom/ot/pubsub/g/l;
    .locals 1

    .line 66
    invoke-static {}, Lcom/ot/pubsub/g/l$a;->a()Lcom/ot/pubsub/g/l;

    move-result-object v0

    return-object v0
.end method

.method private a(ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 134
    sget-object p0, Lcom/ot/pubsub/g/l;->k:Ljava/lang/String;

    return-object p0

    .line 136
    :cond_0
    sget-object p0, Lcom/ot/pubsub/g/l;->z:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 137
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 138
    sget-object p0, Lcom/ot/pubsub/g/l;->l:Ljava/lang/String;

    :cond_1
    return-object p0
.end method

.method private a([B)Ljava/lang/String;
    .locals 1

    .line 83
    :try_start_0
    new-instance p0, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {p0, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 85
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RegionDomainManager"

    invoke-static {p1, p0}, Lcom/ot/pubsub/util/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private f()V
    .locals 1

    .line 71
    sget-object v0, Lcom/ot/pubsub/g/l;->s:[B

    invoke-direct {p0, v0}, Lcom/ot/pubsub/g/l;->a([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ot/pubsub/g/l;->k:Ljava/lang/String;

    .line 72
    sget-object v0, Lcom/ot/pubsub/g/l;->t:[B

    invoke-direct {p0, v0}, Lcom/ot/pubsub/g/l;->a([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ot/pubsub/g/l;->l:Ljava/lang/String;

    .line 73
    sget-object v0, Lcom/ot/pubsub/g/l;->u:[B

    invoke-direct {p0, v0}, Lcom/ot/pubsub/g/l;->a([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ot/pubsub/g/l;->m:Ljava/lang/String;

    .line 74
    sget-object v0, Lcom/ot/pubsub/g/l;->v:[B

    invoke-direct {p0, v0}, Lcom/ot/pubsub/g/l;->a([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ot/pubsub/g/l;->n:Ljava/lang/String;

    .line 75
    sget-object v0, Lcom/ot/pubsub/g/l;->w:[B

    invoke-direct {p0, v0}, Lcom/ot/pubsub/g/l;->a([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ot/pubsub/g/l;->h:Ljava/lang/String;

    .line 76
    sget-object v0, Lcom/ot/pubsub/g/l;->x:[B

    invoke-direct {p0, v0}, Lcom/ot/pubsub/g/l;->a([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ot/pubsub/g/l;->i:Ljava/lang/String;

    .line 77
    sget-object v0, Lcom/ot/pubsub/g/l;->y:[B

    invoke-direct {p0, v0}, Lcom/ot/pubsub/g/l;->a([B)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/ot/pubsub/g/l;->j:Ljava/lang/String;

    return-void
.end method

.method private g()Ljava/lang/String;
    .locals 0

    const-string p0, "https://"

    return-object p0
.end method

.method private h()Ljava/lang/String;
    .locals 1

    .line 111
    invoke-static {}, Lcom/ot/pubsub/util/l;->h()Z

    move-result p0

    .line 112
    invoke-static {}, Lcom/ot/pubsub/util/l;->i()Ljava/lang/String;

    move-result-object v0

    if-nez p0, :cond_0

    .line 114
    sget-object p0, Lcom/ot/pubsub/g/l;->h:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, "IN"

    .line 116
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 117
    sget-object p0, Lcom/ot/pubsub/g/l;->i:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string p0, "RU"

    .line 118
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 119
    sget-object p0, Lcom/ot/pubsub/g/l;->j:Ljava/lang/String;

    return-object p0

    .line 121
    :cond_2
    sget-object p0, Lcom/ot/pubsub/g/l;->h:Ljava/lang/String;

    return-object p0
.end method

.method private i()Ljava/lang/String;
    .locals 2

    .line 127
    invoke-static {}, Lcom/ot/pubsub/util/l;->h()Z

    move-result v0

    .line 128
    invoke-static {}, Lcom/ot/pubsub/util/l;->i()Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-direct {p0, v0, v1}, Lcom/ot/pubsub/g/l;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 96
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized a(Lorg/json/JSONObject;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "RegionDomainManager"

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateHostMap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 161
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 163
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 165
    sget-object v3, Lcom/ot/pubsub/g/l;->z:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 168
    :cond_1
    new-instance p1, Lorg/json/JSONObject;

    sget-object v0, Lcom/ot/pubsub/g/l;->z:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ot/pubsub/util/t;->g(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "RegionDomainManager"

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateHostMap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string p1, "RegionDomainManager"

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "merge config:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/json/JSONObject;

    sget-object v2, Lcom/ot/pubsub/g/l;->z:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .line 91
    invoke-direct {p0}, Lcom/ot/pubsub/g/l;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/ot/pubsub/g/l;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/api/v1/token"

    invoke-virtual {p0, v0, v1, v2}, Lcom/ot/pubsub/g/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .line 103
    invoke-direct {p0}, Lcom/ot/pubsub/g/l;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/ot/pubsub/g/l;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/track/key_get"

    invoke-virtual {p0, v0, v1, v2}, Lcom/ot/pubsub/g/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .line 145
    invoke-direct {p0}, Lcom/ot/pubsub/g/l;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/ot/pubsub/g/l;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/api/v4/detail/config_common"

    invoke-virtual {p0, v0, v1, v2}, Lcom/ot/pubsub/g/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    .line 177
    invoke-direct {p0}, Lcom/ot/pubsub/g/l;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/ot/pubsub/g/l;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/api/v4/detail/config_p"

    invoke-virtual {p0, v0, v1, v2}, Lcom/ot/pubsub/g/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
