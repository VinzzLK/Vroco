.class public Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;
.super Ljava/lang/Object;
.source "RussiaPreInstallAppsRepository.java"


# static fields
.field private static final DISCOVERY_DATA_CONSTANT_PART_END:Ljava/lang/String;

.field private static volatile instance:Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;


# instance fields
.field private dataSource:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/russia/RussiaPreInstallApp;",
            ">;"
        }
    .end annotation
.end field

.field protected mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public static synthetic $r8$lambda$Rg8r6XIig08mI7iNQT-HQIG8LSM(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->lambda$getDataFromDeepLink$0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 328
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f10016d

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->DISCOVERY_DATA_CONSTANT_PART_END:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->mContentResolver:Landroid/content/ContentResolver;

    .line 44
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->mContentResolver:Landroid/content/ContentResolver;

    .line 45
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;
    .locals 2

    .line 53
    sget-object v0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->instance:Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;

    if-nez v0, :cond_1

    .line 54
    const-class v0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->instance:Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;

    invoke-direct {v1}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->instance:Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;

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

    .line 60
    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->instance:Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;

    return-object v0
.end method

.method private static synthetic lambda$getDataFromDeepLink$0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 356
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 358
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "kbjay_russia_repository"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public addItemToDb(Lcom/miui/home/launcher/russia/RussiaPreInstallApp;)V
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u63d2\u5165\u6570\u636e\u5e93"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kbjay_russia_repository"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object p0, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v0, Lcom/miui/home/launcher/AppStatusProvider;->TABLE_APP_STATE_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->resolve()Landroid/content/ContentValues;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method public getDataFromDeepLink(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 335
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object p0

    const/16 v0, 0x11

    .line 336
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherProvider;->queryPackageNameByItemType(I)Ljava/util/List;

    move-result-object p0

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "market://details/detailfloat?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 341
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    if-nez v3, :cond_0

    .line 343
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 345
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 348
    :cond_1
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "id"

    .line 349
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "packageName"

    invoke-virtual {p0, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "appClientId"

    .line 350
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "&appClientId"

    invoke-virtual {p0, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "appSignature"

    .line 351
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "&appSignature"

    invoke-virtual {p0, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "nonce"

    .line 352
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "&nonce"

    invoke-virtual {p0, v2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "&packageNameList"

    invoke-virtual {p0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    new-instance p1, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository$$ExternalSyntheticLambda0;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 361
    sget-object p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->DISCOVERY_DATA_CONSTANT_PART_END:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDataSource()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/russia/RussiaPreInstallApp;",
            ">;"
        }
    .end annotation

    .line 321
    iget-object p0, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    return-object p0
.end method

.method public handleChangeContainerMessage(Lcom/miui/home/launcher/common/messages/ChangeContainerOnDropMessage;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 290
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->isRussiaRom()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 295
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 300
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/ChangeContainerOnDropMessage;->getStartContainer()J

    move-result-wide v0

    .line 301
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/ChangeContainerOnDropMessage;->getEndContainer()J

    move-result-wide v2

    .line 302
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/ChangeContainerOnDropMessage;->getShortCutInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p1

    .line 304
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Launcher;->getFolderInfoById(J)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 306
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->isRussiaFolder()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->isInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 308
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->getInstance()Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;

    move-result-object p0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->onAppLeaveRussiaFolder(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 313
    :cond_2
    invoke-virtual {p0, v2, v3}, Lcom/miui/home/launcher/Launcher;->getFolderInfoById(J)Lcom/miui/home/launcher/FolderInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 314
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isRussiaFolder()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->isInstalled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 316
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->getInstance()Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;

    move-result-object p0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->onAppMoveToRussiaFolder(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public initDataFromAppStatusProvider()V
    .locals 9

    const-string v0, "kbjay_russia_repository"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "get data from database"

    .line 91
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v3, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/miui/home/launcher/AppStatusProvider;->TABLE_APP_STATE_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 94
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    new-instance v2, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    const-string v3, "package_name"

    .line 96
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v3, "class_name"

    .line 97
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v3, "flag"

    .line 98
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v3, "click_time"

    .line 99
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 101
    iget-object v3, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    const-string v2, "initDataSource failed"

    .line 105
    invoke-static {v0, v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 108
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :goto_2
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 110
    :cond_2
    throw p0
.end method

.method public initDataSource()V
    .locals 3

    .line 73
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->isRussiaRom()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    const-string v1, "kbjay_russia_repository"

    if-nez v0, :cond_1

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    .line 79
    invoke-virtual {p0}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->initDataFromAppStatusProvider()V

    goto :goto_0

    :cond_1
    const-string v0, "Datasource is not null"

    .line 81
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 83
    :goto_1
    iget-object v2, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 84
    iget-object v2, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    invoke-virtual {v2}, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onAppInfoRemoved(Ljava/lang/String;)V
    .locals 6

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAppInfoRemoved:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kbjay_russia_repository"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/miui/home/launcher/AppStatusProvider;->TABLE_APP_STATE_URI:Landroid/net/Uri;

    const-string v3, "package_name=? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 238
    iget-object p0, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 239
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    .line 241
    iget-object v0, v0, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->packageName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "onAppInfoRemoved failed"

    .line 246
    invoke-static {v1, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public onAppLeaveRussiaFolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v0, "flag"

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppLeaveRussiaFolder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "kbjay_russia_repository"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :try_start_0
    iget-object v3, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/miui/home/launcher/AppStatusProvider;->TABLE_APP_STATE_URI:Landroid/net/Uri;

    const-string v4, "_id"

    filled-new-array {v4, v0}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "package_name=? AND class_name =?"

    const/4 v4, 0x2

    new-array v7, v4, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v7, v9

    const/4 v10, 0x1

    aput-object p2, v7, v10

    const/4 v8, 0x0

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    .line 208
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 209
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 210
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 211
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    and-int/lit8 v5, v5, -0x41

    .line 212
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u66f4\u65b0APP\u4e3a\u4e0d\u5728folder\u4e2d"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "_id=? "

    new-array v7, v10, [Ljava/lang/String;

    .line 216
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v9

    .line 214
    invoke-virtual {v0, v1, v6, v5, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 218
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    iget-object v0, v0, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->packageName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    .line 220
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    invoke-virtual {v0}, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->isApp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    .line 221
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    iget-object v0, v0, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->className:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->removeFlag(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 202
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :cond_1
    if-eqz v3, :cond_2

    .line 226
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string p1, "onAppLeaveRussiaFolder failed"

    .line 227
    invoke-static {v2, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    return-void
.end method

.method public onAppMoveToRussiaFolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    const-string v0, "flag"

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppMoveToRussiaFolder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "kbjay_russia_repository"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v1, 0x0

    .line 157
    :try_start_0
    iget-object v3, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v9, Lcom/miui/home/launcher/AppStatusProvider;->TABLE_APP_STATE_URI:Landroid/net/Uri;

    const-string v4, "_id"

    filled-new-array {v4, v0}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "package_name=? AND class_name=? "

    const/4 v4, 0x2

    new-array v7, v4, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v7, v10

    const/4 v11, 0x1

    aput-object p2, v7, v11

    const/4 v8, 0x0

    move-object v4, v9

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v3, -0x1

    if-eqz v1, :cond_1

    .line 165
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 166
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 169
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    goto :goto_0

    :cond_1
    move v4, v3

    move v5, v4

    :goto_0
    if-eq v4, v3, :cond_3

    .line 174
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const/16 v3, 0x40

    or-int/2addr v5, v3

    .line 175
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 176
    iget-object v0, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "_id=?"

    new-array v6, v11, [Ljava/lang/String;

    .line 178
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v10

    .line 176
    invoke-virtual {v0, v9, p2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 179
    :goto_1
    iget-object p2, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v10, p2, :cond_4

    .line 180
    iget-object p2, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    invoke-interface {p2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    iget-object p2, p2, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->packageName:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 181
    iget-object p2, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    invoke-interface {p2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    invoke-virtual {p2, v3}, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->addFlag(I)V

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 185
    :cond_3
    new-instance v0, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    const/16 v6, 0x50

    const-wide/16 v7, 0x0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v8}, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 187
    iget-object p1, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0}, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->resolve()Landroid/content/ContentValues;

    move-result-object p2

    invoke-virtual {p1, v9, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 188
    iget-object p0, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    if-eqz v1, :cond_5

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "onAppMoveToRussiaFolder failed"

    .line 191
    invoke-static {v2, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_5

    .line 194
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    return-void

    :goto_3
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 196
    :cond_6
    throw p0

    :cond_7
    :goto_4
    const-string p0, "packageName or className is null, cannot proceed with query"

    .line 152
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onGPLinkRemoved(Ljava/lang/String;)V
    .locals 9

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGPLinkRemoved:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kbjay_russia_repository"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :try_start_0
    iget-object v2, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/miui/home/launcher/AppStatusProvider;->TABLE_APP_STATE_URI:Landroid/net/Uri;

    const-string v0, "_id"

    const-string v4, "flag"

    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "package_name=?"

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v6, v8

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v3, -0x1

    if-eqz v2, :cond_1

    .line 121
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 122
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 123
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/16 v6, 0x10

    and-int/2addr v5, v6

    if-eq v5, v6, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    move v4, v3

    :goto_0
    if-eq v4, v3, :cond_4

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u5220 gplink "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v3, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/miui/home/launcher/AppStatusProvider;->TABLE_APP_STATE_URI:Landroid/net/Uri;

    const-string v6, "_id=? "

    new-array v0, v0, [Ljava/lang/String;

    .line 133
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v8

    .line 131
    invoke-virtual {v3, v5, v6, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 135
    iget-object p0, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 136
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 137
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    .line 138
    iget-object v3, v0, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->packageName:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->isApp()Z

    move-result v0

    if-nez v0, :cond_2

    .line 139
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    if-eqz v2, :cond_3

    .line 115
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw p0

    :cond_4
    if-eqz v2, :cond_5

    .line 144
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    const-string p1, "onGPLinkRemoved failed"

    .line 145
    invoke-static {v1, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_4
    return-void
.end method

.method public onGpLinkClick(Ljava/lang/String;Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository$CallBack;)V
    .locals 9

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGpLinkClick:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kbjay_russia_repository"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-static {}, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository;->getInstance()Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository;->getAutoInstallDeepLink(Ljava/lang/String;Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository$CallBack;)V

    .line 255
    :try_start_0
    iget-object v2, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/miui/home/launcher/AppStatusProvider;->TABLE_APP_STATE_URI:Landroid/net/Uri;

    const-string p2, "_id"

    const-string v0, "flag"

    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "package_name=?"

    const/4 p2, 0x1

    new-array v6, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v6, v0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    :cond_0
    const/4 v3, -0x1

    if-eqz v2, :cond_1

    .line 260
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 261
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 262
    invoke-interface {v2, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/16 v6, 0x10

    and-int/2addr v5, v6

    if-eq v5, v6, :cond_0

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    if-eq v4, v3, :cond_3

    .line 269
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v3, "click_time"

    .line 271
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 272
    iget-object v3, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/miui/home/launcher/AppStatusProvider;->TABLE_APP_STATE_URI:Landroid/net/Uri;

    const-string v8, "_id=? "

    new-array p2, p2, [Ljava/lang/String;

    .line 274
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v0

    .line 272
    invoke-virtual {v3, v7, v2, v8, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 276
    :goto_1
    iget-object p2, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_3

    .line 277
    iget-object p2, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    iget-object p2, p2, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->packageName:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    invoke-virtual {p2}, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->isApp()Z

    move-result p2

    if-nez p2, :cond_2

    .line 278
    iget-object p2, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    iput-wide v5, p2, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->clickTime:J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "onGpLinkClick failed"

    .line 283
    invoke-static {v1, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return-void
.end method
