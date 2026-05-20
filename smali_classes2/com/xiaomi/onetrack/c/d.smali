.class public Lcom/xiaomi/onetrack/c/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/c/d$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "EventManager"

.field private static final b:Z = false

.field private static final c:I = 0x32000

.field private static final d:I = 0x7d000

.field private static final e:I = 0x4b000

.field private static final f:I = 0x12c

.field private static final g:I = 0x12c

.field private static final h:Ljava/lang/String; = "priority ASC, _id ASC"

.field private static final i:I = 0x7

.field private static j:Lcom/xiaomi/onetrack/c/d; = null

.field private static final l:I = 0x500000

.field private static m:Landroid/content/BroadcastReceiver;


# instance fields
.field private k:Lcom/xiaomi/onetrack/c/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 95
    new-instance v0, Lcom/xiaomi/onetrack/c/e;

    invoke-direct {v0}, Lcom/xiaomi/onetrack/c/e;-><init>()V

    sput-object v0, Lcom/xiaomi/onetrack/c/d;->m:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v0

    .line 81
    new-instance v1, Lcom/xiaomi/onetrack/c/d$a;

    invoke-direct {v1, v0}, Lcom/xiaomi/onetrack/c/d$a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaomi/onetrack/c/d;->k:Lcom/xiaomi/onetrack/c/d$a;

    .line 82
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/c/d;->c()V

    .line 85
    invoke-static {v0}, Lcom/xiaomi/onetrack/c/d;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/c/d;)Lcom/xiaomi/onetrack/c/d$a;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/xiaomi/onetrack/c/d;->k:Lcom/xiaomi/onetrack/c/d$a;

    return-object p0
.end method

