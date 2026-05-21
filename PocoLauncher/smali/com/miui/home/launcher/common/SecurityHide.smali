.class public Lcom/miui/home/launcher/common/SecurityHide;
.super Ljava/lang/Object;
.source "SecurityHide.java"


# static fields
.field private static final mGameStoragePackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/LauncherModel$PackageAndUser;",
            ">;"
        }
    .end annotation
.end field

.field private static mHideItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/LauncherModel$PackageAndUser;",
            ">;"
        }
    .end annotation
.end field

.field private static final mHidePackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/LauncherModel$PackageAndUser;",
            ">;"
        }
    .end annotation
.end field

.field private static sConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/LauncherModel$PackageAndUser;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sQueryFunc:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/Void;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/LauncherModel$PackageAndUser;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$137Jnbc2qqxDqHoFOT7hDdyvg0k(Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/common/SecurityHide;->lambda$getSecurityHideItemsAsync$2(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IFvkIZzB7WCUaBeRgfTs4IJeoMM(Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/common/SecurityHide;->lambda$static$1(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JVWTytmVabDN4zefM8qOz9SAoB4(Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/common/SecurityHide;->lambda$static$0(Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VLtQmLV8fPBhLKTq6DW0Q8-eqCA(Ljava/lang/StringBuilder;Lcom/miui/home/launcher/LauncherModel$PackageAndUser;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/SecurityHide;->lambda$dump$3(Ljava/lang/StringBuilder;Lcom/miui/home/launcher/LauncherModel$PackageAndUser;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/common/SecurityHide;->mHideItemList:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/common/SecurityHide;->mHidePackages:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/common/SecurityHide;->mGameStoragePackages:Ljava/util/List;

    .line 30
    sget-object v0, Lcom/miui/home/launcher/common/SecurityHide$$ExternalSyntheticLambda3;->INSTANCE:Lcom/miui/home/launcher/common/SecurityHide$$ExternalSyntheticLambda3;

    sput-object v0, Lcom/miui/home/launcher/common/SecurityHide;->sQueryFunc:Ljava/util/function/Function;

    .line 68
    sget-object v0, Lcom/miui/home/launcher/common/SecurityHide$$ExternalSyntheticLambda2;->INSTANCE:Lcom/miui/home/launcher/common/SecurityHide$$ExternalSyntheticLambda2;

    sput-object v0, Lcom/miui/home/launcher/common/SecurityHide;->sConsumer:Ljava/util/function/Consumer;

    return-void
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 93
    sget-object v0, Lcom/miui/home/launcher/common/SecurityHide;->mHidePackages:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/SecurityHide;->dump(Ljava/io/PrintWriter;Ljava/util/List;I)V

    .line 94
    sget-object v0, Lcom/miui/home/launcher/common/SecurityHide;->mGameStoragePackages:Ljava/util/List;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/SecurityHide;->dump(Ljava/io/PrintWriter;Ljava/util/List;I)V

    return-void
.end method

.method private static dump(Ljava/io/PrintWriter;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/LauncherModel$PackageAndUser;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 98
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    new-instance v1, Lcom/miui/home/launcher/common/SecurityHide$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/miui/home/launcher/common/SecurityHide$$ExternalSyntheticLambda0;-><init>(Ljava/lang/StringBuilder;)V

    invoke-interface {p1, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 102
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " SecurityHideClass "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string p1, "Hide"

    goto :goto_1

    :cond_1
    const-string p1, "GameStorage"

    :goto_1
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " list Items:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static getHideItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/LauncherModel$PackageAndUser;",
            ">;"
        }
    .end annotation

    .line 89
    sget-object v0, Lcom/miui/home/launcher/common/SecurityHide;->mHideItemList:Ljava/util/List;

    return-object v0
.end method

.method public static getSecurityHideItems()V
    .locals 3

    .line 83
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    .line 84
    sget-object v0, Lcom/miui/home/launcher/common/SecurityHide;->mHideItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 85
    sget-object v0, Lcom/miui/home/launcher/common/SecurityHide;->sConsumer:Ljava/util/function/Consumer;

    sget-object v1, Lcom/miui/home/launcher/common/SecurityHide;->sQueryFunc:Ljava/util/function/Function;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static getSecurityHideItemsAsync()V
    .locals 3

    .line 75
    sget-object v0, Lcom/miui/home/launcher/common/SecurityHide;->mHideItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 76
    sget-object v0, Lcom/miui/home/launcher/common/SecurityHide;->sQueryFunc:Ljava/util/function/Function;

    sget-object v1, Lcom/miui/home/launcher/common/SecurityHide$$ExternalSyntheticLambda1;->INSTANCE:Lcom/miui/home/launcher/common/SecurityHide$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$dump$3(Ljava/lang/StringBuilder;Lcom/miui/home/launcher/LauncherModel$PackageAndUser;)V
    .locals 0

    .line 100
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static synthetic lambda$getSecurityHideItemsAsync$2(Ljava/util/ArrayList;)V
    .locals 1

    .line 77
    sget-object v0, Lcom/miui/home/launcher/common/SecurityHide;->sConsumer:Ljava/util/function/Consumer;

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 78
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance v0, Lcom/miui/home/launcher/common/messages/SecurityHideMessage;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/messages/SecurityHideMessage;-><init>()V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$static$0(Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 12

    .line 32
    :try_start_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "security"

    .line 34
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 35
    invoke-static {v0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/library/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 36
    sget-object v2, Lcom/miui/home/launcher/common/SecurityHide;->mHidePackages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 37
    sget-object v2, Lcom/miui/home/launcher/common/SecurityHide;->mGameStoragePackages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 38
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/os/UserHandle;

    .line 39
    invoke-static {v8}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v9

    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getAllPrivacyApps"

    const-class v5, Ljava/util/List;

    const/4 v10, 0x1

    new-array v6, v10, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v3, v6, v11

    new-array v7, v10, [Ljava/lang/Object;

    .line 41
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v11

    move-object v3, v1

    .line 40
    invoke-static/range {v2 .. v7}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_1

    const-string v3, "SecurityHide"

    .line 43
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u9690\u85cf\u7684\u5e94\u7528"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 45
    new-instance v4, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;

    invoke-direct {v4, v3, v8}, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 46
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v3, Lcom/miui/home/launcher/common/SecurityHide;->mHidePackages:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getAllGameStorageApps"

    const-class v5, Ljava/util/List;

    new-array v6, v10, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v6, v11

    new-array v7, v10, [Ljava/lang/Object;

    .line 52
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v11

    move-object v3, v1

    .line 51
    invoke-static/range {v2 .. v7}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 53
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 54
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 55
    new-instance v4, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;

    invoke-direct {v4, v3, v8}, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 56
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v3, Lcom/miui/home/launcher/common/SecurityHide;->mGameStoragePackages:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Launcher.SecurityHide"

    const-string v1, "getSecurityHideItems"

    .line 63
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$static$1(Ljava/util/ArrayList;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 69
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    sget-object v0, Lcom/miui/home/launcher/common/SecurityHide;->mHideItemList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method
