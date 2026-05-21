.class public Lcom/miui/home/launcher/AnalyticalDataCollector;
.super Ljava/lang/Object;
.source "AnalyticalDataCollector.java"


# static fields
.field private static sLaunchApplicationEvent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static widget_component_default_source:[Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$6omnQfTpK1pljxlefvoJomqKvuU(Lcom/miui/home/launcher/LauncherAppWidgetInfo;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->lambda$sendTrackWidgetExposureToAssistant$2(Lcom/miui/home/launcher/LauncherAppWidgetInfo;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CtwMDz2f-vD_0kzRQSOjQBeil5E(Lcom/miui/home/launcher/FolderInfo;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->lambda$isAppPredict$0(Lcom/miui/home/launcher/FolderInfo;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TSa9qXWsGpuMS-n0d1xzEKzFqew(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/FolderInfo;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/AnalyticalDataCollector;->lambda$getClickIndexInFolder$1(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/FolderInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static canTrackLaunchAppEvent()Z
    .locals 1

    .line 205
    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static convertAnimationRateToParameterValue(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "nothing"

    return-object p0

    :cond_0
    const-string/jumbo p0, "\u5feb\u901f"

    return-object p0

    :cond_1
    const-string/jumbo p0, "\u5747\u8861"

    return-object p0

    :cond_2
    const-string/jumbo p0, "\u4f18\u96c5"

    return-object p0
.end method

.method private static createCommonLaunchAppParams(Lcom/miui/home/launcher/ShortcutInfo;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 330
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 331
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getAppStyle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_style"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPairCompletePackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package_name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "app_display_name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "grid_location_x"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static createLaunchDesktopAppEvent(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            "Lcom/miui/home/launcher/Launcher;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 235
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->createCommonLaunchAppParams(Lcom/miui/home/launcher/ShortcutInfo;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "parent_container"

    const-string v2, "desktop"

    .line 236
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    iget-wide v1, p0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p1, v1, v2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p1

    add-int/lit8 v1, p1, 0x1

    .line 238
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "screen_index"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget v1, p0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "grid_location_y"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inDesktop, screenIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", row"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", column="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher.AnalyticalDataCollector"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static createLaunchFolderAppEvent(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            "Lcom/miui/home/launcher/Launcher;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 259
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->createCommonLaunchAppParams(Lcom/miui/home/launcher/ShortcutInfo;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "parent_container"

    const-string v2, "folder"

    .line 260
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-static {p0, p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getFolderTitleByShortcutInfo(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "folder_title"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget v1, p0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "index_in_folder"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    invoke-static {p0, p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getFolderInfoScreenId(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "screen_index"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget v1, p0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "grid_location_y"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-static {p0, p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getFolderGridSize(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "folder_size"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/Launcher;->getParentFolderInfo(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v1

    const-string/jumbo v3, "true"

    const-string v4, "false"

    if-eqz v1, :cond_0

    .line 267
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    move-object v1, v4

    :goto_0
    const-string v5, "if_open_folder"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    invoke-static {p0, p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->isAppPredict(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    const-string v1, "if_recommend_app"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    invoke-static {p0, p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getClickIndexInFolder(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", folderTitle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-static {p0, p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getFolderTitleByShortcutInfo(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", folderScreenId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-static {p0, p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getFolderInfoScreenId(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", indexInFolder="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher.AnalyticalDataCollector"

    .line 270
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static createLaunchHotseatAppEvent(Lcom/miui/home/launcher/ShortcutInfo;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 248
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->createCommonLaunchAppParams(Lcom/miui/home/launcher/ShortcutInfo;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "parent_container"

    const-string v2, "hotseat"

    .line 249
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-wide v1, p0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "screen_index"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget v1, p0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "index_in_hotseat"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget v1, p0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "grid_location_y"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inHotseat, , indexInHotseat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Launcher.AnalyticalDataCollector"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static extractPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 352
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2f

    .line 353
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    .line 355
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getAppInfo(Landroid/content/Context;Ljava/lang/String;JLjava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "component_package_install_status"

    const-string v1, "component_package_name"

    .line 1539
    invoke-interface {p4, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1540
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f030036

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 1542
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    .line 1543
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    const-string v2, "component_package_display_name"

    .line 1544
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "component_package_version_name"

    .line 1545
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-interface {p4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "component_package_version_code"

    .line 1546
    iget v2, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1547
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v1, p1

    cmp-long p1, p2, v1

    if-lez p1, :cond_0

    const/4 p1, 0x2

    .line 1548
    aget-object p1, p0, p1

    invoke-interface {p4, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1550
    aget-object p1, p0, p1

    invoke-interface {p4, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 1553
    aget-object p0, p0, p1

    invoke-interface {p4, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private static getAppWidgetInfo(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/miui/home/launcher/MIUIWidgetBasicInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1573
    instance-of v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_0

    .line 1574
    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    .line 1575
    new-instance v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->getAppWidgetId()I

    move-result v1

    invoke-direct {v0, v1, p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;-><init>(ILcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)V

    move-object p1, v0

    .line 1577
    :cond_0
    instance-of v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    if-eqz v0, :cond_2

    .line 1578
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 1579
    iget v1, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->originWidgetId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "component_origin_id"

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1580
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "component_name"

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1581
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1582
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1584
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "widget_provider_name"

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.miui.personalassistant"

    .line 1585
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "true"

    goto :goto_0

    :cond_1
    const-string v0, "false"

    :goto_0
    const-string v2, "component_is_self_run"

    .line 1586
    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1589
    iget-object v0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appName:Ljava/lang/String;

    const-string v2, "component_package_display_name"

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1590
    iget v0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "component_package_version_name"

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1591
    iget-object v0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appVersionName:Ljava/lang/String;

    const-string v2, "component_package_version_code"

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1592
    iget p1, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appVersion:I

    int-to-long v2, p1

    invoke-static {p0, v1, v2, v3, p2}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getAppInfo(Landroid/content/Context;Ljava/lang/String;JLjava/util/Map;)V

    :cond_2
    return-void
.end method

.method private static getClickIndexInFolder(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)I
    .locals 1

    .line 297
    new-instance v0, Lcom/miui/home/launcher/AnalyticalDataCollector$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/AnalyticalDataCollector$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)V

    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getInfoFromContainerFolder(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 299
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method private static getCommonRelayParams(Ljava/lang/String;I)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1705
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "app_package_name"

    .line 1706
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1708
    sget-object p0, Lcom/xiaomi/dist/common/DeviceType;->PC:Lcom/xiaomi/dist/common/DeviceType;

    invoke-virtual {p0}, Lcom/xiaomi/dist/common/DeviceType;->asIntType()I

    move-result p0

    if-ne p1, p0, :cond_0

    const-string p0, "PC"

    goto :goto_0

    .line 1710
    :cond_0
    sget-object p0, Lcom/xiaomi/dist/common/DeviceType;->PAD:Lcom/xiaomi/dist/common/DeviceType;

    invoke-virtual {p0}, Lcom/xiaomi/dist/common/DeviceType;->asIntType()I

    move-result p0

    if-ne p1, p0, :cond_1

    const-string p0, "PAD"

    goto :goto_0

    .line 1712
    :cond_1
    sget-object p0, Lcom/xiaomi/dist/common/DeviceType;->PHONE:Lcom/xiaomi/dist/common/DeviceType;

    invoke-virtual {p0}, Lcom/xiaomi/dist/common/DeviceType;->asIntType()I

    move-result p0

    if-ne p1, p0, :cond_2

    const-string p0, "PHONE"

    goto :goto_0

    .line 1716
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "peer_device_type_number"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "UNKNOWN"

    :goto_0
    const-string p1, "peer_device_type"

    .line 1718
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static getFolderGridSize(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)Ljava/lang/String;
    .locals 1

    .line 293
    sget-object v0, Lcom/miui/home/launcher/AnalyticalDataCollector$$ExternalSyntheticLambda2;->INSTANCE:Lcom/miui/home/launcher/AnalyticalDataCollector$$ExternalSyntheticLambda2;

    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getInfoFromContainerFolder(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static getFolderInfoScreenId(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)J
    .locals 0

    .line 372
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/Launcher;->getParentFolderInfo(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 374
    iget-wide p0, p0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    goto :goto_0

    :cond_0
    const-wide/16 p0, -0x1

    :goto_0
    return-wide p0
.end method

.method private static getFolderTitle(Lcom/miui/home/launcher/FolderInfo;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_5

    .line 612
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 613
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 614
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isRecommendFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "recommend"

    return-object p0

    .line 616
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isHotFolder()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "hot"

    return-object p0

    .line 618
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isToolsFolder()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo p0, "tools"

    return-object p0

    .line 620
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isGoogleFolder()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "google"

    return-object p0

    .line 622
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isGamesFolder()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "games"

    return-object p0

    .line 624
    :cond_4
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isUserGameFolder()Z

    move-result p0

    if-eqz p0, :cond_5

    const-string/jumbo p0, "user_created_games_folder"

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getFolderTitleByShortcutInfo(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)Ljava/lang/String;
    .locals 2

    .line 363
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/Launcher;->getParentFolderInfo(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object p0

    const-string v0, ""

    if-eqz p0, :cond_0

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static getIndexInAppPredict(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/ShortcutInfo;)I
    .locals 2

    .line 320
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->getAppPredictList()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 322
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static getIndexInFolder(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/Launcher;)I
    .locals 1

    .line 305
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->isOpened()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->isAppPredictOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 310
    :cond_0
    invoke-static {p1, p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getIndexInAppPredict(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/ShortcutInfo;)I

    move-result p0

    :goto_0
    add-int/lit8 p0, p0, 0x1

    return p0

    .line 308
    :cond_1
    :goto_1
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getIndexInOpenFolder(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/Launcher;)I

    move-result p0

    goto :goto_0
.end method

.method public static getIndexInOpenFolder(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/Launcher;)I
    .locals 0

    .line 315
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/FolderInfo;->getAdapter(Landroid/content/Context;)Lcom/miui/home/launcher/ShortcutsAdapter;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 316
    :cond_0
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getFolderItemIndex(Lcom/miui/home/launcher/ShortcutInfo;)I

    move-result p0

    :goto_0
    return p0
.end method

.method private static getInfoFromContainerFolder(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            "Lcom/miui/home/launcher/Launcher;",
            "Ljava/util/function/Function<",
            "-",
            "Lcom/miui/home/launcher/FolderInfo;",
            "TR;>;)TR;"
        }
    .end annotation

    if-eqz p2, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 279
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/Launcher;->getParentFolderInfo(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 281
    invoke-interface {p2, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getMamlInfo(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/maml/MaMlWidgetInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1598
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    const-string v1, "maml_product_id"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1599
    iget v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "maml_version"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1600
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->maMlTag:Ljava/lang/String;

    const-string v1, "maml_tag_category"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1601
    iget-boolean v0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isEditable:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "maml_editable"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1602
    iget-wide v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->priceInCent:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "maml_purchased_price"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1603
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "component_is_self_run"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1604
    invoke-virtual {p0}, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "component_name"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1605
    iget v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "component_origin_id"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1607
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1608
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    .line 1610
    iget-object v1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appName:Ljava/lang/String;

    const-string v2, "component_package_display_name"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1611
    iget v1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "component_package_version_name"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1612
    iget-object v1, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appVersionName:Ljava/lang/String;

    const-string v2, "component_package_version_code"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1614
    iget-object v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appPackage:Ljava/lang/String;

    iget p0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appVersion:I

    int-to-long v2, p0

    invoke-static {v0, v1, v2, v3, p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getAppInfo(Landroid/content/Context;Ljava/lang/String;JLjava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static getMiuiWidgetInfo(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/miui/home/launcher/MIUIWidgetBasicInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1486
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1487
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 1490
    :cond_0
    instance-of v1, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    .line 1492
    iget-object v2, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->pickerID:Ljava/lang/String;

    const-string v3, "component_picker_id"

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_1

    const-string v2, "maml"

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "widget"

    :goto_0
    const-string v3, "component_type"

    .line 1493
    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1494
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "component_style_size"

    invoke-interface {p2, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1495
    iget v2, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "grid_x_location"

    invoke-interface {p2, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1496
    iget v2, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "grid_y_location"

    invoke-interface {p2, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1497
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "screen_layout"

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1498
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    iget-wide v2, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 1499
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "screen_location"

    invoke-interface {p2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1500
    sget-boolean v0, Lcom/mi/mibridge/DeviceLevel;->IS_MIUI_LITE_VERSION:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v3, "is_lite"

    invoke-interface {p2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1502
    sget-object v0, Lcom/miui/home/launcher/AnalyticalDataCollector;->widget_component_default_source:[Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1503
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f030031

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/AnalyticalDataCollector;->widget_component_default_source:[Ljava/lang/String;

    .line 1506
    :cond_2
    iget v0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->defaultSource:I

    sget-object v3, Lcom/miui/home/launcher/AnalyticalDataCollector;->widget_component_default_source:[Ljava/lang/String;

    array-length v4, v3

    if-ge v0, v4, :cond_3

    .line 1507
    aget-object v0, v3, v0

    const-string v3, "component_default_source"

    invoke-interface {p2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1509
    :cond_3
    iget v0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->defaultSource:I

    if-nez v0, :cond_4

    const-string v0, "false"

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "true"

    :goto_1
    const-string v3, "component_default_status"

    invoke-interface {p2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1511
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f030033

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1513
    iget v3, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->addSource:I

    packed-switch v3, :pswitch_data_0

    .line 1522
    aget-object v0, v0, v2

    goto :goto_2

    :pswitch_0
    const/4 v2, 0x2

    .line 1519
    aget-object v0, v0, v2

    goto :goto_2

    :pswitch_1
    const/4 v2, 0x0

    .line 1516
    aget-object v0, v0, v2

    :goto_2
    const-string v2, "component_source"

    .line 1525
    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 1528
    check-cast p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    invoke-static {p1, p2}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getMamlInfo(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;Ljava/util/Map;)V

    goto :goto_3

    .line 1530
    :cond_5
    instance-of v0, p1, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;

    if-eqz v0, :cond_6

    .line 1531
    check-cast p1, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getServiceDeliveryInfo(Landroid/content/Context;Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;Ljava/util/Map;)V

    goto :goto_3

    .line 1533
    :cond_6
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getAppWidgetInfo(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Ljava/util/Map;)V

    :cond_7
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x3f2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getMiuiWidgets(Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/MIUIWidgetBasicInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1260
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/home/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/miui/home/launcher/ItemQuery;->COLUMNS:[Ljava/lang/String;

    const-string v4, "itemType = ? OR itemType = ? OR itemType = ?"

    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v8, 0x4

    .line 1264
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x1

    const/16 v9, 0x13

    .line 1265
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x2

    const/16 v10, 0x17

    .line 1266
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v6, 0x0

    move-object v3, v7

    .line 1260
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_7

    .line 1267
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 1270
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/16 v3, 0x8

    .line 1271
    aget-object v3, v7, v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x9

    .line 1272
    aget-object v4, v7, v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1273
    :cond_1
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1274
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v8, :cond_2

    .line 1277
    new-instance v5, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-direct {v5, v6}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;-><init>(I)V

    .line 1278
    invoke-virtual {v5, p0, v1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->load(Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_1

    :cond_2
    if-ne v5, v9, :cond_3

    .line 1281
    new-instance v5, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    invoke-direct {v5}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;-><init>()V

    .line 1282
    invoke-virtual {v5, p0, v1}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->load(Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_1

    :cond_3
    if-ne v5, v10, :cond_4

    .line 1285
    new-instance v5, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;

    invoke-direct {v5}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;-><init>()V

    .line 1286
    invoke-virtual {v5, p0, v1}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;->load(Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_1

    :cond_4
    move-object v5, v0

    :goto_1
    if-eqz v5, :cond_1

    .line 1289
    iget-boolean v6, v5, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    if-nez v6, :cond_5

    iget v6, v5, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-ne v6, v10, :cond_1

    .line 1291
    :cond_5
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1299
    :cond_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v2

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_3

    :cond_7
    :goto_2
    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    return-object v0

    :catchall_1
    move-exception p0

    :goto_3
    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1301
    :cond_9
    throw p0

    :catch_0
    move-object v1, v0

    :catch_1
    if-eqz v1, :cond_a

    .line 1299
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_a
    return-object v0
.end method

.method private static getParamsWithSearchBarSource(II)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 708
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 709
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->getSearchBarSource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "source"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz p0, :cond_0

    .line 711
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "screen_index"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "search_bar_theme_show"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getSearchBarStyle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "desktop_style"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    invoke-static {}, Lcom/miui/home/launcher/SearchBarStyleData;->getInstance()Lcom/miui/home/launcher/SearchBarStyleData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarStyleData;->getExpId()Ljava/lang/String;

    move-result-object p0

    const-string p1, "exp_group_info"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static getServiceDeliveryInfo(Landroid/content/Context;Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1558
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    return-void

    .line 1560
    :cond_0
    iget v0, p1, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;->widgetId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "component_origin_id"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "component_name"

    const-string/jumbo v1, "\u667a\u80fd\u63d0\u9192"

    .line 1561
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1562
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    invoke-static {v0}, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUtil;->getWidgetProviderName(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "widget_provider_name"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "component_is_self_run"

    const-string/jumbo v1, "true"

    .line 1563
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1564
    iget v0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "component_package_version_name"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1565
    iget-object v0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appVersionName:Ljava/lang/String;

    const-string v1, "component_package_version_code"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1566
    iget v0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appVersion:I

    int-to-long v0, v0

    const-string v2, "com.miui.personalassistant"

    invoke-static {p0, v2, v0, v1, p2}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getAppInfo(Landroid/content/Context;Ljava/lang/String;JLjava/util/Map;)V

    .line 1569
    iget-object p0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appName:Ljava/lang/String;

    const-string p1, "component_package_display_name"

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static isAppPredict(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)Z
    .locals 1

    .line 288
    sget-object v0, Lcom/miui/home/launcher/AnalyticalDataCollector$$ExternalSyntheticLambda3;->INSTANCE:Lcom/miui/home/launcher/AnalyticalDataCollector$$ExternalSyntheticLambda3;

    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getInfoFromContainerFolder(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static isGoogleSearchWidget(Landroid/appwidget/AppWidgetProviderInfo;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 586
    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 587
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 588
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.google.android.googlequicksearchbox.SearchWidgetProvider"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getClickIndexInFolder$1(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/FolderInfo;)Ljava/lang/Integer;
    .locals 0

    .line 298
    invoke-static {p0, p2, p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getIndexInFolder(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/Launcher;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$isAppPredict$0(Lcom/miui/home/launcher/FolderInfo;)Ljava/lang/Boolean;
    .locals 1

    .line 289
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isAppPredictOpen()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$sendTrackWidgetExposureToAssistant$2(Lcom/miui/home/launcher/LauncherAppWidgetInfo;Landroid/content/Context;)V
    .locals 3

    .line 1154
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.personalassistant.action.TRACK_WIDGET_EXPOSURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1155
    iget v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    const-string v2, "appWidgetId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1156
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1157
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static recordLaunchApplicationEvent(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 211
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->canTrackLaunchAppEvent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->isInFolder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    invoke-static {p0, p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->createLaunchFolderAppEvent(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)Ljava/util/Map;

    move-result-object p0

    sput-object p0, Lcom/miui/home/launcher/AnalyticalDataCollector;->sLaunchApplicationEvent:Ljava/util/Map;

    goto :goto_0

    .line 215
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->isInHotseat()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->createLaunchHotseatAppEvent(Lcom/miui/home/launcher/ShortcutInfo;)Ljava/util/Map;

    move-result-object p0

    sput-object p0, Lcom/miui/home/launcher/AnalyticalDataCollector;->sLaunchApplicationEvent:Ljava/util/Map;

    goto :goto_0

    .line 218
    :cond_2
    invoke-static {p0, p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->createLaunchDesktopAppEvent(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)Ljava/util/Map;

    move-result-object p0

    sput-object p0, Lcom/miui/home/launcher/AnalyticalDataCollector;->sLaunchApplicationEvent:Ljava/util/Map;

    :goto_0
    return-void
.end method

.method private static sendTrackWidgetExposureToAssistant(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;)V
    .locals 2

    .line 1142
    instance-of v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-nez v0, :cond_0

    return-void

    .line 1145
    :cond_0
    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 1146
    iget-object v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.miui.personalassistant"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1149
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 1153
    :cond_2
    new-instance v0, Lcom/miui/home/launcher/AnalyticalDataCollector$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0}, Lcom/miui/home/launcher/AnalyticalDataCollector$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/LauncherAppWidgetInfo;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->postAtFrontOfQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static trackAddWidget()V
    .locals 1

    const-string v0, "add_widget_to_workspace"

    .line 419
    invoke-static {v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static trackAllAppsClick(Ljava/lang/String;)V
    .locals 2

    .line 820
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "miui_home_type"

    .line 821
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "all_apps_click"

    .line 822
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackAllAppsClose(Ljava/lang/String;)V
    .locals 2

    .line 782
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "reason"

    .line 783
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "all_apps_close"

    .line 784
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackAllAppsDelete(Ljava/lang/String;)V
    .locals 2

    .line 830
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "miui_home_type"

    .line 831
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "all_apps_delete"

    .line 832
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackAllAppsDrag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 841
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "miui_home_type"

    .line 842
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "package_name"

    .line 843
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "all_apps_drag"

    .line 844
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackAllAppsIndex(Ljava/lang/String;)V
    .locals 2

    .line 792
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "miui_home_type"

    .line 793
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "all_apps_index"

    .line 794
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackAllAppsMode()V
    .locals 3

    .line 850
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 852
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getModeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "miui_home_type"

    .line 851
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "all_apps_mode"

    .line 853
    invoke-static {v1, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackAllAppsOpen()V
    .locals 1

    const-string v0, "all_apps_open"

    .line 771
    invoke-static {v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static trackAllAppsSearch(Ljava/lang/String;)V
    .locals 2

    .line 808
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "miui_home_type"

    .line 809
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "all_apps_search"

    .line 810
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackAllAppsSearchViewShow()V
    .locals 1

    const-string v0, "all_apps_search_view_show"

    .line 800
    invoke-static {v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static trackAnimationRate(I)V
    .locals 2

    .line 1659
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1660
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->convertAnimationRateToParameterValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "after_set_status"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "tip"

    const-string v1, "84.14.1.1.21323"

    .line 1661
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "set"

    .line 1662
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static trackAnimationRateStatus()V
    .locals 3

    .line 1667
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1668
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->supportSetAnimationRate()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sCurrentAnimationRate:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 1669
    :goto_0
    invoke-static {v1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->convertAnimationRateToParameterValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "animation_rate"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1670
    sget v1, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEFAULT_ANIMATION_RATE:I

    invoke-static {v1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->convertAnimationRateToParameterValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "init_animation_rate"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1671
    sget-boolean v1, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sAnimationRateUpdated:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "\u662f"

    goto :goto_1

    :cond_1
    const-string/jumbo v1, "\u5426"

    :goto_1
    const-string v2, "if_updated"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "tip"

    const-string v2, "84.14.1.1.21322"

    .line 1672
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "animation_rate_status"

    .line 1673
    invoke-static {v1, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackAppClickEvent(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 230
    invoke-static {p0, p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->recordLaunchApplicationEvent(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)V

    .line 231
    sget-object p0, Lcom/miui/home/launcher/AnalyticalDataCollector;->sLaunchApplicationEvent:Ljava/util/Map;

    const-string p1, "app_click"

    invoke-static {p1, p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackCancelShortcutMenu(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 762
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "package_name"

    .line 763
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "reason"

    .line 764
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "cancel_shortcut_menu"

    .line 765
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackClickAdvertMaMl(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Ljava/lang/String;)V
    .locals 2

    .line 1123
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    new-instance p1, Lcom/miui/home/launcher/AnalyticalDataCollector$2;

    invoke-direct {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector$2;-><init>()V

    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 1124
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "tip"

    const-string v1, "603.2.9.1.28610"

    .line 1125
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    const-string p0, ""

    :cond_0
    const-string p2, "adTrackInfo"

    .line 1126
    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "click"

    .line 1127
    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackMiuiWidgetAdvertEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackClickIconStyleItem()V
    .locals 1

    const-string v0, "click_icon_style_item"

    .line 923
    invoke-static {v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static trackClickMaMl(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Ljava/lang/String;)V
    .locals 1

    .line 1107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1108
    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getMiuiWidgetInfo(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Ljava/util/Map;)V

    const-string/jumbo p0, "tip"

    const-string p1, "603.2.8.1.22557"

    .line 1109
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const-string p0, "self_design_new"

    .line 1110
    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "click"

    .line 1111
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackMiuiWidgetEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackClickMiuiWidget(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;)V
    .locals 1

    .line 1171
    iget-boolean v0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    if-nez v0, :cond_0

    return-void

    .line 1173
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1174
    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getMiuiWidgetInfo(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Ljava/util/Map;)V

    const-string/jumbo p0, "tip"

    const-string p1, "603.2.1.1.13983"

    .line 1175
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "click"

    .line 1176
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackMiuiWidgetEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackClickRelay(Ljava/lang/String;II)V
    .locals 1

    .line 1729
    invoke-static {p0, p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getCommonRelayParams(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object p0

    const-string/jumbo p1, "tip"

    const-string v0, "758.18.1.1.29393"

    .line 1730
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    const-string p1, "native"

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    const-string/jumbo p1, "\u526f\u5c4f\u955c\u50cf"

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    if-ne p2, p1, :cond_2

    const-string p1, "WebView"

    goto :goto_0

    .line 1740
    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "relay_type_number"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "UNKNOWN"

    :goto_0
    const-string p2, "relay_type"

    .line 1742
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "click"

    .line 1743
    invoke-static {p1, p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackMirrorEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackClickShortcutMenuItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 747
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "package_name"

    .line 748
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "which"

    .line 749
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "click_shortcut_menu_item"

    .line 750
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackClickShortcutMenuItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 754
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "package_name"

    .line 755
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "app_style"

    .line 756
    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "which"

    .line 757
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "click_shortcut_menu_item"

    .line 758
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackClickToAddMIUIWidget(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)V
    .locals 3

    .line 1077
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "tip"

    const-string v2, "603.15.1.1.15352"

    .line 1078
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "screen_layout"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "screen_location"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "click_element_type"

    .line 1081
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "click"

    .line 1083
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackMiuiWidgetEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackClickWidgetMenuItem(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Ljava/lang/String;)V
    .locals 1

    .line 1378
    iget-boolean v0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    if-eqz v0, :cond_0

    .line 1379
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1380
    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getMiuiWidgetInfo(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Ljava/util/Map;)V

    const-string/jumbo p0, "tip"

    const-string p1, "603.2.3.1.13994"

    .line 1381
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "click_element_text"

    .line 1382
    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "click"

    .line 1383
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackMiuiWidgetEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static trackCloseFolderAfterBackToHome(Ljava/lang/String;)V
    .locals 2

    .line 456
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "miui_home_type"

    .line 457
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "close_folder_after_back_to_home"

    .line 458
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackDeleteMiuiWidget(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;)V
    .locals 4

    .line 1306
    iget-boolean v0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    if-eqz v0, :cond_1

    .line 1307
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1308
    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getMiuiWidgetInfo(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Ljava/util/Map;)V

    const-string/jumbo v1, "tip"

    const-string v2, "603.2.1.1.13990"

    .line 1309
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1311
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1312
    iget v2, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->deleteWidgetWay:I

    array-length v3, v1

    if-ge v2, v3, :cond_0

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    .line 1313
    aget-object v1, v1, v2

    const-string v2, "component_delete_way"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    :cond_0
    iget p1, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->status:I

    .line 1317
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f030036

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 1318
    aget-object p0, p0, p1

    const-string p1, "component_package_install_status"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "delete_success"

    .line 1320
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackMiuiWidgetEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public static trackDeleteWidgets(Ljava/lang/String;)V
    .locals 3

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "tip"

    const-string v2, "603.0.0.0.45287"

    .line 224
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "widgetComponent"

    .line 225
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "delete_illegal_widget"

    .line 226
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackMiuiWidgetEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackDeletedShortCut(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 3

    .line 470
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 471
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPairCompletePackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package_name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "intent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getAppStyle()Ljava/lang/String;

    move-result-object p0

    const-string v1, "app_style"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "delete_short"

    .line 474
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackDesktopSwipeLeftOrRight()V
    .locals 1

    const-string v0, "desktop_swipe_left_or_right"

    .line 462
    invoke-static {v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static trackDoubleClick()V
    .locals 2

    const-string v0, "double_click_screen"

    const/4 v1, 0x0

    .line 680
    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackDragApkToCenterDeleteDropTargetEvent(I)V
    .locals 2

    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 200
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "count"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "drag_app_to_uninstall"

    .line 201
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackDragMiuiWidget(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;IIIIIIIII)V
    .locals 2

    .line 1184
    iget-boolean v0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    if-nez v0, :cond_0

    return-void

    .line 1186
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1187
    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getMiuiWidgetInfo(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Ljava/util/Map;)V

    .line 1189
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f030034

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1190
    array-length v1, p1

    if-ge p2, v1, :cond_1

    .line 1191
    aget-object p1, p1, p2

    const-string p2, "drag_type"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x0

    if-eqz p5, :cond_4

    const/4 p2, 0x1

    if-eq p5, p2, :cond_3

    const/4 p2, 0x2

    if-eq p5, p2, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "603.1.2.1.13998"

    goto :goto_0

    :cond_3
    const-string p1, "603.1.3.1.13997"

    goto :goto_0

    :cond_4
    const-string p1, "603.2.1.1.13999"

    :goto_0
    if-eqz p1, :cond_5

    const-string/jumbo p2, "tip"

    .line 1208
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f030035

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 1211
    array-length p1, p0

    if-ge p5, p1, :cond_6

    .line 1212
    aget-object p1, p0, p5

    const-string p2, "drag_from_module"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-eqz p0, :cond_7

    .line 1214
    array-length p1, p0

    if-ge p6, p1, :cond_7

    .line 1215
    aget-object p0, p0, p6

    const-string p1, "drag_to_module"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    :cond_7
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "drag_from_screen_location"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "drag_to_screen_location"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p5, :cond_8

    .line 1221
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "drag_from_grid_x"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "drag_from_grid_y"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    if-nez p6, :cond_9

    .line 1226
    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "drag_to_grid_x"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "drag_to_grid_y"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const-string p0, "drag"

    .line 1229
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackMiuiWidgetEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackEditMode(Ljava/lang/String;)V
    .locals 2

    .line 386
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "miui_home_type"

    .line 387
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "enter_edit_mode"

    .line 388
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackEditModeTopMenuClickEvent(Ljava/lang/String;)V
    .locals 2

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "name"

    .line 194
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "click_edit_mode_top_menu"

    .line 195
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackEditingEntryClicked(Ljava/lang/String;)V
    .locals 0

    .line 415
    invoke-static {p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static trackEnterIconCustomizePage(Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 914
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    const-string p0, "other"

    .line 917
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "source"

    .line 918
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "enter_icon_customize_page"

    .line 919
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackExecuteServiceDeliveryReuse(IIII)V
    .locals 3

    .line 1132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "tip"

    const-string v2, "603.2.0.1.36556"

    .line 1133
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "serviceDeliveryCount"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "reuseWidgetCount"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "reuseMaMlCount"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "hostWidgetCount"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "execute"

    .line 1138
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackMiuiWidgetAdvertEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackExposeAdvertMaMl(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Ljava/lang/String;)V
    .locals 2

    .line 1115
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    new-instance p1, Lcom/miui/home/launcher/AnalyticalDataCollector$1;

    invoke-direct {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector$1;-><init>()V

    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 1116
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "tip"

    const-string v1, "603.2.9.1.28609"

    .line 1117
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    const-string p0, ""

    :cond_0
    const-string p2, "adTrackInfo"

    .line 1118
    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "view"

    .line 1119
    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackMiuiWidgetAdvertEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackExposeMaMl(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Ljava/lang/String;)V
    .locals 1

    .line 1099
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1100
    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getMiuiWidgetInfo(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Ljava/util/Map;)V

    const-string/jumbo p0, "tip"

    const-string p1, "603.2.8.1.22554"

    .line 1101
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const-string p0, "self_design_new"

    .line 1102
    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "expose"

    .line 1103
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackMiuiWidgetEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackExposeMiuiWidget(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;J)V
    .locals 1

    .line 1087
    iget-boolean v0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    if-nez v0, :cond_0

    return-void

    .line 1089
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1090
    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getMiuiWidgetInfo(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Ljava/util/Map;)V

    .line 1091
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "expose_duration"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p2, "tip"

    const-string p3, "603.2.1.1.13987"

    .line 1092
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "expose"

    .line 1093
    invoke-static {p2, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackMiuiWidgetEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1095
    invoke-static {p0, p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->sendTrackWidgetExposureToAssistant(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;)V

    return-void
.end method

.method public static trackExposeRelay(Ljava/lang/String;I)V
    .locals 1

    .line 1723
    invoke-static {p0, p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getCommonRelayParams(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object p0

    const-string/jumbo p1, "tip"

    const-string v0, "758.18.1.1.29392"

    .line 1724
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "expose"

    .line 1725
    invoke-static {p1, p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackMirrorEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackFolderClick(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 2

    .line 592
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getFolderTitle(Lcom/miui/home/launcher/FolderInfo;)Ljava/lang/String;

    move-result-object p0

    .line 593
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 594
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "folder_title"

    .line 595
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "launcher_folder_click"

    .line 596
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static trackFolderOpenTime(Lcom/miui/home/launcher/FolderInfo;J)V
    .locals 3

    .line 601
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getFolderTitle(Lcom/miui/home/launcher/FolderInfo;)Ljava/lang/String;

    move-result-object p0

    .line 602
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 603
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "folder_title"

    .line 604
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, 0x3e8

    .line 605
    div-long/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "duration_time"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "launcher_folder_open_duration_time"

    .line 606
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static trackFolderOpenWithRecommend(Z)V
    .locals 2

    .line 392
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 393
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "is_recommend_screen_visible"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "folder_open"

    .line 394
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackFolderRecommend(Ljava/lang/String;)V
    .locals 2

    .line 404
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "miui_home_type"

    .line 405
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getNetWorkConnectedString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "network"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "recommend_app"

    .line 407
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackFolderRecommendAppShow(IILcom/miui/home/launcher/FolderInfo;)V
    .locals 2

    .line 642
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 643
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "screen_index"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "show_app_count"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    invoke-static {p2}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getFolderTitle(Lcom/miui/home/launcher/FolderInfo;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "name"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "home_folder_recommend_slots_count"

    .line 646
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackFolderRename(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 2

    .line 633
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getFolderTitle(Lcom/miui/home/launcher/FolderInfo;)Ljava/lang/String;

    move-result-object p0

    .line 634
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 635
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "folder_title"

    .line 636
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "folder_rename"

    .line 637
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static trackGadgetClick(Ljava/lang/String;)V
    .locals 2

    .line 446
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "gadget_title"

    .line 447
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "gadget_click"

    .line 448
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackGadgetView(Ljava/lang/String;)V
    .locals 2

    .line 440
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "gadget_title"

    .line 441
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "gadget_view_show"

    .line 442
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackGoolgPlay(Landroid/content/Intent;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 565
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v0, "com.android.vending"

    .line 566
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 567
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "package_name"

    .line 568
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "launch_google_play"

    .line 569
    invoke-static {p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static trackHomeComeBackEvent(Ljava/lang/String;)V
    .locals 3

    .line 339
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->canTrackLaunchAppEvent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 341
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/AnalyticalDataCollector;->sLaunchApplicationEvent:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 342
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->extractPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 343
    sget-object v0, Lcom/miui/home/launcher/AnalyticalDataCollector;->sLaunchApplicationEvent:Ljava/util/Map;

    const-string v1, "return_from"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v0, Lcom/miui/home/launcher/AnalyticalDataCollector;->sLaunchApplicationEvent:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "resume_time"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "back to home, packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Launcher.AnalyticalDataCollector"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    sget-object p0, Lcom/miui/home/launcher/AnalyticalDataCollector;->sLaunchApplicationEvent:Ljava/util/Map;

    const-string v0, "launch_application"

    invoke-static {v0, p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    const/4 p0, 0x0

    .line 347
    sput-object p0, Lcom/miui/home/launcher/AnalyticalDataCollector;->sLaunchApplicationEvent:Ljava/util/Map;

    :cond_1
    return-void
.end method

.method public static trackHomeCreated(Ljava/lang/String;)V
    .locals 2

    .line 478
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "package_name"

    .line 479
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "home_activity_created"

    .line 480
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackHomeMoreSettingsAutoFillEmptyCells(Z)V
    .locals 2

    .line 544
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    const-string p0, "on"

    goto :goto_0

    :cond_0
    const-string p0, "off"

    :goto_0
    const-string/jumbo v1, "switch"

    .line 545
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "home_more_settings_auto_fill_empty_cells"

    .line 546
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackHomeMoreSettingsLockScreenCells(Z)V
    .locals 2

    .line 550
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    const-string p0, "on"

    goto :goto_0

    :cond_0
    const-string p0, "off"

    :goto_0
    const-string/jumbo v1, "switch"

    .line 551
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "home_more_settings_lock_screen_cells"

    .line 552
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackHomeMoreSettingsShowMemInfo(Z)V
    .locals 2

    .line 556
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    const-string p0, "on"

    goto :goto_0

    :cond_0
    const-string p0, "off"

    :goto_0
    const-string/jumbo v1, "switch"

    .line 557
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "home_more_settings_show_memory_info"

    .line 558
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackHomePullDown(Ljava/lang/String;)V
    .locals 2

    .line 490
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "launch"

    .line 491
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "home_vertical_gesture"

    .line 492
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackHomeSettingNoWord(Z)V
    .locals 2

    .line 522
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    const-string p0, "on"

    goto :goto_0

    :cond_0
    const-string p0, "off"

    :goto_0
    const-string/jumbo v1, "switch"

    .line 523
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "home_no_word"

    .line 524
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackHomeSettingOnlyWidgetNoWord(Z)V
    .locals 2

    .line 528
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    const-string p0, "on"

    goto :goto_0

    :cond_0
    const-string p0, "off"

    :goto_0
    const-string/jumbo v1, "switch"

    .line 529
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "home_only_widget_no_word"

    .line 530
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackHomeSettingSubAutoFill(Z)V
    .locals 2

    .line 516
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    const-string p0, "on"

    goto :goto_0

    :cond_0
    const-string p0, "off"

    :goto_0
    const-string/jumbo v1, "switch"

    .line 517
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "home_setting_sub_auto_fill"

    .line 518
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackHomeSettingSubClicked(Ljava/lang/String;)V
    .locals 0

    .line 512
    invoke-static {p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static trackHomeSettingSubLockLayout(Z)V
    .locals 2

    .line 534
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    const-string p0, "on"

    goto :goto_0

    :cond_0
    const-string p0, "off"

    :goto_0
    const-string/jumbo v1, "switch"

    .line 535
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "home_setting_sub_lock_layout"

    .line 536
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackInstallMiuiWidget(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;)V
    .locals 16

    move-object/from16 v0, p1

    .line 1388
    iget-boolean v1, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    if-eqz v1, :cond_f

    .line 1389
    iget v1, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->addSource:I

    const/16 v2, 0x3ec

    if-ne v1, v2, :cond_0

    return-void

    .line 1394
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v2, p0

    .line 1395
    invoke-static {v2, v0, v1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getMiuiWidgetInfo(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Ljava/util/Map;)V

    const-string/jumbo v3, "tip"

    const-string v4, "603.2.1.1.13989"

    .line 1396
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1398
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f030030

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1399
    iget v4, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->addSource:I

    const/16 v5, 0x3ee

    const/16 v6, 0x8

    const/4 v7, 0x7

    const/4 v8, 0x4

    const/4 v9, 0x6

    const/16 v11, 0xa

    const/16 v12, 0x9

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v10, 0x5

    const-string v15, "component_add_way"

    if-eq v4, v5, :cond_3

    const/16 v5, 0x3ef

    if-eq v4, v5, :cond_1

    const/16 v5, 0x3f5

    if-eq v4, v5, :cond_2

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    goto :goto_1

    .line 1435
    :pswitch_0
    aget-object v3, v3, v11

    invoke-interface {v1, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1432
    :pswitch_1
    aget-object v3, v3, v12

    invoke-interface {v1, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1429
    :pswitch_2
    aget-object v3, v3, v6

    invoke-interface {v1, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1426
    :pswitch_3
    aget-object v3, v3, v7

    invoke-interface {v1, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1417
    :pswitch_4
    aget-object v3, v3, v8

    invoke-interface {v1, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1414
    :pswitch_5
    aget-object v3, v3, v13

    invoke-interface {v1, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1423
    :pswitch_6
    aget-object v3, v3, v9

    invoke-interface {v1, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1411
    :pswitch_7
    aget-object v3, v3, v14

    invoke-interface {v1, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    :pswitch_8
    const/4 v4, 0x1

    goto :goto_0

    .line 1420
    :cond_2
    aget-object v3, v3, v10

    invoke-interface {v1, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1407
    :goto_0
    aget-object v3, v3, v4

    invoke-interface {v1, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 1402
    aget-object v3, v3, v4

    invoke-interface {v1, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f03002f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1441
    iget v3, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->pickerTipSource:I

    const/4 v4, -0x1

    const-string v5, "component_add_source"

    if-eq v3, v4, :cond_e

    if-eq v3, v10, :cond_d

    const/16 v4, 0x10

    if-eq v3, v4, :cond_c

    const/16 v4, 0x13

    if-eq v3, v4, :cond_b

    const/4 v4, 0x1

    if-eq v3, v4, :cond_a

    if-eq v3, v14, :cond_9

    if-eq v3, v13, :cond_8

    if-eq v3, v12, :cond_7

    if-eq v3, v11, :cond_6

    const/16 v4, 0x15

    if-eq v3, v4, :cond_5

    const/16 v4, 0x16

    if-eq v3, v4, :cond_4

    goto :goto_2

    .line 1473
    :cond_4
    aget-object v2, v2, v11

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1470
    :cond_5
    aget-object v2, v2, v12

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    .line 1443
    aget-object v2, v2, v3

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1446
    :cond_7
    aget-object v2, v2, v10

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1452
    :cond_8
    aget-object v2, v2, v14

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_9
    const/4 v3, 0x1

    .line 1449
    aget-object v2, v2, v3

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1464
    :cond_a
    aget-object v2, v2, v9

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1467
    :cond_b
    aget-object v2, v2, v6

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1461
    :cond_c
    aget-object v2, v2, v7

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1455
    :cond_d
    aget-object v2, v2, v13

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1458
    :cond_e
    aget-object v2, v2, v8

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1478
    :goto_2
    iget-object v0, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->pickerTrackId:Ljava/lang/String;

    const-string v2, "picker_track_id"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "add_success"

    .line 1479
    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackMiuiWidgetEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3f7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static trackInvalidateApplication(Ljava/lang/String;)V
    .locals 2

    .line 398
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "intent_uri"

    .line 399
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "home_invalidate_application"

    .line 400
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackItemMoved(Ljava/lang/String;)V
    .locals 0

    .line 452
    invoke-static {p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static trackLaunchAppAfterBackToHome(Ljava/lang/String;)V
    .locals 0

    .line 466
    invoke-static {p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static trackLongPressToEditMode(Lcom/miui/home/launcher/Launcher;)V
    .locals 3

    .line 1058
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "tip"

    const-string v2, "84.1.0.1.15629"

    .line 1059
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "screen_layout"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "screen_location"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "long_press"

    .line 1062
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackMiuiHomeInfo()V
    .locals 3

    .line 734
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const v1, 0x2026c4f8

    .line 735
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "version_code"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "version_name"

    const-string v2, "RELEASE-5.39.40.11704-09172004"

    .line 736
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "miui_home_info"

    .line 737
    invoke-static {v1, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackMiuiWidgets(Landroid/content/Context;)V
    .locals 5

    .line 1233
    invoke-static {}, Lcom/miui/home/launcher/MIUIWidgetUtil;->isMIUIWidgetSupport()Z

    .line 1236
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "tip"

    const-string v2, "603.2.1.1.13991"

    .line 1237
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "screen_layout"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1239
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "component_quantity"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1240
    sget-boolean v1, Lcom/mi/mibridge/DeviceLevel;->IS_MIUI_LITE_VERSION:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v3, "is_lite"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getMiuiWidgets(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1242
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1243
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1244
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1245
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    .line 1246
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1247
    invoke-static {p0, v3, v4}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getMiuiWidgetInfo(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Ljava/util/Map;)V

    .line 1248
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 1249
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p0, "component_list"

    .line 1251
    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string p0, "added"

    .line 1253
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackMiuiWidgetEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackModuleLoad(Ljava/lang/String;ZI)V
    .locals 2

    .line 888
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "module"

    .line 889
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "is_success"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_0

    .line 892
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "error_code"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string p0, "event_module_load"

    .line 894
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackPersonalAssistantSwitch(Z)V
    .locals 2

    .line 496
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    const-string p0, "on"

    goto :goto_0

    :cond_0
    const-string p0, "off"

    :goto_0
    const-string/jumbo v1, "switch"

    .line 497
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "home_personal_assistant_switch"

    .line 498
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static trackPullDownGesture()V
    .locals 3

    .line 860
    invoke-static {}, Lcom/miui/home/launcher/GlobalSearchUtil;->isPullDownGestureGlobalSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "global_search"

    goto :goto_0

    :cond_0
    const-string v0, "notification_control_center"

    .line 862
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "miui_home_type"

    .line 863
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "gesture_pull_down"

    .line 864
    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackQuitFolderPicker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1695
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "before_folder_size"

    .line 1696
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "after_folder_size"

    .line 1697
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "set_recommend_switch"

    .line 1698
    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "quit"

    .line 1699
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackRefreshMiuiWidget(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;)V
    .locals 1

    .line 1162
    iget-boolean v0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    if-nez v0, :cond_0

    return-void

    .line 1164
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1165
    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getMiuiWidgetInfo(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Ljava/util/Map;)V

    const-string/jumbo p0, "tip"

    const-string p1, "603.2.1.1.13988"

    .line 1166
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "refresh"

    .line 1167
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackMiuiWidgetEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackRestoreHiddenApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 907
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "package_name"

    .line 908
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "activity_name"

    .line 909
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "restore_hidden_app"

    .line 910
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackScreenCellsConfig()V
    .locals 2

    const-string v0, "layout_rules_click"

    const/4 v1, 0x0

    .line 1747
    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackScreenCellsSizeChanged(Ljava/lang/String;)V
    .locals 2

    .line 429
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "layout_size"

    .line 430
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getLauncherLayoutType()Lcom/miui/home/launcher/compat/LauncherLayoutType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/LauncherLayoutType;->getCurrentTypeName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "screen_layout_type"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "screen_cells__changed"

    .line 432
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackScreenExpose(Lcom/miui/home/launcher/Launcher;JJ)V
    .locals 3

    .line 1066
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "tip"

    const-string v2, "84.1.0.1.15628"

    .line 1067
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "screen_layout"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p3, "screen_location"

    invoke-interface {v0, p3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "expose_duration"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "expose"

    .line 1071
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackSearchBarClick(IILjava/lang/String;)V
    .locals 0

    .line 684
    invoke-static {p0, p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getParamsWithSearchBarSource(II)Ljava/util/Map;

    move-result-object p0

    const-string p1, "jump"

    .line 685
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "search_bar_click"

    .line 686
    invoke-static {p1, p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackSearchBarSettingClick(IILjava/lang/String;)V
    .locals 0

    .line 702
    invoke-static {p0, p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getParamsWithSearchBarSource(II)Ljava/util/Map;

    move-result-object p0

    const-string p1, "jump"

    .line 703
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "search_bar_setting_click"

    .line 704
    invoke-static {p1, p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackSearchBarSettingShow(II)V
    .locals 0

    .line 698
    invoke-static {p0, p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getParamsWithSearchBarSource(II)Ljava/util/Map;

    move-result-object p0

    const-string p1, "search_bar_setting_show"

    invoke-static {p1, p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackSearchBarShow(II)V
    .locals 0

    .line 675
    invoke-static {p0, p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getParamsWithSearchBarSource(II)Ljava/util/Map;

    move-result-object p0

    const-string p1, "search_bar_show"

    .line 676
    invoke-static {p1, p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackSearchBarSupport()V
    .locals 3

    const/4 v0, -0x1

    .line 667
    invoke-static {v0, v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getParamsWithSearchBarSource(II)Ljava/util/Map;

    move-result-object v0

    .line 668
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->isHomeSupportSearchBar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 669
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->isGlobalSearchSupportSearchBar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 670
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "support"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "search_bar_support"

    .line 671
    invoke-static {v1, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackSearchBarTransferClick(Ljava/lang/String;)V
    .locals 2

    .line 726
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "miui_home_type"

    .line 727
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "search_bar_transfer_click"

    .line 728
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackSearchBarTransferShow(Ljava/lang/String;)V
    .locals 2

    .line 720
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "miui_home_type"

    .line 721
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "search_bar_transfer_show"

    .line 722
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackSearchBarXiaoAiClick(II)V
    .locals 0

    .line 694
    invoke-static {p0, p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getParamsWithSearchBarSource(II)Ljava/util/Map;

    move-result-object p0

    const-string p1, "search_bar_xiaoai_click"

    invoke-static {p1, p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackSearchBarXiaoAiShow(II)V
    .locals 0

    .line 690
    invoke-static {p0, p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getParamsWithSearchBarSource(II)Ljava/util/Map;

    move-result-object p0

    const-string p1, "search_bar_xiaoai_show"

    invoke-static {p1, p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackShortcutActiveEvent(Lcom/miui/home/launcher/ShortcutInfo;ZLjava/lang/String;)V
    .locals 1

    const-string v0, "active"

    .line 1638
    invoke-static {v0, p0, p1, p2}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackShortcutEvent(Ljava/lang/String;Lcom/miui/home/launcher/ShortcutInfo;ZLjava/lang/String;)V

    return-void
.end method

.method public static trackShortcutClickEvent(Lcom/miui/home/launcher/ShortcutInfo;ZLjava/lang/String;)V
    .locals 1

    const-string v0, "click"

    .line 1642
    invoke-static {v0, p0, p1, p2}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackShortcutEvent(Ljava/lang/String;Lcom/miui/home/launcher/ShortcutInfo;ZLjava/lang/String;)V

    return-void
.end method

.method private static trackShortcutEvent(Ljava/lang/String;Lcom/miui/home/launcher/ShortcutInfo;ZLjava/lang/String;)V
    .locals 3

    .line 1646
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1647
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package_name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1648
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "package_name_cn"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "action_ref"

    const-string v2, "desktop"

    .line 1649
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1650
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1651
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getInstallerPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "download_source"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1653
    :cond_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "is_active"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "style_id"

    .line 1654
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1655
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackShortcutIconExpose(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 3

    .line 1632
    iget v0, p0, Lcom/miui/home/launcher/ItemInfo;->itemFlags:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1634
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getTrackMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "expose"

    invoke-static {v2, p0, v0, v1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackShortcutEvent(Ljava/lang/String;Lcom/miui/home/launcher/ShortcutInfo;ZLjava/lang/String;)V

    return-void
.end method

.method public static trackShowMarketConnectNetworkDialog()V
    .locals 1

    const-string v0, "market_show_dialog"

    .line 411
    invoke-static {v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static trackShowingShortcutMenu(Ljava/lang/String;)V
    .locals 2

    .line 1689
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "folder_size"

    .line 1690
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "showing_shortcut_menu_when_drop_folder"

    .line 1691
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackShowingShortcutMenuWhenDropIcon(Ljava/lang/String;)V
    .locals 2

    .line 741
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "package_name"

    .line 742
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "showing_shortcut_menu_when_drop_icon"

    .line 743
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static trackSlideUpGesture()V
    .locals 3

    .line 869
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDrawerMode()Z

    move-result v0

    const-string v1, "no_action"

    if-eqz v0, :cond_0

    const-string v1, "all_apps"

    goto :goto_0

    .line 871
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isFeedInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 872
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/settings/LauncherGestureController;->getSlideUpGesture(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 874
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isGlobalSearchEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 876
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isGlobalSearchBottomEffectEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "global_search"

    move-object v1, v0

    .line 882
    :cond_2
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "miui_home_type"

    .line 883
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gesture_slide_up"

    .line 884
    invoke-static {v1, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static trackSlidingOperationSwitch()V
    .locals 3

    .line 650
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 651
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->isGlobalSearchEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "-1"

    :goto_0
    const-string/jumbo v2, "status"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "sliding_operation_switch"

    .line 652
    invoke-static {v1, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackStartOneHandedMode()V
    .locals 3

    .line 1624
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "tip"

    const-string v2, "830.1.0.1.19157"

    .line 1625
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "open_way"

    const-string/jumbo v2, "\u5168\u9762\u5c4f"

    .line 1626
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "open"

    .line 1628
    invoke-static {v1, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackOneHandModeEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackTransitionEffectChanged(Ljava/lang/String;)V
    .locals 2

    .line 423
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "miui_home_type"

    .line 424
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "transition_effect_changed"

    .line 425
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackUsingMultiSelect()V
    .locals 1

    const-string/jumbo v0, "use_multi_select"

    .line 436
    invoke-static {v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static trackVerticalGesture(Z)V
    .locals 2

    .line 484
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    const-string p0, "global_search"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "status_bar"

    :goto_0
    const-string v1, "launch"

    .line 485
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "home_vertical_gesture"

    .line 486
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackWhenHideOrUninstallApp(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 898
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "package_name"

    .line 899
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "activity_name"

    .line 900
    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string p1, "is_hide_app"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "source"

    .line 902
    invoke-interface {v0, p0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    invoke-static {p3, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackWidgetClick(Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 0

    .line 574
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->isGoogleSearchWidget(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "click_google_search_widget"

    .line 575
    invoke-static {p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static trackWidgetRemove(Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 0

    .line 580
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->isGoogleSearchWidget(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "google_search_widget"

    .line 581
    invoke-static {p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