.method public static a()Lcom/xiaomi/onetrack/c/d;
    .locals 1

    .line 62
    sget-object v0, Lcom/xiaomi/onetrack/c/d;->j:Lcom/xiaomi/onetrack/c/d;

    if-nez v0, :cond_0

    .line 63
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v0

    .line 64
    invoke-static {v0}, Lcom/xiaomi/onetrack/c/d;->a(Landroid/content/Context;)V

    .line 66
    :cond_0
    sget-object v0, Lcom/xiaomi/onetrack/c/d;->j:Lcom/xiaomi/onetrack/c/d;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 70
    sget-object p0, Lcom/xiaomi/onetrack/c/d;->j:Lcom/xiaomi/onetrack/c/d;

    if-nez p0, :cond_1

    .line 71
    const-class p0, Lcom/xiaomi/onetrack/c/d;

    monitor-enter p0

    .line 72
    :try_start_0
    sget-object v0, Lcom/xiaomi/onetrack/c/d;->j:Lcom/xiaomi/onetrack/c/d;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/xiaomi/onetrack/c/d;

    invoke-direct {v0}, Lcom/xiaomi/onetrack/c/d;-><init>()V

    sput-object v0, Lcom/xiaomi/onetrack/c/d;->j:Lcom/xiaomi/onetrack/c/d;

    .line 75
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Lcom/xiaomi/onetrack/f/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 607
    invoke-static {}, Lcom/xiaomi/onetrack/h/a/a;->a()Lcom/xiaomi/onetrack/h/a/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/f/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/f/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/onetrack/h/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "EventManager"

    if-nez v0, :cond_0

    const-string p0, "trackFailedEvent, should not record"

    .line 608
    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 612
    :cond_0
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/xiaomi/onetrack/api/am;->a(Lcom/xiaomi/onetrack/f/b;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/onetrack/f/b;

    move-result-object p2

    const/4 p3, 0x0

    .line 613
    invoke-virtual {p0, p2, p3}, Lcom/xiaomi/onetrack/c/d;->a(Lcom/xiaomi/onetrack/f/b;Z)V

    .line 614
    invoke-static {}, Lcom/xiaomi/onetrack/h/a/a;->a()Lcom/xiaomi/onetrack/h/a/a;

    move-result-object p0

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/f/b;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/f/b;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/xiaomi/onetrack/h/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "trackFailedEvent error"

    .line 616
    invoke-static {v1, p1, p0}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/c/d;Lcom/xiaomi/onetrack/f/b;Z)Z
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/c/d;->b(Lcom/xiaomi/onetrack/f/b;Z)Z

    move-result p0

    return p0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 2

    .line 89
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 90
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    sget-object v1, Lcom/xiaomi/onetrack/c/d;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private b(Lcom/xiaomi/onetrack/f/b;Z)Z
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 141
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/onetrack/c/d;->k:Lcom/xiaomi/onetrack/c/d$a;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :try_start_1
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/f/b;->i()Z

    move-result v3

    if-nez v3, :cond_0

    const-string p2, "EventManager"

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addEventToDatabase event is inValid, event:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/f/b;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/xiaomi/onetrack/util/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    monitor-exit v2

    return v1

    .line 146
    :cond_0
    iget-object v3, p0, Lcom/xiaomi/onetrack/c/d;->k:Lcom/xiaomi/onetrack/c/d$a;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 147
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "appid"

    .line 149
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/f/b;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "package"

    .line 150
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/f/b;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "event_name"

    .line 151
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/f/b;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "priority"

    .line 152
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/f/b;->f()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "timestamp"

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 154
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/f/b;->g()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/onetrack/d/a;->b(Ljava/lang/String;)[B

    move-result-object v5

    if-nez p2, :cond_2

    const-string p2, "onetrack_bug_report"

    .line 155
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/f/b;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 164
    :cond_1
    array-length p2, v5

    const v6, 0x32000

    if-le p2, v6, :cond_3

    const-string p2, "EventManager"

    const-string v3, "Too large data, discard ***"

    .line 165
    invoke-static {p2, v3}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/f/b;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/f/b;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sa"

    const-string v5, "r3"

    invoke-static {p2, v3, v4, v5, v0}, Lcom/xiaomi/onetrack/h/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string p2, "sa"

    const-string v3, "r3"

    .line 168
    invoke-direct {p0, p1, p2, v3}, Lcom/xiaomi/onetrack/c/d;->a(Lcom/xiaomi/onetrack/f/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    monitor-exit v2

    return v1

    .line 156
    :cond_2
    :goto_0
    array-length p2, v5

    const v6, 0x7d000

    if-le p2, v6, :cond_3

    const-string p2, "EventManager"

    const-string v3, "ad or bug Too large data, discard ***"

    .line 157
    invoke-static {p2, v3}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/f/b;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/f/b;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sa"

    const-string v5, "r3"

    invoke-static {p2, v3, v4, v5, v0}, Lcom/xiaomi/onetrack/h/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string p2, "sa"

    const-string v3, "r3"

    .line 160
    invoke-direct {p0, p1, p2, v3}, Lcom/xiaomi/onetrack/c/d;->a(Lcom/xiaomi/onetrack/f/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    monitor-exit v2

    return v1

    :cond_3
    const-string p2, "data"

    .line 173
    invoke-virtual {v4, p2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string p2, "events"

    const/4 v5, 0x0

    .line 174
    invoke-virtual {v3, p2, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    const-string p2, "EventManager"

    .line 175
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DB-Thread: EventManager.addEventToDatabase , row="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-wide/16 v5, -0x1

    cmp-long p2, v3, v5

    if-eqz p2, :cond_4

    move p2, v0

    goto :goto_1

    :cond_4
    move p2, v1

    :goto_1
    if-eqz p2, :cond_6

    .line 178
    :try_start_2
    sget-boolean v3, Lcom/xiaomi/onetrack/util/q;->a:Z

    if-eqz v3, :cond_5

    const-string v3, "EventManager"

    .line 179
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6dfb\u52a0\u540e\uff0cDB \u4e2d\u4e8b\u4ef6\u4e2a\u6570\u4e3a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/c/d;->d()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_5
    invoke-static {v1}, Lcom/xiaomi/onetrack/b/o;->a(Z)V

    .line 183
    :cond_6
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v8, v1

    move v1, p2

    move-object p2, v8

    goto :goto_2

    :catchall_1
    move-exception p2

    :goto_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p2

    const-string v2, "EventManager"

    const-string v3, "EventManager.addEventToDatabase exception: "

    .line 185
    invoke-static {v2, v3, p2}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move p2, v1

    :goto_3
    if-eqz p2, :cond_7

    .line 188
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/f/b;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/f/b;->e()Ljava/lang/String;

    move-result-object p1

    const-string v1, "sa"

    const-string v2, "su"

    invoke-static {p0, p1, v1, v2, v0}, Lcom/xiaomi/onetrack/h/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_4

    .line 191
    :cond_7
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/f/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/f/b;->e()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sa"

    const-string v4, "r4"

    invoke-static {v1, v2, v3, v4, v0}, Lcom/xiaomi/onetrack/h/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "sa"

    const-string v1, "r4"

    .line 193
    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/onetrack/c/d;->a(Lcom/xiaomi/onetrack/f/b;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return p2
.end method

.method private e()V
    .locals 2

    .line 598
    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/onetrack/c/d;->k:Lcom/xiaomi/onetrack/c/d$a;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string v0, "events"

    const/4 v1, 0x0

    .line 599
    invoke-virtual {p0, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string p0, "EventManager"

    const-string v0, "delete table events"

    .line 600
    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 602
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 490
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/d;->k:Lcom/xiaomi/onetrack/c/d$a;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 491
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 496
    :cond_0
    :try_start_1
    iget-object p0, p0, Lcom/xiaomi/onetrack/c/d;->k:Lcom/xiaomi/onetrack/c/d$a;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 500
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 501
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    mul-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x10

    .line 502
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "_id"

    .line 504
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in ("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 506
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v5, v3

    :goto_0
    if-ge v5, v2, :cond_1

    const-string v6, ","

    .line 508
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const-string p1, ")"

    .line 510
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "events"

    .line 512
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    const-string p1, "EventManager"

    .line 514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleted events count "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-static {}, Lcom/xiaomi/onetrack/c/d;->a()Lcom/xiaomi/onetrack/c/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/c/d;->d()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v3, v1

    .line 517
    :goto_1
    invoke-static {v3}, Lcom/xiaomi/onetrack/b/o;->a(Z)V

    const-string p1, "EventManager"

    .line 518
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after delete DB record remains="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 520
    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "EventManager"

    .line 522
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    monitor-exit v0

    return v1

    .line 492
    :cond_3
    :goto_2
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 525
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public a(I)Lcom/xiaomi/onetrack/c/i;
    .locals 24

    move/from16 v1, p1

    const-string v2, "EventManager"

    const/4 v6, 0x0

    const/4 v12, 0x0

    move-object/from16 v13, p0

    .line 243
    :try_start_0
    iget-object v0, v13, Lcom/xiaomi/onetrack/c/d;->k:Lcom/xiaomi/onetrack/c/d$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "events"

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "priority ASC, _id ASC"

    const/16 v14, 0x12c

    .line 245
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 244
    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteBlobTooBigException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "_id"

    .line 247
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v0, "appid"

    .line 248
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v0, "package"

    .line 249
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    const-string v0, "event_name"

    .line 250
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v0, "priority"

    .line 251
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v0, "data"

    .line 252
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v0, "timestamp"

    .line 253
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 255
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 256
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 261
    new-instance v15, Landroid/util/ArrayMap;

    invoke-direct {v15}, Landroid/util/ArrayMap;-><init>()V

    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v18, v17

    move/from16 v19, v18

    .line 262
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 263
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 264
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 265
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 266
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v22

    if-eqz v22, :cond_0

    .line 270
    invoke-static/range {v22 .. v22}, Lcom/xiaomi/onetrack/d/a;->a([B)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v23, v22

    goto :goto_1

    :cond_0
    move-object/from16 v23, v12

    :goto_1
    if-eqz v0, :cond_2

    .line 275
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-le v0, v1, :cond_1

    .line 277
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No records of priority["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], first record priority="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteBlobTooBigException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 330
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-object v12

    :cond_1
    move/from16 v22, v17

    goto :goto_2

    :cond_2
    move/from16 v22, v0

    .line 282
    :goto_2
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    move-object/from16 v12, v23

    invoke-direct {v0, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteBlobTooBigException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 284
    :try_start_3
    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move/from16 v23, v4

    .line 285
    :try_start_4
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v18, v18, 0x1

    .line 287
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 288
    invoke-static {v4}, Lcom/xiaomi/onetrack/util/s;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "H"

    .line 289
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 290
    sget-object v4, Lcom/xiaomi/onetrack/f/b$b;->r:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move/from16 v20, v5

    move/from16 v21, v6

    const-wide/16 v5, 0x0

    :try_start_5
    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 291
    invoke-static {v4, v5}, Lcom/xiaomi/onetrack/util/ad;->b(J)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 292
    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    move/from16 v0, v17

    goto :goto_3

    :cond_3
    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v14, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_4
    move/from16 v20, v5

    move/from16 v21, v6

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move/from16 v23, v4

    :goto_4
    move/from16 v20, v5

    move/from16 v21, v6

    :goto_5
    :try_start_6
    const-string v4, "*** error ***"

    .line 297
    invoke-static {v2, v4, v0}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 300
    :cond_5
    :goto_6
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    add-int v0, v19, v0

    const v4, 0x4b000

    if-lt v0, v4, :cond_6

    .line 302
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reached max len: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_6
    move/from16 v19, v0

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v0, v22

    move/from16 v4, v23

    const/4 v12, 0x0

    const/16 v14, 0x12c

    goto/16 :goto_0

    :cond_7
    :goto_7
    move/from16 v0, v18

    .line 307
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_b

    .line 308
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-eqz v4, :cond_9

    const/16 v4, 0x12c

    if-ne v0, v4, :cond_8

    const-string v1, "cursor max one query number"

    .line 310
    invoke-static {v2, v1}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v19, v17

    goto :goto_9

    :cond_8
    const-string v1, "cursor isAfterLast"

    .line 313
    invoke-static {v2, v1}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 317
    :cond_9
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-le v4, v1, :cond_a

    goto :goto_8

    :cond_a
    move/from16 v16, v17

    :goto_8
    move/from16 v19, v16

    .line 321
    :goto_9
    new-instance v1, Lcom/xiaomi/onetrack/c/i;

    move-object v4, v15

    move-object v15, v1

    move-object/from16 v16, v10

    move/from16 v17, v0

    move-object/from16 v18, v11

    move-object/from16 v20, v4

    invoke-direct/range {v15 .. v20}, Lcom/xiaomi/onetrack/c/i;-><init>(Lorg/json/JSONArray;ILjava/util/ArrayList;ZLandroid/util/ArrayMap;)V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteBlobTooBigException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 330
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-object v1

    :catch_3
    move-exception v0

    goto :goto_a

    :catch_4
    move-exception v0

    goto :goto_c

    :catchall_0
    move-exception v0

    const/4 v12, 0x0

    goto :goto_e

    :catch_5
    move-exception v0

    const/4 v3, 0x0

    :goto_a
    :try_start_7
    const-string v1, ""

    .line 327
    invoke-static {v2, v1, v0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v3, :cond_c

    .line 330
    :cond_b
    :goto_b
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_c
    const/4 v1, 0x0

    goto :goto_d

    :catch_6
    move-exception v0

    const/4 v3, 0x0

    :goto_c
    :try_start_8
    const-string v1, "blob too big ***"

    .line 324
    invoke-static {v2, v1, v0}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 325
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/onetrack/c/d;->e()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v3, :cond_c

    goto :goto_b

    :goto_d
    return-object v1

    :catchall_1
    move-exception v0

    move-object v12, v3

    :goto_e
    if-eqz v12, :cond_d

    .line 330
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 332
    :cond_d
    throw v0
.end method

.method public a(Lcom/xiaomi/onetrack/a/b/a;ILjava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Boolean;
    .locals 16

    move-object/from16 v1, p0

    .line 411
    iget-object v2, v1, Lcom/xiaomi/onetrack/c/d;->k:Lcom/xiaomi/onetrack/c/d$a;

    monitor-enter v2

    .line 414
    :try_start_0
    iget-object v0, v1, Lcom/xiaomi/onetrack/c/d;->k:Lcom/xiaomi/onetrack/c/d$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    const-string v7, "appid = ? AND event_name = ? AND priority = ?"

    const/4 v0, 0x3

    new-array v8, v0, [Ljava/lang/String;

    const-string v0, "001"

    const/4 v14, 0x0

    aput-object v0, v8, v14

    const-string v0, "onetrack_exception"

    const/4 v15, 0x1

    aput-object v0, v8, v15

    const/4 v0, 0x2

    .line 417
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v0

    const-string v5, "events"

    const-string v0, "_id"

    const-string v4, "data"

    .line 418
    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "50"

    move-object v4, v13

    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteBlobTooBigException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_c

    .line 423
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_9

    :cond_0
    const-string v0, "_id"

    .line 426
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v0, "data"

    .line 427
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 428
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 429
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 430
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 433
    invoke-static {v0}, Lcom/xiaomi/onetrack/d/a;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 435
    :goto_1
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;)Z

    move-result v9
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteBlobTooBigException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v9, :cond_2

    goto :goto_0

    .line 439
    :cond_2
    :try_start_2
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "H"

    .line 440
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 441
    sget-object v10, Lcom/xiaomi/onetrack/f/b$b;->L:Ljava/lang/String;

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 442
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/onetrack/a/b/a;->j()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "B"

    .line 445
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v10, "type"

    .line 446
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "url_index"

    .line 447
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    const-string v12, "err_code"

    .line 448
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    const-string v3, "err_body"

    .line 449
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v15, "message"

    .line 450
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v14, "adm"

    .line 451
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v0, "EventManager"

    const-string v3, "no admException"

    .line 452
    invoke-static {v0, v3}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x0

    const/4 v15, 0x1

    goto :goto_0

    .line 455
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/onetrack/a/b/a;->i()I

    move-result v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne v10, v11, :cond_7

    move/from16 v10, p2

    if-ne v10, v12, :cond_8

    :try_start_5
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v11, :cond_5

    move-object/from16 v11, p3

    :try_start_6
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_5
    move-object/from16 v11, p3

    :goto_2
    if-eqz p4, :cond_6

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    const-string v3, "retry"
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v12, 0x0

    .line 461
    :try_start_7
    invoke-virtual {v0, v3, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v12, 0x1

    add-int/2addr v3, v12

    :try_start_8
    const-string v12, "retry"

    .line 462
    invoke-virtual {v0, v12, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 463
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/d/a;->b(Ljava/lang/String;)[B

    move-result-object v0

    .line 464
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "data"

    .line 465
    invoke-virtual {v3, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v0, "_id = ?"
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/4 v9, 0x1

    :try_start_9
    new-array v12, v9, [Ljava/lang/String;

    .line 467
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const/4 v8, 0x0

    :try_start_a
    aput-object v7, v12, v8

    const-string v7, "events"

    .line 468
    invoke-virtual {v13, v7, v3, v0, v12}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_a

    const-string v3, "EventManager"

    .line 470
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updata same adMException rowsupdated:"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 483
    :try_start_b
    invoke-static {v4}, Lcom/xiaomi/onetrack/util/n;->b(Ljava/io/Closeable;)V

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    return-object v0

    :catch_1
    move-exception v0

    const/4 v8, 0x0

    goto :goto_7

    :catch_2
    move-exception v0

    move v8, v12

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_4

    :cond_7
    move/from16 v10, p2

    :cond_8
    move-object/from16 v11, p3

    :cond_9
    :goto_3
    const/4 v8, 0x0

    const/4 v9, 0x1

    :try_start_c
    const-string v0, "EventManager"

    const-string v3, "item exception no same"

    .line 456
    invoke-static {v0, v3}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_7

    :catch_5
    move-exception v0

    move/from16 v10, p2

    :goto_4
    move-object/from16 v11, p3

    :goto_5
    const/4 v8, 0x0

    goto :goto_6

    :catch_6
    move-exception v0

    move/from16 v10, p2

    move-object/from16 v11, p3

    move v8, v14

    :goto_6
    const/4 v9, 0x1

    goto :goto_7

    :catch_7
    move-exception v0

    move/from16 v10, p2

    move-object/from16 v11, p3

    move v8, v14

    move v9, v15

    :goto_7
    :try_start_d
    const-string v3, "EventManager"

    .line 474
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "hasAndUpdateSameAdMExceptionEvent exception:"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteBlobTooBigException; {:try_start_d .. :try_end_d} :catch_9
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_a
    :goto_8
    move v14, v8

    move v15, v9

    goto/16 :goto_0

    .line 483
    :cond_b
    :try_start_e
    invoke-static {v4}, Lcom/xiaomi/onetrack/util/n;->b(Ljava/io/Closeable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto :goto_d

    .line 424
    :cond_c
    :goto_9
    :try_start_f
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteBlobTooBigException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 483
    :try_start_10
    invoke-static {v4}, Lcom/xiaomi/onetrack/util/n;->b(Ljava/io/Closeable;)V

    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    return-object v0

    :catchall_0
    move-exception v0

    move-object v3, v4

    goto :goto_e

    :catch_8
    move-exception v0

    move-object v3, v4

    goto :goto_a

    :catch_9
    move-exception v0

    move-object v3, v4

    goto :goto_c

    :catchall_1
    move-exception v0

    const/4 v3, 0x0

    goto :goto_e

    :catch_a
    move-exception v0

    const/4 v3, 0x0

    :goto_a
    :try_start_11
    const-string v1, "EventManager"

    const-string v4, "getAppIdSingleEventData error, e: "

    .line 481
    invoke-static {v1, v4, v0}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 483
    :goto_b
    :try_start_12
    invoke-static {v3}, Lcom/xiaomi/onetrack/util/n;->b(Ljava/io/Closeable;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    goto :goto_d

    :catch_b
    move-exception v0

    const/4 v3, 0x0

    :goto_c
    :try_start_13
    const-string v4, "EventManager"

    const-string v5, "blob too big ***"

    .line 478
    invoke-static {v4, v5, v0}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 479
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/onetrack/c/d;->e()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    goto :goto_b

    .line 485
    :goto_d
    :try_start_14
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    monitor-exit v2

    return-object v0

    :catchall_2
    move-exception v0

    .line 483
    :goto_e
    invoke-static {v3}, Lcom/xiaomi/onetrack/util/n;->b(Ljava/io/Closeable;)V

    .line 484
    throw v0

    :catchall_3
    move-exception v0

    .line 486
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    throw v0
.end method

.method public declared-synchronized a(Lcom/xiaomi/onetrack/f/b;Z)V
    .locals 1

    monitor-enter p0

    .line 116
    :try_start_0
    new-instance v0, Lcom/xiaomi/onetrack/c/g;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/onetrack/c/g;-><init>(Lcom/xiaomi/onetrack/c/d;Lcom/xiaomi/onetrack/f/b;Z)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/c/c;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/xiaomi/onetrack/c/t;)Z
    .locals 8

    .line 199
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/d;->k:Lcom/xiaomi/onetrack/c/d$a;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 202
    :try_start_0
    iget-object v3, p1, Lcom/xiaomi/onetrack/c/t;->a:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 206
    :cond_0
    iget-object p0, p0, Lcom/xiaomi/onetrack/c/d;->k:Lcom/xiaomi/onetrack/c/d$a;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 207
    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 208
    iget-object p1, p1, Lcom/xiaomi/onetrack/c/t;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/onetrack/c/s;

    .line 209
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "appid"

    .line 210
    invoke-virtual {v3}, Lcom/xiaomi/onetrack/c/s;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "package"

    .line 211
    invoke-virtual {v3}, Lcom/xiaomi/onetrack/c/s;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "event_name"

    .line 212
    invoke-virtual {v3}, Lcom/xiaomi/onetrack/c/s;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "priority"

    .line 213
    invoke-virtual {v3}, Lcom/xiaomi/onetrack/c/s;->g()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "timestamp"

    .line 214
    invoke-virtual {v3}, Lcom/xiaomi/onetrack/c/s;->i()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "data"

    .line 215
    invoke-virtual {v3}, Lcom/xiaomi/onetrack/c/s;->f()[B

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v3, "events"

    .line 216
    invoke-virtual {p0, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    const-string v5, "EventManager"

    .line 217
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DB-Thread: EventManager.addTransformDataToDB , row="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_1
    invoke-static {v2}, Lcom/xiaomi/onetrack/b/o;->a(Z)V

    .line 220
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 227
    :try_start_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_3
    const-string v1, "EventManager"

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTransformDataToDB Exception while endTransaction:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return p1

    :catchall_0
    move-exception p1

    move-object v1, p0

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v1, p0

    goto :goto_3

    :cond_2
    :goto_2
    :try_start_4
    const-string p0, "EventManager"

    const-string p1, "TransformEvent\u8bb0\u5f55\u4e3a\u7a7a\uff0c\u5373\u5c06\u8fd4\u56de"

    .line 203
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 230
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    return v2

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception p1

    :goto_3
    :try_start_6
    const-string p0, "EventManager"

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DB-Thread: addTransformDataToDB , exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_3

    .line 227
    :try_start_7
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_4

    :catch_3
    move-exception p0

    :try_start_8
    const-string p1, "EventManager"

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTransformDataToDB Exception while endTransaction:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_3
    :goto_4
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    return v2

    :goto_5
    if-eqz v1, :cond_4

    .line 227
    :try_start_9
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_6

    :catch_4
    move-exception p0

    :try_start_a
    const-string v1, "EventManager"

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTransformDataToDB Exception while endTransaction:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_4
    :goto_6
    throw p1

    :catchall_2
    move-exception p0

    .line 233
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw p0
.end method

.method public b()Lcom/xiaomi/onetrack/c/t;
    .locals 33

    const-string v1, "EventManager"

    const/4 v5, 0x0

    move-object/from16 v12, p0

    .line 340
    :try_start_0
    iget-object v0, v12, Lcom/xiaomi/onetrack/c/d;->k:Lcom/xiaomi/onetrack/c/d$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "events"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "priority ASC, _id ASC"

    const/16 v13, 0x12c

    .line 342
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 341
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteBlobTooBigException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "_id"

    .line 343
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v0, "appid"

    .line 344
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v0, "package"

    .line 345
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v0, "event_name"

    .line 346
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v0, "data"

    .line 347
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v0, "timestamp"

    .line 348
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v0, "priority"

    .line 349
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 350
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 351
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 356
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    .line 358
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 359
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 360
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 361
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v15

    .line 362
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 363
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v30
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteBlobTooBigException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 365
    :try_start_2
    new-instance v0, Lcom/xiaomi/onetrack/c/s;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v27, 0x0

    move-object/from16 v18, v0

    move-wide/from16 v19, v31

    move-object/from16 v26, v15

    invoke-direct/range {v18 .. v30}, Lcom/xiaomi/onetrack/c/s;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/util/Map;JI)V

    .line 366
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    const-string v11, "*** error ***"

    .line 370
    invoke-static {v1, v11, v0}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 372
    :goto_1
    array-length v0, v15

    add-int v0, v17, v0

    const/high16 v11, 0x500000

    if-lt v0, v11, :cond_0

    .line 374
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reached max len: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    move/from16 v17, v0

    goto :goto_0

    :cond_1
    :goto_2
    move/from16 v0, v16

    .line 379
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 380
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-eqz v3, :cond_3

    if-ne v0, v13, :cond_2

    const-string v3, "cursor max one query number"

    .line 382
    invoke-static {v1, v3}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    const-string v3, "cursor isAfterLast"

    .line 385
    invoke-static {v1, v3}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x1

    goto :goto_4

    :cond_3
    :goto_3
    const/4 v15, 0x0

    .line 391
    :goto_4
    new-instance v3, Lcom/xiaomi/onetrack/c/t;

    invoke-direct {v3, v10, v0, v14, v15}, Lcom/xiaomi/onetrack/c/t;-><init>(Ljava/util/ArrayList;ILjava/util/ArrayList;Z)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteBlobTooBigException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 401
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    return-object v3

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_7

    :catchall_0
    move-exception v0

    const/4 v11, 0x0

    goto :goto_9

    :catch_4
    move-exception v0

    const/4 v2, 0x0

    :goto_5
    :try_start_5
    const-string v3, ""

    .line 397
    invoke-static {v1, v3, v0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_5

    .line 401
    :cond_4
    :goto_6
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    :cond_5
    const/4 v1, 0x0

    goto :goto_8

    :catch_6
    move-exception v0

    const/4 v2, 0x0

    :goto_7
    :try_start_7
    const-string v3, "blob too big ***"

    .line 394
    invoke-static {v1, v3, v0}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 395
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/onetrack/c/d;->e()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v2, :cond_5

    goto :goto_6

    :goto_8
    return-object v1

    :catchall_1
    move-exception v0

    move-object v11, v2

    :goto_9
    if-eqz v11, :cond_6

    .line 401
    :try_start_8
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 406
    :catch_7
    :cond_6
    throw v0
.end method

.method public c()V
    .locals 3

    .line 529
    new-instance v0, Lcom/xiaomi/onetrack/c/h;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/c/h;-><init>(Lcom/xiaomi/onetrack/c/d;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/c/c;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public d()J
    .locals 2

    .line 587
    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/onetrack/c/d;->k:Lcom/xiaomi/onetrack/c/d$a;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string v0, "events"

    .line 588
    invoke-static {p0, v0}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTotalEventsNumberSync failed with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EventManager"

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method
