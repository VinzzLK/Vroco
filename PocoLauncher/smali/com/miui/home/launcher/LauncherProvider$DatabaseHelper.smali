.class public Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/LauncherProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final WIDGET_BLACK_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mContentvalues:Landroid/content/ContentValues;

.field private static mSystemCreatedFolderTitles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private final mContext:Landroid/content/Context;

.field private mCreatedFirstTime:Z

.field private mDatabaseReady:Z

.field private mMaxId:Ljava/util/concurrent/atomic/AtomicLong;

.field private mPresetsContainerId:J


# direct methods
.method public static synthetic $r8$lambda$U-nRphGkFt3a3mh3EHkh73FUeFI(Ljava/lang/InterruptedException;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->lambda$onUpgrade$1(Ljava/lang/InterruptedException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YYORAn-cCuBR9qE3Dlq9glV2csU(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->lambda$deleteIllegalWidgets$2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$k3NRxTH44SyP5lyMSY7LiRau83I(Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->lambda$onUpgrade$0(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 839
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    .line 842
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->WIDGET_BLACK_LIST:Ljava/util/List;

    const-string v1, "com.kuaishou.nebula/com.yxcorp.gifshow.motivate.MotivateAppWidgetProvider"

    .line 845
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.sankuai.meituan/com.meituan.android.hades.impl.widget.StickyWidget"

    .line 846
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.smile.gifmaker/com.yxcorp.gifshow.motivate.MotivateAppWidgetProvider"

    .line 847
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 852
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x3c

    .line 851
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 835
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mMaxId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 836
    iput-wide v2, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mPresetsContainerId:J

    const/4 v0, 0x1

    .line 837
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mDatabaseReady:Z

    const/4 v0, 0x0

    .line 838
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mCreatedFirstTime:Z

    .line 854
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 855
    new-instance v4, Landroid/appwidget/AppWidgetHost;

    const/16 v5, 0x400

    invoke-direct {v4, p1, v5}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    move v4, v0

    :cond_0
    :goto_0
    const-string v5, "Launcher.LauncherProvider"

    if-nez v1, :cond_1

    .line 860
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    const-string v7, "get writable database fail"

    .line 862
    invoke-static {v5, v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v5, 0x32

    .line 863
    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0xa

    if-le v4, v5, :cond_0

    .line 866
    invoke-static {p1, v0}, Lcom/miui/home/launcher/DeviceConfig;->removeInvalidateDatabase(Landroid/content/Context;Z)V

    goto :goto_0

    .line 872
    :cond_1
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->isDatabaseLegal(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 873
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->fixFavoritesTableIfNeed(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 874
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->tryRemoveDupIdRows(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 875
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mMaxId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    cmp-long p1, v6, v2

    if-nez p1, :cond_3

    .line 876
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    :cond_2
    const-string p1, "database illegal"

    .line 879
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mDatabaseReady:Z

    .line 882
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "create database, database name = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private UpdateDatabaseClockProductId(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 2248
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getClockValues()Landroid/content/ContentValues;

    move-result-object p0

    const-string v0, "d7b7cf12-29ab-4cd6-afe5-f006d5112d48"

    const-string v1, "bc128052-1c50-4da8-b920-0728aa957a98"

    const-string v2, "4"

    .line 2250
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "favorites"

    const-string v2, "product_id=? OR product_id=? AND _id<=?"

    invoke-static {p1, v1, p0, v2, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyUpdateDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;I)V
    .locals 0

    .line 829
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->dumpDefaultWorkspace(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;)Landroid/content/Context;
    .locals 0

    .line 829
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;)Landroid/appwidget/AppWidgetHost;
    .locals 0

    .line 829
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 829
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;I)Ljava/util/List;
    .locals 0

    .line 829
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryPackageNameByItemType(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/pm/LauncherActivityInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Z)J
    .locals 4

    .line 2900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addAppShortcut packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " className="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.LauncherProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, -0x1

    if-eqz p6, :cond_0

    .line 2904
    new-instance p2, Landroid/content/ComponentName;

    invoke-direct {p2, p4, p5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_2

    .line 2907
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to add favorite: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2909
    invoke-static {}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getInstance()Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->canAutoInstall(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2910
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "add auto install info "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2911
    invoke-static {p0, p1, p4}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAutoInstallShortcutInfo(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_1
    return-wide v2

    .line 2915
    :cond_2
    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    .line 2916
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "add favorite: "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v1, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2918
    :goto_0
    new-instance p5, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p6

    invoke-direct {p5, p2, p6}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-static {p5}, Lcom/miui/home/launcher/LauncherHideApp;->isHideApp(Lcom/miui/home/launcher/util/ComponentKey;)Z

    move-result p5

    if-eqz p5, :cond_3

    .line 2919
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, " app was hidden = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v2

    .line 2922
    :cond_3
    invoke-virtual {p3, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p2, 0x10200000

    .line 2923
    invoke-virtual {p3, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 p2, 0x0

    .line 2925
    invoke-virtual {p3, p2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p3

    const-string p5, "intent"

    invoke-virtual {p1, p5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2926
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "itemType"

    invoke-virtual {p1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "iconPackage"

    .line 2927
    invoke-virtual {p1, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 2928
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string/jumbo p4, "spanX"

    invoke-virtual {p1, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2929
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo p3, "spanY"

    invoke-virtual {p1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2930
    invoke-static {}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->getFavoritesItemNewId()J

    move-result-wide p2

    .line 2931
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    const-string p5, "_id"

    invoke-virtual {p1, p5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p4, 0x0

    const-string p5, "favorites"

    .line 2932
    invoke-static {p0, p5, p4, p1}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-wide p2
.end method

.method public static addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Z)J
    .locals 7

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 2892
    :cond_0
    invoke-static {p4, p5, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getAppShortcutActivityInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object p2

    :goto_0
    move-object v2, p2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 2894
    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/pm/LauncherActivityInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide p0

    return-wide p0
.end method

.method private addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Intent;JILandroid/content/pm/PackageManager;)V
    .locals 6

    .line 2428
    sget-object v2, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 2429
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "container"

    invoke-virtual {v2, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-ltz p5, :cond_0

    .line 2431
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "cellX"

    invoke-virtual {v2, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p6

    move-object v5, p2

    .line 2432
    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    return-void
.end method

.method private addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z
    .locals 8

    if-eqz p3, :cond_0

    const/16 p0, 0xc

    .line 2874
    invoke-virtual {p3, p0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2875
    :cond_0
    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    move-object v4, p0

    const/4 p0, 0x1

    if-eqz p3, :cond_1

    .line 2876
    invoke-virtual {p3, p0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2877
    :cond_1
    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v5, v0

    const/4 v7, 0x0

    if-eqz p3, :cond_2

    const/16 v0, 0x10

    .line 2878
    invoke-virtual {p3, v0, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    if-eqz p3, :cond_2

    move v6, p0

    goto :goto_2

    :cond_2
    move v6, v7

    :goto_2
    move-object v0, p1

    move-object v1, p2

    move-object v2, p4

    move-object v3, p5

    .line 2879
    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-ltz p1, :cond_3

    return p0

    :cond_3
    return v7
.end method

.method private static addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;IILandroid/content/Context;Landroid/appwidget/AppWidgetHost;)J
    .locals 1

    const-string p5, "Launcher.LauncherProvider"

    :try_start_0
    const-string p6, "itemType"

    const/4 v0, 0x4

    .line 3052
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p6, "spanX"

    .line 3053
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p3, "spanY"

    .line 3054
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "appWidgetId"

    const/4 p4, -0x1

    .line 3055
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "appWidgetProvider"

    .line 3056
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "favorites"

    const/4 p4, 0x0

    .line 3057
    invoke-static {p0, p3, p4, p1}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    .line 3058
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "addAppWidget "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p5, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    const-string p1, "Problem allocating appWidgetId"

    .line 3061
    invoke-static {p5, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public static addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;IILandroid/content/Context;Landroid/appwidget/AppWidgetHost;Landroid/os/Bundle;)J
    .locals 11

    move-object v0, p2

    move-object v1, p3

    const-wide/16 v2, -0x1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3041
    :cond_0
    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p7

    .line 3042
    invoke-static {v0, v6}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->isProviderAvailable(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v4, p0

    move-object v5, p1

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 3043
    invoke-static/range {v4 .. v10}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;IILandroid/content/Context;Landroid/appwidget/AppWidgetHost;)J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method private static addAutoInstallShortcutInfo(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)J
    .locals 7

    .line 2937
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    .line 2938
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.LAUNCHER"

    .line 2939
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "invalidClassName"

    invoke-direct {v2, p2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2940
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10200000

    .line 2941
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    .line 2943
    invoke-virtual {v1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "intent"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2944
    invoke-static {}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getInstance()Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;

    move-result-object v1

    invoke-virtual {v1, p2, v3}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getPackageTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb

    .line 2945
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "itemType"

    invoke-virtual {p1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "iconPackage"

    .line 2946
    invoke-virtual {p1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    .line 2947
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "iconType"

    invoke-virtual {p1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v2, 0x10

    .line 2948
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "itemFlags"

    invoke-virtual {p1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2949
    invoke-static {}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getInstance()Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;

    move-result-object v2

    invoke-virtual {v2, p2, v3}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getPackageIcon(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "iconResource"

    invoke-virtual {p1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 2950
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v4, "spanX"

    invoke-virtual {p1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "spanY"

    .line 2951
    invoke-virtual {p1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2952
    invoke-static {}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->getFavoritesItemNewId()J

    move-result-wide v4

    .line 2953
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v6, "_id"

    invoke-virtual {p1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2954
    invoke-static {v0}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v0

    const-string v2, "com.miui.core"

    invoke-virtual {v0, p2, v1, v2}, Lcom/miui/home/launcher/progress/ProgressManager;->recordProgressInfo(Ljava/lang/String;ILjava/lang/String;)V

    const-string p2, "favorites"

    .line 2955
    invoke-static {p0, p2, v3, p1}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-wide v4
.end method

.method public static addClock2x4(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 1

    const/4 v0, 0x6

    .line 3019
    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addNoMtzGadget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static addFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;III)J
    .locals 4

    const-string v0, "com.vroco.launcher:string/default_folder_title_claro"

    .line 2839
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "label"

    const-string/jumbo v2, "title"

    if-eqz v0, :cond_0

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MX"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "com.vroco.launcher:string/default_folder_title_telcel"

    .line 2840
    invoke-virtual {p1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2841
    invoke-virtual {p1, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2843
    :cond_0
    invoke-virtual {p1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2844
    invoke-virtual {p1, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2846
    :goto_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "itemType"

    invoke-virtual {p1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2847
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo p3, "spanX"

    invoke-virtual {p1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2848
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo p3, "spanY"

    invoke-virtual {p1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p2, 0x0

    const-string p3, "favorites"

    .line 2849
    invoke-static {p0, p3, p2, p1}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static addNoMtzGadget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)J
    .locals 3

    .line 3027
    invoke-static {p2}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getNoMtzInfo(I)Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object v0

    .line 3028
    iget v1, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "spanX"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3029
    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "spanY"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, 0x5

    .line 3030
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "itemType"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3031
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "appWidgetId"

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "favorites"

    const/4 v0, 0x0

    .line 3032
    invoke-static {p0, p2, v0, p1}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method private addShortcut(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z
    .locals 5

    const/4 p0, 0x0

    .line 3123
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez p2, :cond_0

    return p0

    .line 3121
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3122
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "iconType"

    .line 3123
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "iconResource"

    .line 3124
    invoke-virtual {v2, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x3a

    .line 3125
    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {p2, p0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string v4, "iconPackage"

    invoke-virtual {v2, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3126
    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p7, "container"

    invoke-virtual {v2, p7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3127
    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p7, "cellX"

    invoke-virtual {v2, p7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3128
    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p7, "cellY"

    invoke-virtual {v2, p7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p2, 0x1

    .line 3129
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    const-string/jumbo p8, "spanX"

    invoke-virtual {v2, p8, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3130
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    const-string/jumbo p8, "spanY"

    invoke-virtual {v2, p8, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3131
    invoke-virtual {v1, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3132
    invoke-virtual {v1, p4, p5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p3, 0x10200000

    .line 3133
    invoke-virtual {v1, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p3, "android.intent.category.DEFAULT"

    .line 3135
    invoke-virtual {v1, p3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3136
    invoke-virtual {v1, p0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p0

    const-string p3, "intent"

    invoke-virtual {v2, p3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "title"

    .line 3137
    invoke-virtual {v2, p0, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3138
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p3, "itemType"

    invoke-virtual {v2, p3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3139
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3140
    invoke-static {}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->getFavoritesItemNewId()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p3, "_id"

    invoke-virtual {v2, p3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p0, 0x0

    const-string p3, "favorites"

    .line 3141
    invoke-static {p1, p3, p0, v2}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return p2
.end method

.method private createScreensTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 30

    move-object/from16 v9, p1

    const-string v10, "="

    const-string v11, " | "

    const-string v12, "container"

    const-string v13, "COUNT()"

    const-string v14, " AND "

    .line 1278
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v0, "DROP TABLE IF EXISTS screens"

    .line 1280
    invoke-static {v9, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE screens (_id INTEGER PRIMARY KEY,title TEXT,screenOrder INTEGER NOT NULL DEFAULT -1,screenType INTEGER NOT NULL DEFAULT 0);"

    .line 1282
    invoke-static {v9, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v2, "favorites"

    const-string v0, "MAX(screen)"

    .line 1290
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    if-eqz v8, :cond_a

    .line 1295
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v7, 0x0

    .line 1296
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v6, 0x1

    add-int/lit8 v5, v0, 0x1

    .line 1297
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1298
    new-array v3, v5, [J

    move-object/from16 v0, p0

    .line 1299
    iget-object v0, v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0034

    .line 1300
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    move v2, v0

    :goto_0
    const-wide/16 v16, -0x1

    if-ge v2, v5, :cond_8

    .line 1301
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    const-string v0, "screenOrder"

    .line 1302
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1306
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    const-string v1, "Launcher.LauncherProvider"

    if-eqz v0, :cond_3

    :try_start_2
    const-string v0, "favorites"

    .line 1308
    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v18

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :try_start_3
    const-string/jumbo v7, "spanX+spanY>2 AND screen="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, -0x64

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v15, v1

    move-object/from16 v1, p1

    move/from16 v26, v2

    move-object v2, v0

    move-object/from16 v27, v3

    move-object/from16 v3, v18

    move-object/from16 v28, v4

    move-object v4, v6

    move/from16 v18, v5

    move-object/from16 v5, v21

    move-object/from16 v6, v22

    move v0, v7

    move-object/from16 v7, v23

    move-object/from16 v19, v8

    move-object/from16 v8, v24

    :try_start_4
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    const-string v2, "favorites"

    .line 1312
    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "spanX=1 AND spanY=1 AND screen="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move/from16 v7, v26

    :try_start_6
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "itemType"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "!="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/16 v20, 0x0

    move-object/from16 v1, p1

    move/from16 v29, v7

    move-object v7, v0

    move-object/from16 p0, v8

    move-object/from16 v8, v20

    :try_start_7
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1317
    :try_start_8
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object/from16 v2, p0

    const/4 v3, 0x0

    .line 1318
    :try_start_9
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1319
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1320
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1329
    :try_start_a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1332
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    goto/16 :goto_d

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v2, p0

    :goto_2
    move-object/from16 v25, v1

    move-object v15, v2

    goto/16 :goto_c

    :catch_1
    move-exception v0

    move-object/from16 v2, p0

    const/4 v3, 0x0

    :goto_3
    move-object v8, v2

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v2, p0

    const/4 v3, 0x0

    move-object v8, v2

    goto :goto_6

    :catch_3
    move-exception v0

    move/from16 v29, v7

    move-object v2, v8

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v2, v8

    :goto_4
    move-object v15, v2

    goto :goto_9

    :catch_4
    move-exception v0

    move-object v2, v8

    move/from16 v29, v26

    :goto_5
    const/4 v3, 0x0

    :goto_6
    const/4 v1, 0x0

    goto :goto_b

    :catchall_4
    move-exception v0

    goto :goto_8

    :catch_5
    move-exception v0

    move/from16 v29, v26

    goto :goto_7

    :catch_6
    move-exception v0

    move-object v15, v1

    move/from16 v29, v2

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    move/from16 v18, v5

    move-object/from16 v19, v8

    :goto_7
    const/4 v3, 0x0

    goto :goto_a

    :catchall_5
    move-exception v0

    move-object/from16 v19, v8

    :goto_8
    const/4 v15, 0x0

    :goto_9
    const/16 v25, 0x0

    goto :goto_c

    :catch_7
    move-exception v0

    move-object v15, v1

    move/from16 v29, v2

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    move/from16 v18, v5

    move v3, v7

    move-object/from16 v19, v8

    :goto_a
    const/4 v1, 0x0

    const/4 v8, 0x0

    :goto_b
    :try_start_b
    const-string v2, "createScreensTable fail"

    .line 1325
    invoke-static {v15, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1326
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    if-eqz v8, :cond_0

    .line 1329
    :try_start_c
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    if-eqz v1, :cond_4

    goto :goto_1

    :catchall_6
    move-exception v0

    move-object/from16 v25, v1

    move-object v15, v8

    :goto_c
    if-eqz v15, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v25, :cond_2

    .line 1332
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 1334
    :cond_2
    throw v0

    :cond_3
    move-object v15, v1

    move/from16 v29, v2

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    move/from16 v18, v5

    move v3, v7

    move-object/from16 v19, v8

    .line 1336
    :cond_4
    :goto_d
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result v0

    const/4 v7, -0x1

    move/from16 v1, v29

    if-eqz v0, :cond_6

    if-nez v1, :cond_6

    .line 1337
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/oldman/ElderlyManUtils;->isShowQuickCallCellLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    goto :goto_e

    :cond_5
    move v0, v7

    goto :goto_e

    :cond_6
    move v0, v3

    :goto_e
    if-ne v0, v7, :cond_7

    .line 1344
    aput-wide v16, v27, v1

    move-object/from16 v5, v28

    const/4 v4, 0x0

    goto :goto_f

    :cond_7
    const-string v2, "screenType"

    .line 1346
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v5, v28

    invoke-virtual {v5, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "screens"

    const/4 v4, 0x0

    .line 1347
    invoke-static {v9, v2, v4, v5}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    aput-wide v6, v27, v1

    .line 1349
    :goto_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createScreensTable, ["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v6, v27, v1

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v1, 0x1

    move v7, v3

    move-object v4, v5

    move/from16 v5, v18

    move-object/from16 v8, v19

    move-object/from16 v3, v27

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_8
    move-object/from16 v27, v3

    move/from16 v18, v5

    move v1, v6

    move v3, v7

    move-object/from16 v19, v8

    move-object v5, v4

    add-int/lit8 v0, v18, -0x1

    :goto_10
    if-ltz v0, :cond_b

    .line 1352
    aget-wide v6, v27, v0

    cmp-long v2, v6, v16

    if-nez v2, :cond_9

    goto :goto_11

    .line 1354
    :cond_9
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    const-string v2, "screen"

    .line 1355
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "favorites"

    const-string v4, "screen=?"

    new-array v6, v1, [Ljava/lang/String;

    .line 1360
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 1356
    invoke-static {v9, v2, v5, v4, v6}, Lcom/miui/home/launcher/LauncherProvider;->safelyUpdateDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_11
    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    :catchall_7
    move-exception v0

    move-object/from16 v19, v8

    goto :goto_12

    :cond_a
    move-object/from16 v19, v8

    .line 1363
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    if-eqz v19, :cond_c

    .line 1366
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1368
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_8
    move-exception v0

    :goto_12
    move-object/from16 v15, v19

    goto :goto_13

    :catchall_9
    move-exception v0

    const/4 v4, 0x0

    move-object v15, v4

    :goto_13
    if-eqz v15, :cond_d

    .line 1366
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1368
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1369
    throw v0
.end method

.method private deleteClockBack()V
    .locals 4

    .line 2295
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->TEMP_SHARE_MODE_FOR_WORLD_READABLE:I

    const-string v1, "clock_bak"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    .line 2296
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2297
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2298
    array-length v1, v0

    if-eqz v1, :cond_0

    .line 2299
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2300
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2303
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method private deleteEmptyScreen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14

    const-string p0, "_id="

    const-string v0, "screenType"

    const-string v1, "_id"

    const/4 v2, 0x0

    :try_start_0
    const-string v4, "screens"

    .line 2311
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2313
    :try_start_1
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 2314
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2315
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2316
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 2317
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 2318
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2319
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2320
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2321
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2322
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2324
    :cond_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 2325
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2328
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    const-string v7, "favorites"

    const-string v0, "screen"

    .line 2331
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 2333
    :cond_2
    :goto_1
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 2334
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 2335
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2336
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2339
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2342
    :try_start_4
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2343
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2344
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2345
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2346
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2351
    :cond_5
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2352
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v1, v2

    :cond_6
    :goto_3
    :try_start_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v6, "screens"

    const-string v5, "screenOrder"

    .line 2353
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2356
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2357
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v6, "screens"

    .line 2358
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v6, v4, v2}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2359
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UPDATE screens SET screenOrder=screenOrder-1 WHERE screenOrder>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :cond_7
    move-object v2, v1

    goto :goto_4

    :catchall_0
    move-exception p0

    move-object v2, v1

    goto :goto_5

    :cond_8
    :goto_4
    if-eqz v2, :cond_9

    .line 2367
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_9
    return-void

    :catchall_1
    move-exception p0

    move-object v2, v0

    goto :goto_5

    :catchall_2
    move-exception p0

    move-object v2, v3

    goto :goto_5

    :catchall_3
    move-exception p0

    :goto_5
    if-eqz v2, :cond_a

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2369
    :cond_a
    throw p0
.end method

.method private deleteIllegalWidgets(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    const-string v0, ")"

    .line 2186
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2188
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->WIDGET_BLACK_LIST:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$$ExternalSyntheticLambda2;->INSTANCE:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$$ExternalSyntheticLambda2;

    .line 2189
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    const-string v2, ", "

    .line 2190
    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT appWidgetProvider FROM favorites WHERE appWidgetProvider IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2194
    invoke-direct {p0, p1, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->trackDeleteWidgets(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2196
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM favorites WHERE appWidgetProvider IN ("

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "deleteIllegalWidgets"

    .line 2199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing DELETE SQL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    invoke-static {p1, p0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2201
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string v0, "Launcher.LauncherProvider"

    .line 2203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteIllegalWidgets exception --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2205
    :goto_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :goto_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2206
    throw p0
.end method

.method private dumpDefaultWorkspace(I)V
    .locals 3

    .line 2716
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2717
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2718
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2717
    invoke-direct {p0, v0, v1, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->dumpDefaultWorkspaceImpl(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2719
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const/16 p1, 0x64

    const-string v0, "dump default workspace succeeded."

    invoke-static {p0, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private dumpDefaultWorkspaceImpl(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "iconResource"

    const-string v3, "folder"

    const-string v4, "default"

    const-string v5, "favorites"

    const-string v6, "launcher"

    const/4 v8, 0x0

    .line 2731
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    .line 2732
    new-instance v10, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;

    invoke-direct {v10}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;-><init>()V

    .line 2733
    new-instance v11, Ljava/io/FileOutputStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p2

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v11, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "utf-8"

    .line 2734
    invoke-virtual {v10, v11, v9}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2735
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v10, v8, v9}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2736
    invoke-virtual {v10, v8, v5}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v9, "xmlns:launcher"

    const-string v12, "http://schemas.android.com/apk/res-auto"

    .line 2737
    invoke-virtual {v10, v8, v9, v12}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2738
    invoke-virtual {v10, v8, v4}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v9, "screen"

    .line 2739
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v6, v9, v12}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2740
    invoke-virtual {v10, v8, v4}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2742
    iget-object v4, v1, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v9, p1

    invoke-virtual {v4, v9}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x1

    .line 2743
    invoke-static {v4, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v12, "SELECT * FROM favorites WHERE itemType=2 ORDER BY screen ASC, cellY ASC, cellX ASC"

    .line 2744
    invoke-virtual {v4, v12, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 2748
    :goto_0
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const-string/jumbo v14, "true"

    const-string/jumbo v15, "title"

    if-eqz v13, :cond_1

    .line 2749
    :try_start_2
    invoke-virtual {v10, v8, v3}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v13, "_id"

    .line 2750
    invoke-interface {v12, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    int-to-long v7, v13

    move-object v13, v10

    .line 2751
    iget-wide v9, v1, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mPresetsContainerId:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    const-string v7, "presets_container"

    move-object v8, v13

    .line 2752
    invoke-virtual {v8, v6, v7, v14}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    :cond_0
    move-object v8, v13

    .line 2754
    :goto_1
    invoke-interface {v12, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v6, v15, v7}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2755
    invoke-direct {v1, v12, v8, v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->dumpWorkspaceWritePos(Landroid/database/Cursor;Lcom/miui/launcher/utils/LauncherFastXmlSerializer;Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 2756
    invoke-virtual {v8, v7, v3}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object v10, v8

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    move-object v8, v10

    .line 2758
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    const-string v3, "SELECT * FROM favorites WHERE itemType!=2 ORDER BY screen ASC, cellY ASC, cellX ASC"
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v7, 0x0

    .line 2761
    :try_start_4
    invoke-virtual {v4, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2765
    :goto_2
    :try_start_5
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "itemType"

    .line 2766
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v7, 0x5

    if-eqz v4, :cond_6

    const/4 v9, 0x1

    if-eq v4, v9, :cond_5

    if-eq v4, v7, :cond_2

    goto :goto_3

    :cond_2
    const-string v9, "appWidgetId"

    .line 2777
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_3

    const-string v9, "search"

    goto :goto_4

    :cond_3
    const/4 v10, 0x6

    if-ne v9, v10, :cond_4

    const-string v9, "clock2x4"

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v9, 0x0

    goto :goto_4

    :cond_5
    const-string/jumbo v9, "shortcut"

    goto :goto_4

    :cond_6
    const-string v9, "favorite"

    :goto_4
    if-nez v9, :cond_7

    goto :goto_2

    :cond_7
    const/4 v10, 0x0

    .line 2788
    invoke-virtual {v8, v10, v9}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v10, 0x1

    if-eq v4, v10, :cond_a

    if-nez v4, :cond_8

    goto :goto_6

    :cond_8
    if-ne v4, v7, :cond_9

    .line 2808
    invoke-direct {v1, v3, v8, v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->dumpWorkspaceWritePos(Landroid/database/Cursor;Lcom/miui/launcher/utils/LauncherFastXmlSerializer;Ljava/lang/String;)V

    :cond_9
    :goto_5
    const/4 v4, 0x0

    goto/16 :goto_7

    :cond_a
    :goto_6
    const-string v7, "intent"

    .line 2790
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    invoke-static {v7, v10}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 2791
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    if-eqz v10, :cond_9

    const-string v10, "packageName"

    .line 2792
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v6, v10, v12}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v10, "className"

    .line 2793
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v6, v10, v12}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2794
    invoke-virtual {v7}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/miui/home/launcher/LauncherSettings;->isRetainedPackage(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    const-string v10, "retained"

    .line 2795
    invoke-virtual {v8, v6, v10, v14}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2797
    :cond_b
    invoke-direct {v1, v3, v8, v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->dumpWorkspaceWritePos(Landroid/database/Cursor;Lcom/miui/launcher/utils/LauncherFastXmlSerializer;Ljava/lang/String;)V

    const/4 v10, 0x1

    if-ne v4, v10, :cond_9

    .line 2799
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v6, v15, v4}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "action"

    .line 2800
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v6, v4, v10}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2801
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v6, v2, v4}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2802
    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_9

    const-string/jumbo v4, "uri"

    .line 2803
    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v6, v4, v7}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_5

    .line 2810
    :goto_7
    invoke-virtual {v8, v4, v9}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_2

    :cond_c
    const/4 v1, 0x0

    .line 2812
    invoke-virtual {v8, v1, v5}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2813
    invoke-virtual {v8}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->endDocument()V

    .line 2814
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2821
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x1

    return v1

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v8, v3

    goto :goto_d

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v8, v3

    goto :goto_c

    :catchall_1
    move-exception v0

    move-object v1, v7

    goto :goto_8

    :catch_1
    move-exception v0

    move-object v1, v7

    goto :goto_9

    :catchall_2
    move-exception v0

    const/4 v1, 0x0

    :goto_8
    move-object v8, v1

    goto :goto_a

    :catch_2
    move-exception v0

    const/4 v1, 0x0

    :goto_9
    move-object v8, v1

    goto :goto_b

    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object v8, v12

    goto :goto_d

    :catch_3
    move-exception v0

    move-object v1, v0

    move-object v8, v12

    goto :goto_c

    :catchall_4
    move-exception v0

    move-object v1, v8

    :goto_a
    move-object v1, v0

    goto :goto_d

    :catch_4
    move-exception v0

    move-object v1, v8

    :goto_b
    move-object v1, v0

    .line 2818
    :goto_c
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-eqz v8, :cond_d

    .line 2821
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_d
    const/4 v1, 0x0

    return v1

    :catchall_5
    move-exception v0

    goto :goto_a

    :goto_d
    if-eqz v8, :cond_e

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2823
    :cond_e
    throw v1
.end method

.method private dumpWorkspaceWritePos(Landroid/database/Cursor;Lcom/miui/launcher/utils/LauncherFastXmlSerializer;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "container"

    .line 2828
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    const-string p0, "screen"

    .line 2830
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, p0, v0}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 2832
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, p0, v0}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_0
    const-string p0, "cellX"

    .line 2834
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "x"

    invoke-virtual {p2, p3, v0, p0}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string p0, "cellY"

    .line 2835
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "y"

    invoke-virtual {p2, p3, p1, p0}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static fillSerialNumber(Landroid/content/ContentValues;)V
    .locals 2

    .line 2706
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v0

    .line 2707
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/library/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    .line 2708
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "profileId"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method private fixFavoritesTableIfNeed(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 919
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isDatabaseIntegrityOk()Z

    move-result p0

    const-string v0, "Launcher.LauncherProvider"

    if-nez p0, :cond_0

    .line 920
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "db is not integrity, try fix table favorites, beginTime="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "create table favorites2 as select * from favorites;"

    .line 921
    invoke-static {p1, p0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string p0, "DROP TABLE favorites;"

    .line 922
    invoke-static {p1, p0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string p0, "ALTER TABLE favorites2 RENAME TO favorites;"

    .line 923
    invoke-static {p1, p0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 924
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "fixFavoritesTableIfNeed, endTime="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "db is integrity"

    .line 926
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static getAppShortcutActivityInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/pm/LauncherActivityInfo;
    .locals 5

    .line 2960
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2962
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 2964
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "Launcher.LauncherProvider"

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p0, v2, v3

    .line 2965
    invoke-virtual {p2, v2}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 2967
    aget-object v2, p2, v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t find launcherActivityInfoList with pkg="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", try use pkg="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p2, v3

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2971
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object p0

    aget-object p2, p2, v3

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    move-object v0, p0

    goto :goto_0

    .line 2974
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "find launcherActivityInfoList with pkg="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2978
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5

    .line 2979
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/LauncherActivityInfo;

    .line 2980
    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2981
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "find LauncherActivityInfo with className="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p2

    goto :goto_1

    :cond_4
    if-nez v1, :cond_6

    const-string p0, "find LauncherActivityInfo in launcherActivityInfoList[0]"

    .line 2987
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2988
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/content/pm/LauncherActivityInfo;

    goto :goto_2

    :cond_5
    const-string p0, "not find launcherActivityInfoList at last"

    .line 2991
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return-object v1
.end method

.method private getApplicationInDb(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Set;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/Set<",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            ">;"
        }
    .end annotation

    .line 1044
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "intent"

    const-string v2, "profileId"

    .line 1045
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v5

    const-string v4, "favorites"

    const-string v6, "itemType=0"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 1052
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 1053
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1054
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 1056
    :cond_0
    :try_start_0
    invoke-static {v2, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1059
    :cond_1
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 1062
    :cond_2
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/miui/home/launcher/common/Utilities;->getUserForSerialNumber(Landroid/content/Context;I)Landroid/os/UserHandle;

    move-result-object v2

    .line 1063
    new-instance v3, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-direct {v3, v1, v2}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Launcher.LauncherProvider"

    const-string v3, "moveUnsetPositionToOtherAppsFolder"

    .line 1065
    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private getClockValues()Landroid/content/ContentValues;
    .locals 5

    .line 2254
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2255
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getMamlInfo()Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    move-result-object p0

    .line 2256
    iget-object v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    const-string v2, "product_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2258
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->maMlDownloadUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    iget v4, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    invoke-static {v1, v2, v3, v4}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->installMaMlFromExternal(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2260
    invoke-static {p0}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->getMaMlResPath(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2263
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->getExtraIntentParams()Landroid/content/Intent;

    move-result-object p0

    const/4 v1, 0x1

    .line 2264
    invoke-virtual {p0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "intent"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getItemCountInDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 p0, -0x1

    const/4 v9, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    .line 948
    :try_start_0
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 949
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 950
    invoke-interface {v9, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v9, :cond_2

    .line 955
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 957
    :cond_1
    throw p0

    :catch_0
    if-eqz v9, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return p0
.end method

.method private static getLocalLayoutSystemCreatedFolderTitles(Landroid/content/Context;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1244
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1247
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/miui/home/launcher/DeviceConfig;->getDefaultWorkspaceXmlId(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 1248
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 1249
    :cond_0
    :goto_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v3, 0x2

    .line 1250
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    if-ne v3, v4, :cond_0

    const-string v3, "folder"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1251
    sget-object v3, Lcom/miui/home/R$styleable;->Favorite:[I

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/16 v4, 0x14

    .line 1252
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1253
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1254
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1260
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    const-string p0, "Launcher.LauncherProvider"

    const-string v1, "getLocalLayoutSystemCreatedFolderTitles, error when get parser"

    .line 1258
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-object v0
.end method

.method private getMamlInfo()Lcom/miui/home/launcher/maml/MaMlWidgetInfo;
    .locals 1

    .line 2270
    new-instance p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;-><init>()V

    const/4 v0, 0x4

    .line 2271
    iput v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configSpanX:I

    const/4 v0, 0x2

    .line 2272
    iput v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configSpanY:I

    const-string v0, "52b8238d-848f-4608-a0e6-28458d4b1f2c"

    .line 2273
    iput-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    const-string v0, "ma_0216952801892370215809"

    .line 2274
    iput-object v0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->pickerID:Ljava/lang/String;

    const/16 v0, 0x3f3

    .line 2275
    iput v0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->addSource:I

    const/16 v0, 0xc

    .line 2276
    iput v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    const-string v0, "file:///system/media/theme/default/maml/maml_clock_4x2_v3.mtz"

    .line 2277
    iput-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->maMlDownloadUrl:Ljava/lang/String;

    .line 2278
    invoke-static {}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->allocMaMlWidgetId()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    return-object p0
.end method

.method private static getRemoteLayoutSystemCreatedFolderTitles(Lcom/miui/home/launcher/install/AutoInstallsLayout;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/install/AutoInstallsLayout;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1240
    invoke-virtual {p0}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->getRemoteLayoutSystemCreatedFolderTitles()Ljava/util/Set;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getSystemCreatedFolderTitles(Landroid/content/Context;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1223
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mSystemCreatedFolderTitles:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 1224
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->get(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/miui/home/launcher/allapps/LauncherMode;Ljava/util/Collection;)Lcom/miui/home/launcher/install/AutoInstallsLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getRemoteLayoutSystemCreatedFolderTitles(Lcom/miui/home/launcher/install/AutoInstallsLayout;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mSystemCreatedFolderTitles:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 1225
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1226
    sget-object p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mSystemCreatedFolderTitles:Ljava/util/Set;

    return-object p0

    .line 1229
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-static {p0, v1, v0, v1}, Lcom/miui/home/launcher/install/OthersInRomConfigParser;->get(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/miui/home/launcher/allapps/LauncherMode;Ljava/util/Collection;)Lcom/miui/home/launcher/install/OthersInRomConfigParser;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getRemoteLayoutSystemCreatedFolderTitles(Lcom/miui/home/launcher/install/AutoInstallsLayout;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mSystemCreatedFolderTitles:Ljava/util/Set;

    if-eqz v0, :cond_2

    .line 1230
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1231
    sget-object p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mSystemCreatedFolderTitles:Ljava/util/Set;

    return-object p0

    .line 1234
    :cond_2
    invoke-static {p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getLocalLayoutSystemCreatedFolderTitles(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p0

    sput-object p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mSystemCreatedFolderTitles:Ljava/util/Set;

    .line 1236
    :cond_3
    sget-object p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mSystemCreatedFolderTitles:Ljava/util/Set;

    return-object p0
.end method

.method private initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    const-string v0, "SELECT MAX(_id) FROM favorites"

    const/4 v1, 0x0

    .line 2589
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-wide/16 v0, -0x1

    if-eqz p1, :cond_0

    .line 2594
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 2595
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 2598
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    cmp-long p1, v2, v0

    if-eqz p1, :cond_2

    .line 2604
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mMaxId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void

    .line 2602
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Error: could not query max id"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private insertAppToFolder(JLcom/miui/home/launcher/util/ComponentKey;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/pm/PackageManager;)Z
    .locals 8

    .line 1029
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1030
    invoke-static {p4, p1, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryFolderSize(Landroid/database/sqlite/SQLiteDatabase;J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "cellX"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v7, 0x0

    .line 1031
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "cellY"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, -0x1

    .line 1032
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "screen"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1033
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "container"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1034
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object p0

    .line 1035
    iget-object p1, p3, Lcom/miui/home/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/library/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide p0

    .line 1036
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "profileId"

    invoke-virtual {v1, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1037
    new-instance v3, Landroid/content/Intent;

    const/4 p0, 0x0

    const-string p1, "android.intent.action.MAIN"

    invoke-direct {v3, p1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p0, "android.intent.category.LAUNCHER"

    .line 1038
    invoke-virtual {v3, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1039
    iget-object p0, p3, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    .line 1040
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object p0, p3, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p4

    move-object v2, p5

    .line 1039
    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide p0

    const-wide/16 p2, 0x0

    cmp-long p0, p0, p2

    if-lez p0, :cond_1

    const/4 v7, 0x1

    :cond_1
    return v7
.end method

.method private insertShortcutAppToFolderByAppCategory(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/pm/PackageManager;Lcom/miui/home/launcher/util/ComponentKey;Lcom/miui/home/launcher/LauncherProvider;)Z
    .locals 9

    .line 1024
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    iget-object v1, p3, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    iget-object v2, p3, Lcom/miui/home/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-static {v0, v1, v2, p4}, Lcom/miui/home/launcher/AllAppsList;->getFolderIdByAppCategory(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/UserHandle;Lcom/miui/home/launcher/LauncherProvider;)J

    move-result-wide v4

    const-wide/16 v0, -0x1

    cmp-long p4, v4, v0

    if-eqz p4, :cond_0

    move-object v3, p0

    move-object v6, p3

    move-object v7, p1

    move-object v8, p2

    .line 1025
    invoke-direct/range {v3 .. v8}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->insertAppToFolder(JLcom/miui/home/launcher/util/ComponentKey;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/pm/PackageManager;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isDatabaseLegal(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 8

    const-string v0, "favorites"

    .line 932
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->isTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "screens"

    .line 933
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->isTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "count(*)"

    .line 936
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v4, "screens"

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getItemCountInDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-lt p0, p1, :cond_1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public static isSystemDefaultFolder(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 1219
    invoke-static {p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getSystemCreatedFolderTitles(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getSystemCreatedFolderTitles(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 4

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 965
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 966
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select count(*) from sqlite_master where type=\'table\' and name=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 967
    invoke-virtual {v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 968
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 969
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object p1, v1

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 974
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception p0

    :goto_2
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 976
    :cond_1
    throw p0

    :catch_0
    move-object v1, p1

    :catch_1
    if-eqz v1, :cond_2

    goto :goto_1

    .line 977
    :cond_2
    :goto_3
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/miui/home/launcher/common/Utilities;->getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTableExist "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " : "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "Launcher.LauncherProvider"

    invoke-static {p0, v1, v2, p2, p1}, Lcom/miui/home/library/MiuiHomeLog284Helper;->fileLoggerLevelFatal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return v0
.end method

.method private static synthetic lambda$deleteIllegalWidgets$2(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onUpgrade$0(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 2051
    :try_start_0
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getSystemCreatedFolderTitles(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2052
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2053
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2054
    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->updateDefaultFolderLabel(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Launcher.LauncherProvider"

    const-string/jumbo v0, "updateDefaultFolderLabel fail"

    .line 2058
    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onUpgrade$1(Ljava/lang/InterruptedException;)V
    .locals 2

    const-string v0, "Launcher.LauncherProvider"

    const-string/jumbo v1, "update folder label exception"

    .line 2060
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private loadDefaultWorkspace(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/allapps/LauncherMode;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/miui/home/launcher/allapps/LauncherMode;",
            "Ljava/util/Map<",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;)V"
        }
    .end annotation

    .line 1005
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isXLargeMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    if-eqz v0, :cond_0

    .line 1007
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDeviceUnlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    .line 1009
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->sendAppWidgetResetNotify()V

    .line 1012
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mMaxId:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 1014
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/allapps/LauncherMode;Ljava/util/Collection;)V

    .line 1015
    invoke-static {p2}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1016
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->moveUnsetPositionToOtherAppsFolder(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)V

    .line 1018
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->createScreensTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1019
    invoke-static {}, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;->getController()Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;->updateRomPreintallAppsPositionInDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1020
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/allapps/LauncherMode;Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/miui/home/launcher/allapps/LauncherMode;",
            "Ljava/util/Collection<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "DROP TABLE IF EXISTS favorites"

    .line 2613
    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE favorites (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,container INTEGER,screen INTEGER,cellX INTEGER,cellY INTEGER,spanX INTEGER,spanY INTEGER,itemType INTEGER,appWidgetId INTEGER NOT NULL DEFAULT -1,isShortcut INTEGER,iconType INTEGER,iconPackage TEXT,iconResource TEXT,icon BLOB,uri TEXT,displayMode INTEGER,launchCount TEXT,sortMode INTEGER,itemFlags INTEGER NOT NULL DEFAULT 0,profileId INTEGER NOT NULL DEFAULT 0,label STRING,appWidgetProvider STRING,originWidgetId INTEGER NOT NULL DEFAULT -1,product_id STRING);"

    .line 2614
    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2644
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/install/MIUIAutoInstallsParser;->get(Landroid/content/Context;)Lcom/miui/home/launcher/install/MIUIAutoInstallsParser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2645
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isInWorkManagedMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2646
    invoke-virtual {v0}, Lcom/miui/home/launcher/install/MIUIAutoInstallsParser;->loadConfig()V

    .line 2649
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-static {v0, v1, p2, p3}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->get(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/miui/home/launcher/allapps/LauncherMode;Ljava/util/Collection;)Lcom/miui/home/launcher/install/AutoInstallsLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2654
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mi/preinstall/AutoInstallParserHelp;->copyPAIToSystem(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Launcher.LauncherProvider"

    const-string v3, "Error copy pai files"

    .line 2656
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2658
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->parseRemote(Lcom/miui/home/launcher/install/AutoInstallsLayout;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2663
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-static {v0, v1, p2, p3}, Lcom/miui/home/launcher/install/OthersInRomConfigParser;->get(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/miui/home/launcher/allapps/LauncherMode;Ljava/util/Collection;)Lcom/miui/home/launcher/install/OthersInRomConfigParser;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->parseRemote(Lcom/miui/home/launcher/install/AutoInstallsLayout;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 2667
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->parseDefaultLayout(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/allapps/LauncherMode;Ljava/util/Collection;)V

    return-void
.end method

.method private moveAppToDefaultFolderByAppCategory(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;Landroid/content/pm/PackageManager;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Collection<",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/Set<",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            ">;"
        }
    .end annotation

    .line 1072
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v0

    .line 1074
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getApplicationInDb(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Set;

    move-result-object v1

    .line 1075
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1076
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/util/ComponentKey;

    .line 1077
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1078
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/LauncherModel;->getAllAppList()Lcom/miui/home/launcher/AllAppsList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/AllAppsList;->getAppFilter()Lcom/miui/home/launcher/AppFilter;

    move-result-object v4

    iget-object v5, v3, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/AppFilter;->shouldShowApp(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1079
    invoke-static {v3}, Lcom/miui/home/launcher/LauncherHideApp;->isHideApp(Lcom/miui/home/launcher/util/ComponentKey;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;

    iget-object v5, v3, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    .line 1080
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lcom/miui/home/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-direct {v4, v5, v6}, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-static {v4}, Lcom/miui/home/launcher/LauncherModel;->isSecurityHided(Lcom/miui/home/launcher/LauncherModel$PackageAndUser;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1081
    invoke-direct {p0, p1, p3, v3, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->insertShortcutAppToFolderByAppCategory(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/pm/PackageManager;Lcom/miui/home/launcher/util/ComponentKey;Lcom/miui/home/launcher/LauncherProvider;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1082
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private moveUnsetPositionToOtherAppsFolder(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Collection<",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            ">;)V"
        }
    .end annotation

    const-string v0, "com.vroco.launcher:string/default_folder_title_other_apps"

    .line 1089
    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v0, -0x1

    cmp-long v0, v7, v0

    const-string v9, "Launcher.LauncherProvider"

    if-nez v0, :cond_0

    const-string p0, "have NO other app folder in db"

    .line 1091
    invoke-static {v9, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1095
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1096
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->moveAppToDefaultFolderByAppCategory(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;Landroid/content/pm/PackageManager;)Ljava/util/Set;

    move-result-object p2

    .line 1098
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1099
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/miui/home/launcher/oldman/ElderlyManUtils;->getElderlyManTopLikeAppsList(Landroid/content/Context;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v10

    .line 1100
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/miui/home/launcher/util/ComponentKey;

    .line 1101
    invoke-interface {v10, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, p0

    move-wide v2, v7

    move-object v4, v11

    move-object v5, p1

    move-object v6, v0

    .line 1102
    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->insertAppToFolder(JLcom/miui/home/launcher/util/ComponentKey;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/pm/PackageManager;)Z

    .line 1103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "move app("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") to other folder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1105
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keep old man like app("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") position"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method private parseDefaultLayout(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/allapps/LauncherMode;Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/miui/home/launcher/allapps/LauncherMode;",
            "Ljava/util/Collection<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;)V"
        }
    .end annotation

    .line 2681
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/miui/home/launcher/DeviceConfig;->getDefaultWorkspaceXmlId(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)I

    move-result v3

    .line 2682
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/home/launcher/common/Utilities;->getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse default workspace name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "Launcher.LauncherProvider"

    const/4 v8, 0x0

    invoke-static {p2, v0, v7, v1, v8}, Lcom/miui/home/library/MiuiHomeLog284Helper;->fileLoggerLevelFatal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2684
    :try_start_0
    new-instance p2, Lcom/miui/home/launcher/defaultlayout/FavoritesNode;

    invoke-direct {p2}, Lcom/miui/home/launcher/defaultlayout/FavoritesNode;-><init>()V

    .line 2685
    new-instance v0, Lcom/miui/home/launcher/defaultlayout/DefaultContext;

    iget-object v4, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    move-object v1, v0

    move-object v2, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/defaultlayout/DefaultContext;-><init>(Landroid/database/sqlite/SQLiteDatabase;ILandroid/content/Context;Landroid/appwidget/AppWidgetHost;Ljava/util/Collection;)V

    .line 2686
    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/defaultlayout/FavoritesNode;->parse(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V

    .line 2687
    invoke-virtual {v0}, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->getMContentValuesList()Ljava/util/ArrayList;

    move-result-object p0

    .line 2688
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_1

    .line 2689
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, 0x0

    .line 2691
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_0

    const-string p3, "favorites"

    .line 2692
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    invoke-virtual {p1, p3, v8, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 2694
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2696
    :try_start_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2697
    throw p0

    .line 2699
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->destroy()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string p1, "Got exception parsing favorites."

    .line 2701
    invoke-static {v7, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method private parseRemote(Lcom/miui/home/launcher/install/AutoInstallsLayout;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 0

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 2672
    :cond_0
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->loadLayout(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result p1

    if-lez p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    if-nez p0, :cond_2

    const-string p1, "delete from favorites"

    .line 2675
    invoke-static {p2, p1}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :cond_2
    return p0
.end method

.method private queryDupColumnCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .locals 8

    const/4 p0, 0x0

    :try_start_0
    const-string v1, "favorites"

    const-string v0, "_id"

    .line 888
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v6, "count(*) > 1"

    const/4 v7, 0x0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 894
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 900
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return p1

    :cond_0
    if-eqz p0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "Launcher.LauncherProvider"

    const-string v0, "queryDupColumnCount error"

    .line 897
    invoke-static {p2, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    .line 900
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 p0, 0x0

    return p0

    :goto_1
    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 902
    :cond_2
    throw p1
.end method

.method public static queryFolderSize(Landroid/database/sqlite/SQLiteDatabase;J)I
    .locals 3

    const/4 v0, 0x0

    .line 2394
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select COUNT(\'_id\') from favorites where container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2396
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 2397
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2402
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2404
    :cond_0
    throw p0

    :catch_0
    if-eqz v0, :cond_2

    .line 2402
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method static queryIdByIntent(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "favorites"

    const-string v1, "_id"

    .line 2516
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "intent=?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v5, v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2518
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2519
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const-wide/16 p0, -0x1

    .line 2523
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-wide p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2526
    :cond_1
    throw p0
.end method

.method public static queryIdByLabel(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "favorites"

    const-string v1, "_id"

    .line 2498
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "label=?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v5, v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2500
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2501
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const-wide/16 p0, -0x1

    .line 2505
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-wide p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2508
    :cond_1
    throw p0
.end method

.method static queryIdByPackageName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "favorites"

    const-string v1, "_id"

    .line 2534
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "intent like \'%"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2537
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 2538
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const-wide/16 p0, -0x1

    .line 2542
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-wide p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2545
    :cond_1
    throw p0
.end method

.method public static queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "favorites"

    const-string v1, "_id"

    .line 2480
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "title=?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v5, v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2482
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2483
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const-wide/16 p0, -0x1

    .line 2487
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-wide p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2490
    :cond_1
    throw p0
.end method

.method public static queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 2

    .line 2409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";end"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByIntent(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static queryItemInFolder(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)Z
    .locals 11

    .line 2373
    invoke-static {p0, p3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p3, v0, v2

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    :try_start_0
    const-string v4, "favorites"

    const-string p3, "_id"

    .line 2377
    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object v5

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "container"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2379
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    .line 2385
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return p1

    :catchall_0
    move-exception p0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2387
    :cond_0
    throw p0

    :cond_1
    if-eqz v2, :cond_2

    .line 2385
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private queryPackageNameByItemType(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "intent"

    .line 3147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "favorites"

    .line 3149
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "itemType=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    .line 3150
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 v10, 0x0

    aput-object p2, v6, v10

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    .line 3149
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 3151
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3152
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3153
    invoke-static {p1, v10}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3154
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3155
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "pkgName"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3156
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 3157
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 3162
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 3165
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :goto_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3168
    :cond_3
    throw p0
.end method

.method static removeSkippedItems(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .line 2415
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel;->getAllAppList()Lcom/miui/home/launcher/AllAppsList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/AllAppsList;->getAppFilter()Lcom/miui/home/launcher/AppFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/AppFilter;->getSkipedList()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2416
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2418
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";end"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2416
    invoke-static {p0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByIntent(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 2421
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    const-string v1, "favorites"

    const-string v2, "_id=?"

    .line 2420
    invoke-static {p0, v1, v2, v3}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sendAppWidgetResetNotify()V
    .locals 2

    .line 992
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 993
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public static setDefaultScreen(J)V
    .locals 0

    .line 2712
    invoke-static {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->saveCurrentDefaultScreenId(J)Z

    return-void
.end method

.method private trackDeleteWidgets(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 0

    const/4 p0, 0x0

    .line 2210
    :try_start_0
    invoke-virtual {p1, p2, p0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2211
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 2212
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2214
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackDeleteWidgets(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2217
    :cond_1
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_2

    .line 2210
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 2218
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "rawQuery exception --> "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher.LauncherProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private tryRemoveDupIdRows(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "_id"

    .line 907
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryDupColumnCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result p0

    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tryRemoveDupIdRows, dupIdCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.LauncherProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p0, :cond_0

    const-string p0, "create table dupFavorites as select * from favorites;"

    .line 910
    invoke-static {p1, p0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string p0, "delete from favorites where _id in (select _id from favorites GROUP by _id HAVING count(_id) > 1);"

    .line 911
    invoke-static {p1, p0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string p0, "insert into favorites SELECT * FROM dupFavorites GROUP by _id HAVING count(_id) > 1;"

    .line 912
    invoke-static {p1, p0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string p0, "DROP TABLE dupFavorites;"

    .line 913
    invoke-static {p1, p0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :cond_0
    const-string p0, "after tryRemoveDupIdRows"

    .line 915
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateAllFolderAppPredictStatus(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/String;

    const/16 v0, 0x15

    .line 2284
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const/16 v0, 0x16

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, p0, v2

    const-string v0, "SELECT * FROM favorites WHERE itemType=? OR itemType=?"

    .line 2283
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 2285
    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2286
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 2287
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key_enable_app_predict_button_view_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;->APP_PREDICT_UNINITIALIZED:Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;

    invoke-virtual {v4}, Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;->getValue()I

    move-result v5

    invoke-static {v0, v2, v5}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 2288
    invoke-virtual {v4}, Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;->getValue()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 2289
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;->APP_PREDICT_OPEN:Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;

    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;->getValue()I

    move-result v2

    invoke-static {v0, p1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateCellCountSp()V
    .locals 4

    .line 2235
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2238
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    .line 2239
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherCellCountInstance()Lcom/miui/home/launcher/compat/LauncherCellCount;

    move-result-object v0

    .line 2240
    sget v1, Lcom/miui/home/launcher/DbCellCountHelper;->CELL_X_BEFORE_GRID_OTA:I

    .line 2241
    sget v2, Lcom/miui/home/launcher/DbCellCountHelper;->CELL_Y_BEFORE_GRID_OTA:I

    .line 2242
    invoke-virtual {v0}, Lcom/miui/home/launcher/compat/LauncherCellCount;->getCellCountXMax()I

    move-result v3

    if-ne v1, v3, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/compat/LauncherCellCount;->getCellCountXMax()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/compat/LauncherCellCount;->getCellCountXMin()I

    move-result v0

    .line 2243
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v3, "pref_key_cell_x"

    invoke-static {v1, v3, v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2244
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v0, "pref_key_cell_y"

    invoke-static {p0, v0, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private static updateDefaultFolderLabel(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 4

    .line 2445
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 2447
    sget-object v2, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    const-string v3, "label"

    .line 2448
    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 2450
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    const-string v0, "favorites"

    const-string v1, "_id=?"

    .line 2449
    invoke-static {p0, v0, v2, v1, p1}, Lcom/miui/home/launcher/LauncherProvider;->safelyUpdateDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private updateIconScaleSp()V
    .locals 2

    .line 2223
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 2227
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 2228
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    const v0, 0x3f91a9fc    # 1.138f

    const-string v1, "icon_size_scale_no_word"

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/common/BaseSharePreference;->getFloat(Ljava/lang/String;F)F

    move-result p0

    .line 2229
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->setIconSizeScale(F)V

    .line 2231
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->updateIconScaleForDBUpgrade()V

    return-void
.end method

.method public static updateItemContainer(Landroid/database/sqlite/SQLiteDatabase;JJI)V
    .locals 1

    .line 2437
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 2438
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "container"

    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2439
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "cellX"

    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    .line 2441
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, p3, p2

    const-string p1, "favorites"

    const-string p2, "_id=?"

    .line 2440
    invoke-static {p0, p1, v0, p2, p3}, Lcom/miui/home/launcher/LauncherProvider;->safelyUpdateDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method static updateSettingIconToToggle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE favorites SET intent = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\', iconType = \'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x3

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\', iconPackage = \'\' , label = \'\' WHERE intent= \'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\';"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2473
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method static upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 5

    .line 2455
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10200000

    .line 2456
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    .line 2458
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2459
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE favorites SET intent=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2461
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2462
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\',iconPackage=\'"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2464
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2465
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' WHERE intent=\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\';"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2466
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createdFirstTime()Z
    .locals 0

    .line 1112
    iget-boolean p0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mCreatedFirstTime:Z

    return p0
.end method

.method public generateNewId()J
    .locals 4

    .line 2581
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mMaxId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 2584
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mMaxId:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 2585
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mMaxId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0

    .line 2582
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Error: max id was not initialized"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPreferenceValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1139
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isDatabaseReady()Z
    .locals 0

    .line 982
    iget-boolean p0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mDatabaseReady:Z

    return p0
.end method

.method public loadDefaultWorkspace(Lcom/miui/home/launcher/allapps/LauncherMode;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/allapps/LauncherMode;",
            "Ljava/util/Map<",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Launcher.LauncherProvider"

    const/4 v1, 0x1

    .line 1116
    iput-boolean v1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mCreatedFirstTime:Z

    .line 1117
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v3, "database_ready_pref_key"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1118
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v3, "pref_key_last_label_locale"

    const-string v5, ""

    invoke-static {v2, v3, v5}, Lcom/miui/home/launcher/common/PreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1122
    :try_start_0
    invoke-direct {p0, v2, p1, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->loadDefaultWorkspace(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/allapps/LauncherMode;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move p1, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1124
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " loadDefaultWorkspace err: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v4

    :goto_0
    if-eqz p1, :cond_0

    .line 1127
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_0

    move v4, v1

    :cond_0
    if-eqz v4, :cond_1

    .line 1130
    iput-boolean v1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mDatabaseReady:Z

    .line 1131
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-string v0, "home_data_create_time_key"

    invoke-static {p0, v0, p1, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_1

    :cond_1
    const-string p0, " loadDefaultWorkspace failure"

    .line 1133
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    :goto_1
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string p1, "Launcher.LauncherProvider"

    const-string v0, "creating new launcher database"

    .line 998
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mMaxId:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    const/4 p1, 0x0

    .line 1000
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mDatabaseReady:Z

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const/16 v0, 0xb

    if-lt p3, v0, :cond_0

    return-void

    .line 2577
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteOpenHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 39

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v14, p2

    const-string v0, "-"

    const-string v15, "Launcher.LauncherProvider"

    const-string v1, "onUpgrade triggered"

    .line 1374
    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    new-instance v11, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v10, 0x0

    invoke-direct {v11, v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 1381
    invoke-virtual {v11, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1382
    iget-object v1, v12, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    const/16 v1, 0x9

    if-ge v14, v1, :cond_0

    .line 1384
    invoke-direct/range {p0 .. p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->createScreensTable(Landroid/database/sqlite/SQLiteDatabase;)V

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v14

    :goto_0
    if-ne v2, v1, :cond_1

    const-string v1, "ALTER TABLE favorites ADD COLUMN launchCount INTEGER NOT NULL DEFAULT 1"

    .line 1389
    invoke-static {v13, v1}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v1, "ALTER TABLE favorites ADD COLUMN sortMode INTEGER"

    .line 1391
    invoke-static {v13, v1}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const/16 v2, 0xa

    :cond_1
    const/16 v1, 0xa

    if-ne v2, v1, :cond_2

    const-string v1, "ALTER TABLE favorites ADD COLUMN itemFlags INTEGER NOT NULL DEFAULT 0"

    .line 1397
    invoke-static {v13, v1}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const/16 v2, 0xb

    :cond_2
    const/16 v1, 0xb

    if-ne v2, v1, :cond_3

    const-string v1, "UPDATE favorites SET title=\'com.miui.home:string/default_folder_title_tools\' WHERE title=\'com.android.launcher:string/default_folder_title_tools\';"

    .line 1403
    invoke-static {v13, v1}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v1, "UPDATE favorites SET title=\'com.miui.home:string/default_folder_title_recommend\' WHERE title=\'com.android.launcher:string/default_folder_title_recommend\';"

    .line 1406
    invoke-static {v13, v1}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v1, "com.miui.camera/.Camera"

    .line 1411
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    const-string v2, "com.android.camera/.Camera"

    .line 1412
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1410
    invoke-static {v13, v1, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v1, "com.android.gallery/.ui.MainActivity"

    .line 1415
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    const-string v2, "com.miui.gallery/.app.Gallery"

    .line 1416
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1414
    invoke-static {v13, v1, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v1, "com.miui.player/.drawerActivityGroup.MainActivityGroup"

    .line 1419
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    const-string v2, "com.miui.player/.ui.MusicBrowserActivity"

    .line 1420
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1418
    invoke-static {v13, v1, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v1, "com.android.settings/.Settings"

    .line 1423
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    const-string v2, "com.android.settings/.MiuiSettings"

    .line 1424
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1422
    invoke-static {v13, v1, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v1, "com.miui.supermarket/.MainActivity"

    .line 1427
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    const-string v2, "com.xiaomi.market/.ui.MainTabActivity"

    .line 1428
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1426
    invoke-static {v13, v1, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v1, "com.android.deskclock/.DeskClock"

    .line 1431
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    const-string v2, "com.android.deskclock/.DeskClockTabActivity"

    .line 1432
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1430
    invoke-static {v13, v1, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v1, "UPDATE favorites SET intent=\'#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.android.deskclock/.DeskClockTabActivity;end\' WHERE intent=\'#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.android.deskclock/.DeskClock;end\';"

    .line 1433
    invoke-static {v13, v1}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v1, "com.android.contacts/.TwelveKeyDialer"

    .line 1442
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    const-string v2, "com.android.contacts/.activities.TwelveKeyDialer"

    .line 1443
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1441
    invoke-static {v13, v1, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v1, "com.android.contacts/.DialtactsContactsEntryActivity"

    .line 1446
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    const-string v2, "com.android.contacts/.activities.PeopleActivity"

    .line 1447
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1445
    invoke-static {v13, v1, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const/16 v2, 0xc

    :cond_3
    const/16 v1, 0xc

    const-string v8, "com.lbe.security.miui/com.lbe.security.ui.AutoStartAppList"

    const-string v9, "com.lbe.security.miui/com.lbe.security.ui.MainActivity"

    const-string v7, "com.vroco.launcher:string/default_folder_title_security"

    const/4 v6, 0x2

    const-string v4, "container"

    const-string v5, "screen"

    const-string v10, "favorites"

    const-wide/16 v18, -0x1

    if-ne v2, v1, :cond_9

    .line 1453
    invoke-static {v13, v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v1

    cmp-long v1, v1, v18

    if-nez v1, :cond_8

    const-string v1, "com.android.settings/.VirusScanActivity"

    .line 1455
    invoke-static {v13, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "com.wali.miui.networkassistant/.NetworkAssistantActivity"

    .line 1456
    invoke-static {v13, v3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v22

    const-string v3, "com.android.settings/.MiuiPasswordGuardActivity"

    .line 1457
    invoke-static {v13, v3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v24

    const-string v3, "com.miui.backup/.BackupActivity"

    .line 1458
    invoke-static {v13, v3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v26

    const-string v3, "com.miui.antispam/.firewall.FirewallTab"

    .line 1459
    invoke-static {v13, v3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v28

    .line 1460
    invoke-static {v13, v9}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v30

    .line 1461
    invoke-static {v13, v8}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v32

    cmp-long v1, v1, v18

    if-nez v1, :cond_8

    cmp-long v1, v24, v18

    if-nez v1, :cond_8

    cmp-long v1, v32, v18

    if-nez v1, :cond_8

    .line 1463
    sget-object v1, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    const-string/jumbo v2, "title"

    .line 1464
    invoke-virtual {v1, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "itemType"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v2, -0x64

    .line 1466
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v3, 0x1

    .line 1467
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v6, "spanX"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1468
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v6, "spanY"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v6, -0x1

    .line 1469
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v2, 0x0

    .line 1470
    invoke-static {v13, v10, v2, v1}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v24

    const-string v1, "com.android.settings/.VirusScanActivity"

    .line 1472
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object/from16 v20, v2

    move-object/from16 v2, p1

    move-object v3, v11

    move-object/from16 v33, v5

    move-object/from16 v32, v15

    move-object v15, v4

    move-wide/from16 v4, v24

    const/4 v14, 0x2

    move/from16 v6, v17

    move-object v14, v7

    move-object/from16 v7, v16

    .line 1474
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Intent;JILandroid/content/pm/PackageManager;)V

    cmp-long v1, v22, v18

    if-eqz v1, :cond_4

    const/4 v6, 0x1

    move-object/from16 v1, p1

    move-wide/from16 v2, v22

    move-wide/from16 v4, v24

    .line 1477
    invoke-static/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->updateItemContainer(Landroid/database/sqlite/SQLiteDatabase;JJI)V

    goto :goto_1

    :cond_4
    const-string v1, "com.wali.miui.networkassistant/.NetworkAssistantActivity"

    .line 1479
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v11

    move-wide/from16 v4, v24

    move-object/from16 v7, v16

    .line 1481
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Intent;JILandroid/content/pm/PackageManager;)V

    :goto_1
    const-string v1, "com.android.settings/.MiuiPasswordGuardActivity"

    .line 1484
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v6, 0x2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v11

    move-wide/from16 v4, v24

    move-object/from16 v7, v16

    .line 1486
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Intent;JILandroid/content/pm/PackageManager;)V

    cmp-long v1, v26, v18

    if-eqz v1, :cond_5

    const/4 v6, 0x3

    move-object/from16 v1, p1

    move-wide/from16 v2, v26

    move-wide/from16 v4, v24

    .line 1489
    invoke-static/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->updateItemContainer(Landroid/database/sqlite/SQLiteDatabase;JJI)V

    :cond_5
    cmp-long v1, v28, v18

    if-eqz v1, :cond_6

    const/4 v6, 0x4

    move-object/from16 v1, p1

    move-wide/from16 v2, v28

    move-wide/from16 v4, v24

    .line 1492
    invoke-static/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->updateItemContainer(Landroid/database/sqlite/SQLiteDatabase;JJI)V

    :cond_6
    cmp-long v1, v30, v18

    if-eqz v1, :cond_7

    const/4 v6, 0x5

    move-object/from16 v1, p1

    move-wide/from16 v2, v30

    move-wide/from16 v4, v24

    .line 1495
    invoke-static/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->updateItemContainer(Landroid/database/sqlite/SQLiteDatabase;JJI)V

    goto :goto_2

    .line 1497
    :cond_7
    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v6, 0x5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v11

    move-wide/from16 v4, v24

    move-object/from16 v7, v16

    .line 1499
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Intent;JILandroid/content/pm/PackageManager;)V

    .line 1502
    :goto_2
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v6, 0x6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v11

    move-wide/from16 v4, v24

    move-object/from16 v7, v16

    .line 1504
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Intent;JILandroid/content/pm/PackageManager;)V

    goto :goto_3

    :cond_8
    move-object/from16 v33, v5

    move-object v14, v7

    move-object/from16 v32, v15

    const/16 v20, 0x0

    move-object v15, v4

    :goto_3
    const/16 v2, 0xd

    goto :goto_4

    :cond_9
    move-object/from16 v33, v5

    move-object v14, v7

    move-object/from16 v32, v15

    const/16 v20, 0x0

    move-object v15, v4

    :goto_4
    const/16 v1, 0xd

    const-string v7, "_id"

    const-string v6, "cellY"

    const/4 v4, 0x0

    if-ne v2, v1, :cond_e

    const-string v1, "com.xiaomi.market/.ui.MainTabActivity"

    .line 1513
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    const-string v2, "com.xiaomi.market/.ui.MarketTabActivity"

    .line 1514
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1512
    invoke-static {v13, v1, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1517
    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    const-string v2, "com.android.settings/.permission.PermManageActivity"

    .line 1518
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1516
    invoke-static {v13, v1, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1521
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    const-string v2, "com.android.settings/.BackgroundApplicationsManager"

    .line 1522
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1520
    invoke-static {v13, v1, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v1, "com.miui.bugreport/.BugReportActivity"

    .line 1525
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    const-string v2, "com.miui.bugreport/.ui.TypeSelectionActivity"

    .line 1526
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1524
    invoke-static {v13, v1, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1527
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_d

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_d

    .line 1531
    :try_start_0
    invoke-static {v13, v14}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v1, v8, v18

    if-eqz v1, :cond_a

    const-string v1, "com.xiaomi.xmsf/.payment.MiliCenterEntryActivity"

    .line 1533
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v17, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v11

    move v12, v4

    move-wide v4, v8

    move-object v9, v6

    move/from16 v6, v17

    move-object v8, v7

    move-object/from16 v7, v16

    .line 1535
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Intent;JILandroid/content/pm/PackageManager;)V

    goto :goto_5

    :cond_a
    move v12, v4

    move-object v9, v6

    move-object v8, v7

    :goto_5
    const-string v2, "favorites"

    .line 1538
    filled-new-array/range {v33 .. v33}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "itemType=5 AND appWidgetId=6 AND cellX=0 AND cellY=0"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p1

    move-object/from16 v22, v8

    move-object/from16 v8, v17

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1542
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1543
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1544
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v2, "favorites"

    .line 1546
    filled-new-array/range {v22 .. v22}, [Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "container=-100 AND screen="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ">3"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p1

    move v12, v8

    move-object/from16 v8, v17

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1550
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_b

    .line 1551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE favorites SET cellY=cellY+1 WHERE container=-100 AND screen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1561
    :cond_b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v10, v1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v10, v20

    :goto_6
    if-eqz v10, :cond_c

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1564
    :cond_c
    throw v0

    :cond_d
    move-object v9, v6

    move-object/from16 v22, v7

    :goto_7
    const/16 v2, 0xe

    goto :goto_8

    :cond_e
    move-object v9, v6

    move-object/from16 v22, v7

    :goto_8
    const/16 v1, 0xe

    if-ne v2, v1, :cond_16

    .line 1573
    :try_start_4
    invoke-static/range {p1 .. p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->removeSkippedItems(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v1, "com.xiaomi.xmsf/.account.ui.MiCloudSettingsActivity"

    .line 1574
    invoke-static {v13, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v24

    const-string v1, "com.android.stk/.StkLauncherActivity"

    .line 1575
    invoke-static {v13, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v26

    .line 1577
    invoke-static {v13, v14}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v1, v7, v18

    if-eqz v1, :cond_13

    const-string v2, "favorites"

    .line 1579
    filled-new-array/range {v22 .. v22}, [Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "container="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p1

    move-wide/from16 v28, v7

    move-object v7, v12

    move-object v8, v14

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 1581
    :try_start_5
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v14

    cmp-long v1, v24, v18

    if-nez v1, :cond_11

    const-string v1, "com.xiaomi.xmsf/.account.ui.MiCloudSettingsActivity"

    .line 1584
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    const-string v2, "favorites"

    .line 1588
    filled-new-array/range {v22 .. v22}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "container=? AND _id=?"

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    .line 1590
    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x1

    aput-object v1, v5, v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p1

    move-object/from16 v24, v15

    move v15, v8

    move-object/from16 v8, v17

    .line 1588
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1592
    :try_start_7
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v15, :cond_f

    add-int/lit8 v6, v14, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v11

    move-wide/from16 v4, v28

    move-object/from16 v7, v16

    .line 1593
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Intent;JILandroid/content/pm/PackageManager;)V

    move-object/from16 v1, p1

    move-wide/from16 v2, v26

    move-wide/from16 v4, v28

    move v6, v14

    .line 1594
    invoke-static/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->updateItemContainer(Landroid/database/sqlite/SQLiteDatabase;JJI)V

    goto :goto_9

    :cond_f
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v11

    move-wide/from16 v4, v28

    move v6, v14

    move-object/from16 v7, v16

    .line 1596
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Intent;JILandroid/content/pm/PackageManager;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_9
    if-eqz v8, :cond_12

    .line 1600
    :try_start_8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object v10, v8

    goto :goto_a

    :catchall_3
    move-exception v0

    move-object/from16 v10, v20

    :goto_a
    if-eqz v10, :cond_10

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1602
    :cond_10
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :cond_11
    move-object/from16 v24, v15

    const/4 v15, 0x1

    :cond_12
    :goto_b
    move-object v2, v12

    goto :goto_c

    :catchall_4
    move-exception v0

    move-object v10, v12

    goto :goto_d

    :cond_13
    move-object/from16 v24, v15

    const/4 v15, 0x1

    move-object/from16 v2, v20

    :goto_c
    if-eqz v2, :cond_14

    .line 1607
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_14
    const/16 v2, 0xf

    goto :goto_e

    :catchall_5
    move-exception v0

    move-object/from16 v10, v20

    :goto_d
    if-eqz v10, :cond_15

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1610
    :cond_15
    throw v0

    :cond_16
    move-object/from16 v24, v15

    const/4 v15, 0x1

    :goto_e
    const/16 v1, 0xf

    const/16 v12, 0x10

    if-ne v2, v1, :cond_18

    const-string v1, "com.vroco.launcher:string/default_folder_title_recommend"

    .line 1615
    invoke-static {v13, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v1, v7, v18

    if-eqz v1, :cond_17

    .line 1617
    invoke-static {v13, v7, v8}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryFolderSize(Landroid/database/sqlite/SQLiteDatabase;J)I

    move-result v14

    const/16 v17, 0x0

    const-string v3, "com.android.fileexplorer:drawable/kuaipan_icon"

    const-string v4, "miui.intent.action.START_KUAIPAN"

    const-string v5, "com.android.fileexplorer"

    const-string v6, "com.android.fileexplorer.FileExplorerTabActivity"

    const-string v25, "com.android.fileexplorer:string/kuaipan_label"

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v26, v7

    move-object/from16 v7, v25

    move-object/from16 v35, v9

    move-wide/from16 v8, v26

    move-object/from16 v36, v10

    move-object/from16 v15, v20

    move v10, v14

    move-object v14, v11

    move/from16 v11, v17

    .line 1618
    invoke-direct/range {v1 .. v11}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addShortcut(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z

    goto :goto_f

    :cond_17
    move-object/from16 v35, v9

    move-object/from16 v36, v10

    move-object v14, v11

    move-object/from16 v15, v20

    :goto_f
    move v2, v12

    goto :goto_10

    :cond_18
    move-object/from16 v35, v9

    move-object/from16 v36, v10

    move-object v14, v11

    move-object/from16 v15, v20

    :goto_10
    const-string v8, "com.vroco.launcher:string/new_default_folder_title_tools"

    if-ne v2, v12, :cond_1a

    .line 1627
    invoke-static {v13, v8}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v18, v4

    if-eqz v1, :cond_19

    .line 1629
    invoke-static {v13, v4, v5}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryFolderSize(Landroid/database/sqlite/SQLiteDatabase;J)I

    move-result v6

    const-string v1, "com.miui.transfer/cn.kuaipan.mishare.LogoActivity"

    .line 1630
    invoke-static {v13, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v1

    cmp-long v1, v18, v1

    if-nez v1, :cond_19

    const-string v1, "com.miui.transfer/cn.kuaipan.mishare.LogoActivity"

    .line 1631
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move-object/from16 v7, v16

    .line 1633
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Intent;JILandroid/content/pm/PackageManager;)V

    :cond_19
    const/16 v2, 0x11

    :cond_1a
    const/16 v1, 0x11

    const-string v9, "cellX"

    if-ne v2, v1, :cond_25

    .line 1640
    invoke-static {v13, v8}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v1

    cmp-long v3, v1, v18

    if-eqz v3, :cond_24

    .line 1642
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT _id, cellX, cellY, screen FROM favorites WHERE _id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1652
    :try_start_9
    invoke-virtual {v13, v1, v15}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 1653
    :try_start_a
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    .line 1654
    :try_start_b
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v1, 0x2

    .line 1655
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v1, 0x3

    .line 1656
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    goto :goto_11

    :catch_0
    move-object/from16 v11, v35

    const/4 v1, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v7, -0x1

    const/16 v34, -0x1

    goto/16 :goto_1a

    :cond_1b
    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    :goto_11
    const/4 v7, -0x1

    if-eq v3, v7, :cond_1f

    if-eq v2, v7, :cond_1f

    if-eq v1, v7, :cond_1f

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 1659
    :try_start_c
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v4

    if-ge v3, v4, :cond_1f

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v4
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    if-ge v2, v4, :cond_1f

    .line 1662
    :try_start_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT _id FROM favorites WHERE container=-100 AND screen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " AND ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")*("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "spanX"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")< 0 AND ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    move-object/from16 v11, v35

    :try_start_e
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")*("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "spanY"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")< 0"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 1671
    :try_start_f
    invoke-virtual {v13, v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 1672
    :try_start_10
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_12

    :cond_1c
    const/4 v0, 0x0

    :goto_12
    if-eqz v4, :cond_1d

    .line 1677
    :try_start_11
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    goto :goto_13

    :catch_1
    move v4, v0

    move/from16 v34, v3

    goto :goto_15

    :cond_1d
    :goto_13
    move v4, v0

    move v0, v3

    move v3, v2

    goto :goto_16

    :catchall_6
    move-exception v0

    goto :goto_14

    :catchall_7
    move-exception v0

    move-object v4, v15

    :goto_14
    if-eqz v4, :cond_1e

    :try_start_12
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1679
    :cond_1e
    throw v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    :catch_2
    move-object/from16 v11, v35

    :catch_3
    move/from16 v34, v3

    const/4 v4, 0x0

    :goto_15
    move v3, v2

    goto :goto_1a

    :catch_4
    move-object/from16 v11, v35

    move v3, v7

    goto :goto_17

    :cond_1f
    move-object/from16 v11, v35

    move v0, v7

    move v3, v0

    const/4 v4, 0x0

    .line 1685
    :goto_16
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1b

    :catchall_8
    move-exception v0

    goto :goto_18

    :catch_5
    move-object/from16 v11, v35

    const/4 v7, -0x1

    move v1, v7

    move v3, v1

    :goto_17
    move/from16 v34, v3

    goto :goto_19

    :catchall_9
    move-exception v0

    move-object v10, v15

    :goto_18
    if-eqz v10, :cond_20

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1687
    :cond_20
    throw v0

    :catch_6
    move-object/from16 v11, v35

    const/4 v7, -0x1

    move v1, v7

    move v3, v1

    move/from16 v34, v3

    move-object v10, v15

    :goto_19
    const/4 v4, 0x0

    :goto_1a
    if-eqz v10, :cond_21

    .line 1685
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_21
    move/from16 v0, v34

    :goto_1b
    if-eqz v4, :cond_23

    const-string v2, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.android.settings/com.miui.securitycenter.Main;end"

    .line 1690
    invoke-static {v13, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByIntent(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v2, v4, v18

    if-eqz v2, :cond_22

    .line 1694
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UPDATE favorites SET cellX="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, v33

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v24

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, -0x64

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " WHERE "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v22

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    move-object v12, v6

    goto :goto_1c

    :cond_22
    move-object/from16 v5, v22

    move-object/from16 v6, v24

    move-object/from16 v10, v33

    const-string v2, "com.android.settings/com.miui.securitycenter.Main"

    .line 1701
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1703
    sget-object v4, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    const/16 v2, -0x64

    .line 1704
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1705
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1706
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1707
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v4

    move-object v4, v0

    move-object/from16 v5, v16

    move-object v12, v6

    move-object v6, v14

    .line 1708
    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    goto :goto_1c

    :cond_23
    move-object/from16 v12, v24

    move-object/from16 v10, v33

    goto :goto_1c

    :cond_24
    move-object/from16 v12, v24

    move-object/from16 v10, v33

    move-object/from16 v11, v35

    const/4 v7, -0x1

    :goto_1c
    const/16 v2, 0x12

    goto :goto_1d

    :cond_25
    move-object/from16 v12, v24

    move-object/from16 v10, v33

    move-object/from16 v11, v35

    const/4 v7, -0x1

    :goto_1d
    const/16 v0, 0x12

    if-ne v2, v0, :cond_27

    :try_start_13
    const-string v0, "ALTER TABLE screens ADD screenType INTEGER NOT NULL DEFAULT 0"

    .line 1717
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_7

    goto :goto_1e

    :catch_7
    move-exception v0

    .line 1720
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "duplicate column name: screenType"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    :goto_1e
    const/16 v2, 0x13

    goto :goto_1f

    .line 1721
    :cond_26
    throw v0

    :cond_27
    :goto_1f
    const/16 v0, 0x13

    if-ne v2, v0, :cond_29

    .line 1727
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.miui.securitycenter.Main"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.securitycenter"

    const-string v3, "com.miui.securitycenter.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1729
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.miui.weather2"

    const-string v2, "com.miui.weather2.ActivityWeatherCycle"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.weather2"

    const-string v3, "com.miui.weather2.ActivityWeatherMain"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1731
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.xiaomi.xmsf"

    const-string v2, "com.xiaomi.xmsf.account.ui.MiCloudSettingsActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.cloudservice"

    const-string v3, "com.miui.cloudservice.ui.MiCloudInfoSettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1733
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.duokan.phone.remotecontroller"

    const-string v2, "com.xiaomi.mitv.phone.remotecontroller.HoriWidgetMainActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.duokan.phone.remotecontroller"

    const-string v3, "com.xiaomi.mitv.phone.remotecontroller.HoriWidgetMainActivityV2"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1735
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.miui.bugreport"

    const-string v2, "com.miui.bugreport.ui.TypeSelectionActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.bugreport"

    const-string v3, "com.miui.bugreport.ui.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1737
    invoke-static {v13, v8}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v2, v0, v18

    if-eqz v2, :cond_28

    const-string v2, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.xiaomi.account/.ui.MiCloudSettingsActivity;end"

    .line 1739
    invoke-static {v13, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByIntent(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v2, v2, v18

    if-nez v2, :cond_28

    const-string v2, "com.xiaomi.account/.ui.MiCloudSettingsActivity"

    .line 1743
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1745
    sget-object v3, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 1746
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v8, 0x0

    .line 1747
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1748
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1749
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, v16

    move-object v6, v14

    .line 1750
    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    goto :goto_20

    :cond_28
    const/4 v8, 0x0

    .line 1753
    :goto_20
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->deleteClockBack()V

    const/16 v2, 0x14

    goto :goto_21

    :cond_29
    const/4 v8, 0x0

    :goto_21
    const/16 v0, 0x14

    if-ne v2, v0, :cond_2a

    .line 1757
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->deleteClockBack()V

    const/16 v2, 0x15

    :cond_2a
    const/16 v0, 0x15

    if-ne v2, v0, :cond_2b

    .line 1761
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.miui.fmradio"

    const-string v2, "com.miui.fmradio.FmRadioActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.ximalaya.ting.android"

    const-string v3, "com.ximalaya.ting.android.activity.login.WelcomeActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const/16 v2, 0x16

    :cond_2b
    const/16 v0, 0x16

    if-ne v2, v0, :cond_2c

    .line 1767
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->deleteClockBack()V

    const/16 v2, 0x17

    :cond_2c
    const/16 v0, 0x17

    if-ne v2, v0, :cond_2e

    :try_start_14
    const-string v0, "ALTER TABLE favorites ADD profileId INTEGER NOT NULL DEFAULT 0 "

    .line 1773
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_8

    goto :goto_22

    :catch_8
    move-exception v0

    .line 1776
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "duplicate column name:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    :goto_22
    const/16 v2, 0x18

    goto :goto_23

    .line 1777
    :cond_2d
    throw v0

    :cond_2e
    :goto_23
    const/16 v0, 0x18

    if-ne v2, v0, :cond_2f

    .line 1785
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move v7, v8

    move-object/from16 v8, p0

    .line 1787
    :try_start_15
    iget-object v0, v8, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/library/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    .line 1788
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "profileId"

    long-to-int v0, v0

    .line 1789
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v6, v36

    .line 1790
    invoke-static {v13, v6, v2, v15, v15}, Lcom/miui/home/launcher/LauncherProvider;->safelyUpdateDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1791
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    .line 1793
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/16 v2, 0x19

    goto :goto_24

    :catchall_a
    move-exception v0

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1794
    throw v0

    :cond_2f
    move v7, v8

    move-object/from16 v6, v36

    move-object/from16 v8, p0

    :goto_24
    const/16 v0, 0x19

    if-ne v2, v0, :cond_30

    const-string/jumbo v0, "update favorites set launchCount = launchCount+1 where itemType = 2"

    .line 1799
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const/16 v2, 0x1a

    :cond_30
    const/16 v0, 0x1a

    if-ne v2, v0, :cond_31

    .line 1805
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->deleteClockBack()V

    const/16 v2, 0x1b

    :cond_31
    const/16 v0, 0x1b

    if-ne v2, v0, :cond_32

    .line 1810
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.miui.barcodescanner"

    const-string v2, "com.miui.barcodescanner.activity.CaptureActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaomi.scanner"

    const-string v3, "com.xiaomi.scanner.app.ScanActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1812
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.calculator2"

    const-string v2, "com.android.calculator2.Calculator"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.calculator"

    const-string v3, "com.miui.calculator.cal.CalculatorActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const/16 v2, 0x1c

    :cond_32
    const/16 v0, 0x1c

    if-ne v2, v0, :cond_34

    .line 1818
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "file:///system/media/theme/default/gadgets/music.mtz"

    .line 1819
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "uri=?"

    invoke-static {v13, v6, v1, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_33
    const/16 v2, 0x1d

    :cond_34
    const/16 v0, 0x1d

    if-ne v2, v0, :cond_35

    .line 1826
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->deleteClockBack()V

    const/16 v2, 0x1e

    :cond_35
    const/16 v0, 0x1e

    if-ne v2, v0, :cond_36

    const-string v0, "com.miui.gallery/.app.Gallery"

    .line 1833
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "com.miui.gallery/.activity.HomePageActivity"

    .line 1834
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1832
    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v0, "com.miui.bugreport/.ui.MainActivity"

    .line 1837
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "com.miui.bugreport/.ui.MainTabActivity"

    .line 1838
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1836
    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v0, "com.android.deskclock/.DeskClock"

    .line 1841
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "com.android.deskclock/.DeskClockTabActivity"

    .line 1842
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1840
    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const/16 v2, 0x1f

    :cond_36
    const/16 v0, 0x1f

    if-ne v2, v0, :cond_37

    const-string v0, "5"

    const-string v1, "5"

    .line 1847
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "appWidgetId=? AND itemType = ? "

    invoke-static {v13, v6, v1, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1850
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->deleteClockBack()V

    const/16 v2, 0x20

    :cond_37
    const/16 v0, 0x20

    if-ne v2, v0, :cond_38

    .line 1855
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/16 v1, 0x3e8

    .line 1856
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "appWidgetId"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v5, 0x2

    new-array v1, v5, [Ljava/lang/String;

    const/16 v2, 0x3e8

    .line 1859
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x5

    .line 1860
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "appWidgetId >= ? AND itemType = ?"

    .line 1857
    invoke-static {v13, v6, v0, v2, v1}, Lcom/miui/home/launcher/LauncherProvider;->safelyUpdateDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/16 v2, 0x21

    goto :goto_25

    :cond_38
    const/4 v5, 0x2

    :goto_25
    const/16 v0, 0x21

    if-ne v2, v0, :cond_3a

    :try_start_16
    const-string v0, "ALTER TABLE favorites ADD label STRING "

    .line 1866
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_9

    goto :goto_26

    :catch_9
    move-exception v0

    .line 1869
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "duplicate column name:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    :goto_26
    const/16 v2, 0x22

    goto :goto_27

    .line 1870
    :cond_39
    throw v0

    :cond_3a
    :goto_27
    const/16 v0, 0x22

    if-ne v2, v0, :cond_44

    :try_start_17
    const-string v2, "favorites"

    .line 1881
    filled-new-array/range {v22 .. v22}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "itemType=2"

    const/4 v0, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object/from16 v1, p1

    move/from16 v24, v5

    move-object v5, v0

    move-object/from16 v37, v6

    move-object/from16 v6, v20

    move v15, v7

    move-object/from16 v7, v21

    move-object/from16 v8, v23

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_e

    .line 1884
    :goto_28
    :try_start_18
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1885
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v2, v0

    .line 1886
    invoke-static {v13, v2, v3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryFolderSize(Landroid/database/sqlite/SQLiteDatabase;J)I

    move-result v2

    if-nez v2, :cond_3b

    .line 1887
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v8, v37

    const/4 v2, 0x0

    invoke-static {v13, v8, v0, v2}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_d

    goto :goto_29

    :cond_3b
    move-object/from16 v8, v37

    :goto_29
    move-object/from16 v37, v8

    goto :goto_28

    :cond_3c
    move-object/from16 v8, v37

    .line 1892
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1896
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "ToggleId=10;"

    .line 1897
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "ToggleId=15;"

    .line 1898
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "ToggleId=11;"

    .line 1899
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "ToggleId=1;"

    .line 1900
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "ToggleId=9;"

    .line 1901
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "BluetoothSettingsActivity"

    .line 1902
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "TetherSettingsActivity"

    .line 1903
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "ZonePickerActivity"

    .line 1904
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :try_start_19
    const-string v2, "favorites"

    const-string v1, "intent"

    .line 1907
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "iconType=3 OR iconType=5"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v21, 0x0

    move-object/from16 v1, p1

    move-object/from16 v38, v8

    move-object/from16 v8, v21

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    .line 1911
    :goto_2a
    :try_start_1a
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 1912
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1914
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x1

    :cond_3d
    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1915
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3d

    move v4, v15

    goto :goto_2b

    :cond_3e
    if-eqz v4, :cond_3f

    const-string v3, "intent=?"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    aput-object v2, v5, v15

    move-object/from16 v8, v38

    .line 1920
    invoke-static {v13, v8, v3, v5}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2c

    :cond_3f
    move-object/from16 v8, v38

    :goto_2c
    move-object/from16 v38, v8

    goto :goto_2a

    :cond_40
    move-object/from16 v8, v38

    const-string v0, "appWidgetId=7"

    const/4 v2, 0x0

    .line 1924
    invoke-static {v13, v8, v0, v2}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1926
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-nez v0, :cond_41

    const-string v0, "/system/media/theme/default/gadgets/clock.mtz"

    .line 1928
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELETE FROM favorites WHERE uri LIKE \'%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1931
    :cond_41
    invoke-direct/range {p0 .. p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->deleteEmptyScreen(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    .line 1934
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/16 v2, 0x23

    goto :goto_2f

    :catchall_b
    move-exception v0

    move-object v10, v1

    goto :goto_2d

    :catchall_c
    move-exception v0

    const/4 v10, 0x0

    :goto_2d
    if-eqz v10, :cond_42

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1937
    :cond_42
    throw v0

    :catchall_d
    move-exception v0

    move-object v10, v1

    goto :goto_2e

    :catchall_e
    move-exception v0

    const/4 v10, 0x0

    :goto_2e
    if-eqz v10, :cond_43

    .line 1892
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1895
    :cond_43
    throw v0

    :cond_44
    move/from16 v24, v5

    move-object v8, v6

    move v15, v7

    :goto_2f
    const/16 v0, 0x23

    if-ne v2, v0, :cond_46

    .line 1942
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-nez v0, :cond_45

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_45

    .line 1943
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.xiaomi.account"

    const-string v2, "com.xiaomi.account.ui.AccountSettingsActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaomi.vipaccount"

    const-string v3, "com.xiaomi.vipaccount.ui.VipAccountActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1945
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.xiaomi.account"

    const-string v2, "com.xiaomi.account.ui.MainAccountActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaomi.vipaccount"

    const-string v3, "com.xiaomi.vipaccount.ui.VipAccountActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    :cond_45
    const/16 v2, 0x24

    :cond_46
    const/16 v0, 0x24

    if-ne v2, v0, :cond_49

    const-string v0, "/system/media/theme/default/gadgets/weather_clock.mtz"

    .line 1956
    :try_start_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM favorites WHERE uri LIKE \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v13, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_10

    .line 1958
    :goto_30
    :try_start_1c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 1959
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "profileId"

    const-string v4, "profileId"

    .line 1960
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1961
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v12, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1962
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1963
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1964
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1965
    invoke-static {v13, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addClock2x4(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    goto :goto_30

    .line 1967
    :cond_47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELETE FROM favorites WHERE uri LIKE \'%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_f

    .line 1971
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/16 v2, 0x25

    goto :goto_32

    :catchall_f
    move-exception v0

    move-object v10, v1

    goto :goto_31

    :catchall_10
    move-exception v0

    const/4 v10, 0x0

    :goto_31
    if-eqz v10, :cond_48

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1974
    :cond_48
    throw v0

    :cond_49
    :goto_32
    const/16 v0, 0x25

    if-ne v2, v0, :cond_4a

    .line 1979
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/16 v1, 0x18

    new-array v1, v1, [I

    .line 1980
    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->convertIntArrayToString([I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "launchCount"

    .line 1981
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    .line 1982
    invoke-static {v13, v8, v0, v9, v9}, Lcom/miui/home/launcher/LauncherProvider;->safelyUpdateDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/16 v2, 0x26

    goto :goto_33

    :cond_4a
    const/4 v9, 0x0

    :goto_33
    const/16 v0, 0x26

    const-string v1, "com.android.fileexplorer.FileExplorerTabActivity"

    if-ne v2, v0, :cond_4c

    .line 1987
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_4b

    .line 1988
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.fileexplorer"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.mi.android.globalFileexplorer"

    invoke-direct {v2, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v0, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    :cond_4b
    const/16 v2, 0x27

    :cond_4c
    const/16 v0, 0x27

    if-ne v2, v0, :cond_4e

    .line 1995
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_4d

    .line 1996
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.fileexplorer"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.mi.android.globalFileexplorer"

    invoke-direct {v2, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v0, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v0, "com.google.android.googlequicksearchbox/.SearchActivity"

    .line 1999
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v1

    cmp-long v1, v1, v18

    if-nez v1, :cond_4d

    const-string v1, "Google"

    .line 2000
    invoke-static {v13, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v4, v18

    if-eqz v1, :cond_4d

    .line 2002
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move-object/from16 v7, v16

    .line 2003
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Intent;JILandroid/content/pm/PackageManager;)V

    :cond_4d
    const/16 v2, 0x28

    :cond_4e
    const/16 v0, 0x28

    if-eq v2, v0, :cond_50

    const/16 v0, 0x29

    if-ne v2, v0, :cond_4f

    goto :goto_34

    :cond_4f
    move v0, v2

    move-object v10, v8

    move-object/from16 v2, p0

    goto/16 :goto_39

    :cond_50
    :goto_34
    const-string v0, "ALTER TABLE favorites ADD COLUMN appWidgetProvider STRING"

    .line 2011
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :try_start_1d
    const-string v2, "favorites"

    const-string v0, "appWidgetId"

    move-object/from16 v1, v22

    .line 2015
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "itemType=4"
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_11

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x0

    move-object/from16 v1, p1

    move-object v10, v8

    move-object v8, v0

    :try_start_1e
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_c
    .catchall {:try_start_1e .. :try_end_1e} :catchall_11

    .line 2017
    :cond_51
    :goto_35
    :try_start_1f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 2018
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v2, 0x1

    .line 2019
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_b
    .catchall {:try_start_1f .. :try_end_1f} :catchall_13

    move-object/from16 v2, p0

    .line 2020
    :try_start_20
    iget-object v4, v2, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    if-eqz v3, :cond_51

    .line 2022
    sget-object v4, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    const-string v5, "appWidgetProvider"

    .line 2023
    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "_id=?"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    .line 2024
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v15

    invoke-static {v13, v10, v4, v3, v6}, Lcom/miui/home/launcher/LauncherProvider;->safelyUpdateDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_a
    .catchall {:try_start_20 .. :try_end_20} :catchall_13

    goto :goto_35

    :catch_a
    move-exception v0

    goto :goto_37

    :cond_52
    move-object/from16 v2, p0

    goto :goto_38

    :catch_b
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_37

    :catch_c
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_36

    :catchall_11
    move-exception v0

    move-object v10, v9

    goto/16 :goto_40

    :catch_d
    move-exception v0

    move-object/from16 v2, p0

    move-object v10, v8

    :goto_36
    move-object v1, v9

    .line 2028
    :goto_37
    :try_start_21
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_13

    if-eqz v1, :cond_53

    .line 2031
    :goto_38
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_53
    const/16 v0, 0x2a

    :goto_39
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_54

    const-string v0, "#Intent;action=com.miui.action.SETTINGS_SHURTCUT;component=com.android.settings/.Settings%24BluetoothSettingsActivity;end"

    const-string v1, "#Intent;action=com.miui.action.TOGGLE_SHURTCUT;i.ToggleId=2;end"

    .line 2039
    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->updateSettingIconToToggle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "#Intent;action=com.miui.action.SETTINGS_SHURTCUT;component=com.android.settings/.Settings%24TetherSettingsActivity;end"

    const-string v1, "#Intent;action=com.miui.action.TOGGLE_SHURTCUT;i.ToggleId=24;end"

    .line 2041
    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->updateSettingIconToToggle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "#Intent;action=com.miui.action.SETTINGS_SHURTCUT;component=com.android.settings/.Settings%24ZonePickerActivity;end"

    .line 2043
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "intent=?"

    invoke-static {v13, v10, v1, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const/16 v0, 0x2b

    :cond_54
    const/16 v1, 0x2b

    if-ne v0, v1, :cond_55

    .line 2049
    new-instance v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, v2, v13}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    sget-object v1, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$$ExternalSyntheticLambda1;->INSTANCE:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$$ExternalSyntheticLambda1;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/LauncherAsyncTaskExecutorHelper;->waitForUnlockAndRunOnNonUiThread(Ljava/lang/Runnable;Ljava/util/function/Consumer;)V

    const/16 v0, 0x2c

    :cond_55
    const/16 v1, 0x2c

    if-ne v0, v1, :cond_56

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/16 v1, 0x10

    .line 2067
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v15

    const-string v1, "itemType=?"

    .line 2066
    invoke-static {v13, v10, v1, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const/16 v0, 0x2d

    :cond_56
    const/16 v1, 0x2d

    if-ne v0, v1, :cond_57

    const-string v0, "DELETE FROM favorites WHERE appWidgetProvider LIKE \'com.xunmeng.pinduoduo/%\'"

    .line 2072
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const/16 v0, 0x2e

    :cond_57
    const/16 v1, 0x2e

    if-ne v0, v1, :cond_58

    .line 2078
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaPreInstallFixIconPackageUtils;->fixIconPackage()V

    const/16 v0, 0x2f

    :cond_58
    const/16 v1, 0x2f

    if-ne v0, v1, :cond_59

    const-string v0, "17"

    const-string v1, "#Intent;component=com.miui.home/.settings.MiuiHomeSettingActivity;end"

    .line 2084
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "itemType=? And intent=?"

    invoke-static {v13, v10, v1, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const/16 v0, 0x30

    :cond_59
    const/16 v1, 0x30

    if-ne v0, v1, :cond_5a

    .line 2090
    iget-object v0, v2, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->updateSearchBarTransferEnable(Landroid/content/Context;)V

    const/16 v0, 0x31

    :cond_5a
    const/16 v1, 0x31

    if-ne v0, v1, :cond_5b

    const-string v0, "ALTER TABLE favorites ADD COLUMN originWidgetId INTEGER NOT NULL DEFAULT -1"

    .line 2095
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "ALTER TABLE favorites ADD COLUMN product_id STRING"

    .line 2097
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const/16 v0, 0x32

    :cond_5b
    const/16 v1, 0x32

    if-ne v0, v1, :cond_5c

    const-string v0, "UPDATE favorites SET itemType = \'19\' WHERE itemType = \'18\' AND product_id is not null"

    .line 2109
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const/16 v0, 0x33

    :cond_5c
    const/16 v1, 0x33

    if-ne v0, v1, :cond_5d

    const/16 v0, 0x34

    :cond_5d
    const/16 v1, 0x34

    if-ne v0, v1, :cond_5e

    const/16 v0, 0x35

    :cond_5e
    const/16 v1, 0x35

    if-ne v0, v1, :cond_5f

    const/16 v0, 0x36

    .line 2121
    :cond_5f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpgrade: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p2

    move/from16 v4, v24

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v5, v32

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x36

    if-ne v0, v1, :cond_60

    const/16 v0, 0x37

    :cond_60
    const/16 v1, 0x37

    if-ne v0, v1, :cond_62

    .line 2127
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2129
    :try_start_22
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDefaultMiuiIcon()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 2130
    invoke-direct/range {p0 .. p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->UpdateDatabaseClockProductId(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2132
    :cond_61
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 2133
    invoke-direct/range {p0 .. p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->updateAllFolderAppPredictStatus(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_e
    .catchall {:try_start_22 .. :try_end_22} :catchall_12

    .line 2138
    :goto_3a
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3b

    :catchall_12
    move-exception v0

    goto :goto_3c

    :catch_e
    move-exception v0

    :try_start_23
    const-string v1, "onUpgrade: \u66f4\u65b0MIUI15\u65b0\u63a7\u4ef6\u5931\u8d25\uff01"

    .line 2135
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_12

    goto :goto_3a

    .line 2140
    :goto_3b
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->setIsOnUpgradeMiui15(Z)V

    new-array v0, v1, [Ljava/lang/String;

    const/16 v1, 0x17

    .line 2143
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v15

    const-string v1, "itemType=?"

    .line 2142
    invoke-static {v13, v10, v1, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "onUpgrade: 56"

    .line 2144
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x38

    goto :goto_3d

    .line 2138
    :goto_3c
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2139
    throw v0

    :cond_62
    :goto_3d
    const/16 v1, 0x39

    if-ge v3, v1, :cond_63

    const/4 v1, 0x1

    .line 2148
    invoke-static {v1}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->setOldUserPullUpToSearch(Z)V

    :cond_63
    const/16 v1, 0x38

    if-ne v0, v1, :cond_64

    const/16 v0, 0x39

    :cond_64
    const/16 v1, 0x39

    if-ne v0, v1, :cond_65

    const-string v0, "grid upgrade Db"

    .line 2154
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->updateCellCountSp()V

    .line 2156
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->updateIconScaleSp()V

    .line 2157
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/DbCellCountHelper;->SCREEN_CELLS_BEFORE_GRID_OTA:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/DbCellCountHelper;->updateSaveDbDataCellCount(Lcom/miui/home/launcher/allapps/LauncherMode;Ljava/lang/String;)V

    .line 2158
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    const-string v1, "grid_upgrade"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/miui/home/launcher/common/BaseSharePreference;->putBoolean(Ljava/lang/String;Z)V

    .line 2159
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    const-string v1, "pref_key_layout_type"

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/BaseSharePreference;->remove(Ljava/lang/String;)V

    const/16 v0, 0x3b

    goto :goto_3e

    :cond_65
    const/4 v3, 0x1

    :goto_3e
    const/16 v1, 0x3a

    if-ne v0, v1, :cond_67

    .line 2164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "countX is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v1

    const/4 v6, 0x4

    if-ne v1, v6, :cond_66

    move v6, v3

    goto :goto_3f

    :cond_66
    move v6, v4

    :goto_3f
    const-string v1, "pref_key_layout_type"

    invoke-virtual {v0, v1, v6}, Lcom/miui/home/launcher/common/BaseSharePreference;->putInt(Ljava/lang/String;I)V

    const/16 v0, 0x3b

    :cond_67
    const/16 v1, 0x3b

    if-ne v0, v1, :cond_68

    .line 2171
    invoke-direct/range {p0 .. p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->deleteIllegalWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    const/16 v0, 0x3c

    :cond_68
    move/from16 v1, p3

    if-eq v0, v1, :cond_69

    const-string v0, "Destroying all old data and re-create."

    .line 2180
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2181
    invoke-virtual/range {p0 .. p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_69
    return-void

    :catchall_13
    move-exception v0

    move-object v10, v1

    :goto_40
    if-eqz v10, :cond_6a

    .line 2031
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2034
    :cond_6a
    throw v0
.end method

.method public queryAppWidgetIds(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2551
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "favorites"

    const-string v1, "appWidgetId"

    .line 2553
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "itemType=5"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2555
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 2556
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 2557
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2558
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v1, "Launcher.LauncherProvider"

    const-string v2, "Fail to query AppWidgetIds from db."

    .line 2562
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 2565
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p0

    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2568
    :cond_3
    throw p0
.end method

.method public updatePreferenceValue(Landroid/content/ContentValues;)V
    .locals 6

    .line 1143
    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1144
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1145
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 1146
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 1147
    :cond_0
    instance-of v3, v2, Ljava/lang/Float;

    if-eqz v3, :cond_1

    .line 1148
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v3, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putFloat(Landroid/content/Context;Ljava/lang/String;F)V

    goto :goto_0

    .line 1149
    :cond_1
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 1150
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v3, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1151
    :cond_2
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_3

    .line 1152
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v1, v4, v5}, Lcom/miui/home/launcher/common/PreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    .line 1154
    :cond_3
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void
.end method
