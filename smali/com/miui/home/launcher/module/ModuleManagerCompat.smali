.class public Lcom/miui/home/launcher/module/ModuleManagerCompat;
.super Ljava/lang/Object;
.source "ModuleManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/module/ModuleManagerCompat$Holder;,
        Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;
    }
.end annotation


# instance fields
.field private final mModuleStatusMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/module/ModuleManagerCompat;->mModuleStatusMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    :try_start_0
    invoke-static {}, Lmiui/module/ModuleManager;->getInstance()Lmiui/module/ModuleManager;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/module/ModuleManagerCompat$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/module/ModuleManagerCompat$1;-><init>(Lcom/miui/home/launcher/module/ModuleManagerCompat;)V

    invoke-virtual {v0, v1}, Lmiui/module/ModuleManager;->setModuleLoadListener(Lmiui/module/ModuleManager$ModuleLoadListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Launcher.ModuleManager"

    const-string v1, "ModuleManagerCompat"

    .line 59
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/module/ModuleManagerCompat$1;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/miui/home/launcher/module/ModuleManagerCompat;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/module/ModuleManagerCompat;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/miui/home/launcher/module/ModuleManagerCompat;->mModuleStatusMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/module/ModuleManagerCompat;Landroid/app/Application;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/module/ModuleManagerCompat;->makeMiuiHomeLoadClassFirst(Landroid/app/Application;)V

    return-void
.end method

.method public static getInstance()Lcom/miui/home/launcher/module/ModuleManagerCompat;
    .locals 1

    .line 30
    invoke-static {}, Lcom/miui/home/launcher/module/ModuleManagerCompat$Holder;->access$100()Lcom/miui/home/launcher/module/ModuleManagerCompat;

    move-result-object v0

    return-object v0
.end method

.method private makeMiuiHomeLoadClassFirst(Landroid/app/Application;)V
    .locals 1

    .line 101
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "classLoader:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher.ModuleManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public isModuleLoadSuccess(Ljava/lang/String;)Z
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/miui/home/launcher/module/ModuleManagerCompat;->mModuleStatusMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;->LOAD_SUCCESS:Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public varargs loadModules([Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 64
    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 67
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 68
    iget-object v3, p0, Lcom/miui/home/launcher/module/ModuleManagerCompat;->mModuleStatusMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v4, Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;->LOAD_PROCESSING:Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;

    invoke-virtual {v3, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_1
    :try_start_0
    invoke-static {}, Lmiui/module/ModuleManager;->getInstance()Lmiui/module/ModuleManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lmiui/module/ModuleManager;->loadModules([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "Launcher.ModuleManager"

    const-string v0, "loadModules"

    .line 73
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method
