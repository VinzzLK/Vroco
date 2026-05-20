.class public Lcom/miui/home/launcher/AllAppsList;
.super Ljava/lang/Object;
.source "AllAppsList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/AllAppsList$LayoutInfoQuery;
    }
.end annotation


# instance fields
.field public added:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppFilter:Lcom/miui/home/launcher/AppFilter;

.field private mIconCache:Lcom/miui/home/launcher/IconCache;

.field private mLauncherApps:Lcom/miui/home/library/compat/LauncherAppsCompat;

.field private final mLoadedApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mRemovedInfoList:Lcom/miui/home/launcher/RemovedComponentInfoList;

.field private final mResolver:Landroid/content/ContentResolver;

.field public modified:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public removed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$ZGPZoucIJWuUho-tJeN8Hzbzx9c(Lcom/miui/home/launcher/AllAppsList;Lcom/miui/home/launcher/AppInfo;Landroid/content/pm/LauncherActivityInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/AllAppsList;->lambda$updatePackage$0(Lcom/miui/home/launcher/AppInfo;Landroid/content/pm/LauncherActivityInfo;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/miui/home/launcher/IconCache;",
            "Ljava/util/Map<",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/miui/home/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/miui/home/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/AllAppsList;->modified:Ljava/util/ArrayList;

    .line 97
    iput-object p2, p0, Lcom/miui/home/launcher/AllAppsList;->mIconCache:Lcom/miui/home/launcher/IconCache;

    .line 98
    invoke-static {p1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/AllAppsList;->mLauncherApps:Lcom/miui/home/library/compat/LauncherAppsCompat;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/AllAppsList;->mResolver:Landroid/content/ContentResolver;

    .line 100
    iput-object p3, p0, Lcom/miui/home/launcher/AllAppsList;->mLoadedApps:Ljava/util/Map;

    return-void
.end method

.method private add(Lcom/miui/home/launcher/AppInfo;Landroid/content/pm/LauncherActivityInfo;Z)Z
    .locals 4

    .line 129
    invoke-virtual {p0}, Lcom/miui/home/launcher/AllAppsList;->getAppFilter()Lcom/miui/home/launcher/AppFilter;

    move-result-object p2

    iget-object v0, p1, Lcom/miui/home/launcher/BaseAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/AppFilter;->shouldShowApp(Landroid/content/ComponentName;)Z

    move-result p2

    const/4 v0, 0x0

    const-string v1, "Launcher.AllAppsList"

    if-nez p2, :cond_0

    .line 130
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/miui/home/launcher/BaseAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "should not be show"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 133
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/BaseAppInfo;->isSecurityHided()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 134
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/miui/home/launcher/BaseAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " should be hide "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 137
    :cond_1
    iget-object p2, p1, Lcom/miui/home/launcher/BaseAppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/miui/home/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {p0, p2, v2}, Lcom/miui/home/launcher/AllAppsList;->findAppInfo(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/miui/home/launcher/AppInfo;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 138
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/miui/home/launcher/BaseAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " can\'t find info"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 141
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/BaseAppInfo;->toComponentKey()Lcom/miui/home/launcher/util/ComponentKey;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/home/launcher/LauncherHideApp;->isHideApp(Lcom/miui/home/launcher/util/ComponentKey;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 142
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/miui/home/launcher/BaseAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is hide app"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    if-eqz p3, :cond_4

    .line 145
    iget-object p2, p0, Lcom/miui/home/launcher/AllAppsList;->mLoadedApps:Ljava/util/Map;

    new-instance p3, Lcom/miui/home/launcher/util/ComponentKey;

    iget-object v2, p1, Lcom/miui/home/launcher/BaseAppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/miui/home/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {p3, v2, v3}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 146
    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 147
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/miui/home/launcher/BaseAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is added workspace"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 153
    :cond_4
    iget-object p2, p0, Lcom/miui/home/launcher/AllAppsList;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Lcom/miui/home/launcher/BaseAppInfo;->toComponentKey()Lcom/miui/home/launcher/util/ComponentKey;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/miui/home/launcher/LauncherCategory$Favorites;->getAppCategoryConfig(Landroid/content/ContentResolver;Lcom/miui/home/launcher/util/ComponentKey;)Ljava/util/HashSet;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/BaseAppInfo;->setCategories(Ljava/util/HashSet;)V

    .line 154
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/miui/home/launcher/BaseAppInfo;->setLoadTime(J)V

    .line 155
    sget-object p2, Lcom/miui/home/LauncherDecoupleHelper;->INSTANCE:Lcom/miui/home/LauncherDecoupleHelper;

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Lcom/miui/home/LauncherDecoupleHelper;->setIsHideApp(Lcom/miui/home/launcher/AppInfo;Z)V

    .line 156
    iget-object p2, p0, Lcom/miui/home/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object p0, p0, Lcom/miui/home/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return p3
.end method

.method private addApp(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;JZZZLandroid/os/UserHandle;)V
    .locals 13

    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    move/from16 v10, p6

    .line 232
    new-instance v11, Lcom/miui/home/launcher/AppInfo;

    move-object/from16 v12, p8

    invoke-direct {v11, p1, p2, v12}, Lcom/miui/home/launcher/AppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V

    .line 233
    invoke-static/range {p8 .. p8}, Lcom/miui/home/library/compat/UserManagerCompat;->isWorkUser(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    invoke-direct {p0, v11}, Lcom/miui/home/launcher/AllAppsList;->addToWorkFolder(Lcom/miui/home/launcher/ShortcutInfo;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, v11

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    .line 236
    invoke-direct/range {v0 .. v6}, Lcom/miui/home/launcher/AllAppsList;->loadInfo(Landroid/content/Context;Lcom/miui/home/launcher/AppInfo;JZZ)V

    :goto_0
    if-eqz v10, :cond_1

    .line 238
    iget-wide v0, v11, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, v11, Lcom/miui/home/launcher/ItemInfo;->container:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 239
    invoke-static/range {p8 .. p8}, Lcom/miui/launcher/utils/LauncherUtils;->isXSpaceUser(Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 240
    invoke-direct {p0, p1, v11}, Lcom/miui/home/launcher/AllAppsList;->addToDefaultFolder(Landroid/content/Context;Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 243
    :cond_1
    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 244
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->needAddToRussiaFolder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 245
    invoke-direct {p0, p1, v11}, Lcom/miui/home/launcher/AllAppsList;->addToRussiaFolder(Landroid/content/Context;Lcom/miui/home/launcher/AppInfo;)V

    :cond_2
    const/4 v1, 0x1

    .line 248
    invoke-static {p1, v0, v1}, Lcom/mi/preinstall/AutoInstallParserHelp;->addOrRemovePAIPackage(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    if-eqz p7, :cond_3

    .line 249
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 250
    invoke-static {v11, v1}, Lcom/miui/home/launcher/install/PlayAutoInstallHelper;->addToPreInstallFolder(Lcom/miui/home/launcher/AppInfo;Ljava/lang/String;)V

    .line 253
    :cond_3
    invoke-direct {p0, v11, p2, v10}, Lcom/miui/home/launcher/AllAppsList;->add(Lcom/miui/home/launcher/AppInfo;Landroid/content/pm/LauncherActivityInfo;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 255
    invoke-static {}, Lcom/miui/home/launcher/CategorySettingHelper;->getInstance()Lcom/miui/home/launcher/CategorySettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CategorySettingHelper;->isAppCategoryUpdateEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 256
    invoke-direct {p0, v11}, Lcom/miui/home/launcher/AllAppsList;->autoAddToDefaultCategory(Lcom/miui/home/launcher/AppInfo;)V

    :cond_4
    if-eqz p7, :cond_5

    .line 259
    iget v0, v11, Lcom/miui/home/launcher/ItemInfo;->itemFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v11, Lcom/miui/home/launcher/ItemInfo;->itemFlags:I

    :cond_5
    return-void
.end method

.method private addDefaultCategoryIfNeed(I)Z
    .locals 5

    .line 286
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel;->getAllCategoryList()Lcom/miui/home/launcher/AllCategoryList;

    move-result-object v0

    .line 287
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/AllCategoryList;->isCategoryExist(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 288
    new-instance v1, Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    .line 289
    invoke-static {p1}, Lcom/miui/home/launcher/LauncherCategory$Category;->getDefaultCategoryName(I)Ljava/lang/String;

    move-result-object v3

    .line 290
    invoke-virtual {v0}, Lcom/miui/home/launcher/AllCategoryList;->generateLastPriority()I

    move-result v4

    invoke-direct {v1, p1, v3, v4}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;-><init>(ILjava/lang/String;I)V

    .line 291
    iget-object p0, p0, Lcom/miui/home/launcher/AllAppsList;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->getPriority()I

    move-result v3

    invoke-static {p0, p1, v3}, Lcom/miui/home/launcher/LauncherCategory$Category;->addDefaultAppCategory(Landroid/content/ContentResolver;II)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 292
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/AllCategoryList;->addCategory(Lcom/miui/home/launcher/allapps/category/CategoryInfo;)V

    return v2

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v2
.end method

.method private addToDefaultFolder(Landroid/content/Context;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 3

    .line 376
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v0

    .line 377
    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p2}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {p1, v1, v2, v0}, Lcom/miui/home/launcher/AllAppsList;->getFolderIdByAppCategory(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/UserHandle;Lcom/miui/home/launcher/LauncherProvider;)J

    move-result-wide v1

    .line 378
    invoke-direct {p0, v0, p2, v1, v2}, Lcom/miui/home/launcher/AllAppsList;->addToFolder(Lcom/miui/home/launcher/LauncherProvider;Lcom/miui/home/launcher/ShortcutInfo;J)V

    return-void
.end method

.method private addToFolder(Lcom/miui/home/launcher/LauncherProvider;Lcom/miui/home/launcher/ShortcutInfo;J)V
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long p0, p3, v0

    if-eqz p0, :cond_0

    .line 389
    iput-wide p3, p2, Lcom/miui/home/launcher/ItemInfo;->container:J

    const/4 p0, 0x0

    .line 390
    iput p0, p2, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    .line 391
    invoke-virtual {p1, p3, p4}, Lcom/miui/home/launcher/LauncherProvider;->queryFolderSize(J)I

    move-result p1

    iput p1, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 392
    iput p0, p2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    .line 394
    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p3

    aput-object p3, p1, p0

    const/4 p0, 0x1

    iget-wide p3, p2, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 395
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p1, p0

    const/4 p0, 0x2

    iget p2, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, p0

    const-string p0, "Adding new activity %s to folder %d, pos (%d) by apk\'s category"

    .line 393
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher.AllAppsList"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private addToRussiaFolder(Landroid/content/Context;Lcom/miui/home/launcher/AppInfo;)V
    .locals 2

    .line 264
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object p0

    const-string p1, "com.vroco.launcher:string/russia_preinstall_folder_name"

    .line 265
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherProvider;->queryIdByTitle(Ljava/lang/String;)J

    move-result-wide p0

    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    .line 267
    iput-wide p0, p2, Lcom/miui/home/launcher/ItemInfo;->container:J

    const/4 p0, 0x0

    .line 268
    iput p0, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    :cond_0
    return-void
.end method

.method private addToWorkFolder(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 3

    .line 382
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v0

    const-string v1, "com.vroco.launcher:string/all_app_category_work"

    .line 383
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherProvider;->queryIdByTitle(Ljava/lang/String;)J

    move-result-wide v1

    .line 384
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/miui/home/launcher/AllAppsList;->addToFolder(Lcom/miui/home/launcher/LauncherProvider;Lcom/miui/home/launcher/ShortcutInfo;J)V

    return-void
.end method

.method private autoAddToDefaultCategory(Lcom/miui/home/launcher/AppInfo;)V
    .locals 5

    .line 273
    iget-object v0, p0, Lcom/miui/home/launcher/AllAppsList;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/LauncherCategory$Repository;->getAppCategory(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 277
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 278
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/miui/home/launcher/AllAppsList;->addDefaultCategoryIfNeed(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/AllAppsList;->mResolver:Landroid/content/ContentResolver;

    .line 279
    invoke-virtual {p1}, Lcom/miui/home/launcher/BaseAppInfo;->toComponentKey()Lcom/miui/home/launcher/util/ComponentKey;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/miui/home/launcher/LauncherCategory$Favorites;->addAppCategoryConfig(Landroid/content/ContentResolver;Lcom/miui/home/launcher/util/ComponentKey;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 280
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/BaseAppInfo;->addCategory(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    .line 571
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherActivityInfo;

    .line 572
    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private findAppInfo(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/miui/home/launcher/AppInfo;
    .locals 2

    .line 586
    iget-object p0, p0, Lcom/miui/home/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/AppInfo;

    .line 587
    iget-object v1, v0, Lcom/miui/home/launcher/BaseAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/miui/home/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p2, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getAllElement(Ljava/util/ArrayList;)Ljava/lang/StringBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 183
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 184
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/AppInfo;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 185
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    const-string v3, "null"

    :goto_1
    const/4 v5, 0x1

    aput-object v3, v4, v5

    const-string v3, "(%s, %s)"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getFolderIdByAppCategory(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/UserHandle;Lcom/miui/home/launcher/LauncherProvider;)J
    .locals 6

    .line 400
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/miui/home/launcher/ScreenUtils;->findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    const-wide/16 v0, -0x1

    if-eqz p0, :cond_a

    .line 401
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 405
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 406
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v5, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object p2, v2

    :cond_2
    if-nez p2, :cond_3

    return-wide v0

    .line 417
    :cond_3
    iget-object p0, p2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz p0, :cond_a

    const-string p1, "miui.intent.category.SYSAPP_TOOL"

    .line 421
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p0, "com.vroco.launcher:string/new_default_folder_title_tools"

    .line 422
    invoke-virtual {p3, p0}, Lcom/miui/home/launcher/LauncherProvider;->queryIdByTitle(Ljava/lang/String;)J

    move-result-wide p0

    cmp-long p2, p0, v0

    if-nez p2, :cond_4

    const-string p0, "com.vroco.launcher:string/default_folder_title_tools"

    .line 424
    invoke-virtual {p3, p0}, Lcom/miui/home/launcher/LauncherProvider;->queryIdByTitle(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_4
    move-wide v0, p0

    goto :goto_0

    :cond_5
    const-string p1, "miui.intent.category.SYSAPP_SYSTEM"

    .line 426
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p0, "com.vroco.launcher:string/default_folder_title_security"

    .line 427
    invoke-virtual {p3, p0}, Lcom/miui/home/launcher/LauncherProvider;->queryIdByTitle(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_6
    const-string p1, "miui.intent.category.SYSAPP_HOT"

    .line 428
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p0, "com.vroco.launcher:string/default_folder_title_hot"

    .line 429
    invoke-virtual {p3, p0}, Lcom/miui/home/launcher/LauncherProvider;->queryIdByTitle(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_7
    const-string p1, "miui.intent.category.SYSAPP_RECOMMEND"

    .line 430
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p0, "com.vroco.launcher:string/default_folder_title_recommend"

    .line 431
    invoke-virtual {p3, p0}, Lcom/miui/home/launcher/LauncherProvider;->queryIdByTitle(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_8
    const-string p1, "miui.intent.category.SYSAPP_GAME"

    .line 432
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p0, "com.vroco.launcher:string/default_folder_title_game"

    .line 433
    invoke-virtual {p3, p0}, Lcom/miui/home/launcher/LauncherProvider;->queryIdByTitle(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_9
    const-string p1, "miui.intent.category.MEITU"

    .line 434
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    const-string p0, "com.vroco.launcher:string/default_folder_title_meitu"

    .line 435
    invoke-virtual {p3, p0}, Lcom/miui/home/launcher/LauncherProvider;->queryIdByTitle(Ljava/lang/String;)J

    move-result-wide v0

    :cond_a
    :goto_0
    return-wide v0
.end method

.method private synthetic lambda$updatePackage$0(Lcom/miui/home/launcher/AppInfo;Landroid/content/pm/LauncherActivityInfo;)V
    .locals 0

    .line 533
    iget-object p0, p0, Lcom/miui/home/launcher/AllAppsList;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/IconCache;->getIcon(Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;Landroid/content/pm/LauncherActivityInfo;)V

    return-void
.end method

.method private loadInfo(Landroid/content/Context;Lcom/miui/home/launcher/AppInfo;JZZ)V
    .locals 9

    .line 330
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 p1, 0x0

    .line 333
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/home/launcher/AllAppsList$LayoutInfoQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/String;

    .line 334
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    const/4 v5, 0x0

    .line 333
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x4

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x2

    const-string v5, "Launcher.AllAppsList"

    if-eqz v0, :cond_1

    .line 335
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1

    if-eqz p5, :cond_0

    .line 341
    iput-wide p3, p2, Lcom/miui/home/launcher/ItemInfo;->id:J

    .line 343
    :cond_0
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    int-to-long p0, p0

    iput-wide p0, p2, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 344
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    iput p0, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 345
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    iput p0, p2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    const/4 p0, 0x6

    .line 346
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    iput p0, p2, Lcom/miui/home/launcher/ItemInfo;->itemFlags:I

    .line 347
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    iput-wide p0, p2, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-string p0, "Loaded activity %s at (%d, %d) of screen %d under container %d"

    new-array p1, v2, [Ljava/lang/Object;

    .line 351
    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, v7

    iget p3, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v6

    iget p3, p2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v4

    iget-wide p3, p2, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p1, v3

    iget-wide p3, p2, Lcom/miui/home/launcher/ItemInfo;->container:J

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p1, v1

    .line 349
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object p1, v0

    goto/16 :goto_4

    :catch_0
    move-exception p0

    move-object p1, v0

    goto/16 :goto_2

    :cond_1
    if-eqz p6, :cond_3

    .line 353
    iget-object p0, p0, Lcom/miui/home/launcher/AllAppsList;->mRemovedInfoList:Lcom/miui/home/launcher/RemovedComponentInfoList;

    if-nez p0, :cond_2

    goto :goto_0

    .line 354
    :cond_2
    iget-object p1, p2, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/RemovedComponentInfoList;->getRemovedInfo(Landroid/content/ComponentName;)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    .line 356
    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/ItemInfo;->copyPosition(Lcom/miui/home/launcher/ItemInfo;)V

    const-string p0, "Loaded activity %s at (%d, %d) of screen %d under container %d from removed list"

    new-array p1, v2, [Ljava/lang/Object;

    .line 359
    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, v7

    iget p3, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v6

    iget p3, p2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v4

    iget-wide p3, p2, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p1, v3

    iget-wide p3, p2, Lcom/miui/home/launcher/ItemInfo;->container:J

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p1, v1

    .line 357
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object p0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/LauncherModel;->insertItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 363
    :cond_3
    :goto_1
    iget-wide p0, p2, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    const-wide/16 p3, -0x1

    cmp-long p0, p0, p3

    if-nez p0, :cond_4

    iget-wide p0, p2, Lcom/miui/home/launcher/ItemInfo;->container:J

    cmp-long p0, p0, p3

    if-nez p0, :cond_4

    .line 364
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Can\'t load postion for packageName: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " activityName: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    if-eqz v0, :cond_5

    .line 370
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    .line 367
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_5

    .line 370
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_3
    return-void

    :goto_4
    if-eqz p1, :cond_6

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 372
    :cond_6
    throw p0
.end method

.method private matchUserAndPackageName(Lcom/miui/home/launcher/AppInfo;Landroid/os/UserHandle;Ljava/lang/String;)Z
    .locals 0

    .line 595
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/miui/home/launcher/common/Utilities;->equalsUser(Landroid/os/UserHandle;Landroid/os/UserHandle;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 596
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onAppRemoved(Lcom/miui/home/launcher/AppInfo;)V
    .locals 2

    .line 560
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    .line 561
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v1

    .line 560
    invoke-static {p0, v0, v1}, Lcom/miui/launcher/utils/LauncherUtils;->isPackageDisableAsUser(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    .line 562
    invoke-static {p0}, Lcom/miui/home/launcher/util/FlagOp;->addFlag(I)Lcom/miui/home/launcher/util/FlagOp;

    move-result-object p0

    .line 563
    iget v0, p1, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->runtimeStatusFlags:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/util/FlagOp;->apply(I)I

    move-result p0

    iput p0, p1, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->runtimeStatusFlags:I

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/miui/home/launcher/AppInfo;Landroid/content/pm/LauncherActivityInfo;)Z
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/AllAppsList;->add(Lcom/miui/home/launcher/AppInfo;Landroid/content/pm/LauncherActivityInfo;Z)Z

    move-result p0

    return p0
.end method

.method public addPackage(Landroid/content/Context;Ljava/lang/String;ZZLandroid/os/UserHandle;)V
    .locals 18

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p5

    .line 207
    iget-object v0, v9, Lcom/miui/home/launcher/AllAppsList;->mLauncherApps:Lcom/miui/home/library/compat/LauncherAppsCompat;

    invoke-virtual {v0, v10, v11}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v12

    .line 208
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v14, p1

    .line 209
    invoke-static {v14, v10, v12, v13, v11}, Lcom/miui/home/launcher/ScreenUtils;->findActivities2Id(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/os/UserHandle;)I

    move-result v15

    const/16 v16, 0x0

    move/from16 v8, v16

    .line 210
    :goto_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_2

    .line 211
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/pm/LauncherActivityInfo;

    .line 212
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, -0x1

    :goto_1
    move-wide v3, v0

    if-ge v8, v15, :cond_1

    const/4 v0, 0x1

    move v5, v0

    goto :goto_2

    :cond_1
    move/from16 v5, v16

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v17, v8

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/miui/home/launcher/AllAppsList;->addApp(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;JZZZLandroid/os/UserHandle;)V

    add-int/lit8 v8, v17, 0x1

    goto :goto_0

    .line 215
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mProgressingPackages:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    if-eqz v0, :cond_3

    .line 217
    iget-object v1, v9, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 223
    invoke-virtual {v0, v10}, Lcom/miui/home/launcher/Launcher;->getFirstRussiaPreInstallInfo(Ljava/lang/String;)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v0

    .line 224
    instance-of v1, v0, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallShortcutInfo;

    if-eqz v1, :cond_4

    .line 225
    iget-object v1, v9, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    check-cast v0, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallShortcutInfo;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public clearAll()V
    .locals 2

    const-string v0, "Launcher.AllAppsList"

    const-string v1, "clearAll"

    .line 162
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/miui/home/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 164
    invoke-virtual {p0}, Lcom/miui/home/launcher/AllAppsList;->clearAllExceptData()V

    return-void
.end method

.method public clearAllExceptData()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/miui/home/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 169
    iget-object v0, p0, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 170
    iget-object p0, p0, Lcom/miui/home/launcher/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getAllAppsList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/miui/home/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getAppFilter()Lcom/miui/home/launcher/AppFilter;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/miui/home/launcher/AllAppsList;->mAppFilter:Lcom/miui/home/launcher/AppFilter;

    if-nez v0, :cond_0

    .line 105
    invoke-static {}, Lcom/miui/home/launcher/AppFilter;->newInstance()Lcom/miui/home/launcher/AppFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/AllAppsList;->mAppFilter:Lcom/miui/home/launcher/AppFilter;

    .line 107
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/AllAppsList;->mAppFilter:Lcom/miui/home/launcher/AppFilter;

    return-object p0
.end method

.method public getDataList()Ljava/util/ArrayList;
    .locals 1

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/miui/home/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public isInstalled(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 2

    .line 600
    iget-object p0, p0, Lcom/miui/home/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/AppInfo;

    .line 601
    iget-object v1, v0, Lcom/miui/home/launcher/BaseAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/miui/home/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    .line 602
    invoke-static {p2, v0}, Lcom/miui/home/launcher/common/Utilities;->equalsUser(Landroid/os/UserHandle;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3

    .line 445
    iget-object v0, p0, Lcom/miui/home/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 446
    iget-object v1, p0, Lcom/miui/home/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/AppInfo;

    .line 447
    invoke-direct {p0, v1, p2, p1}, Lcom/miui/home/launcher/AllAppsList;->matchUserAndPackageName(Lcom/miui/home/launcher/AppInfo;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 448
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcom/miui/launcher/utils/LauncherUtils;->isAppBackupRunning(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 449
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/AllAppsList;->onAppRemoved(Lcom/miui/home/launcher/AppInfo;)V

    .line 450
    iget-object v2, p0, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    iget-object v2, p0, Lcom/miui/home/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 452
    iget-object v2, p0, Lcom/miui/home/launcher/AllAppsList;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1}, Lcom/miui/home/launcher/BaseAppInfo;->toComponentKey()Lcom/miui/home/launcher/util/ComponentKey;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/miui/home/launcher/LauncherCategory$Favorites;->removeAppCategoryConfig(Landroid/content/ContentResolver;Lcom/miui/home/launcher/util/ComponentKey;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setAppFilter(Lcom/miui/home/launcher/AppFilter;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/miui/home/launcher/AllAppsList;->mAppFilter:Lcom/miui/home/launcher/AppFilter;

    return-void
.end method

.method public setRemovedInfoList(Lcom/miui/home/launcher/RemovedComponentInfoList;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/miui/home/launcher/AllAppsList;->mRemovedInfoList:Lcom/miui/home/launcher/RemovedComponentInfoList;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add=["

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    .line 194
    invoke-static {v1}, Lcom/miui/home/launcher/AllAppsList;->getAllElement(Ljava/util/ArrayList;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "], remove=["

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    .line 196
    invoke-static {v1}, Lcom/miui/home/launcher/AllAppsList;->getAllElement(Ljava/util/ArrayList;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "], modified=["

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/launcher/AllAppsList;->modified:Ljava/util/ArrayList;

    .line 198
    invoke-static {p0}, Lcom/miui/home/launcher/AllAppsList;->getAllElement(Ljava/util/ArrayList;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    .line 199
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateDisabledFlags(Lcom/miui/home/launcher/util/ItemInfoMatcher;Lcom/miui/home/launcher/util/FlagOp;)V
    .locals 3

    .line 461
    iget-object v0, p0, Lcom/miui/home/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 462
    iget-object v1, p0, Lcom/miui/home/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/AppInfo;

    .line 463
    iget-object v2, v1, Lcom/miui/home/launcher/BaseAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v1, v2}, Lcom/miui/home/launcher/util/ItemInfoMatcher;->matches(Lcom/miui/home/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 464
    iget v2, v1, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->runtimeStatusFlags:I

    invoke-virtual {p2, v2}, Lcom/miui/home/launcher/util/FlagOp;->apply(I)I

    move-result v2

    iput v2, v1, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->runtimeStatusFlags:I

    const/4 v2, 0x0

    .line 466
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 467
    iget-object v2, p0, Lcom/miui/home/launcher/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updatePackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    const/4 v0, 0x0

    .line 476
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/miui/home/launcher/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;ZLandroid/os/UserHandle;)V

    return-void
.end method

.method public updatePackage(Landroid/content/Context;Ljava/lang/String;ZLandroid/os/UserHandle;)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 480
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;ZLandroid/os/UserHandle;Z)V

    return-void
.end method

.method public updatePackage(Landroid/content/Context;Ljava/lang/String;ZLandroid/os/UserHandle;Z)V
    .locals 13

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v9, p4

    .line 487
    invoke-static {p1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    .line 488
    invoke-virtual {v0, p2, v9}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 489
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 490
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePackage, packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", loadMissing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p3

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", user="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", matchedSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v11, "Launcher.AllAppsList"

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 494
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 495
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/LauncherActivityInfo;

    .line 496
    invoke-virtual {v3}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-direct {p0, v4, v9}, Lcom/miui/home/launcher/AllAppsList;->findAppInfo(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/miui/home/launcher/AppInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 497
    invoke-virtual {v4}, Lcom/miui/home/launcher/BaseAppInfo;->toComponentKey()Lcom/miui/home/launcher/util/ComponentKey;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/home/launcher/LauncherHideApp;->isHideApp(Lcom/miui/home/launcher/util/ComponentKey;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 498
    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-lez v1, :cond_7

    .line 503
    new-instance v1, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;

    invoke-direct {v1, p2, v9}, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->isSecurityHided(Lcom/miui/home/launcher/LauncherModel$PackageAndUser;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 506
    iget-object v1, v6, Lcom/miui/home/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 507
    iget-object v2, v6, Lcom/miui/home/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/AppInfo;

    .line 508
    iget-object v3, v2, Lcom/miui/home/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v9, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/miui/home/launcher/BaseAppInfo;->componentName:Landroid/content/ComponentName;

    .line 509
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/miui/home/launcher/BaseAppInfo;->componentName:Landroid/content/ComponentName;

    .line 510
    invoke-static {v0, v3}, Lcom/miui/home/launcher/AllAppsList;->findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 511
    invoke-static {p1, p2, v9}, Lcom/miui/launcher/utils/LauncherUtils;->isAppBackupRunning(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 512
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Shortcut("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/miui/home/launcher/BaseAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") will be removed due to app component name change."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/AllAppsList;->onAppRemoved(Lcom/miui/home/launcher/AppInfo;)V

    .line 515
    iget-object v3, v6, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    iget-object v3, v6, Lcom/miui/home/launcher/AllAppsList;->mIconCache:Lcom/miui/home/launcher/IconCache;

    iget-object v2, v2, Lcom/miui/home/launcher/BaseAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v2, v9}, Lcom/miui/home/launcher/IconCache;->remove(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 517
    iget-object v2, v6, Lcom/miui/home/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 523
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherActivityInfo;

    .line 524
    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {p0, v1, v9}, Lcom/miui/home/launcher/AllAppsList;->findAppInfo(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/miui/home/launcher/AppInfo;

    move-result-object v1

    .line 525
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePackage, find appInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_4

    .line 526
    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_4
    const-string v3, "null"

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 525
    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_5

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move-object/from16 v5, p4

    .line 529
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/AllAppsList;->addPackage(Landroid/content/Context;Ljava/lang/String;ZZLandroid/os/UserHandle;)V

    goto :goto_2

    :cond_5
    if-eqz p5, :cond_6

    .line 532
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getParallelExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/miui/home/launcher/AllAppsList$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v0}, Lcom/miui/home/launcher/AllAppsList$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/AllAppsList;Lcom/miui/home/launcher/AppInfo;Landroid/content/pm/LauncherActivityInfo;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 536
    :cond_6
    iget-object v2, v1, Lcom/miui/home/launcher/BaseAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ShortcutInfo;->setApplicationConfig(Landroid/content/ComponentName;)V

    .line 537
    invoke-virtual {v1, v0, v9}, Lcom/miui/home/launcher/BaseAppInfo;->resetTitle(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V

    .line 538
    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/ShortcutInfo;->updateInstallSourceInfo(Landroid/content/pm/LauncherActivityInfo;)V

    .line 539
    iget-object v0, v6, Lcom/miui/home/launcher/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 544
    :cond_7
    iget-object v0, v6, Lcom/miui/home/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_9

    .line 545
    iget-object v1, v6, Lcom/miui/home/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/AppInfo;

    .line 546
    iget-object v2, v1, Lcom/miui/home/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v9, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v1, Lcom/miui/home/launcher/BaseAppInfo;->componentName:Landroid/content/ComponentName;

    .line 547
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 548
    invoke-static {p1, p2, v9}, Lcom/miui/launcher/utils/LauncherUtils;->isAppBackupRunning(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 549
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/AllAppsList;->onAppRemoved(Lcom/miui/home/launcher/AppInfo;)V

    .line 550
    iget-object v2, v6, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    iget-object v2, v6, Lcom/miui/home/launcher/AllAppsList;->mIconCache:Lcom/miui/home/launcher/IconCache;

    iget-object v1, v1, Lcom/miui/home/launcher/BaseAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v1, v9}, Lcom/miui/home/launcher/IconCache;->remove(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 552
    iget-object v1, v6, Lcom/miui/home/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_9
    return-void
.end method
