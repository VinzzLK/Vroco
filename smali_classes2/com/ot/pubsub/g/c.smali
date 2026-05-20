.class public Lcom/ot/pubsub/g/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ot/pubsub/g/c$a;
    }
.end annotation


# static fields
.field private static b:Lcom/ot/pubsub/g/c; = null

.field private static volatile i:Z = false

.field private static volatile j:I = 0x1

.field private static volatile k:I


# instance fields
.field private c:Lcom/ot/pubsub/g/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Lcom/ot/pubsub/util/b;->a()Landroid/content/Context;

    move-result-object v0

    .line 64
    new-instance v1, Lcom/ot/pubsub/g/c$a;

    invoke-direct {v1, v0}, Lcom/ot/pubsub/g/c$a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ot/pubsub/g/c;->c:Lcom/ot/pubsub/g/c$a;

    .line 65
    invoke-virtual {p0}, Lcom/ot/pubsub/g/c;->d()V

    return-void
.end method

.method static synthetic a(Lcom/ot/pubsub/g/c;)Lcom/ot/pubsub/g/c$a;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/ot/pubsub/g/c;->c:Lcom/ot/pubsub/g/c$a;

    return-object p0
.end method

.method public static a()Lcom/ot/pubsub/g/c;
    .locals 1

    .line 46
    sget-object v0, Lcom/ot/pubsub/g/c;->b:Lcom/ot/pubsub/g/c;

    if-nez v0, :cond_0

    .line 47
    invoke-static {}, Lcom/ot/pubsub/g/c;->b()V

    .line 49
    :cond_0
    sget-object v0, Lcom/ot/pubsub/g/c;->b:Lcom/ot/pubsub/g/c;

    return-object v0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 2

    .line 401
    invoke-static {}, Lcom/ot/pubsub/c/c;->a()[B

    move-result-object v0

    const/4 v1, 0x1

    .line 402
    invoke-static {v0, v1}, Lcom/ot/pubsub/c/d;->a([BZ)Ljava/lang/String;

    move-result-object v0

    .line 403
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ot/pubsub/c/a;->b([B[B)[B

    move-result-object p0

    .line 404
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method static synthetic a(Lcom/ot/pubsub/g/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)Z
    .locals 0

    .line 31
    invoke-direct/range {p0 .. p5}, Lcom/ot/pubsub/g/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 2

    .line 394
    invoke-static {}, Lcom/ot/pubsub/c/c;->a()[B

    move-result-object v0

    const/4 v1, 0x1

    .line 395
    invoke-static {v0, v1}, Lcom/ot/pubsub/c/d;->a([BZ)Ljava/lang/String;

    move-result-object v0

    .line 396
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ot/pubsub/c/a;->a([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static b()V
    .locals 2

    .line 53
    sget-object v0, Lcom/ot/pubsub/g/c;->b:Lcom/ot/pubsub/g/c;

    if-nez v0, :cond_1

    .line 54
    const-class v0, Lcom/ot/pubsub/g/c;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v1, Lcom/ot/pubsub/g/c;->b:Lcom/ot/pubsub/g/c;

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Lcom/ot/pubsub/g/c;

    invoke-direct {v1}, Lcom/ot/pubsub/g/c;-><init>()V

    sput-object v1, Lcom/ot/pubsub/g/c;->b:Lcom/ot/pubsub/g/c;

    .line 58
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

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/ot/pubsub/g/c;->c:Lcom/ot/pubsub/g/c$a;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "MessageManager"

    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "addEventToDatabase message is inValid. topic:"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", data:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ot/pubsub/util/j;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    monitor-exit v1

    return v0

    :cond_0
    if-nez p5, :cond_1

    .line 104
    invoke-static {p3}, Lcom/ot/pubsub/c/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 107
    :cond_1
    invoke-static {p3}, Lcom/ot/pubsub/g/c;->a(Ljava/lang/String;)[B

    move-result-object p3

    .line 108
    array-length v2, p3

    const v3, 0x7d000

    if-le v2, v3, :cond_2

    const-string p0, "MessageManager"

    const-string p1, "Too large data, discard ***"

    .line 109
    invoke-static {p0, p1}, Lcom/ot/pubsub/util/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    monitor-exit v1

    return v0

    .line 112
    :cond_2
    sget v2, Lcom/ot/pubsub/g/c;->k:I

    if-eqz p5, :cond_3

    .line 114
    sget v2, Lcom/ot/pubsub/g/c;->j:I

    .line 116
    :cond_3
    iget-object p5, p0, Lcom/ot/pubsub/g/c;->c:Lcom/ot/pubsub/g/c$a;

    invoke-virtual {p5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p5

    .line 117
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "projectid"

    .line 118
    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "topic"

    .line 119
    invoke-virtual {v3, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "attribute"

    .line 120
    invoke-static {p4}, Lcom/ot/pubsub/util/c;->a(Ljava/lang/Object;)[B

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string p1, "gzipandencrypt"

    .line 121
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "timestamp"

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "data"

    .line 123
    invoke-virtual {v3, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string p1, "otpubsub"

    const/4 p2, 0x0

    .line 124
    invoke-virtual {p5, p1, p2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    const-string p3, "MessageManager"

    .line 125
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "DB-Thread: EventManager.addEventToDatabase , row="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p3, -0x1

    cmp-long p1, p1, p3

    if-eqz p1, :cond_5

    .line 127
    sget-boolean p2, Lcom/ot/pubsub/util/j;->a:Z

    if-eqz p2, :cond_4

    const-string p2, "MessageManager"

    .line 128
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "\u6dfb\u52a0\u540e\uff0cDB \u4e2d\u4e8b\u4ef6\u4e2a\u6570\u4e3a "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ot/pubsub/g/c;->f()J

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_4
    invoke-virtual {p0, v0}, Lcom/ot/pubsub/g/c;->a(Z)V

    :cond_5
    if-eqz p1, :cond_6

    const/4 p0, 0x1

    goto :goto_0

    :cond_6
    move p0, v0

    .line 132
    :goto_0
    monitor-exit v1

    return p0

    :catchall_0
    move-exception p0

    .line 133
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "MessageManager"

    const-string p2, "EventManager.addEvent exception: "

    .line 135
    invoke-static {p1, p2, p0}, Lcom/ot/pubsub/util/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private g()V
    .locals 4

    const-string v0, "MessageManager"

    .line 229
    :try_start_0
    iget-object v1, p0, Lcom/ot/pubsub/g/c;->c:Lcom/ot/pubsub/g/c$a;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "otpubsub"

    const/4 v3, 0x0

    .line 230
    invoke-virtual {v1, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 231
    invoke-virtual {p0, v1}, Lcom/ot/pubsub/g/c;->a(Z)V

    const-string p0, "delete table otpubsub"

    .line 232
    invoke-static {v0, p0}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete table error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ot/pubsub/util/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ot/pubsub/d/c;",
            ">;)I"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/ot/pubsub/g/c;->c:Lcom/ot/pubsub/g/c$a;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 241
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 246
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/ot/pubsub/g/c;->c:Lcom/ot/pubsub/g/c$a;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 250
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ot/pubsub/d/c;

    invoke-virtual {v3}, Lcom/ot/pubsub/d/c;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 251
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    mul-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x10

    .line 252
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "_id"

    .line 254
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in ("

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ot/pubsub/d/c;

    invoke-virtual {v3}, Lcom/ot/pubsub/d/c;->b()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 256
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v6, v4

    :goto_0
    if-ge v6, v3, :cond_1

    const-string v7, ","

    .line 258
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ot/pubsub/d/c;

    invoke-virtual {v7}, Lcom/ot/pubsub/d/c;->b()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const-string p1, ")"

    .line 260
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "otpubsub"

    .line 262
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2, p1, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const-string v2, "MessageManager"

    .line 264
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*** *** deleted events count "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-static {}, Lcom/ot/pubsub/g/c;->a()Lcom/ot/pubsub/g/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ot/pubsub/g/c;->f()J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    move v4, v1

    .line 267
    :goto_1
    invoke-virtual {p0, v4}, Lcom/ot/pubsub/g/c;->a(Z)V

    const-string p0, "MessageManager"

    .line 268
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "after delete DB record remains="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    :try_start_2
    monitor-exit v0

    return p1

    :catch_0
    move-exception p0

    const-string p1, "MessageManager"

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/ot/pubsub/util/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    monitor-exit v0

    return v1

    .line 242
    :cond_3
    :goto_2
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 274
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    monitor-enter p0

    .line 69
    :try_start_0
    new-instance v7, Lcom/ot/pubsub/g/d;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/ot/pubsub/g/d;-><init>(Lcom/ot/pubsub/g/c;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v7}, Lcom/ot/pubsub/g/a;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Z)V
    .locals 0

    monitor-enter p0

    .line 386
    :try_start_0
    sput-boolean p1, Lcom/ot/pubsub/g/c;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Ljava/util/List;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ot/pubsub/d/c;",
            ">;)I"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/ot/pubsub/g/c;->c:Lcom/ot/pubsub/g/c$a;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 279
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 284
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/ot/pubsub/g/c;->c:Lcom/ot/pubsub/g/c$a;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 288
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ot/pubsub/d/c;

    invoke-virtual {v3}, Lcom/ot/pubsub/d/c;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 289
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    mul-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x10

    .line 290
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "_id"

    .line 292
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in ("

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v6, v1

    move v7, v6

    :goto_0
    if-ge v6, v3, :cond_3

    .line 296
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ot/pubsub/d/c;

    invoke-virtual {v8}, Lcom/ot/pubsub/d/c;->g()J

    move-result-wide v8

    const-wide/32 v10, 0x5265c00

    invoke-static {v8, v9, v10, v11}, Lcom/ot/pubsub/util/v;->a(JJ)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v3, -0x1

    if-ne v6, v7, :cond_2

    .line 301
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ot/pubsub/d/c;

    invoke-virtual {v7}, Lcom/ot/pubsub/d/c;->b()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 303
    :cond_2
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ot/pubsub/d/c;

    invoke-virtual {v7}, Lcom/ot/pubsub/d/c;->b()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    move v7, v4

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    const-string p1, ")"

    .line 306
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_4

    .line 308
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v1

    :cond_4
    :try_start_3
    const-string p1, "MessageManager"

    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "*** *** deleted events sb id "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "otpubsub"

    .line 312
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2, p1, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const-string v2, "MessageManager"

    .line 314
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*** *** deleted events count "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-static {}, Lcom/ot/pubsub/g/c;->a()Lcom/ot/pubsub/g/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ot/pubsub/g/c;->f()J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-nez v5, :cond_5

    goto :goto_3

    :cond_5
    move v4, v1

    .line 317
    :goto_3
    invoke-virtual {p0, v4}, Lcom/ot/pubsub/g/c;->a(Z)V

    const-string p0, "MessageManager"

    .line 318
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "after delete DB record remains="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 319
    :try_start_4
    monitor-exit v0

    return p1

    :catch_0
    move-exception p0

    const-string p1, "MessageManager"

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/ot/pubsub/util/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    monitor-exit v0

    return v1

    .line 280
    :cond_6
    :goto_4
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 324
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public c()Lcom/ot/pubsub/j/a;
    .locals 30

    const-string v1, "MessageManager"

    const/4 v5, 0x0

    move-object/from16 v11, p0

    .line 144
    :try_start_0
    iget-object v0, v11, Lcom/ot/pubsub/g/c;->c:Lcom/ot/pubsub/g/c$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "otpubsub"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "timestamp"

    .line 145
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteBlobTooBigException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "_id"

    .line 147
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v0, "projectid"

    .line 148
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v0, "topic"

    .line 149
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v0, "data"

    .line 150
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v0, "attribute"

    .line 151
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v0, "gzipandencrypt"

    .line 152
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v0, "timestamp"

    .line 153
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 154
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 155
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 160
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 162
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    .line 163
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 164
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 165
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 166
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 167
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v17

    .line 168
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    if-eqz v17, :cond_0

    .line 171
    invoke-static/range {v17 .. v17}, Lcom/ot/pubsub/g/c;->a([B)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v29, v17

    goto :goto_1

    :cond_0
    const/16 v29, 0x0

    .line 174
    :goto_1
    invoke-static {v0}, Lcom/ot/pubsub/util/c;->a([B)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 175
    instance-of v14, v0, Ljava/util/Map;

    if-eqz v14, :cond_1

    .line 176
    check-cast v0, Ljava/util/Map;

    goto :goto_2

    :cond_1
    if-nez v0, :cond_2

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteBlobTooBigException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    move-object/from16 v23, v0

    goto :goto_3

    :cond_2
    const/16 v23, 0x0

    .line 181
    :goto_3
    :try_start_2
    new-instance v0, Lcom/ot/pubsub/d/c;

    move-object/from16 v17, v0

    move-wide/from16 v18, v27

    move-object/from16 v22, v29

    invoke-direct/range {v17 .. v26}, Lcom/ot/pubsub/d/c;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;IJ)V

    .line 182
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_3
    const-string v14, "*** error ***"

    .line 186
    invoke-static {v1, v14, v0}, Lcom/ot/pubsub/util/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    :goto_4
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v0

    add-int v0, v16, v0

    .line 191
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/16 v10, 0x3e8

    if-lt v14, v10, :cond_3

    goto :goto_5

    :cond_3
    const v10, 0xfa000

    if-lt v0, v10, :cond_4

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reached max len: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    move/from16 v16, v0

    goto/16 :goto_0

    .line 200
    :cond_5
    :goto_5
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 201
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "cursor isAfterLast"

    .line 202
    invoke-static {v1, v0}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x1

    goto :goto_6

    :cond_6
    const/4 v14, 0x0

    .line 207
    :goto_6
    new-instance v0, Lcom/ot/pubsub/j/a;

    invoke-direct {v0, v12, v15, v13, v14}, Lcom/ot/pubsub/j/a;-><init>(Ljava/util/ArrayList;ILjava/util/ArrayList;Z)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteBlobTooBigException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 217
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    return-object v0

    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    goto :goto_9

    :catchall_0
    move-exception v0

    const/4 v10, 0x0

    goto :goto_b

    :catch_4
    move-exception v0

    const/4 v2, 0x0

    :goto_7
    :try_start_5
    const-string v3, ""

    .line 213
    invoke-static {v1, v3, v0}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_8

    .line 217
    :cond_7
    :goto_8
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    :cond_8
    const/4 v1, 0x0

    goto :goto_a

    :catch_6
    move-exception v0

    const/4 v2, 0x0

    :goto_9
    :try_start_7
    const-string v3, "blob too big ***"

    .line 210
    invoke-static {v1, v3, v0}, Lcom/ot/pubsub/util/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    invoke-direct/range {p0 .. p0}, Lcom/ot/pubsub/g/c;->g()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v2, :cond_8

    goto :goto_8

    :goto_a
    return-object v1

    :catchall_1
    move-exception v0

    move-object v10, v2

    :goto_b
    if-eqz v10, :cond_9

    .line 217
    :try_start_8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 222
    :catch_7
    :cond_9
    throw v0
.end method

.method public d()V
    .locals 1

    .line 329
    new-instance v0, Lcom/ot/pubsub/g/e;

    invoke-direct {v0, p0}, Lcom/ot/pubsub/g/e;-><init>(Lcom/ot/pubsub/g/c;)V

    invoke-static {v0}, Lcom/ot/pubsub/g/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized e()Z
    .locals 1

    monitor-enter p0

    .line 390
    :try_start_0
    sget-boolean v0, Lcom/ot/pubsub/g/c;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()J
    .locals 2

    .line 408
    iget-object p0, p0, Lcom/ot/pubsub/g/c;->c:Lcom/ot/pubsub/g/c$a;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string v0, "otpubsub"

    .line 409
    invoke-static {p0, v0}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
