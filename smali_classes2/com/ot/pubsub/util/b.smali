.class public Lcom/ot/pubsub/util/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context; = null

.field private static b:Landroid/content/Context; = null

.field private static c:I = 0x0

.field private static d:Ljava/lang/String; = null

.field private static e:Ljava/lang/String; = null

.field private static f:J = 0x0L

.field private static volatile g:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/content/Context;
    .locals 2

    .line 86
    sget-object v0, Lcom/ot/pubsub/util/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ot/pubsub/util/f;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    sget-object v0, Lcom/ot/pubsub/util/b;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    .line 91
    :cond_0
    const-class v0, Lcom/ot/pubsub/util/b;

    monitor-enter v0

    .line 92
    :try_start_0
    sget-object v1, Lcom/ot/pubsub/util/b;->b:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 93
    sget-object v1, Lcom/ot/pubsub/util/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/ot/pubsub/util/f;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/ot/pubsub/util/b;->b:Landroid/content/Context;

    .line 95
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    sget-object v0, Lcom/ot/pubsub/util/b;->b:Landroid/content/Context;

    return-object v0

    :catchall_0
    move-exception v1

    .line 95
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 98
    :cond_2
    sget-object v0, Lcom/ot/pubsub/util/b;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .line 22
    sget-boolean v0, Lcom/ot/pubsub/util/b;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 25
    :cond_0
    const-class v0, Lcom/ot/pubsub/util/b;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-boolean v1, Lcom/ot/pubsub/util/b;->g:Z

    if-eqz v1, :cond_1

    .line 27
    monitor-exit v0

    return-void

    .line 29
    :cond_1
    sput-object p0, Lcom/ot/pubsub/util/b;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 32
    sget-object v1, Lcom/ot/pubsub/util/b;->a:Landroid/content/Context;

    .line 33
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 32
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 34
    iget v1, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v1, Lcom/ot/pubsub/util/b;->c:I

    .line 35
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcom/ot/pubsub/util/b;->d:Ljava/lang/String;

    .line 36
    iget-wide v1, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    sput-wide v1, Lcom/ot/pubsub/util/b;->f:J

    .line 37
    sget-object p0, Lcom/ot/pubsub/util/b;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/ot/pubsub/util/b;->e:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 39
    :try_start_2
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x1

    .line 41
    sput-boolean p0, Lcom/ot/pubsub/util/b;->g:Z

    .line 42
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static b()Landroid/content/Context;
    .locals 1

    .line 102
    sget-object v0, Lcom/ot/pubsub/util/b;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .line 107
    sget-object v0, Lcom/ot/pubsub/util/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .line 115
    sget-object v0, Lcom/ot/pubsub/util/b;->e:Ljava/lang/String;

    return-object v0
.end method
