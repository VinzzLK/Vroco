.class public Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;
.super Ljava/lang/Object;
.source "ShortcutMenuManager.java"


# static fields
.field private static final SHORTCUT_RANK_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/miui/launcher/common/ShortcutInfoCompat;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sInstance:Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;


# instance fields
.field private final mLauncherApps:Landroid/content/pm/LauncherApps;


# direct methods
.method public static synthetic $r8$lambda$RJLmC4m-FXtUTlaeSqANrGWf1ao(Lcom/miui/launcher/common/ShortcutInfoCompat;Lcom/miui/launcher/common/ShortcutInfoCompat;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->lambda$static$0(Lcom/miui/launcher/common/ShortcutInfoCompat;Lcom/miui/launcher/common/ShortcutInfoCompat;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 255
    sget-object v0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager$$ExternalSyntheticLambda0;->INSTANCE:Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager$$ExternalSyntheticLambda0;

    sput-object v0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->SHORTCUT_RANK_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "launcherapps"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    return-void
.end method

.method public static canShowShortcutMenu(Landroid/view/View;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 354
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->isAndroidVersionSupportShortcutMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->canShowShortcutMenu()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 356
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result p0

    if-nez p0, :cond_0

    .line 357
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object p0

    instance-of p0, p0, Lcom/miui/home/launcher/allapps/ElderlyManLauncherMode;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static canShowShortcutMenu(Lcom/miui/home/launcher/DragObject;)Z
    .locals 1

    .line 349
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->canShowShortcutMenu(Lcom/miui/home/launcher/DragObject;)Z

    move-result p0

    return p0
.end method

.method private clearLauncherWidgetAnimCache()V
    .locals 1

    .line 216
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWidgetTypeIconAnimHelper()Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->clearWidgetTypeIconCache(Z)V

    :cond_0
    return-void
.end method

.method private getAddWidgetShortcutMenuItems(Lcom/miui/home/launcher/ItemInfo;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/ItemInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    new-instance v0, Lcom/miui/home/launcher/shortcuts/AddWidgetShortcutMenuItem;

    invoke-direct {v0}, Lcom/miui/home/launcher/shortcuts/AddWidgetShortcutMenuItem;-><init>()V

    .line 101
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/AddWidgetShortcutMenuItem;->isValid(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 102
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Show addWidgetMenuItem, title="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->getShortTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ShortcutMenuManager"

    invoke-static {v0, p1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private getAppShortcutMenuItemList(Lcom/miui/home/launcher/ItemInfo;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/ItemInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;",
            ">;"
        }
    .end annotation

    .line 223
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->isApplicatoin()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 224
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->isAndroidVersionSupportShortcutMenu()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 226
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/launcher/sosc/module/SoscEvent;->isSoscSplit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 230
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_2

    .line 231
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_2
    const/16 v2, 0x9

    .line 234
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->query(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    .line 237
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 239
    :cond_3
    invoke-static {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->sortAndFilterShortcuts(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 242
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/launcher/common/ShortcutInfoCompat;

    .line 243
    new-instance v3, Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;

    invoke-direct {v3, v2}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;-><init>(Lcom/miui/launcher/common/ShortcutInfoCompat;)V

    .line 244
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->getShortcutItemDrawable(Lcom/miui/launcher/common/ShortcutInfoCompat;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 245
    invoke-virtual {v3}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;->isValid()Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v1, v1, 0x1

    .line 246
    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;->setOrder(I)V

    .line 247
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "show appMenuItem, title="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->getShortTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShortcutMenuManager"

    invoke-static {v3, v2}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    return-object v0

    .line 224
    :cond_6
    :goto_1
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method private getDefaultIcon(Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 176
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/miui/home/launcher/graphics/DrawableInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private getFolderShortcutMenuItemList(Lcom/miui/home/launcher/ItemInfo;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/ItemInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;",
            ">;"
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->getAllFolderShortcutMenuItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;

    .line 148
    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->isValid(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    invoke-virtual {p0, v2, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->updateShortcutMenuItemTitle(Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;Lcom/miui/home/launcher/ItemInfo;)V

    .line 150
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    move-object v3, p1

    check-cast v3, Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v3}, Lcom/miui/home/launcher/FolderInfo;->getFolderGridSize()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackShowingShortcutMenu(Ljava/lang/String;)V

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "show folderMenuItem, title="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->getShortTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShortcutMenuManager"

    invoke-static {v3, v2}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getInstance()Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;
    .locals 2

    .line 71
    sget-object v0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->sInstance:Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;

    if-nez v0, :cond_1

    .line 72
    const-class v0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->sInstance:Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;

    if-nez v1, :cond_0

    .line 74
    new-instance v1, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;

    invoke-direct {v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->sInstance:Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;

    .line 76
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 78
    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->sInstance:Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;

    return-object v0
.end method

.method private getShortcutItemDrawable(Lcom/miui/launcher/common/ShortcutInfoCompat;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 161
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->isAndroidVersionSupportShortcutMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 164
    invoke-virtual {p1}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getShortcutInfo()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenDensityDpi()I

    move-result v2

    .line 163
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ShortcutMenuManager"

    const-string v2, "Failed to get shortcut icon"

    .line 166
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 170
    invoke-virtual {p1}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->getDefaultIcon(Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private getValidSystemShortcutMenuItemList(Lcom/miui/home/launcher/ItemInfo;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/ItemInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;",
            ">;"
        }
    .end annotation

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->getAllSystemShortcutMenuItem()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;

    .line 112
    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->isValid(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, p1, Lcom/miui/home/launcher/FolderInfo;

    if-nez v3, :cond_0

    instance-of v3, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    if-nez v3, :cond_0

    .line 113
    invoke-virtual {p0, v2, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->updateShortcutMenuItemTitle(Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;Lcom/miui/home/launcher/ItemInfo;)V

    .line 114
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "show systemMenuItem, title="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->getShortTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShortcutMenuManager"

    invoke-static {v3, v2}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getWidgetShortcutMenuItemList(Lcom/miui/home/launcher/ItemInfo;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/ItemInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;",
            ">;"
        }
    .end annotation

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->getAllWidgetShortcutMenuItem()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;

    .line 124
    instance-of v3, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    if-eqz v3, :cond_0

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->isValid(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    invoke-virtual {p0, v2, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->updateShortcutMenuItemTitle(Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;Lcom/miui/home/launcher/ItemInfo;)V

    .line 126
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "show WidgetMenuItem, title="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->getShortTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShortcutMenuManager"

    invoke-static {v3, v2}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static isAndroidVersionSupportShortcutMenu()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic lambda$static$0(Lcom/miui/launcher/common/ShortcutInfoCompat;Lcom/miui/launcher/common/ShortcutInfoCompat;)I
    .locals 2

    .line 257
    invoke-virtual {p0}, Lcom/miui/launcher/common/ShortcutInfoCompat;->isDeclaredInManifest()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/launcher/common/ShortcutInfoCompat;->isDeclaredInManifest()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 258
    invoke-virtual {p0}, Lcom/miui/launcher/common/ShortcutInfoCompat;->isDeclaredInManifest()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0

    .line 260
    :cond_1
    invoke-virtual {p0}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getRank()I

    move-result p0

    invoke-virtual {p1}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getRank()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method private query(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x19
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/launcher/common/ShortcutInfoCompat;",
            ">;"
        }
    .end annotation

    .line 305
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->hasHostPermission()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 306
    new-instance v0, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {v0}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    .line 307
    invoke-virtual {v0, p1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;

    if-eqz p2, :cond_0

    .line 309
    invoke-virtual {v0, p2}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 310
    invoke-virtual {v0, p3}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setActivity(Landroid/content/ComponentName;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 311
    invoke-virtual {v0, p4}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setShortcutIds(Ljava/util/List;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    :cond_0
    const/4 p1, 0x0

    .line 315
    :try_start_0
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v0, p5}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p2, "ShortcutMenuManager"

    const-string p3, "Failed to query for shortcuts"

    .line 317
    invoke-static {p2, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-nez p1, :cond_1

    .line 320
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 322
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 323
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ShortcutInfo;

    .line 324
    new-instance p3, Lcom/miui/launcher/common/ShortcutInfoCompat;

    invoke-direct {p3, p2}, Lcom/miui/launcher/common/ShortcutInfoCompat;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object p0

    .line 328
    :cond_3
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public static sortAndFilterShortcuts(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/launcher/common/ShortcutInfoCompat;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/launcher/common/ShortcutInfoCompat;",
            ">;"
        }
    .end annotation

    .line 266
    sget-object v0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->SHORTCUT_RANK_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 268
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->getMaxCountInCurrentOrientation()I

    move-result v0

    .line 269
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v0, :cond_0

    return-object p0

    .line 273
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    .line 276
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/launcher/common/ShortcutInfoCompat;

    .line 277
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-virtual {v4}, Lcom/miui/launcher/common/ShortcutInfoCompat;->isDynamic()Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v0

    .line 283
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    const/4 v4, 0x2

    if-ge v3, v4, :cond_4

    .line 284
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/launcher/common/ShortcutInfoCompat;

    .line 285
    invoke-virtual {v4}, Lcom/miui/launcher/common/ShortcutInfoCompat;->isDynamic()Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v3, v3, 0x1

    sub-int v5, v0, v3

    .line 288
    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 289
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v1
.end method


# virtual methods
.method public getAllShortcutMenuItems(Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;
    .locals 2

    .line 88
    new-instance v0, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;

    invoke-direct {v0}, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;-><init>()V

    .line 89
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->getValidSystemShortcutMenuItemList(Lcom/miui/home/launcher/ItemInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->setSystemShortcutMenuItems(Ljava/util/List;)V

    .line 90
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->getAddWidgetShortcutMenuItems(Lcom/miui/home/launcher/ItemInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->setAddWidgetShortcutMenuItems(Ljava/util/List;)V

    .line 91
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->getAppShortcutMenuItemList(Lcom/miui/home/launcher/ItemInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->setAppShortcutMenuItems(Ljava/util/List;)V

    .line 92
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->getWidgetShortcutMenuItemList(Lcom/miui/home/launcher/ItemInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->setWidgetShortcutMenuItems(Ljava/util/List;)V

    .line 93
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->getFolderShortcutMenuItemList(Lcom/miui/home/launcher/ItemInfo;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->setFolderShortcutMenuItems(Ljava/util/List;)V

    return-object v0
.end method

.method public hasHostPermission()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x19
    .end annotation

    .line 334
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->isAndroidVersionSupportShortcutMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    :try_start_0
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p0}, Landroid/content/pm/LauncherApps;->hasShortcutHostPermission()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "ShortcutMenuManager"

    const-string v1, "Failed to make shortcut manager call"

    .line 338
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public startAppDetailsActivity(Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;Landroid/view/View;)V
    .locals 4

    .line 193
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->isAndroidVersionSupportShortcutMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    :try_start_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 196
    invoke-static {v0}, Lcom/miui/launcher/utils/LauncherUtils;->isXSpaceUser(Landroid/os/UserHandle;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 197
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->clearLauncherWidgetAnimCache()V

    .line 198
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 199
    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->getActivityLaunchNoSourceOptionsAsBundle(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object p2

    .line 198
    invoke-virtual {p0, v1, v0, v2, p2}, Landroid/content/pm/LauncherApps;->startAppDetailsActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    goto :goto_0

    .line 201
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    .line 202
    invoke-static {p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    .line 203
    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->getPackage()Ljava/lang/String;

    move-result-object v3

    .line 204
    invoke-static {v0}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v0

    .line 203
    invoke-static {p0, v3, v2, v0}, Lcom/miui/home/launcher/util/PackageManagerHelper;->createAppDetailActivityIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object p0

    .line 205
    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->getActivityLaunchNoSourceOptionsAsBundle(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;)V

    .line 208
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->setLastLaunchApp(Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "ShortcutMenuManager"

    const-string p2, "Failed to start shortcut"

    .line 210
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public startShortcut(Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;Landroid/view/View;)V
    .locals 7

    .line 181
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->isAndroidVersionSupportShortcutMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    :try_start_0
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->clearLauncherWidgetAnimCache()V

    .line 184
    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 185
    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->getActivityLaunchOptionsAsBundle(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    .line 184
    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/LauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ShortcutMenuManager"

    const-string p2, "Failed to start shortcut"

    .line 187
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public updateShortcutMenuItemTitle(Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    .line 134
    instance-of p0, p1, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$DeleteShortcutMenuItem;

    if-eqz p0, :cond_0

    .line 135
    check-cast p1, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$DeleteShortcutMenuItem;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$DeleteShortcutMenuItem;->updateTitle(Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_0

    .line 136
    :cond_0
    instance-of p0, p1, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$EditShortcutMenuItem;

    if-eqz p0, :cond_1

    .line 137
    check-cast p1, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$EditShortcutMenuItem;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$EditShortcutMenuItem;->updateTitle(Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_0

    .line 138
    :cond_1
    instance-of p0, p1, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ReplaceWidgetShortcutMenuItem;

    if-eqz p0, :cond_2

    .line 139
    check-cast p1, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ReplaceWidgetShortcutMenuItem;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ReplaceWidgetShortcutMenuItem;->updateTitle(Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_0

    .line 140
    :cond_2
    instance-of p0, p1, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$EditFolderShortcutMenuItem;

    if-eqz p0, :cond_3

    .line 141
    check-cast p1, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$EditFolderShortcutMenuItem;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$EditFolderShortcutMenuItem;->updateTitle(Lcom/miui/home/launcher/ItemInfo;)V

    :cond_3
    :goto_0
    return-void
.end method
