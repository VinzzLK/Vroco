.class public Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;
.super Ljava/lang/Object;
.source "ApplicationProgressProcessor.java"


# static fields
.field private static final URI_CLOUD_BACKUP_INFO:Landroid/net/Uri;

.field private static sPaint:Landroid/graphics/Paint;

.field private static sProgressFilter:Landroid/graphics/LightingColorFilter;


# instance fields
.field private final mAllServersProgressMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAllServersStatusTitleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private mCloudBackupPackageName:Ljava/lang/String;

.field private final mCurrentProgressingMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/home/launcher/progress/ProgressShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFinishWaitingCallback:Ljava/lang/Runnable;

.field private mIsStop:Z

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mProgressInfoList:Lcom/miui/home/launcher/progress/ProgressInfoList;

.field private final mServerChangedValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mServerNoObservingCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWaitingForCloudAppBackup:Z


# direct methods
.method public static synthetic $r8$lambda$AmhOLkUJXBklSf4fUj3dKQfzCNg(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;Lcom/miui/home/launcher/progress/ProgressUpdateParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->lambda$handleProgressUpdate$1(Lcom/miui/home/launcher/progress/ProgressUpdateParams;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Jsmsopxb7imfoy5HsdHgXfSeKdw(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->lambda$handleProgressUpdate$0(Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->sPaint:Landroid/graphics/Paint;

    .line 57
    new-instance v0, Landroid/graphics/LightingColorFilter;

    const v1, 0x808080

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    sput-object v0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->sProgressFilter:Landroid/graphics/LightingColorFilter;

    const-string v0, "content://com.miui.cloudbackup"

    .line 576
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 577
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "restore_app_info"

    .line 578
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 579
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->URI_CLOUD_BACKUP_INFO:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mIsStop:Z

    .line 54
    iput-boolean v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mWaitingForCloudAppBackup:Z

    const-string v0, ""

    .line 55
    iput-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCloudBackupPackageName:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mServerChangedValues:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mServerNoObservingCount:Ljava/util/HashMap;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCurrentProgressingMap:Ljava/util/HashMap;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersStatusTitleMap:Ljava/util/HashMap;

    .line 66
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mProgressInfoList:Lcom/miui/home/launcher/progress/ProgressInfoList;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/miui/home/launcher/progress/ProgressInfoList;

    new-instance v1, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$1;-><init>(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;)V

    invoke-direct {v0, p1, v1}, Lcom/miui/home/launcher/progress/ProgressInfoList;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mProgressInfoList:Lcom/miui/home/launcher/progress/ProgressInfoList;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;)Ljava/util/HashMap;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersStatusTitleMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;)Lcom/miui/home/launcher/progress/ProgressInfoList;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mProgressInfoList:Lcom/miui/home/launcher/progress/ProgressInfoList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;)Ljava/util/HashMap;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    return-object p0
.end method

.method private addNewProgressItem(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Z)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 296
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v6, "android.intent.extra.shortcut.NAME"

    .line 297
    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "iconUri"

    .line 298
    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 299
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "com.miui.action.DOWNLOADING_APP"

    .line 300
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    new-instance v7, Landroid/content/ComponentName;

    const-string v8, "invalidClassName"

    invoke-direct {v7, v1, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v7, "android.intent.extra.shortcut.INTENT"

    .line 302
    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 303
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "packageName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",title: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", iconUri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "addNewProgressItem"

    invoke-static {v6, v3}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v3, v0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v3}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/Application;

    move-result-object v3

    .line 306
    invoke-virtual {v3}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v3

    const/4 v6, 0x0

    if-nez v3, :cond_0

    return v6

    .line 311
    :cond_0
    iget-object v7, v0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3, v7, v5, v1}, Lcom/miui/home/launcher/LauncherModel;->getProgressItemInfo(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 313
    iget-boolean v3, v0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mWaitingForCloudAppBackup:Z

    if-eqz v3, :cond_1

    .line 314
    iget-object v3, v0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v3}, Lcom/miui/home/launcher/RemovedComponentInfoList;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/RemovedComponentInfoList;

    move-result-object v3

    iget-object v5, v9, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/miui/home/launcher/RemovedComponentInfoList;->getRemovedInfo(Landroid/content/ComponentName;)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 316
    invoke-virtual {v9, v3}, Lcom/miui/home/launcher/ItemInfo;->copyPosition(Lcom/miui/home/launcher/ItemInfo;)V

    .line 319
    :cond_1
    invoke-virtual {v9, v1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->setPackageName(Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 320
    iput v1, v9, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    .line 321
    iput-object v4, v9, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    .line 322
    iput-object v2, v9, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressTitle:Ljava/lang/String;

    .line 323
    invoke-direct {v0, v9}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->addProgressingInfo(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V

    .line 324
    iget-object v1, v0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez v1, :cond_2

    return v6

    :cond_2
    const/4 v1, 0x0

    if-eqz p5, :cond_3

    .line 326
    invoke-direct {v0, v4}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->isWaitingFor(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 327
    iget-object v1, v0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mFinishWaitingCallback:Ljava/lang/Runnable;

    .line 328
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->finishWaiting()V

    .line 334
    :cond_3
    iget-wide v12, v9, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long v2, v12, v2

    if-nez v2, :cond_4

    .line 335
    iget-object v0, v0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget v2, v9, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    invoke-virtual {v0, v9, v2, v6, v1}, Lcom/miui/home/launcher/Launcher;->addItemToHotseats(Lcom/miui/home/launcher/ItemInfo;IZLjava/lang/Runnable;)V

    goto :goto_0

    .line 337
    :cond_4
    iget-object v8, v0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-wide v10, v9, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iget v14, v9, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v15, v9, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    const/16 v16, 0x0

    move-object/from16 v17, v1

    invoke-virtual/range {v8 .. v17}, Lcom/miui/home/launcher/Launcher;->addItemToWorkspace(Lcom/miui/home/launcher/ItemInfo;JJIIZLjava/lang/Runnable;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_5
    return v6
.end method

.method private addProgressingInfo(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V
    .locals 4

    .line 528
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 529
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCurrentProgressingMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Launcher_ApplicationProgressManager"

    .line 531
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAllServersProgressMap.put:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 535
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mProgressInfoList:Lcom/miui/home/launcher/progress/ProgressInfoList;

    invoke-virtual {p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/progress/ProgressInfoList;->containsAppProgress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 538
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mProgressInfoList:Lcom/miui/home/launcher/progress/ProgressInfoList;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/progress/ProgressInfoList;->recordProgressInfo(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)Z

    .line 540
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private attachProgressToNewServer(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Ljava/lang/String;)V
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 447
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->onProgressIconDeleted(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V

    .line 448
    invoke-virtual {p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->removeProgressingInfo(Ljava/lang/String;)V

    .line 449
    iput-object p2, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    .line 450
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->addProgressingInfo(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V

    .line 451
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static drawProgressIcon(Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V
    .locals 11

    .line 87
    sget-object p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->sPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p2, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 88
    sget-object p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->sPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 89
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    int-to-float v4, p0

    int-to-float p3, p3

    mul-float/2addr p3, v4

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p3, v0

    float-to-int p3, p3

    sub-int/2addr p0, p3

    int-to-float v9, p0

    .line 91
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    int-to-float v3, p0

    sget-object v5, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->sPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    move-object v0, p1

    move v2, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 92
    sget-object p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->sPaint:Landroid/graphics/Paint;

    sget-object p3, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->sProgressFilter:Landroid/graphics/LightingColorFilter;

    invoke-virtual {p0, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 93
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    int-to-float v8, p0

    sget-object v10, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->sPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private finishWaiting()V
    .locals 2

    .line 650
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mFinishWaitingCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 651
    iput-boolean v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mWaitingForCloudAppBackup:Z

    return-void
.end method

.method private getIconUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    .line 640
    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "restore_icons"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string p2, "%s/%s.png"

    .line 641
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 642
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getProgressFilter()Landroid/graphics/LightingColorFilter;
    .locals 1

    .line 474
    sget-object v0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->sProgressFilter:Landroid/graphics/LightingColorFilter;

    return-object v0
.end method

.method private isWaitingFor(Ljava/lang/String;)Z
    .locals 1

    .line 646
    iget-boolean v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mWaitingForCloudAppBackup:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCloudBackupPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$handleProgressUpdate$0(Ljava/util/List;)V
    .locals 5

    .line 116
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 118
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/progress/ProgressUpdateParams;

    add-int/lit8 v4, v0, -0x1

    if-ne v2, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-virtual {p0, v3, v4}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->updateProgress(Lcom/miui/home/launcher/progress/ProgressUpdateParams;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$handleProgressUpdate$1(Lcom/miui/home/launcher/progress/ProgressUpdateParams;)V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getStatus()I

    move-result v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getServer()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mapStatusToTitle(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->setTitle(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 136
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->updateProgress(Lcom/miui/home/launcher/progress/ProgressUpdateParams;Z)V

    :cond_0
    return-void
.end method

.method private mapStatusToTitle(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersStatusTitleMap:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    if-eqz p0, :cond_1

    if-ltz p1, :cond_0

    const/16 p2, 0x64

    if-gt p1, p2, :cond_0

    const/4 p1, -0x2

    .line 423
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/miui/home/launcher/LauncherModel;->loadTitle(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 426
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private onNewProgressStart(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Z)Z
    .locals 3

    .line 251
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isAutoAddNewAppShortcut()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/miui/home/launcher/Launcher;->getFirstAppInfo(Ljava/lang/String;Z)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 257
    invoke-direct/range {p0 .. p5}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->addNewProgressItem(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method private onProgressFinished(Ljava/lang/String;)V
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCurrentProgressingMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    .line 348
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->removeProgressingInfo(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 354
    iget-object p1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 355
    iget-object p1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    new-instance v1, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$3;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$3;-><init>(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private queryProgressSharedValue(Ljava/lang/String;)V
    .locals 5

    .line 516
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 517
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 518
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 519
    invoke-static {p1, v1}, Lcom/miui/home/launcher/progress/ProgressManager;->queryProgressSharedValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 520
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryProgressSharedValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Launcher_ApplicationProgressManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    new-instance v3, Lcom/miui/home/launcher/progress/ProgressUpdateParams;

    invoke-direct {v3, v1, p1, v2}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 522
    invoke-direct {p0, v2, p1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mapStatusToTitle(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->setTitle(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 523
    invoke-virtual {p0, v3, v1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->updateProgress(Lcom/miui/home/launcher/progress/ProgressUpdateParams;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateExperimentParams(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Ljava/lang/String;)V
    .locals 1

    .line 434
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p2, "showNewInstallAnim"

    const/4 v0, 0x0

    .line 435
    invoke-virtual {p0, p2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 436
    iget p0, p1, Lcom/miui/home/launcher/ItemInfo;->itemFlags:I

    or-int/lit16 p0, p0, 0x100

    iput p0, p1, Lcom/miui/home/launcher/ItemInfo;->itemFlags:I

    .line 438
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 441
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private updateInfo(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;ILjava/lang/String;Landroid/net/Uri;)V
    .locals 7

    .line 367
    new-instance v6, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$4;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$4;-><init>(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;ILjava/lang/String;Landroid/net/Uri;)V

    invoke-static {v6}, Lcom/miui/home/launcher/common/Utilities;->useLauncherToRunOnUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateStatusTitleMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 148
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersStatusTitleMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersStatusTitleMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersStatusTitleMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mProgressInfoList:Lcom/miui/home/launcher/progress/ProgressInfoList;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/progress/ProgressInfoList;->recordStatusTitleMap(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 154
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "server "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " send wrong title"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Launcher_ApplicationProgressManager"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bindProgressItem(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Z)Z
    .locals 7

    const/4 v0, 0x1

    const-wide/16 v1, -0x1

    if-nez p2, :cond_0

    .line 228
    iget-wide v3, p1, Lcom/miui/home/launcher/ItemInfo;->id:J

    cmp-long p2, v3, v1

    if-eqz p2, :cond_0

    .line 229
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->addProgressingInfo(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V

    return v0

    .line 232
    :cond_0
    iget-object p2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mProgressInfoList:Lcom/miui/home/launcher/progress/ProgressInfoList;

    invoke-virtual {p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3, p1}, Lcom/miui/home/launcher/progress/ProgressInfoList;->getProgressInfo(Ljava/lang/String;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCurrentProgressingMap:Ljava/util/HashMap;

    .line 233
    invoke-virtual {p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, -0x1

    .line 234
    iput p2, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    .line 235
    iget-object v3, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    invoke-direct {p0, p2, v3}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mapStatusToTitle(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressTitle:Ljava/lang/String;

    .line 237
    iget-wide v3, p1, Lcom/miui/home/launcher/ItemInfo;->id:J

    cmp-long p2, v3, v1

    if-nez p2, :cond_1

    .line 238
    invoke-virtual {p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressTitle:Ljava/lang/String;

    .line 239
    invoke-virtual {p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getLocalIconUri()Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, p0

    .line 238
    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->onNewProgressStart(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result p0

    return p0

    .line 241
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->addProgressingInfo(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public checkProgress(Landroid/content/Context;)V
    .locals 9

    .line 478
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 479
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->shouldCheckProgress()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 480
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 482
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 483
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->isSupportProgress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 486
    :cond_2
    invoke-static {v2}, Lcom/miui/home/launcher/progress/ProgressManager;->generateServiceProgressChangedKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/miui/Shell;->getRuntimeSharedValue(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 488
    iget-object v4, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mServerChangedValues:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mServerChangedValues:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    move v4, v6

    goto :goto_2

    :cond_4
    :goto_1
    move v4, v5

    :goto_2
    if-nez v4, :cond_5

    .line 490
    iget-object v7, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mServerNoObservingCount:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const/4 v5, 0x5

    if-nez v4, :cond_6

    .line 492
    iget-object v7, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mServerNoObservingCount:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v7, v5, :cond_1

    .line 493
    :cond_6
    iget-object v7, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mServerChangedValues:Ljava/util/HashMap;

    invoke-virtual {v7, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    invoke-static {p1, v2}, Lcom/miui/home/launcher/progress/ProgressManager;->isServerEnableShareProgressStatus(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersStatusTitleMap:Ljava/util/HashMap;

    .line 495
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 496
    invoke-static {p1}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/Application;

    move-result-object v3

    if-eqz v4, :cond_7

    .line 498
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->queryProgressSharedValue(Ljava/lang/String;)V

    goto :goto_3

    .line 499
    :cond_7
    iget-object v4, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mServerNoObservingCount:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mServerNoObservingCount:Ljava/util/HashMap;

    .line 500
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v5, :cond_9

    .line 501
    invoke-virtual {v3}, Lcom/miui/home/launcher/Application;->hasBroughtToForeground()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 502
    invoke-static {p1}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v5, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    .line 503
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    new-array v7, v6, [Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 502
    invoke-virtual {v3, v4, v2, v5}, Lcom/miui/home/launcher/progress/ProgressManager;->queryProgressByBroadcast(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    .line 506
    :cond_8
    invoke-static {p1}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v5, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    .line 507
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    new-array v7, v6, [Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 506
    invoke-virtual {v3, v4, v2, v5}, Lcom/miui/home/launcher/progress/ProgressManager;->queryProgressByBroadcast(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 509
    :cond_9
    :goto_3
    iget-object v3, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mServerNoObservingCount:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 512
    :cond_a
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clear()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCurrentProgressingMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 162
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    const-string p0, "Launcher_ApplicationProgressManager"

    const-string v1, "mAllServersProgressMap.clear()"

    .line 163
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAllProgressKeys()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 223
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mProgressInfoList:Lcom/miui/home/launcher/progress/ProgressInfoList;

    invoke-virtual {p0}, Lcom/miui/home/launcher/progress/ProgressInfoList;->getAllProgressPackages()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getInfo(Ljava/lang/String;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mProgressInfoList:Lcom/miui/home/launcher/progress/ProgressInfoList;

    if-eqz p0, :cond_0

    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/progress/ProgressInfoList;->getProgressInfo(Ljava/lang/String;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)Z

    :cond_0
    return-void
.end method

.method public handleProgressUpdate(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const-string v0, "Launcher_ApplicationProgressManager"

    .line 99
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.miui.home.extra.server_name"

    .line 100
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    invoke-static {p2}, Lcom/miui/launcher/utils/LauncherUtils;->getSender(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 104
    :cond_0
    iget-object v3, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez v3, :cond_1

    return-void

    .line 109
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mServerNoObservingCount:Ljava/util/HashMap;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "miui.intent.action.APPLICATION_PROGRESS_UPDATE"

    .line 110
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "android.intent.extra.update_application_progress_title"

    .line 111
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string p1, "android.intent.extra.update_progress_check_code"

    const-wide/16 v1, 0x0

    .line 112
    invoke-virtual {p2, p1, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 113
    invoke-static {v3}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressManager;->getCheckCode()J

    move-result-wide v6

    cmp-long p1, v4, v6

    if-eqz p1, :cond_2

    cmp-long p1, v4, v1

    if-nez p1, :cond_6

    .line 114
    :cond_2
    invoke-static {p2}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->createFromIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    .line 115
    new-instance p2, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;Ljava/util/List;)V

    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->useLauncherToRunOnUiThread(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 122
    :cond_3
    invoke-static {p1, v2}, Lcom/miui/home/launcher/progress/ProgressManager;->isServerEnableShareProgressStatus(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 123
    new-instance p1, Lcom/miui/home/launcher/progress/ProgressUpdateParams;

    invoke-direct {p1, p2}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;-><init>(Landroid/content/Intent;)V

    const-string v1, "android.intent.extra.update_progress_status_title_map"

    .line 124
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 125
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateStatusTitleMap:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-direct {p0, v2, p2}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->updateStatusTitleMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_4
    iget-object p2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCurrentProgressingMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    if-eqz p2, :cond_5

    const/4 v1, 0x1

    .line 131
    invoke-virtual {p2, v1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->setStarted(Z)V

    .line 133
    :cond_5
    new-instance p2, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;Lcom/miui/home/launcher/progress/ProgressUpdateParams;)V

    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->useLauncherToRunOnUiThread(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "problem while receiving progress info"

    .line 142
    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_0
    return-void
.end method

.method public isStop()Z
    .locals 0

    .line 218
    iget-boolean p0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mIsStop:Z

    return p0
.end method

.method isSupportProgress(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "com.android.vending"

    .line 470
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public loadingProgressFromCloudAppBackup(Landroid/content/Context;Ljava/lang/Runnable;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Runnable;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "Launcher_ApplicationProgressManager"

    .line 588
    iput-object p2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mFinishWaitingCallback:Ljava/lang/Runnable;

    const/4 p2, 0x0

    const/4 v1, 0x0

    .line 593
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->URI_CLOUD_BACKUP_INFO:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    :try_start_1
    const-string v3, "pkg_name"

    .line 595
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "is_on_launcher=?"

    const-string v3, "1"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 598
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 599
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 600
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    invoke-direct {p0, p1, v3}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->getIconUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object p4, p2

    move-object p2, v2

    goto/16 :goto_4

    :catch_0
    move-exception p4

    move-object v9, p4

    move-object p4, p2

    move-object p2, v2

    move-object v2, v9

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    .line 609
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    :cond_1
    if-eqz p2, :cond_3

    .line 612
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object p4, p2

    goto/16 :goto_4

    :catch_1
    move-exception p4

    move-object v2, p4

    move-object p4, p2

    :goto_1
    :try_start_2
    const-string v3, "loadingProgressFromCloudAppBackup(): "

    .line 606
    invoke-static {v0, v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p2, :cond_2

    .line 609
    invoke-virtual {p2}, Landroid/content/ContentProviderClient;->release()Z

    :cond_2
    if-eqz p4, :cond_3

    .line 612
    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    .line 616
    :cond_3
    :goto_2
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p0, ""

    return-object p0

    .line 620
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "cloudbackup_server"

    invoke-static {p2, p3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCloudBackupPackageName:Ljava/lang/String;

    .line 621
    iget-object p3, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mServerNoObservingCount:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "cloudbackup_title_map"

    invoke-static {p1, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    new-array p3, p2, [Ljava/lang/Object;

    aput-object p1, p3, v1

    const-string p4, "loadingProgressFromCloudAppBackup(): titleMap = %s"

    .line 624
    invoke-static {p4, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5

    .line 627
    :try_start_3
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 628
    iget-object p4, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersStatusTitleMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCloudBackupPackageName:Ljava/lang/String;

    invoke-virtual {p4, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    iget-object p3, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mProgressInfoList:Lcom/miui/home/launcher/progress/ProgressInfoList;

    iget-object p4, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCloudBackupPackageName:Ljava/lang/String;

    invoke-virtual {p3, p4, p1}, Lcom/miui/home/launcher/progress/ProgressInfoList;->recordStatusTitleMap(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 631
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "server "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCloudBackupPackageName:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " send wrong title"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 635
    :cond_5
    :goto_3
    iput-boolean p2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mWaitingForCloudAppBackup:Z

    .line 636
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCloudBackupPackageName:Ljava/lang/String;

    return-object p0

    :catchall_2
    move-exception p0

    :goto_4
    if-eqz p2, :cond_6

    .line 609
    invoke-virtual {p2}, Landroid/content/ContentProviderClient;->release()Z

    :cond_6
    if-eqz p4, :cond_7

    .line 612
    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    .line 614
    :cond_7
    throw p0
.end method

.method public onLoadingFinished()V
    .locals 6

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 169
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 172
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 173
    iget-object v2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v2}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v4, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    .line 174
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 173
    invoke-virtual {v2, v3, v1, v4}, Lcom/miui/home/launcher/progress/ProgressManager;->queryProgressByBroadcast(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onProgressIconClicked(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V
    .locals 3

    .line 550
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCurrentProgressingMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.home.action.on_click"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 552
    iget-object v1, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 553
    invoke-virtual {p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.update_progress_key"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 554
    iget-object p1, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    iget-object p0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1, v0, p0}, Lcom/miui/home/launcher/progress/ProgressManager;->communicateToServer(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onProgressIconDeleted(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V
    .locals 3

    .line 562
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCurrentProgressingMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 563
    iget-object v0, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    const-string v1, "com.android.vending"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/install/PackageInstallerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/install/PackageInstallerCompat;

    move-result-object p0

    invoke-virtual {p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/install/PackageInstallerCompat;->removeActiveSession(Ljava/lang/String;)V

    goto :goto_0

    .line 566
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.home.action.on_delete"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 567
    iget-object v1, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 568
    invoke-virtual {p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.update_progress_key"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    iget-object v1, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1, v0, v2}, Lcom/miui/home/launcher/progress/ProgressManager;->communicateToServer(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;)V

    const/16 v0, -0x64

    const/4 v1, 0x0

    const-string v2, ""

    .line 570
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->updateInfo(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;ILjava/lang/String;Landroid/net/Uri;)V

    :cond_1
    :goto_0
    return-void
.end method

.method recordProgressInfo(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mProgressInfoList:Lcom/miui/home/launcher/progress/ProgressInfoList;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/progress/ProgressInfoList;->containsAppProgress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 545
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mProgressInfoList:Lcom/miui/home/launcher/progress/ProgressInfoList;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/home/launcher/progress/ProgressInfoList;->recordProgressInfo(Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;)Z

    :cond_0
    return-void
.end method

.method public removeProgressingInfo(Ljava/lang/String;)V
    .locals 4

    .line 273
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 274
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mProgressInfoList:Lcom/miui/home/launcher/progress/ProgressInfoList;

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/progress/ProgressInfoList;->containsAppProgress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mProgressInfoList:Lcom/miui/home/launcher/progress/ProgressInfoList;

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/progress/ProgressInfoList;->removeProgressInfo(Ljava/lang/String;)V

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCurrentProgressingMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 278
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCurrentProgressingMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    .line 279
    iget-object v2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCurrentProgressingMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object p1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    iget-object v2, v1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 282
    invoke-virtual {v1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 283
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Launcher_ApplicationProgressManager"

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAllServersProgressMap.remove(info.mAppProgressServer):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object p1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    iget-object v2, v1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mServerChangedValues:Ljava/util/HashMap;

    iget-object p1, v1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method shouldCheckProgress()Z
    .locals 4

    .line 455
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 456
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 457
    monitor-exit v0

    return v2

    .line 459
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 460
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 461
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->isSupportProgress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    .line 462
    monitor-exit v0

    return p0

    .line 465
    :cond_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public start()V
    .locals 3

    const/4 v0, 0x0

    .line 185
    iput-boolean v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mIsStop:Z

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 187
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 189
    :cond_0
    new-instance v2, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$2;

    invoke-direct {v2, p0, v1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$2;-><init>(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;Ljava/util/ArrayList;)V

    new-array p0, v0, [Ljava/lang/Void;

    .line 213
    invoke-virtual {v2, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x1

    .line 180
    iput-boolean v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mIsStop:Z

    return-void
.end method

.method public updateProgress(Lcom/miui/home/launcher/progress/ProgressUpdateParams;Z)V
    .locals 10

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateProgress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getStatus()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getIconUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getServer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher_ApplicationProgressManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getStatus()I

    move-result v0

    .line 387
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCurrentProgressingMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, -0x64

    const/4 v3, -0x5

    if-nez v1, :cond_1

    const/4 v1, -0x4

    if-eq v0, v1, :cond_0

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    .line 391
    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getIconUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getServer()Ljava/lang/String;

    move-result-object v8

    move-object v4, p0

    move v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->onNewProgressStart(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Z)Z

    :cond_0
    return-void

    .line 395
    :cond_1
    iget-object p2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCurrentProgressingMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    .line 396
    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getExperimentParams()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 397
    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getExperimentParams()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->updateExperimentParams(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Ljava/lang/String;)V

    .line 399
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getStatus()I

    move-result v1

    if-eq v1, v3, :cond_3

    if-ne v0, v2, :cond_4

    :cond_3
    iget-object v1, p2, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    .line 400
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p2, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getServer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    .line 402
    :cond_4
    iget-object v1, p2, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 403
    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getServer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    if-eq v0, v2, :cond_5

    if-eq v0, v3, :cond_5

    .line 405
    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getServer()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->attachProgressToNewServer(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Ljava/lang/String;)V

    .line 407
    :cond_5
    invoke-virtual {p2}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getLocalIconUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getIconUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    .line 408
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getIconUri()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p2, v0, v2, p1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->updateInfo(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;ILjava/lang/String;Landroid/net/Uri;)V

    if-eqz v1, :cond_8

    .line 410
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mProgressInfoList:Lcom/miui/home/launcher/progress/ProgressInfoList;

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/progress/ProgressInfoList;->recordProgressInfo(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)Z

    goto :goto_2

    .line 401
    :cond_7
    :goto_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->onProgressFinished(Ljava/lang/String;)V

    :cond_8
    :goto_2
    return-void
.end method
