.class Lcom/miui/home/launcher/LauncherModel$LoaderTask;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderTask"
.end annotation


# instance fields
.field private isUserUnLocked:Z

.field private mAllAppsProvider:Lcom/miui/home/launcher/model/LauncherAppsProvider;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDeepShortcutKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstallingApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/home/launcher/install/PackageInstallerCompat$Info;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLaunching:Z

.field private final mManager:Landroid/content/pm/PackageManager;

.field private final mMode:Lcom/miui/home/launcher/allapps/LauncherMode;

.field private mScreenCount:I

.field private volatile mStopped:Z

.field private mWaitingForCloudAppRestore:Z

.field final synthetic this$0:Lcom/miui/home/launcher/LauncherModel;


# direct methods
.method public static synthetic $r8$lambda$a4ZeGOG_zsx8x1ZepQC2TmAry8Q(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->lambda$loadAndBindMissingIcons$0(Lcom/miui/home/launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rjeyxOjSbsZC24kJ0gZ0vy8tKuw(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherAppWidgetInfo;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->lambda$loadAppWidget$2(Lcom/miui/home/launcher/LauncherAppWidgetInfo;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$zAX-vNPmhrene-9yVQfXx-eYCvg(Landroid/content/pm/LauncherApps;Lcom/miui/home/launcher/util/ComponentKey;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->lambda$clearAllShortcuts$1(Landroid/content/pm/LauncherApps;Lcom/miui/home/launcher/util/ComponentKey;)V

    return-void
.end method

.method constructor <init>(Lcom/miui/home/launcher/LauncherModel;Landroid/content/Context;ZLcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 1

    .line 1526
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1516
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mWaitingForCloudAppRestore:Z

    .line 1519
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mInstallingApps:Ljava/util/HashMap;

    .line 1520
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mDeepShortcutKeys:Ljava/util/HashSet;

    const/4 v0, 0x1

    .line 1523
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->isUserUnLocked:Z

    .line 1524
    iput p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mScreenCount:I

    .line 1527
    iput-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 1528
    iput-boolean p3, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mIsLaunching:Z

    .line 1529
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContentResolver:Landroid/content/ContentResolver;

    .line 1530
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mManager:Landroid/content/pm/PackageManager;

    .line 1531
    new-instance p1, Lcom/miui/home/launcher/model/DefaultLauncherAppsProvider;

    invoke-direct {p1}, Lcom/miui/home/launcher/model/DefaultLauncherAppsProvider;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mAllAppsProvider:Lcom/miui/home/launcher/model/LauncherAppsProvider;

    .line 1532
    iput-object p4, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    return-void
.end method

.method static synthetic access$2900(Lcom/miui/home/launcher/LauncherModel$LoaderTask;)Landroid/content/Context;
    .locals 0

    .line 1512
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/miui/home/launcher/LauncherModel$LoaderTask;)Z
    .locals 0

    .line 1512
    iget-boolean p0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    return p0
.end method

.method static synthetic access$3702(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Z)Z
    .locals 0

    .line 1512
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mWaitingForCloudAppRestore:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/miui/home/launcher/LauncherModel$LoaderTask;)Z
    .locals 0

    .line 1512
    iget-boolean p0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->isUserUnLocked:Z

    return p0
.end method

.method private bindItem(Lcom/miui/home/launcher/LauncherModel$Callbacks;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 2

    .line 2903
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/miui/home/launcher/LauncherModel$Callbacks;)Lcom/miui/home/launcher/LauncherModel$Callbacks;

    move-result-object p1

    .line 2904
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$12;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;Lcom/miui/home/launcher/ItemInfo;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/DeferredHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private boost()V
    .locals 6

    .line 1751
    invoke-static {}, Lcom/miui/home/launcher/LauncherModel;->access$3200()Landroid/os/HandlerThread;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result p0

    .line 1752
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1754
    invoke-static {}, Lcom/miui/home/launcher/util/BoostRtHelper;->getInstance()Lcom/miui/home/launcher/util/BoostRtHelper;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput p0, v4, v5

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/miui/home/launcher/util/BoostRtHelper;->boostThreads(JLandroid/view/View;[I)V

    :cond_0
    return-void
.end method

.method private clearAllShortcuts()V
    .locals 3

    .line 1989
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    const-string v1, "Launcher.Model"

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mAllAppsProvider:Lcom/miui/home/launcher/model/LauncherAppsProvider;

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    const-string v2, "launcherapps"

    .line 1994
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    .line 1995
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mAllAppsProvider:Lcom/miui/home/launcher/model/LauncherAppsProvider;

    invoke-interface {p0}, Lcom/miui/home/launcher/model/LauncherAppsProvider;->getAllComponentKey()Ljava/util/Collection;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1996
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 2000
    :cond_1
    new-instance v2, Lcom/miui/home/launcher/LauncherModel$LoaderTask$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$$ExternalSyntheticLambda2;-><init>(Landroid/content/pm/LauncherApps;)V

    invoke-interface {p0, v2}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p0, "allApps or allApps size is null"

    .line 1997
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "clear all shortcuts error"

    .line 2007
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void

    :cond_3
    :goto_2
    const-string p0, "mContext or mAllAppsProvider is null"

    .line 1990
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private fromQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/miui/home/launcher/model/LoaderCursor;
    .locals 7

    const/4 v0, 0x0

    .line 2566
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContentResolver:Landroid/content/ContentResolver;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 2568
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "query uri: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Launcher.Model"

    invoke-static {p3, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p1, v0

    :goto_0
    if-nez p1, :cond_0

    return-object v0

    .line 2573
    :cond_0
    new-instance p2, Lcom/miui/home/launcher/model/LoaderCursor;

    iget-object p3, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mAllAppsProvider:Lcom/miui/home/launcher/model/LauncherAppsProvider;

    invoke-interface {p0}, Lcom/miui/home/launcher/model/LauncherAppsProvider;->getAllAppsMap()Ljava/util/Map;

    move-result-object p0

    invoke-direct {p2, p1, p3, p0}, Lcom/miui/home/launcher/model/LoaderCursor;-><init>(Landroid/database/Cursor;Landroid/content/Context;Ljava/util/Map;)V

    return-object p2
.end method

.method private getDockItemCursor()Lcom/miui/home/launcher/model/LoaderCursor;
    .locals 6

    .line 2776
    sget-object v1, Lcom/miui/home/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/home/launcher/ItemQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/16 v0, -0x65

    .line 2780
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v4, v3

    const/4 v0, 0x2

    .line 2781
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v0

    const-string v3, "container=? or container in(select _id from favorites where container=? and itemType=? )"

    const-string v5, " case when itemType = 2 then 0 else 1 end,cellX ASC"

    move-object v0, p0

    .line 2776
    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->fromQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/miui/home/launcher/model/LoaderCursor;

    move-result-object p0

    return-object p0
.end method

.method private getFirstScreenItemCursor(IZ)Lcom/miui/home/launcher/model/LoaderCursor;
    .locals 12

    if-eqz p2, :cond_0

    const-string v0, "screenOrder BETWEEN ? AND ? "

    goto :goto_0

    :cond_0
    const-string v0, "screenOrder=? "

    :goto_0
    const/16 v1, 0x16

    const/4 v2, 0x5

    const/16 v3, 0x15

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/16 v6, -0x64

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x1

    const/4 v10, 0x2

    if-eqz p2, :cond_1

    const/16 p2, 0x8

    new-array p2, p2, [Ljava/lang/String;

    .line 2804
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, p2, v7

    add-int/lit8 v7, p1, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, p2, v9

    .line 2805
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, p2, v10

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v5

    .line 2806
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v4

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v2

    .line 2807
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v8

    const/4 p1, 0x7

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, p1

    goto :goto_1

    :cond_1
    new-array p2, v8, [Ljava/lang/String;

    .line 2809
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, p2, v7

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, p2, v9

    .line 2810
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v5

    .line 2811
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v2

    :goto_1
    move-object v7, p2

    const-string p1, " LEFT JOIN screens ON favorites.screen=screens._id"

    .line 2813
    invoke-static {p1}, Lcom/miui/home/launcher/LauncherSettings$Favorites;->getJoinContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 2816
    invoke-static {}, Lcom/miui/home/launcher/ItemInfo;->getColumnsWithScreenTypeAndOrder()[Ljava/lang/String;

    move-result-object v5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AND "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "container"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=? or "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " in(select favorites."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_id"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " from "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "favorites"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " JOIN "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "screens"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ON "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "favorites.screen"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "screens._id"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " where "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " and "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "itemType"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " in(?,?,?))"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, " case when itemType in ( 2,21,22) then 0 else 1 end,container ASC, cellY ASC, cellX ASC "

    move-object v3, p0

    .line 2813
    invoke-direct/range {v3 .. v8}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->fromQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/miui/home/launcher/model/LoaderCursor;

    move-result-object p0

    return-object p0
.end method

.method private getFirstScreenOrder(Z)I
    .locals 10

    .line 2709
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCurrentDefaultScreenId()J

    move-result-wide v0

    .line 2710
    sget-wide v2, Lcom/miui/home/launcher/DeviceConfig;->INVALIDATE_DEFAULT_SCREEN_ID:J

    cmp-long v2, v0, v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    .line 2711
    iget-object v4, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/miui/home/launcher/LauncherSettings$Screens;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "screenOrder"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    .line 2712
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v8, v1

    const/4 v9, 0x0

    const-string v7, "_id=? "

    .line 2711
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2714
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2715
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2719
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2721
    throw p0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v0, :cond_2

    .line 2719
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_1
    move v1, v3

    .line 2723
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0034

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-eq v1, v3, :cond_3

    if-eqz p1, :cond_3

    .line 2725
    sget-object v4, Lcom/miui/home/launcher/util/FoldScreenIndexCalculator;->INSTANCE:Lcom/miui/home/launcher/util/FoldScreenIndexCalculator;

    sub-int v5, v1, v0

    iget v6, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mScreenCount:I

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/miui/home/launcher/util/FoldScreenIndexCalculator;->obtainValidCurrentScreenIndex(IIIZZ)I

    move-result v1

    :cond_3
    if-ne v1, v3, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    return v0
.end method

.method private getFolderItemCursor()Lcom/miui/home/launcher/model/LoaderCursor;
    .locals 6

    .line 2830
    sget-object v1, Lcom/miui/home/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/home/launcher/ItemQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x2

    .line 2833
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/16 v3, 0x15

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const/16 v3, 0x16

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v0

    const-string v3, "itemType=? OR itemType=? OR itemType=?"

    const-string v5, "cellY ASC, cellX ASC, itemType ASC"

    move-object v0, p0

    .line 2830
    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->fromQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/miui/home/launcher/model/LoaderCursor;

    move-result-object p0

    return-object p0
.end method

.method private getInstallingApps()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/home/launcher/install/PackageInstallerCompat$Info;",
            ">;"
        }
    .end annotation

    .line 2227
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mInstallingApps:Ljava/util/HashMap;

    monitor-enter v0

    .line 2228
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mInstallingApps:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2229
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mInstallingApps:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/home/launcher/install/PackageInstallerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/install/PackageInstallerCompat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/install/PackageInstallerCompat;->getActiveSessions()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 2231
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mInstallingApps:Ljava/util/HashMap;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 2232
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getOtherScreenItemCursor(IZ)Lcom/miui/home/launcher/model/LoaderCursor;
    .locals 12

    if-eqz p2, :cond_0

    const-string v0, "screenOrder NOT BETWEEN ? AND ? "

    goto :goto_0

    :cond_0
    const-string v0, "screenOrder<>? "

    :goto_0
    const/16 v1, 0x16

    const/4 v2, 0x5

    const/16 v3, 0x15

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/16 v6, -0x64

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x1

    const/4 v10, 0x2

    if-eqz p2, :cond_1

    const/16 p2, 0x8

    new-array p2, p2, [Ljava/lang/String;

    .line 2746
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, p2, v7

    add-int/lit8 v7, p1, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, p2, v9

    .line 2747
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, p2, v10

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v5

    .line 2748
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v4

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v2

    .line 2749
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v8

    const/4 p1, 0x7

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, p1

    goto :goto_1

    :cond_1
    new-array p2, v8, [Ljava/lang/String;

    .line 2751
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, p2, v7

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, p2, v9

    .line 2752
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v5

    .line 2753
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v2

    :goto_1
    move-object v7, p2

    const-string p1, " LEFT JOIN screens ON favorites.screen=screens._id"

    .line 2755
    invoke-static {p1}, Lcom/miui/home/launcher/LauncherSettings$Favorites;->getJoinContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 2758
    invoke-static {}, Lcom/miui/home/launcher/ItemInfo;->getColumnsWithScreenTypeAndOrder()[Ljava/lang/String;

    move-result-object v5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AND "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "container"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=? or "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " in(select favorites."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_id"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " from "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "favorites"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " JOIN "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "screens"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ON "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "favorites.screen"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "screens._id"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " where "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " and "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "itemType"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " in(?,?,?)) "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, " case when itemType in ( 2,21,22) then 0 else 1 end,container ASC, screens.screenOrder ASC, cellY ASC, cellX ASC "

    move-object v3, p0

    .line 2755
    invoke-direct/range {v3 .. v8}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->fromQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/miui/home/launcher/model/LoaderCursor;

    move-result-object p0

    return-object p0
.end method

.method private isNeedRemovePairIcon(Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 0

    .line 2521
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isPhone()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->isPairIcon()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isNeedRemoveSecondSpaceIcon(Landroid/content/Intent;)Z
    .locals 2

    .line 2513
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2514
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.securitycore"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2515
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.miui.securityspace.ui.activity.SwitchUserActivity"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2516
    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result p1

    invoke-static {}, Lcom/miui/launcher/utils/LauncherUtils;->getUserSystemId()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    .line 2517
    invoke-static {p0}, Lcom/miui/home/launcher/LauncherModel;->access$900(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/launcher/utils/LauncherUtils;->hasSecondSpace(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPreinstalledApp(Ljava/lang/String;)Z
    .locals 7

    .line 1664
    const-class p0, Ljava/lang/String;

    const-string v0, "Launcher.Model"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "miui.os.MiuiInit"

    .line 1667
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "isPreinstalledPackage"

    new-array v5, v1, [Ljava/lang/Class;

    aput-object p0, v5, v2

    .line 1668
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-string v5, "isPreinstalledPAIPackage"

    new-array v6, v1, [Ljava/lang/Class;

    aput-object p0, v6, v2

    .line 1669
    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v2

    const/4 v5, 0x0

    .line 1670
    invoke-virtual {v4, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-virtual {p0, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    :cond_0
    move p0, v1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1673
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preinstall check, no such method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move p0, v2

    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 1675
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "app %s is preinstalled app %s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private static synthetic lambda$clearAllShortcuts$1(Landroid/content/pm/LauncherApps;Lcom/miui/home/launcher/util/ComponentKey;)V
    .locals 1

    .line 2001
    iget-object v0, p1, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 2003
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/miui/home/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-static {p0, v0, p1}, Lcom/miui/launcher/common/PinShortcutRequestUtils;->unpinAllShortcuts(Landroid/content/pm/LauncherApps;Ljava/lang/String;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$loadAndBindMissingIcons$0(Lcom/miui/home/launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    .line 1629
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->isCallbacksValidate(Lcom/miui/home/launcher/LauncherModel$Callbacks;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Launcher.Model"

    const-string v0, "Finally updating for missing icons"

    .line 1630
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    invoke-interface {p1, p2, p3, p4}, Lcom/miui/home/launcher/LauncherModel$Callbacks;->bindAppsChanged(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$loadAppWidget$2(Lcom/miui/home/launcher/LauncherAppWidgetInfo;J)V
    .locals 1

    const/4 v0, 0x1

    .line 2093
    iput-boolean v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->removePending:Z

    .line 2094
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;J)V

    return-void
.end method

.method private loadAllApps()V
    .locals 9

    .line 1680
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_0

    return-void

    .line 1684
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$2000(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$2000(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    return-void

    .line 1689
    :cond_2
    new-instance v2, Lcom/miui/home/launcher/model/AllAppsLoaderTask;

    iget-object v3, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mAllAppsProvider:Lcom/miui/home/launcher/model/LauncherAppsProvider;

    iget-object v5, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/miui/home/launcher/model/AllAppsLoaderTask;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/model/LauncherAppsProvider;Lcom/miui/home/launcher/model/AllAppsLoaderTask$LoaderCallback;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 1690
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v4}, Lcom/miui/home/launcher/LauncherModel;->access$3000(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllCategoryList;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v5}, Lcom/miui/home/launcher/LauncherModel;->access$3100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/MainThreadExecutor;

    move-result-object v5

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->init(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;Lcom/miui/home/launcher/AllCategoryList;Ljava/util/concurrent/Executor;)V

    .line 1691
    invoke-virtual {v2}, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->run()V

    .line 1693
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/AllAppsList;->getAllAppsList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1696
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-static {v2}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDrawerMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1697
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "usagestats"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/app/usage/UsageStatsManager;

    const/4 v4, 0x4

    const-wide/16 v5, 0x0

    .line 1698
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v2

    .line 1699
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1700
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageStats;

    .line 1701
    invoke-virtual {v4}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1703
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/AppInfo;

    .line 1704
    iget-object v5, v4, Lcom/miui/home/launcher/BaseAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/usage/UsageStats;

    if-eqz v5, :cond_4

    .line 1706
    invoke-static {v5}, Lcom/miui/launcher/utils/LauncherUtils;->getAppLaunchCount(Landroid/app/usage/UsageStats;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/miui/home/launcher/BaseAppInfo;->setAppLaunchCount(I)V

    .line 1707
    invoke-virtual {v5}, Landroid/app/usage/UsageStats;->getLastTimeStamp()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/miui/home/launcher/BaseAppInfo;->setLastTimeUsed(J)V

    goto :goto_2

    .line 1712
    :cond_5
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object v2

    new-instance v3, Lcom/miui/home/launcher/LauncherModel$LoaderTask$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$3;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/miui/home/library/utils/DeferredHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadAndBindMissingIcons(Z)V
    .locals 8

    .line 1540
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_0

    return-void

    .line 1544
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$2000(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$2000(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    const-string p0, "Launcher.Model"

    const-string p1, "No callback to call back"

    .line 1546
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1551
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mAllAppsProvider:Lcom/miui/home/launcher/model/LauncherAppsProvider;

    invoke-interface {v1}, Lcom/miui/home/launcher/model/LauncherAppsProvider;->getAllComponentKey()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_3

    const-string p0, "Launcher.Model"

    const-string p1, "No main activity found, the system is so clean"

    .line 1552
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1556
    :cond_3
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/launcher/RemovedComponentInfoList;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/RemovedComponentInfoList;

    move-result-object v1

    .line 1558
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1559
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mAllAppsProvider:Lcom/miui/home/launcher/model/LauncherAppsProvider;

    invoke-interface {v3}, Lcom/miui/home/launcher/model/LauncherAppsProvider;->getAllComponentKey()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/util/ComponentKey;

    .line 1560
    iget-boolean v5, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v5, :cond_5

    return-void

    .line 1565
    :cond_5
    new-instance v5, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;

    iget-object v6, v4, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/miui/home/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-direct {v5, v6, v7}, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1566
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_1

    .line 1571
    :cond_6
    iget-object v6, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v6, v6, Lcom/miui/home/launcher/LauncherModel;->mLoadedApps:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_1

    .line 1581
    :cond_7
    iget-object v6, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-static {v6}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDrawerMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result v6

    if-eqz v6, :cond_b

    if-eqz p1, :cond_9

    .line 1583
    iget-object v6, v4, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->isPreinstalledApp(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v4, v4, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    .line 1584
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->isInstalledAndInRussiaFolder(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1585
    :cond_8
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1588
    :cond_9
    iget-object v6, v4, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->isInstalledAndInRussiaFolder(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v4, v4, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    .line 1589
    invoke-virtual {v1, v4}, Lcom/miui/home/launcher/RemovedComponentInfoList;->checkRemovedInfo(Landroid/content/ComponentName;)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1590
    :cond_a
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1594
    :cond_b
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1599
    :cond_c
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_11

    .line 1600
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/AllAppsList;->clearAll()V

    .line 1602
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;

    .line 1603
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$2600(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1604
    :try_start_0
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v3}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;->packageName:Ljava/lang/String;

    const/4 v6, 0x1

    iget-object v7, v1, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/miui/home/launcher/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 1605
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v3

    iget-object v1, v1, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/progress/ProgressManager;->onAppInProgressInstalled(Ljava/lang/String;)V

    .line 1606
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 1609
    :cond_d
    iget-boolean p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-nez p1, :cond_11

    .line 1610
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1611
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1612
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1613
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object p1

    iget-object p1, p1, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_e

    .line 1614
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object p1

    iget-object p1, p1, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1615
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object p1

    iget-object p1, p1, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1617
    :cond_e
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object p1

    iget-object p1, p1, Lcom/miui/home/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_f

    .line 1618
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object p1

    iget-object p1, p1, Lcom/miui/home/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1619
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object p1

    iget-object p1, p1, Lcom/miui/home/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1621
    :cond_f
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object p1

    iget-object p1, p1, Lcom/miui/home/launcher/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_10

    .line 1622
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object p1

    iget-object p1, p1, Lcom/miui/home/launcher/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1623
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object p1

    iget-object p1, p1, Lcom/miui/home/launcher/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1625
    :cond_10
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1, v4}, Lcom/miui/home/launcher/LauncherModel;->access$2700(Lcom/miui/home/launcher/LauncherModel;Ljava/util/ArrayList;)V

    .line 1626
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1, v5}, Lcom/miui/home/launcher/LauncherModel;->access$2800(Lcom/miui/home/launcher/LauncherModel;Ljava/util/ArrayList;)V

    .line 1627
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/miui/home/launcher/LauncherModel$Callbacks;)Lcom/miui/home/launcher/LauncherModel$Callbacks;

    move-result-object v3

    .line 1628
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object p1

    new-instance v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask$$ExternalSyntheticLambda1;

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v7}, Lcom/miui/home/library/utils/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1638
    :cond_11
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object p1

    new-instance v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$1;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;)V

    invoke-virtual {p1, v1}, Lcom/miui/home/library/utils/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1653
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object p1

    new-instance v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask$2;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$2;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    invoke-virtual {p1, v1}, Lcom/miui/home/library/utils/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1660
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/home/launcher/RemovedComponentInfoList;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/RemovedComponentInfoList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/RemovedComponentInfoList;->clear()V

    return-void
.end method

.method private loadAndBindScreens()V
    .locals 4

    .line 2545
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->getAllScreens(Landroid/content/ContentResolver;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 2546
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mScreenCount:I

    .line 2547
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$2000(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    if-nez v1, :cond_1

    const-string p0, "Launcher.Model"

    const-string v0, "load screens running with no launcher"

    .line 2550
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2553
    :cond_1
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object v2

    new-instance v3, Lcom/miui/home/launcher/LauncherModel$LoaderTask$8;

    invoke-direct {v3, p0, v1, v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$8;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/miui/home/library/utils/DeferredHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadAndBindWorkspace(Z)V
    .locals 19

    move-object/from16 v7, p0

    move/from16 v0, p1

    .line 2583
    monitor-enter p0

    .line 2584
    :try_start_0
    iget-object v1, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$4000(Lcom/miui/home/launcher/LauncherModel;)Z

    move-result v1

    .line 2585
    iget-object v2, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/miui/home/launcher/LauncherModel;->access$4002(Lcom/miui/home/launcher/LauncherModel;Z)Z

    .line 2586
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v2, "Launcher.Model"

    .line 2591
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadAndBindWorkspace loaded="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2593
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2594
    iget-object v1, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/launcher/RemovedComponentInfoList;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/RemovedComponentInfoList;

    move-result-object v10

    .line 2596
    iget-object v1, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v1, v1, Lcom/miui/home/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2597
    iget-object v1, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v1, v1, Lcom/miui/home/launcher/LauncherModel;->mLoadedApps:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2598
    iget-object v1, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v1, v1, Lcom/miui/home/launcher/LauncherModel;->mLoadedUris:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 2599
    iget-object v1, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v1, v1, Lcom/miui/home/launcher/LauncherModel;->mProgressingPackages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 2600
    iget-object v1, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mInstallingApps:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2602
    iget-object v1, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$2000(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    if-nez v1, :cond_0

    const-string v0, "Launcher.Model"

    const-string v1, "LoaderThread running with no launcher"

    .line 2605
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2608
    :cond_0
    invoke-interface {v1}, Lcom/miui/home/launcher/LauncherModel$Callbacks;->prepareBeforeBindItems()V

    .line 2609
    invoke-direct {v7, v1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->startBinding(Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    .line 2612
    iget-boolean v2, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v2, :cond_1

    return-void

    .line 2613
    :cond_1
    iget-object v2, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result v11

    .line 2614
    invoke-direct {v7, v11}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->getFirstScreenOrder(Z)I

    move-result v12

    .line 2615
    invoke-direct {v7, v12, v11}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->getFirstScreenItemCursor(IZ)Lcom/miui/home/launcher/model/LoaderCursor;

    move-result-object v13

    .line 2616
    iget-boolean v2, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v2, :cond_2

    return-void

    .line 2617
    :cond_2
    invoke-direct {v7, v13, v10, v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadItems(Lcom/miui/home/launcher/model/LoaderCursor;Lcom/miui/home/launcher/RemovedComponentInfoList;Z)V

    .line 2620
    iget-boolean v2, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v2, :cond_3

    return-void

    .line 2621
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->getDockItemCursor()Lcom/miui/home/launcher/model/LoaderCursor;

    move-result-object v14

    .line 2622
    iget-boolean v2, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v2, :cond_4

    return-void

    .line 2623
    :cond_4
    invoke-direct {v7, v14, v10, v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadItems(Lcom/miui/home/launcher/model/LoaderCursor;Lcom/miui/home/launcher/RemovedComponentInfoList;Z)V

    .line 2625
    invoke-virtual {v7, v1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/miui/home/launcher/LauncherModel$Callbacks;)Lcom/miui/home/launcher/LauncherModel$Callbacks;

    move-result-object v15

    .line 2626
    iget-object v1, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$3300(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16

    .line 2628
    :try_start_1
    iget-object v1, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object v5

    new-instance v6, Lcom/miui/home/launcher/LauncherModel$LoaderTask$9;

    move-object v1, v6

    move-object/from16 v2, p0

    move-object v3, v15

    move/from16 v4, p1

    move-object/from16 v18, v14

    move-object/from16 v17, v15

    move-object v15, v5

    move-object v14, v6

    move-wide v5, v8

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$9;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;ZJ)V

    invoke-virtual {v15, v14}, Lcom/miui/home/library/utils/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 2639
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2641
    iget-boolean v1, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v1, :cond_5

    return-void

    .line 2642
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->getFolderItemCursor()Lcom/miui/home/launcher/model/LoaderCursor;

    move-result-object v1

    .line 2643
    iget-boolean v2, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v2, :cond_6

    return-void

    .line 2644
    :cond_6
    invoke-direct {v7, v1, v10, v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadItems(Lcom/miui/home/launcher/model/LoaderCursor;Lcom/miui/home/launcher/RemovedComponentInfoList;Z)V

    .line 2646
    iget-boolean v1, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v1, :cond_7

    return-void

    .line 2648
    :cond_7
    invoke-direct {v7, v12, v11}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->getOtherScreenItemCursor(IZ)Lcom/miui/home/launcher/model/LoaderCursor;

    move-result-object v1

    .line 2649
    iget-boolean v2, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v2, :cond_8

    return-void

    .line 2650
    :cond_8
    invoke-direct {v7, v1, v10, v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadItems(Lcom/miui/home/launcher/model/LoaderCursor;Lcom/miui/home/launcher/RemovedComponentInfoList;Z)V

    .line 2652
    invoke-static {}, Lcom/miui/home/launcher/RemovedComponentInfoList;->waitingForReady()V

    .line 2653
    iget-object v2, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/miui/home/launcher/AllAppsList;->setRemovedInfoList(Lcom/miui/home/launcher/RemovedComponentInfoList;)V

    .line 2654
    invoke-virtual {v10}, Lcom/miui/home/launcher/RemovedComponentInfoList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 2655
    invoke-virtual {v10}, Lcom/miui/home/launcher/RemovedComponentInfoList;->writeBackToFile()V

    :cond_9
    if-eqz v13, :cond_a

    .line 2659
    invoke-virtual {v13}, Lcom/miui/home/launcher/model/LoaderCursor;->commitDeleted()Z

    :cond_a
    if-eqz v18, :cond_b

    .line 2662
    invoke-virtual/range {v18 .. v18}, Lcom/miui/home/launcher/model/LoaderCursor;->commitDeleted()Z

    :cond_b
    if-eqz v1, :cond_c

    .line 2665
    invoke-virtual {v1}, Lcom/miui/home/launcher/model/LoaderCursor;->commitDeleted()Z

    .line 2668
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v13, :cond_d

    .line 2670
    invoke-virtual {v13}, Lcom/miui/home/launcher/model/LoaderCursor;->getItemToChange()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_d
    if-eqz v18, :cond_e

    .line 2673
    invoke-virtual/range {v18 .. v18}, Lcom/miui/home/launcher/model/LoaderCursor;->getItemToChange()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_e
    if-eqz v1, :cond_f

    .line 2676
    invoke-virtual {v1}, Lcom/miui/home/launcher/model/LoaderCursor;->getItemToChange()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2678
    :cond_f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_10

    .line 2679
    new-instance v1, Lcom/miui/home/launcher/model/LoaderCursor;

    iget-object v3, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/miui/home/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v12, Lcom/miui/home/launcher/ItemQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "_id"

    .line 2681
    invoke-static {v3, v2}, Lcom/miui/home/launcher/common/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 2679
    invoke-virtual/range {v10 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    iget-object v3, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/home/launcher/model/LoaderCursor;-><init>(Landroid/database/Cursor;Landroid/content/Context;Ljava/util/Map;)V

    .line 2684
    invoke-direct {v7, v1, v4, v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadItems(Lcom/miui/home/launcher/model/LoaderCursor;Lcom/miui/home/launcher/RemovedComponentInfoList;Z)V

    .line 2687
    :cond_10
    iget-object v0, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$3300(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2689
    :try_start_2
    iget-object v0, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object v0

    new-instance v2, Lcom/miui/home/launcher/LauncherModel$LoaderTask$10;

    move-object/from16 v3, v17

    invoke-direct {v2, v7, v3, v8, v9}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$10;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;J)V

    invoke-virtual {v0, v2}, Lcom/miui/home/library/utils/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 2700
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2701
    iget-object v0, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mInstallingApps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void

    :catchall_0
    move-exception v0

    .line 2700
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 2639
    :try_start_4
    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    .line 2586
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method private loadAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;J)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 2123
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;->initMiuiAttribute(Landroid/content/ComponentName;)V

    .line 2125
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    iget v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->isAppWidgetAvailable(Landroid/content/Context;ILandroid/content/ComponentName;)Z

    move-result v0

    const-string v1, "Launcher.Model"

    if-nez v0, :cond_2

    .line 2126
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2127
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2128
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v0

    .line 2129
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getAppWidgetHost()Lcom/miui/home/launcher/LauncherAppWidgetHost;

    move-result-object v2

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v2

    .line 2131
    invoke-static {p1}, Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;->newInstance(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;

    move-result-object v3

    .line 2132
    iget-object v4, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/miui/home/launcher/widget/WidgetHostViewLoader;->getDefaultOptionsForWidget(Landroid/content/Context;Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;)Landroid/os/Bundle;

    move-result-object v3

    .line 2135
    iget-object v4, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 2136
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    .line 2135
    invoke-static {v4, v2, v5, v0, v3}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->bindAppWidgetIdIfAllowed(Landroid/content/Context;ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2137
    iput v2, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    .line 2138
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2139
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "appWidgetId"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2140
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    iget-wide v3, p1, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-static {v2, v3, v4, v0}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)V

    const-string v0, "rebind app widget success"

    .line 2141
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "rebind app widget failed"

    .line 2143
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    iget v2, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->isAppWidgetAvailable(Landroid/content/Context;ILandroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting widget that isn\'t installed anymore: id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " appWidgetId="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result p2

    if-nez p2, :cond_3

    .line 2150
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 2152
    :cond_3
    iget-boolean p2, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->removePending:Z

    if-eqz p2, :cond_7

    .line 2153
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p2}, Lcom/miui/home/launcher/LauncherModel;->access$2000(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    invoke-direct {p0, p2, p1, p1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->removePendingAndBindWidget(Lcom/miui/home/launcher/LauncherModel$Callbacks;Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_1

    .line 2156
    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iget v2, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    .line 2157
    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 2158
    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    .line 2159
    iput-wide p2, p1, Lcom/miui/home/launcher/ItemInfo;->id:J

    .line 2160
    iget-wide p2, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v2, -0x64

    cmp-long p2, p2, v2

    if-eqz p2, :cond_5

    const-string p0, "Widget found where container != CONTAINER_DESKTOP -- ignoring!"

    .line 2161
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2165
    :cond_5
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->clone()Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    move-result-object p2

    .line 2166
    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->resetPendingInfo()V

    .line 2167
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->changeCellCountOnDatabase()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 2168
    iget-object p3, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 2169
    invoke-static {p3, v0}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    move-result-object p3

    .line 2170
    invoke-direct {p0, p2, p3}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->reCalculateSpan(Lcom/miui/home/launcher/LauncherAppWidgetInfo;Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)V

    .line 2172
    :cond_6
    iget-object p3, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p3}, Lcom/miui/home/launcher/LauncherModel;->access$2000(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    invoke-direct {p0, p3, p1, p2}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->removePendingAndBindWidget(Lcom/miui/home/launcher/LauncherModel$Callbacks;Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/ItemInfo;)V

    :cond_7
    :goto_1
    return-void
.end method

.method private loadAppWidget(Lcom/miui/home/launcher/model/LoaderCursor;)V
    .locals 10

    const/16 v0, 0x9

    .line 2067
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    .line 2068
    new-instance v7, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-direct {v7, v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;-><init>(I)V

    .line 2069
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v0, p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->load(Landroid/content/Context;Landroid/database/Cursor;)V

    const/4 v0, 0x0

    .line 2070
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v8

    .line 2072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadAppWidget, id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", provider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2073
    invoke-virtual {v7}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", widgetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2074
    invoke-virtual {v7}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getAppWidgetId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.Model"

    .line 2072
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    iget v0, v7, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_4

    iget v0, v7, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 2080
    :cond_0
    invoke-direct {p0, v7, v8, v9, p1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadRestoreWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;JLcom/miui/home/launcher/model/LoaderCursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2083
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->isProviderAvailable(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "load app widget failed for no widget"

    .line 2084
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    return-void

    .line 2088
    :cond_2
    invoke-virtual {v7}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2089
    invoke-direct {p0, v7, v8, v9}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;J)V

    goto :goto_0

    :cond_3
    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, v7

    move-wide v3, v8

    move-object v5, p1

    .line 2091
    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadPendingAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;JLandroid/database/Cursor;Z)Z

    .line 2092
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    new-instance v0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v7, v8, v9}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherAppWidgetInfo;J)V

    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherModel;->access$1900(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/Runnable;)V

    :goto_0
    return-void

    .line 2076
    :cond_4
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "load app widget failed, because spanX = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v7, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " or spanY = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v7, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " less than 1"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    return-void
.end method

.method private loadDBComplete()Z
    .locals 2

    .line 1747
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    const-string v0, "database_ready_pref_key"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private loadFolder(Landroid/database/Cursor;)V
    .locals 4

    const/4 v0, 0x0

    .line 2053
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 2054
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v2, v2, Lcom/miui/home/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Launcher.Model"

    if-eqz v2, :cond_0

    .line 2055
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "don\'t loadFolder, because duplicate id("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2058
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/FolderInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/FolderInfo;-><init>()V

    .line 2059
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/launcher/FolderInfo;->load(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 2060
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object p1, p1, Lcom/miui/home/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;

    iget-wide v1, v0, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2062
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadFolder "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->access$2000(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->bindItem(Lcom/miui/home/launcher/LauncherModel$Callbacks;Lcom/miui/home/launcher/ItemInfo;)V

    return-void
.end method

.method private loadGadget(Lcom/miui/home/launcher/model/LoaderCursor;)V
    .locals 4

    const/16 v0, 0x9

    .line 2237
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    const/4 v1, 0x0

    .line 2238
    invoke-virtual {p1, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    const/16 v2, 0xf

    .line 2240
    invoke-virtual {p1, v2}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2241
    invoke-static {v0, v2}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getGadgeInfo(ILjava/lang/String;)Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2243
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, p1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->load(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 2244
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    move v2, v1

    :goto_0
    if-nez v0, :cond_2

    .line 2251
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v2, "remove gadget"

    .line 2253
    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto :goto_1

    .line 2256
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    :cond_3
    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    .line 2259
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->access$2000(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->bindItem(Lcom/miui/home/launcher/LauncherModel$Callbacks;Lcom/miui/home/launcher/ItemInfo;)V

    :cond_4
    return-void
.end method

.method private loadItems(Lcom/miui/home/launcher/model/LoaderCursor;Lcom/miui/home/launcher/RemovedComponentInfoList;Z)V
    .locals 3

    const-string v0, "Launcher.Model"

    if-nez p1, :cond_0

    return-void

    .line 2842
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v1, :cond_6

    invoke-virtual {p1}, Landroid/database/CursorWrapper;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lcom/miui/home/launcher/model/LoaderCursor;->moveToNext()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_6

    const/16 v1, 0x8

    .line 2844
    :try_start_1
    invoke-virtual {p1, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    const/16 v2, 0xb

    if-eq v1, v2, :cond_5

    const/16 v2, 0xe

    if-eq v1, v2, :cond_5

    const/16 v2, 0x11

    if-eq v1, v2, :cond_5

    const/16 v2, 0x13

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 2872
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadServiceDelivery(Lcom/miui/home/launcher/model/LoaderCursor;)V

    goto :goto_0

    .line 2869
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadMaMl(Lcom/miui/home/launcher/model/LoaderCursor;)V

    goto :goto_0

    .line 2866
    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadGadget(Lcom/miui/home/launcher/model/LoaderCursor;)V

    goto :goto_0

    .line 2862
    :cond_3
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadAppWidget(Lcom/miui/home/launcher/model/LoaderCursor;)V

    goto :goto_0

    .line 2858
    :cond_4
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadFolder(Landroid/database/Cursor;)V

    goto :goto_0

    .line 2852
    :cond_5
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadShortcut(Lcom/miui/home/launcher/model/LoaderCursor;ILcom/miui/home/launcher/RemovedComponentInfoList;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "Desktop items loading interrupted:"

    .line 2876
    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2882
    :cond_6
    :goto_1
    invoke-virtual {p1}, Landroid/database/CursorWrapper;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    :try_start_3
    const-string p2, "Desktop items loading interrupted moveToNext:"

    .line 2880
    invoke-static {v0, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    .line 2882
    :goto_3
    invoke-virtual {p1}, Landroid/database/CursorWrapper;->close()V

    .line 2883
    throw p0

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private loadMaMl(Lcom/miui/home/launcher/model/LoaderCursor;)V
    .locals 4

    .line 2270
    new-instance v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;-><init>()V

    .line 2271
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->load(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 2273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadMaMl, id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", productId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2274
    invoke-virtual {v0}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", widgetId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", title ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2276
    invoke-virtual {v0}, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", resPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->resPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Launcher.Model"

    .line 2273
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    iget-object v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->resPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->isFileExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2281
    iget-object v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->getExistingMaMlDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2283
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2284
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    .line 2285
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->updateMaMlInfo(Landroid/content/Context;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2287
    iput-object v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->resPath:Ljava/lang/String;

    .line 2292
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->resPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->maMlDownloadUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2293
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t restore, skip loading the maml: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    return-void

    .line 2297
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->access$2000(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->bindItem(Lcom/miui/home/launcher/LauncherModel$Callbacks;Lcom/miui/home/launcher/ItemInfo;)V

    return-void
.end method

.method private loadPendingAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;JLandroid/database/Cursor;Z)Z
    .locals 5

    .line 2191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadRestoreAppWidget "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " needPending = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.Model"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 2194
    invoke-interface {p4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->parseWidgetProviderFormIntent(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    :cond_0
    const/4 p4, 0x0

    if-eqz v0, :cond_7

    .line 2196
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 2199
    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/miui/home/launcher/ScreenUtils;->isAlreadyInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    if-nez v3, :cond_2

    if-nez p5, :cond_2

    return p4

    .line 2203
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->getInstallingApps()Ljava/util/HashMap;

    move-result-object v3

    .line 2204
    sget-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz p5, :cond_3

    goto :goto_0

    :cond_3
    return p4

    .line 2205
    :cond_4
    :goto_0
    iput-boolean p5, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->needPending:Z

    .line 2206
    iput-wide p2, p1, Lcom/miui/home/launcher/ItemInfo;->id:J

    .line 2207
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    .line 2208
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->setProvider(Landroid/content/ComponentName;)V

    .line 2209
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/install/PackageInstallerCompat$Info;

    if-eqz p2, :cond_5

    .line 2211
    iget-object p3, p2, Lcom/miui/home/launcher/install/PackageInstallerCompat$Info;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2212
    iget p2, p2, Lcom/miui/home/launcher/install/PackageInstallerCompat$Info;->progress:I

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->setProgress(I)V

    .line 2214
    :cond_5
    iget-wide p2, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v3, -0x64

    cmp-long p2, p2, v3

    if-eqz p2, :cond_6

    const-string p0, "Widget found where container != CONTAINER_DESKTOP -- ignoring!"

    .line 2215
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p4

    .line 2218
    :cond_6
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p2}, Lcom/miui/home/launcher/LauncherModel;->access$2000(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    invoke-direct {p0, p2, p1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->bindItem(Lcom/miui/home/launcher/LauncherModel$Callbacks;Lcom/miui/home/launcher/ItemInfo;)V

    return v2

    :cond_7
    :goto_1
    return p4
.end method

.method private loadRestoreWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;JLcom/miui/home/launcher/model/LoaderCursor;)Z
    .locals 10

    const/16 v0, 0x13

    .line 2101
    invoke-virtual {p4, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    const/16 v1, 0x8

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    return v2

    .line 2105
    :cond_1
    iget-boolean v0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 2106
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->isProviderAvailable(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "load restore app widget failed for no miui widget"

    .line 2107
    invoke-virtual {p4, p0}, Lcom/miui/home/launcher/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    return v3

    .line 2111
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->setRestore()V

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move-wide v6, p2

    move-object v8, p4

    .line 2112
    invoke-direct/range {v4 .. v9}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadPendingAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;JLandroid/database/Cursor;Z)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "load restore app widget failed"

    .line 2113
    invoke-virtual {p4, p0}, Lcom/miui/home/launcher/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    :cond_3
    return v3
.end method

.method private loadServiceDelivery(Lcom/miui/home/launcher/model/LoaderCursor;)V
    .locals 2

    .line 2264
    new-instance v0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;-><init>()V

    .line 2265
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;->load(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 2266
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherModel;->access$2000(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->bindItem(Lcom/miui/home/launcher/LauncherModel$Callbacks;Lcom/miui/home/launcher/ItemInfo;)V

    return-void
.end method

.method private loadShortcut(Lcom/miui/home/launcher/model/LoaderCursor;ILcom/miui/home/launcher/RemovedComponentInfoList;Z)V
    .locals 23

    move-object/from16 v7, p0

    move-object/from16 v2, p1

    move/from16 v1, p2

    move-object/from16 v4, p3

    const-string v6, "Launcher.Model"

    const/4 v3, 0x1

    .line 2312
    invoke-virtual {v2, v3}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    .line 2315
    :try_start_0
    invoke-static {v0, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v15
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2321
    invoke-virtual {v2, v5}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v13

    .line 2322
    iget-object v8, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v8}, Lcom/miui/home/launcher/LauncherModel;->access$900(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/Application;

    move-result-object v8

    const/16 v9, 0x14

    invoke-virtual {v2, v9}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v9

    invoke-static {v8, v9}, Lcom/miui/home/launcher/common/Utilities;->getUserForSerialNumber(Landroid/content/Context;I)Landroid/os/UserHandle;

    move-result-object v12

    .line 2324
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadShortcut, id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", intent="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", userHandle="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", type="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_a

    .line 2330
    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-nez v8, :cond_0

    .line 2332
    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackInvalidateApplication(Ljava/lang/String;)V

    .line 2334
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-direct {v0, v8, v12}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 2335
    iget-object v9, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mAllAppsProvider:Lcom/miui/home/launcher/model/LauncherAppsProvider;

    invoke-interface {v9}, Lcom/miui/home/launcher/model/LauncherAppsProvider;->getAllComponentKey()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v12, :cond_3

    if-nez v9, :cond_1

    goto :goto_0

    .line 2366
    :cond_1
    iget-object v0, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/AllAppsList;->getAppFilter()Lcom/miui/home/launcher/AppFilter;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/miui/home/launcher/AppFilter;->shouldShowApp(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_b

    if-eqz v4, :cond_2

    .line 2368
    invoke-virtual {v4, v2, v8}, Lcom/miui/home/launcher/RemovedComponentInfoList;->recordRemovedInfo(Landroid/database/Cursor;Landroid/content/ComponentName;)Z

    :cond_2
    const-string v0, "Remove: TwelveKeyDialer"

    .line 2370
    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_0
    if-nez v12, :cond_4

    goto :goto_1

    :cond_4
    if-eqz v8, :cond_6

    .line 2341
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherSettings;->isRetainedPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    move v3, v5

    goto :goto_1

    :cond_6
    if-eqz v8, :cond_7

    .line 2353
    iget-object v1, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v10

    invoke-static {v1, v7, v10}, Lcom/miui/launcher/utils/LauncherUtils;->isPackageDisableAsUser(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_7
    :goto_1
    if-eqz v3, :cond_9

    if-eqz v4, :cond_8

    .line 2357
    invoke-virtual {v4, v2, v8}, Lcom/miui/home/launcher/RemovedComponentInfoList;->recordRemovedInfo(Landroid/database/Cursor;Landroid/content/ComponentName;)Z

    .line 2359
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove: id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", component: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". user is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    .line 2360
    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/model/LoaderCursor;->checkPackageNameChange(Lcom/miui/home/launcher/util/ComponentKey;)V

    .line 2363
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "component:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " returned because user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " contains: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    const/16 v0, 0x11

    if-ne v1, v0, :cond_b

    .line 2376
    :try_start_1
    invoke-virtual {v2, v3}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2377
    invoke-static {v0, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 2378
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 2379
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v8, "pkgName"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2380
    invoke-static {v0}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->isInLinkList(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 2381
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(not in db) Remove russia_pre_install "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2386
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    :cond_b
    const-string v0, "null"

    if-nez v1, :cond_e

    .line 2392
    iget-object v8, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v9, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mAllAppsProvider:Lcom/miui/home/launcher/model/LauncherAppsProvider;

    iget-object v11, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    const/4 v1, 0x4

    const/16 v16, 0x2

    const/16 v17, 0x16

    const/16 v18, 0x14

    move-object v10, v15

    move-object v5, v12

    move-object/from16 v12, p1

    move-wide/from16 v20, v13

    move v13, v1

    move/from16 v14, v16

    move-object v1, v15

    move/from16 v15, v17

    move/from16 v16, v18

    invoke-virtual/range {v8 .. v16}, Lcom/miui/home/launcher/LauncherModel;->getAppShortcutInfo(Lcom/miui/home/launcher/model/LauncherAppsProvider;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;IIII)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v8

    .line 2395
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadShortcut, after getShortcutInfoFromApplication, info="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v8, :cond_c

    goto :goto_2

    :cond_c
    invoke-virtual {v8}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_d

    .line 2397
    iget-object v0, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    iget-object v9, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v9, v9, Lcom/miui/home/launcher/LauncherModel;->mLoadedApps:Ljava/util/HashMap;

    move/from16 v10, p4

    invoke-virtual {v0, v9, v8, v10}, Lcom/miui/home/launcher/allapps/LauncherMode;->canLoadShortcutInfo(Ljava/util/HashMap;Lcom/miui/home/launcher/ShortcutInfo;Z)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadShortcut, after getShortcutInfoFromApplication, mLoadedApps contains info, set null, info="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/miui/home/launcher/ShortcutInfo;->printIdentity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    const-string v0, "loadShortcut, after getShortcutInfoFromApplication, mLoadedApps contains info, set null"

    .line 2400
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2402
    :cond_d
    iget-object v0, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mLoadedApps:Ljava/util/HashMap;

    new-instance v9, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-direct {v9, v10, v5}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "loadShortcut, after getShortcutInfoFromApplication, put into mLoadedApps"

    .line 2403
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_e
    move-object v5, v12

    move-wide/from16 v20, v13

    .line 2406
    invoke-direct {v7, v15}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->isNeedRemoveSecondSpaceIcon(Landroid/content/Intent;)Z

    move-result v8

    if-eqz v8, :cond_f

    const-string v0, "reomve second space icon"

    .line 2407
    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    return-void

    .line 2410
    :cond_f
    iget-object v8, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v11, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    const/4 v13, 0x3

    const/4 v14, 0x5

    const/16 v16, 0x6

    const/16 v17, 0x4

    const/16 v18, 0x2

    const/16 v19, 0x16

    const/16 v22, 0x14

    move-object v9, v15

    move-object/from16 v10, p1

    move/from16 v12, p2

    move-object v1, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v22

    invoke-virtual/range {v8 .. v19}, Lcom/miui/home/launcher/LauncherModel;->getShortcutInfo(Landroid/content/Intent;Landroid/database/Cursor;Landroid/content/Context;IIIIIIII)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v8

    .line 2413
    instance-of v9, v8, Lcom/miui/home/launcher/DeepShortcutInfo;

    if-eqz v9, :cond_11

    .line 2414
    move-object v9, v8

    check-cast v9, Lcom/miui/home/launcher/DeepShortcutInfo;

    invoke-virtual {v9}, Lcom/miui/home/launcher/DeepShortcutInfo;->getDeepShortcutKey()Ljava/lang/String;

    move-result-object v9

    .line 2415
    iget-object v10, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mDeepShortcutKeys:Ljava/util/HashSet;

    invoke-virtual {v10, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 2416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove dup deepShortcut, info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/miui/home/launcher/ShortcutInfo;->printIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    return-void

    .line 2419
    :cond_10
    iget-object v10, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mDeepShortcutKeys:Ljava/util/HashSet;

    invoke-virtual {v10, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2422
    invoke-virtual {v8}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 2423
    iget-object v10, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v8}, Lcom/miui/home/launcher/ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v9, v11, v12}, Lcom/miui/home/launcher/LauncherModel;->isValidShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_12

    .line 2424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deepShortcut need delete on desktop, info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    .line 2425
    iget-object v0, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    check-cast v8, Lcom/miui/home/launcher/DeepShortcutInfo;

    invoke-virtual {v8}, Lcom/miui/home/launcher/DeepShortcutInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v9, v1, v5}, Lcom/miui/launcher/common/PinShortcutRequestUtils;->unpinShortcut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void

    :cond_11
    if-eqz v8, :cond_12

    .line 2428
    invoke-direct {v7, v8}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->isNeedRemovePairIcon(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 2429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pairIcon need delete in phone ! info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/miui/home/launcher/ShortcutInfo;->printIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    return-void

    .line 2433
    :cond_12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadShortcut, not application shortcutInfo, info="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v8, :cond_13

    goto :goto_3

    :cond_13
    invoke-virtual {v8}, Lcom/miui/home/launcher/ShortcutInfo;->printIdentity()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    if-eqz v8, :cond_14

    .line 2437
    iput-object v1, v8, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 2438
    iget-object v0, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v0, v2}, Lcom/miui/home/launcher/ShortcutInfo;->load(Landroid/content/Context;Landroid/database/Cursor;)V

    :cond_14
    if-eqz v8, :cond_16

    .line 2443
    iget-object v0, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0, v8}, Lcom/miui/home/launcher/LauncherModel;->access$3900(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 2445
    iget-object v0, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mAllAppsProvider:Lcom/miui/home/launcher/model/LauncherAppsProvider;

    iget-object v5, v8, Lcom/miui/home/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-interface {v0, v5}, Lcom/miui/home/launcher/model/LauncherAppsProvider;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0x8

    goto :goto_5

    :cond_15
    const/4 v0, 0x0

    .line 2446
    :goto_5
    iget v5, v8, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->runtimeStatusFlags:I

    or-int/2addr v0, v5

    iput v0, v8, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->runtimeStatusFlags:I

    move v0, v3

    goto :goto_6

    :cond_16
    const/4 v0, 0x0

    :goto_6
    if-nez v8, :cond_17

    .line 2457
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading shortcut "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v20

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " component:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", removing it"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    move-object v11, v6

    goto/16 :goto_9

    .line 2458
    :cond_17
    instance-of v1, v8, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    const-string v5, "invalidClassName"

    if-eqz v1, :cond_1d

    .line 2459
    invoke-static {}, Lcom/miui/home/launcher/progress/ProgressInfoList;->waitingForReady()V

    .line 2460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "load progress shortcut "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2461
    invoke-virtual {v8}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v9, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v1, v9}, Lcom/miui/home/launcher/ScreenUtils;->isAlreadyInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_1c

    .line 2462
    iget-object v1, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 2463
    invoke-static {v1}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v1

    move-object v10, v8

    check-cast v10, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    invoke-virtual {v1, v10, v3}, Lcom/miui/home/launcher/progress/ProgressManager;->bindAppProgressItem(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Z)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, v8, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 2464
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 2466
    iget-object v1, v10, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    const-string v3, "com.android.vending"

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2467
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->getInstallingApps()Ljava/util/HashMap;

    move-result-object v1

    .line 2468
    invoke-virtual {v8}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2469
    invoke-virtual {v8}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/install/PackageInstallerCompat$Info;

    if-eqz v1, :cond_19

    .line 2471
    iget-object v2, v1, Lcom/miui/home/launcher/install/PackageInstallerCompat$Info;->label:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 2472
    iget-object v2, v1, Lcom/miui/home/launcher/install/PackageInstallerCompat$Info;->label:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressTitle:Ljava/lang/String;

    .line 2474
    :cond_18
    iget v2, v1, Lcom/miui/home/launcher/install/PackageInstallerCompat$Info;->progress:I

    iput v2, v10, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressPercent:I

    .line 2475
    iget-object v1, v1, Lcom/miui/home/launcher/install/PackageInstallerCompat$Info;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_19

    .line 2476
    invoke-virtual {v8, v1}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2479
    :cond_19
    iget-object v1, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v8}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v10}, Lcom/miui/home/launcher/LauncherModel;->addProgressInfo(Ljava/lang/String;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V

    .line 2480
    iget-object v1, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/launcher/install/PackageInstallerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/install/PackageInstallerCompat;

    move-result-object v1

    invoke-virtual {v8}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/install/PackageInstallerCompat;->addActiveSession(Ljava/lang/String;)V

    move v5, v0

    move-object v11, v6

    goto :goto_8

    :cond_1a
    const/4 v0, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v10

    move-object/from16 v4, p3

    const/4 v10, 0x0

    move v5, v9

    move-object v11, v6

    move v6, v0

    .line 2482
    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->removeProgressingPackages(Lcom/miui/home/launcher/model/LoaderCursor;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Lcom/miui/home/launcher/RemovedComponentInfoList;ZZ)V

    goto :goto_7

    :cond_1b
    move-object v11, v6

    .line 2486
    iget-object v1, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v8}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v10}, Lcom/miui/home/launcher/LauncherModel;->addProgressInfo(Ljava/lang/String;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V

    move v5, v0

    goto :goto_8

    :cond_1c
    move-object v11, v6

    const/4 v10, 0x0

    .line 2489
    move-object v3, v8

    check-cast v3, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move v5, v9

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->removeProgressingPackages(Lcom/miui/home/launcher/model/LoaderCursor;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Lcom/miui/home/launcher/RemovedComponentInfoList;ZZ)V

    :goto_7
    move v5, v10

    :goto_8
    move v0, v5

    goto :goto_9

    :cond_1d
    move-object v11, v6

    .line 2492
    instance-of v1, v8, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallShortcutInfo;

    if-eqz v1, :cond_1f

    .line 2493
    invoke-virtual {v8}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/miui/home/launcher/ScreenUtils;->isAlreadyInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1f

    if-eqz v4, :cond_1e

    .line 2495
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {v8}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v2, v0}, Lcom/miui/home/launcher/RemovedComponentInfoList;->recordRemovedInfo(Landroid/database/Cursor;Landroid/content/ComponentName;)Z

    :cond_1e
    const-string v0, "market auto install app is already installed"

    .line 2498
    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    return-void

    :cond_1f
    :goto_9
    if-eqz v8, :cond_20

    .line 2504
    invoke-static {v8}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->sync(Lcom/miui/home/launcher/ShortcutInfo;)V

    :cond_20
    if-eqz v0, :cond_21

    .line 2507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadShortcut, bind item to launcher, item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2508
    iget-object v0, v7, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$2000(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    invoke-direct {v7, v0, v8}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->bindItem(Lcom/miui/home/launcher/LauncherModel$Callbacks;Lcom/miui/home/launcher/ItemInfo;)V

    :cond_21
    return-void

    :catch_1
    move-exception v0

    move-object v11, v6

    move-object v1, v0

    const-string v0, "loadShortcut, parseUri error"

    .line 2317
    invoke-static {v11, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private parseWidgetProviderFormIntent(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 1

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 2179
    :try_start_0
    invoke-static {p1, p0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    .line 2183
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2186
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method private reCalculateSpan(Lcom/miui/home/launcher/LauncherAppWidgetInfo;Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)V
    .locals 3

    .line 2302
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v1, p2, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    iget v2, p2, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-eq v0, v2, :cond_1

    .line 2303
    :cond_0
    iput v1, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 2304
    iget p2, p2, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    iput p2, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    .line 2305
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    :cond_1
    return-void
.end method

.method private removePendingAndBindWidget(Lcom/miui/home/launcher/LauncherModel$Callbacks;Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 2

    .line 2920
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/miui/home/launcher/LauncherModel$Callbacks;)Lcom/miui/home/launcher/LauncherModel$Callbacks;

    move-result-object p1

    .line 2921
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/LauncherModel$LoaderTask$13;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$13;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/ItemInfo;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/DeferredHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private removeProgressingPackages(Lcom/miui/home/launcher/model/LoaderCursor;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Lcom/miui/home/launcher/RemovedComponentInfoList;ZZ)V
    .locals 0

    if-nez p4, :cond_0

    if-eqz p5, :cond_2

    :cond_0
    if-eqz p4, :cond_1

    .line 2529
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/model/LoaderCursor;->onRemoveProgressShortcutInfo(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V

    .line 2531
    :cond_1
    iget-object p4, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {p4}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object p4

    invoke-virtual {p2}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/miui/home/launcher/progress/ProgressManager;->removeProgressingInfo(Ljava/lang/String;)V

    .line 2532
    iget-object p4, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object p4, p4, Lcom/miui/home/launcher/LauncherModel;->mProgressingPackages:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_2

    .line 2534
    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p4

    invoke-virtual {p3, p1, p4}, Lcom/miui/home/launcher/RemovedComponentInfoList;->recordRemovedInfo(Landroid/database/Cursor;Landroid/content/ComponentName;)Z

    .line 2537
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "remove progress package:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    .line 2538
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;

    iget-wide p3, p2, Lcom/miui/home/launcher/ItemInfo;->container:J

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/FolderInfo;

    if-eqz p0, :cond_3

    .line 2540
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/FolderInfo;->remove(Lcom/miui/home/launcher/ShortcutInfo;)V

    :cond_3
    return-void
.end method

.method private startBinding(Lcom/miui/home/launcher/LauncherModel$Callbacks;)V
    .locals 3

    .line 2887
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/miui/home/launcher/LauncherModel$Callbacks;)Lcom/miui/home/launcher/LauncherModel$Callbacks;

    move-result-object p1

    .line 2888
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_0

    return-void

    .line 2890
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$3300(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2892
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/LauncherModel$LoaderTask$11;

    invoke-direct {v2, p0, p1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$11;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/library/utils/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 2899
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public dumpState()V
    .locals 3

    .line 2914
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLoader.mLoaderThread.mContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.Model"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoader.mLoaderThread.mIsLaunching="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mIsLaunching:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoader.mLoaderThread.mStopped="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public insertEmptyScreen()V
    .locals 9

    const-string v0, "screenOrder"

    .line 1723
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1724
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/miui/home/launcher/LauncherSettings$Screens;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "screenOrder DESC"

    move-object v3, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 1735
    :cond_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1736
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1737
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1739
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    add-int/lit8 v3, v3, 0x1

    .line 1741
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, 0x0

    .line 1742
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "screenType"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1743
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, v8, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void

    :catchall_0
    move-exception p0

    .line 1739
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1740
    throw p0
.end method

.method isCallbacksValidate(Lcom/miui/home/launcher/LauncherModel$Callbacks;)Z
    .locals 2

    .line 2047
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    return v1

    .line 2049
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p0}, Lcom/miui/home/launcher/LauncherModel;->access$900(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/Application;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-ne p1, p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method isLaunching()Z
    .locals 0

    .line 1536
    iget-boolean p0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mIsLaunching:Z

    return p0
.end method

.method public run()V
    .locals 18

    move-object/from16 v8, p0

    .line 1759
    :try_start_0
    iget-object v0, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0, v8}, Lcom/miui/home/launcher/LauncherModel;->beginLoader(Lcom/miui/home/launcher/LauncherModel$LoaderTask;)Lcom/miui/home/launcher/LauncherModel$LoaderTransaction;

    move-result-object v9
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1760
    :try_start_1
    invoke-static {}, Lcom/miui/home/launcher/backup/LauncherBackupAgent;->isRestoring()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1761
    iput-boolean v1, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    const-string v0, "Launcher.Model"

    const-string v1, "LauncherBackupAgent is restoring, skip load"

    .line 1762
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    if-eqz v9, :cond_0

    .line 1978
    :try_start_2
    invoke-virtual {v9}, Lcom/miui/home/launcher/LauncherModel$LoaderTransaction;->close()V
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-void

    .line 1772
    :cond_1
    :try_start_3
    iget-object v0, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/Application;

    move-result-object v0

    .line 1773
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->boost()V

    const-wide/16 v2, 0x0

    .line 1775
    :goto_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v4

    const-wide/16 v10, 0x32

    if-eqz v4, :cond_1c

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/LauncherProvider;->isReady()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1776
    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->hasBroughtToForeground()Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v4, :cond_2

    goto/16 :goto_e

    .line 1785
    :cond_2
    iget-boolean v2, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    if-eqz v2, :cond_4

    if-eqz v9, :cond_3

    .line 1978
    :try_start_4
    invoke-virtual {v9}, Lcom/miui/home/launcher/LauncherModel$LoaderTransaction;->close()V
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    return-void

    .line 1787
    :cond_4
    :try_start_5
    iget-object v2, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$3300(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    .line 1788
    :try_start_6
    iget-object v3, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v3}, Lcom/miui/home/launcher/LauncherModel;->access$2000(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    const/4 v12, 0x0

    if-eqz v3, :cond_5

    iget-object v3, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v3}, Lcom/miui/home/launcher/LauncherModel;->access$2000(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    goto :goto_1

    :cond_5
    move-object v3, v12

    :goto_1
    if-nez v3, :cond_7

    .line 1790
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-eqz v9, :cond_6

    .line 1978
    :try_start_7
    invoke-virtual {v9}, Lcom/miui/home/launcher/LauncherModel$LoaderTransaction;->close()V
    :try_end_7
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :cond_6
    return-void

    .line 1792
    :cond_7
    :try_start_8
    iget-object v4, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v4}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/library/utils/DeferredHandler;->cancel()V

    .line 1794
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/progress/ProgressManager;->clear()V

    .line 1796
    iget-object v4, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v4}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object v4

    new-instance v5, Lcom/miui/home/launcher/LauncherModel$LoaderTask$4;

    invoke-direct {v5, v8, v3}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$4;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    invoke-virtual {v4, v5}, Lcom/miui/home/library/utils/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1803
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 1805
    :try_start_9
    iget-object v2, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/library/compat/UserManagerCompat;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v2

    iput-boolean v2, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->isUserUnLocked:Z

    .line 1807
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->hasSetDrawerModeEnable()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1808
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v2

    iget-object v3, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-static {v3}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDrawerMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/common/PreferenceUtils;->setDrawerModeEnable(Z)V

    .line 1811
    :cond_8
    invoke-static {}, Lcom/miui/home/launcher/common/SecurityHide;->getSecurityHideItems()V

    .line 1812
    iget-object v2, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mAllAppsProvider:Lcom/miui/home/launcher/model/LauncherAppsProvider;

    invoke-interface {v2}, Lcom/miui/home/launcher/model/LauncherAppsProvider;->loadApps()V

    .line 1813
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->boost()V

    .line 1814
    iget-object v2, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$3500(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/IconCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/IconCache;->clear()V

    .line 1815
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadDBComplete()Z

    move-result v2

    .line 1817
    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/LauncherProvider;->isReady()Z

    move-result v3

    const/4 v13, 0x0

    if-eqz v3, :cond_a

    if-nez v2, :cond_9

    goto :goto_2

    :cond_9
    move v3, v13

    goto :goto_3

    :cond_a
    :goto_2
    move v3, v1

    .line 1818
    :goto_3
    invoke-static {}, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;->getController()Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;->init(Z)V

    .line 1819
    iget-object v4, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/home/launcher/common/Utilities;->getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "LoaderTask, loadDBComplete="

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isNeedLoadDefaultWorkspace="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v6, v2, v12}, Lcom/miui/home/library/MiuiHomeLog284Helper;->fileLoggerLevelFatal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    if-eqz v3, :cond_c

    .line 1822
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->clearAllShortcuts()V

    .line 1823
    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v2

    iget-object v3, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    iget-object v4, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mAllAppsProvider:Lcom/miui/home/launcher/model/LauncherAppsProvider;

    invoke-interface {v4}, Lcom/miui/home/launcher/model/LauncherAppsProvider;->getAllAppsMap()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/home/launcher/LauncherProvider;->loadDefaultWorkspace(Lcom/miui/home/launcher/allapps/LauncherMode;Ljava/util/Map;)V

    .line 1825
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v3

    if-nez v3, :cond_b

    move v3, v1

    goto :goto_4

    :cond_b
    move v3, v13

    :goto_4
    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/common/PreferenceUtils;->setShouldAlignScreen(Z)V

    .line 1826
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v2

    const-string v3, "app_state_db_need_init"

    invoke-static {v2, v3, v13}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1827
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v2

    iget-object v3, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-virtual {v3}, Lcom/miui/home/launcher/allapps/LauncherMode;->getDBCellCountPreKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCurrentScreenCells()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/home/launcher/common/BaseSharePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherProvider;->deleteDupItemInFirstScreenFolder()V

    move v14, v1

    goto :goto_5

    .line 1830
    :cond_c
    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v2

    iget-object v3, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v3}, Lcom/miui/home/launcher/LauncherModel;->access$3500(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/IconCache;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/home/launcher/bigicon/BigIconUtil;->checkBigIconInDB(Landroid/content/ContentProvider;Lcom/miui/home/launcher/IconCache;)V

    .line 1831
    iget-object v2, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    iget-object v3, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    iget-object v4, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v3, v4}, Lcom/miui/home/launcher/DbCellCountHelper;->checkDbData(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;Landroid/content/ContentResolver;)V

    .line 1832
    iget-object v2, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/home/launcher/common/Utilities;->isExperienceDefaultLayout(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "Launcher.Model"

    const-string v3, "merge layout data"

    .line 1833
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherProvider;->mergeLayoutData()V

    .line 1835
    iget-object v2, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "experience_new_layout"

    invoke-static {v2, v3, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_d
    move v14, v13

    .line 1838
    :goto_5
    iget-object v2, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    const-string v3, "pref_key_last_label_locale"

    invoke-static {v2, v3, v12}, Lcom/miui/home/launcher/common/PreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1839
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v3

    .line 1840
    iget-object v4, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v4, v2}, Lcom/miui/home/launcher/LauncherModel;->access$3602(Lcom/miui/home/launcher/LauncherModel;Z)Z

    .line 1842
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->getInstance()Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->initDataSource()V

    .line 1843
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Application;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v2

    .line 1844
    iget-object v3, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-static {v3}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDesktopMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result v3

    const-wide/16 v4, -0x1

    if-eqz v3, :cond_10

    .line 1845
    iget-object v3, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/library/compat/UserManagerCompat;->hasWorkUser()Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "com.vroco.launcher:string/all_app_category_work"

    .line 1846
    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/LauncherProvider;->queryIdByTitle(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-nez v3, :cond_e

    const-string v3, "com.vroco.launcher:string/all_app_category_work"

    .line 1847
    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/LauncherProvider;->addFolder(Ljava/lang/String;)Z

    move-result v3

    const-string v6, "Launcher.Model"

    .line 1848
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "add work folder result:"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_e
    const-string v3, "Launcher.Model"

    const-string/jumbo v6, "work folder already exist"

    .line 1850
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    :goto_6
    sget-object v3, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->STRING_CACHE:Lcom/miui/home/launcher/allapps/StringCache;

    iget-object v6, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Lcom/miui/home/launcher/allapps/StringCache;->loadStrings(Landroid/content/Context;)V

    goto :goto_7

    :cond_f
    const-string v3, "Launcher.Model"

    const-string v6, "not have work user"

    .line 1854
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    :cond_10
    :goto_7
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/common/PreferenceUtils;->getAddRecommendFolderIfNeed()Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v3, "com.vroco.launcher:string/default_folder_title_recommend"

    .line 1859
    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/LauncherProvider;->queryIdByTitle(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-nez v3, :cond_11

    .line 1860
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->insertEmptyScreen()V

    const-string v3, "com.vroco.launcher:string/default_folder_title_recommend"

    .line 1861
    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/LauncherProvider;->addFolder(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "Launcher.Model"

    .line 1862
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add recommend folder result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_11
    const-string v2, "Launcher.Model"

    const-string v3, "recommend folder already exist"

    .line 1864
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    :goto_8
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/miui/home/launcher/common/PreferenceUtils;->setAddRecommendFolderIfNeed(Z)V

    goto :goto_9

    :cond_12
    const-string v2, "Launcher.Model"

    const-string v3, "not is backup restore"

    .line 1868
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    :goto_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    .line 1873
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->updateIconPositionForMiui11Upgrade()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result v2

    if-nez v2, :cond_13

    .line 1874
    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v2

    const-string v3, "com.android.fileexplorer"

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/LauncherProvider;->deleteItemIfInSysToolFolder(Ljava/lang/String;)V

    .line 1875
    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v0

    const-string v2, "com.xiaomi.vipaccount"

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/LauncherProvider;->deleteItemIfInSysToolFolder(Ljava/lang/String;)V

    :cond_13
    const-string v0, "Launcher.Model"

    .line 1877
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "step 0: loading screens:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v15

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    iget-object v0, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$3300(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 1879
    :try_start_a
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadAndBindScreens()V

    .line 1880
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 1881
    :try_start_b
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->boost()V

    const-string v0, "Launcher.Model"

    .line 1883
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "step 1: loading workspace:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v15

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    iget-object v0, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$3300(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 1885
    :try_start_c
    invoke-direct {v8, v14}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadAndBindWorkspace(Z)V

    .line 1886
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 1887
    :try_start_d
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->boost()V

    .line 1889
    iget-boolean v0, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_14

    goto/16 :goto_d

    .line 1893
    :cond_14
    invoke-static {v13}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 1894
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "extra_micloudapp_provisioned"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1893
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "Launcher.Model"

    .line 1896
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "step 2: loading restoring items from cloudAppBackup:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v15

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    new-instance v3, Lcom/miui/home/launcher/LauncherModel$LoaderTask$5;

    invoke-direct {v3, v8}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$5;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;)V

    .line 1903
    iput-boolean v1, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mWaitingForCloudAppRestore:Z

    .line 1904
    iget-object v0, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$3300(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v17

    monitor-enter v17
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 1905
    :try_start_e
    iget-boolean v0, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v0, :cond_15

    .line 1906
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1907
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1908
    iget-object v0, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v0

    iget-object v1, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 1909
    invoke-virtual {v0, v1, v3, v5, v6}, Lcom/miui/home/launcher/progress/ProgressManager;->loadingProgressFromCloudAppBackup(Landroid/content/Context;Ljava/lang/Runnable;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 1910
    iget-object v0, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100125

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1912
    iget-object v0, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object v0

    new-instance v2, Lcom/miui/home/launcher/LauncherModel$LoaderTask$6;

    move-object v1, v2

    move-object v12, v2

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$6;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Ljava/lang/Runnable;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Lcom/miui/home/library/utils/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1932
    :cond_15
    monitor-exit v17

    goto :goto_a

    :catchall_0
    move-exception v0

    monitor-exit v17
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :try_start_f
    throw v0

    :cond_16
    :goto_a
    move v0, v13

    .line 1935
    :goto_b
    iget-boolean v1, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mWaitingForCloudAppRestore:Z

    if-eqz v1, :cond_17

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_17

    iget-boolean v1, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v1, :cond_17

    .line 1936
    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v0, v0, 0x32

    goto :goto_b

    :cond_17
    const-string v0, "Launcher.Model"

    .line 1940
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "step 3: loading missing icons:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v15

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    iget-object v0, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$3300(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 1942
    :try_start_10
    invoke-direct {v8, v14}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadAndBindMissingIcons(Z)V

    .line 1943
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :try_start_11
    const-string v0, "Launcher.Model"

    .line 1945
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "step 4: loading all apps:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v15

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    iget-object v0, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$3300(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 1947
    :try_start_12
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadAllApps()V

    .line 1948
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 1949
    :try_start_13
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->boost()V

    .line 1951
    iget-boolean v0, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_18

    goto :goto_d

    :cond_18
    const-string v0, "Launcher.Model"

    .line 1955
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish loading using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v15

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms , isUserUnLocked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->isUserUnLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    iget-object v0, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$3300(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 1957
    :try_start_14
    iget-object v0, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$2000(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$2000(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    goto :goto_c

    :cond_19
    const/4 v12, 0x0

    :goto_c
    if-nez v12, :cond_1b

    .line 1959
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    if-eqz v9, :cond_1a

    .line 1978
    :try_start_15
    invoke-virtual {v9}, Lcom/miui/home/launcher/LauncherModel$LoaderTransaction;->close()V
    :try_end_15
    .catch Ljava/util/concurrent/CancellationException; {:try_start_15 .. :try_end_15} :catch_1
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0

    :cond_1a
    return-void

    .line 1962
    :cond_1b
    :try_start_16
    iget-object v0, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object v0

    new-instance v2, Lcom/miui/home/launcher/LauncherModel$LoaderTask$7;

    invoke-direct {v2, v8, v12, v14}, Lcom/miui/home/launcher/LauncherModel$LoaderTask$7;-><init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;Z)V

    invoke-virtual {v0, v2}, Lcom/miui/home/library/utils/DeferredHandler;->postIdle(Ljava/lang/Runnable;)V

    .line 1973
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 1976
    :goto_d
    :try_start_17
    iput-boolean v13, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    .line 1977
    invoke-virtual {v9}, Lcom/miui/home/launcher/LauncherModel$LoaderTransaction;->commit()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    .line 1978
    :try_start_18
    invoke-virtual {v9}, Lcom/miui/home/launcher/LauncherModel$LoaderTransaction;->close()V
    :try_end_18
    .catch Ljava/util/concurrent/CancellationException; {:try_start_18 .. :try_end_18} :catch_1
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0

    goto :goto_10

    :catchall_1
    move-exception v0

    .line 1973
    :try_start_19
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    :try_start_1a
    throw v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    :catchall_2
    move-exception v0

    .line 1948
    :try_start_1b
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    :try_start_1c
    throw v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    :catchall_3
    move-exception v0

    .line 1943
    :try_start_1d
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    :try_start_1e
    throw v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    :catchall_4
    move-exception v0

    .line 1886
    :try_start_1f
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_4

    :try_start_20
    throw v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    :catchall_5
    move-exception v0

    .line 1880
    :try_start_21
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_5

    :try_start_22
    throw v0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_7

    :catchall_6
    move-exception v0

    .line 1803
    :try_start_23
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_6

    :try_start_24
    throw v0

    :cond_1c
    :goto_e
    const-wide/16 v4, 0x3e8

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1d

    .line 1779
    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v4

    if-nez v4, :cond_1d

    .line 1780
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    :cond_1d
    add-long/2addr v2, v10

    .line 1783
    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_7

    goto/16 :goto_0

    :catchall_7
    move-exception v0

    move-object v1, v0

    if-eqz v9, :cond_1e

    .line 1759
    :try_start_25
    invoke-virtual {v9}, Lcom/miui/home/launcher/LauncherModel$LoaderTransaction;->close()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_8

    goto :goto_f

    :catchall_8
    move-exception v0

    move-object v2, v0

    :try_start_26
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1e
    :goto_f
    throw v1
    :try_end_26
    .catch Ljava/util/concurrent/CancellationException; {:try_start_26 .. :try_end_26} :catch_1
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_0

    :catch_0
    move-exception v0

    .line 1982
    iget-boolean v1, v8, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v1, :cond_1f

    goto :goto_10

    .line 1983
    :cond_1f
    throw v0

    :catch_1
    const-string v0, "Launcher.Model"

    const-string v1, "Loader stopped, ignore"

    .line 1979
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    return-void
.end method

.method public stopLocked()V
    .locals 2

    const-string v0, "Launcher.Model"

    const-string/jumbo v1, "stop LoaderTask"

    .line 2012
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2013
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    return-void
.end method

.method tryGetCallbacks(Lcom/miui/home/launcher/LauncherModel$Callbacks;)Lcom/miui/home/launcher/LauncherModel$Callbacks;
    .locals 3

    .line 2024
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2028
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$3300(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2029
    :try_start_0
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$2000(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2030
    monitor-exit v0

    return-object v1

    .line 2033
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p0}, Lcom/miui/home/launcher/LauncherModel;->access$2000(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    if-eq p0, p1, :cond_2

    .line 2035
    monitor-exit v0

    return-object v1

    :cond_2
    if-nez p0, :cond_3

    const-string p0, "Launcher.Model"

    const-string p1, "no mCallbacks"

    .line 2038
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    monitor-exit v0

    return-object v1

    .line 2042
    :cond_3
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 2043
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
