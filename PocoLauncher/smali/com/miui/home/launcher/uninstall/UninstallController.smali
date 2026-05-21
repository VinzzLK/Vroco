.class public Lcom/miui/home/launcher/uninstall/UninstallController;
.super Ljava/lang/Object;
.source "UninstallController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver;
    }
.end annotation


# static fields
.field private static mDeleteAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mLauncher:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public static synthetic $r8$lambda$CNUIte5RNh8dIU7eCe9IMofggPI(Lcom/miui/home/launcher/uninstall/UninstallController;Lcom/miui/home/launcher/ShortcutInfo;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/uninstall/UninstallController;->lambda$uninstallApps$0(Lcom/miui/home/launcher/ShortcutInfo;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JROJvav5lmHX43uomUjU9wAHjRk(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/uninstall/UninstallController;->lambda$deleteMiuiWidgetWithBoomAnim$2(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OhhFUrhCPNMPQ19mnejs7kF2ils(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/uninstall/UninstallController;->lambda$deleteWithBoomAnim$1(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/uninstall/UninstallController;->mDeleteAppList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 51
    invoke-static {p0}, Lcom/miui/home/launcher/uninstall/UninstallController;->addShortcutInfoToDeleteAppList(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 0

    .line 51
    invoke-static {p0}, Lcom/miui/home/launcher/uninstall/UninstallController;->removeShortcutInfoInDeleteAppList(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/uninstall/UninstallController;Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/uninstall/UninstallController;->isHiddenAppDisableNotifications(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/uninstall/UninstallController;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method private static addShortcutInfoToDeleteAppList(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 116
    invoke-static {p0}, Lcom/miui/home/launcher/uninstall/UninstallController;->containInDeleteAppList(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    sget-object v0, Lcom/miui/home/launcher/uninstall/UninstallController;->mDeleteAppList:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static announceDeleted(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 1

    .line 292
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->getAnnounceForDelete()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    new-instance v0, Lcom/miui/home/launcher/uninstall/UninstallController$4;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/uninstall/UninstallController$4;-><init>(Lcom/miui/home/launcher/ItemInfo;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(Ljava/util/function/Supplier;)V

    :cond_0
    return-void
.end method

.method public static containInDeleteAppList(Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 2

    .line 135
    sget-object v0, Lcom/miui/home/launcher/uninstall/UninstallController;->mDeleteAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 136
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private deleteItemFromMultiSelectMonitor(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 1

    .line 231
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 232
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->uncheckShortcut(Lcom/miui/home/launcher/ShortcutInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static deleteMiuiWidgetWithBoomAnim(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;[IZ)V
    .locals 1

    .line 338
    new-instance v0, Lcom/miui/home/launcher/uninstall/UninstallController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/uninstall/UninstallController$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;)V

    invoke-static {p0, p1, v0, p2, p3}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper;->widgetDoBoomAnim(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;Ljava/lang/Runnable;[IZ)V

    return-void
.end method

.method public static deleteWithBoomAnim(Lcom/miui/home/launcher/Launcher;Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/Launcher;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 320
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 321
    invoke-static {v1, p0}, Lcom/miui/home/launcher/uninstall/UninstallController;->isHideAppValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 327
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getUninstallController()Lcom/miui/home/launcher/uninstall/UninstallController;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/miui/home/launcher/uninstall/UninstallController;->hideAppWidthDialog(Ljava/util/List;Lcom/miui/home/launcher/Launcher;)V

    goto :goto_2

    .line 329
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 330
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ShortcutInfo;->setIsChecked(Z)V

    goto :goto_1

    .line 332
    :cond_3
    new-instance v0, Lcom/miui/home/launcher/uninstall/UninstallController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/uninstall/UninstallController$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V

    invoke-static {p0, p1, v0, p2}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper;->doBoomAnim(Lcom/miui/home/launcher/Launcher;Ljava/util/List;Ljava/lang/Runnable;Z)V

    :goto_2
    return-void
.end method

.method public static isDeleteValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 365
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 366
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 369
    :cond_1
    invoke-static {p0, p1}, Lcom/miui/home/launcher/uninstall/UninstallController;->isHideAppValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z

    move-result p0

    return p0

    .line 372
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->isApplicatoin()Z

    move-result v0

    if-nez v0, :cond_3

    instance-of v0, p0, Lcom/miui/home/launcher/FolderInfo;

    if-nez v0, :cond_3

    return v1

    .line 375
    :cond_3
    invoke-static {p0, p1}, Lcom/miui/home/launcher/uninstall/UninstallController;->isHideAppValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z

    move-result p0

    return p0
.end method

.method private isHiddenAppDisableNotifications(Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 0

    .line 424
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getThirdApplicationConfig()Lcom/miui/home/launcher/ThirdApplicationConfig;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getThirdApplicationConfig()Lcom/miui/home/launcher/ThirdApplicationConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ThirdApplicationConfig;->getHiddenAppNotificationsItem()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isHideAppValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z
    .locals 1

    const/4 v0, 0x1

    .line 381
    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/uninstall/UninstallController;->isHideAppValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;Z)Z

    move-result p0

    return p0
.end method

.method public static isHideAppValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 4

    .line 385
    instance-of v0, p0, Lcom/miui/home/launcher/ShortcutInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_0

    .line 386
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 387
    :cond_0
    check-cast p0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 388
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getThirdApplicationConfig()Lcom/miui/home/launcher/ThirdApplicationConfig;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 390
    sget-boolean p2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/launcher/ThirdApplicationConfig;->getGlobalHideAppItem()Z

    move-result p2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/ThirdApplicationConfig;->getHideAppItem()Z

    move-result p2

    :goto_0
    if-eqz p2, :cond_4

    .line 392
    invoke-virtual {p1}, Lcom/miui/home/launcher/ThirdApplicationConfig;->getProhibitHiddenActivities()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 394
    array-length p2, p1

    move v0, v1

    :goto_1
    if-ge v0, p2, :cond_3

    aget-object v2, p1, v0

    .line 395
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    return v1
.end method

.method public static isSecondConfirmationDialog(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z
    .locals 3

    .line 409
    instance-of v0, p0, Lcom/miui/home/launcher/ShortcutInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 410
    move-object v0, p0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 411
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getThirdApplicationConfig()Lcom/miui/home/launcher/ThirdApplicationConfig;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 413
    invoke-static {p0, p1}, Lcom/miui/home/launcher/uninstall/UninstallController;->isUninstallValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p0, :cond_0

    invoke-virtual {v2}, Lcom/miui/home/launcher/ThirdApplicationConfig;->getHideAppItem()Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    .line 416
    :cond_0
    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/ThirdApplicationConfig;->getDeleteTip(Lcom/miui/home/launcher/ShortcutInfo;)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isUninstallValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z
    .locals 1

    const/4 v0, 0x1

    .line 342
    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/uninstall/UninstallController;->isUninstallValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;Z)Z

    move-result p0

    return p0
.end method

.method public static isUninstallValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 350
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->isApplicatoin()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->isHybirdApp(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ItemInfo;->canBeDeleted(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    if-eqz p2, :cond_4

    .line 352
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    move v0, p0

    :cond_3
    return v0

    :cond_4
    return p0

    :cond_5
    return v0
.end method

.method private static synthetic lambda$deleteMiuiWidgetWithBoomAnim$2(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;)V
    .locals 0

    .line 338
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getUninstallController()Lcom/miui/home/launcher/uninstall/UninstallController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/uninstall/UninstallController;->deleteItem(Lcom/miui/home/launcher/ItemInfo;)V

    return-void
.end method

.method private static synthetic lambda$deleteWithBoomAnim$1(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V
    .locals 0

    .line 333
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getUninstallController()Lcom/miui/home/launcher/uninstall/UninstallController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/uninstall/UninstallController;->deleteItems(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$uninstallApps$0(Lcom/miui/home/launcher/ShortcutInfo;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/uninstall/UninstallController;->uninstallApp(Lcom/miui/home/launcher/ShortcutInfo;)Z

    const/4 p0, 0x0

    return-object p0
.end method

.method private static removeShortcutInfoInDeleteAppList(Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 125
    :cond_0
    sget-object v1, Lcom/miui/home/launcher/uninstall/UninstallController;->mDeleteAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 126
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 127
    sget-object p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mDeleteAppList:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public static showDialog(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/Launcher;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 305
    new-instance v0, Lcom/miui/home/launcher/uninstall/DeleteDialog;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/uninstall/DeleteDialog;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 306
    new-instance p1, Lcom/miui/home/launcher/uninstall/UninstallController$5;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/uninstall/UninstallController$5;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->setPositiveConsumer(Ljava/util/function/Consumer;)V

    const p0, 0x7f100526

    .line 313
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->setPositiveButTitle(I)V

    .line 314
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    .line 315
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance p1, Lcom/miui/home/launcher/common/messages/LauncherShowUninstallDialogMessage;

    invoke-direct {p1}, Lcom/miui/home/launcher/common/messages/LauncherShowUninstallDialogMessage;-><init>()V

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public deleteItem(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 238
    :cond_0
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v1, 0xf

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 239
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-wide v3, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    invoke-virtual {v0, v3, v4}, Lcom/miui/home/launcher/Launcher;->getFolderInfoById(J)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->getPreinstallManager()Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;->onPreinstallItemDeleted(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    const/16 v1, 0x15

    if-eq v0, v1, :cond_a

    const/16 v1, 0x16

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 252
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 253
    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Launcher;->removeAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    goto/16 :goto_1

    :cond_3
    if-nez v0, :cond_4

    .line 255
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    move-object v1, p1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->removeShortcutIcon(Lcom/miui/home/launcher/ShortcutInfo;Z)V

    goto :goto_1

    :cond_4
    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 257
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    move-object v1, p1

    check-cast v1, Lcom/miui/home/launcher/gadget/GadgetInfo;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->removeGadgets(Ljava/util/List;)V

    goto :goto_1

    :cond_5
    const/16 v1, 0x13

    if-ne v0, v1, :cond_6

    .line 259
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    move-object v1, p1

    check-cast v1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->removeMaMl(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    goto :goto_1

    :cond_6
    const/16 v1, 0x17

    if-ne v0, v1, :cond_7

    .line 261
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher;->removeServiceDelivery(Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_1

    .line 262
    :cond_7
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->isHybirdApp(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 263
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v0}, Lcom/miui/home/launcher/hybrid/HybridController;->trackDelete(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 264
    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v0, v2}, Lcom/miui/home/launcher/Launcher;->removeShortcutIcon(Lcom/miui/home/launcher/ShortcutInfo;Z)V

    goto :goto_1

    .line 265
    :cond_8
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_b

    const/16 v1, 0x14

    if-ne v0, v1, :cond_9

    goto :goto_1

    .line 269
    :cond_9
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    move-object v1, p1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->removeShortcutIcon(Lcom/miui/home/launcher/ShortcutInfo;Z)V

    goto :goto_1

    .line 244
    :cond_a
    :goto_0
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/FolderInfo;

    .line 245
    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1, v0}, Lcom/miui/home/launcher/LauncherModel;->deleteUserFolderContentsFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V

    .line 246
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/uninstall/UninstallController;->deleteItemFromMultiSelectMonitor(Lcom/miui/home/launcher/FolderInfo;)V

    .line 247
    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Launcher;->removeFolder(Lcom/miui/home/launcher/FolderInfo;)V

    .line 248
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->isInWorkspace()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 249
    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Launcher;->fillEmpty(Lcom/miui/home/launcher/ItemInfo;)V

    .line 271
    :cond_b
    :goto_1
    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_c

    .line 272
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 273
    iget-object v1, v0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_c

    .line 274
    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackDeletedShortCut(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 277
    :cond_c
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-ne v0, v2, :cond_d

    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 278
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xiaomi.market"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 279
    new-instance v0, Lcom/miui/home/launcher/uninstall/UninstallController$3;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/uninstall/UninstallController$3;-><init>(Lcom/miui/home/launcher/uninstall/UninstallController;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    .line 288
    :cond_d
    invoke-static {p1}, Lcom/miui/home/launcher/uninstall/UninstallController;->announceDeleted(Lcom/miui/home/launcher/ItemInfo;)V

    return-void
.end method

.method public deleteItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 225
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 226
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/uninstall/UninstallController;->deleteItem(Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public hideApp(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 212
    new-instance v0, Lcom/miui/home/launcher/uninstall/UninstallController$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/home/launcher/uninstall/UninstallController$2;-><init>(Lcom/miui/home/launcher/uninstall/UninstallController;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public hideAppWidthDialog(Ljava/util/List;Lcom/miui/home/launcher/Launcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;",
            "Lcom/miui/home/launcher/Launcher;",
            ")V"
        }
    .end annotation

    .line 189
    new-instance v0, Lcom/miui/home/launcher/uninstall/RemoveDialog;

    invoke-direct {v0, p2, p1}, Lcom/miui/home/launcher/uninstall/RemoveDialog;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 190
    new-instance p1, Lcom/miui/home/launcher/uninstall/UninstallController$1;

    invoke-direct {p1, p0, p2}, Lcom/miui/home/launcher/uninstall/UninstallController$1;-><init>(Lcom/miui/home/launcher/uninstall/UninstallController;Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->setPositiveConsumer(Ljava/util/function/Consumer;)V

    const p0, 0x7f1004d7

    .line 196
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->setPositiveButTitle(I)V

    .line 197
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public hideApps(Ljava/util/List;Lcom/miui/home/launcher/Launcher;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;",
            "Lcom/miui/home/launcher/Launcher;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 201
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 202
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 203
    invoke-static {v1, p2}, Lcom/miui/home/launcher/uninstall/UninstallController;->isHideAppValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    invoke-virtual {p0, v1, p2}, Lcom/miui/home/launcher/uninstall/UninstallController;->hideApp(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)V

    goto :goto_1

    .line 205
    :cond_0
    invoke-static {v1, p2}, Lcom/miui/home/launcher/uninstall/UninstallController;->isDeleteValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/uninstall/UninstallController;->deleteItem(Lcom/miui/home/launcher/ItemInfo;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public uninstallApp(Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 84
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "UninstallController"

    if-eqz v1, :cond_1

    .line 85
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uninstall app fail, because "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " package name empty"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1, v1, v0}, Lcom/miui/home/launcher/uninstall/UninstallController;->isUninstallValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;Z)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    .line 89
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 91
    :try_start_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/launcher/utils/LauncherUtils;->isXSpaceUser(Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 92
    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance v4, Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver;

    invoke-direct {v4, p0, p1}, Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V

    invoke-static {p0, v1, v4}, Lcom/miui/launcher/utils/LauncherUtils;->deletePackageAsXspaceUser(Landroid/content/Context;Ljava/lang/String;Lcom/miui/launcher/common/PackageDeleteObserverDelegate;)V

    goto :goto_0

    .line 94
    :cond_2
    iget-object v4, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v4, v1}, Lcom/miui/launcher/utils/LauncherUtils;->hasRelativeXSpaceApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 95
    iget-object v4, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Lcom/miui/launcher/utils/LauncherUtils;->deletePackageAsXspaceUser(Landroid/content/Context;Ljava/lang/String;Lcom/miui/launcher/common/PackageDeleteObserverDelegate;)V

    .line 97
    :cond_3
    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance v4, Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver;

    invoke-direct {v4, p0, p1}, Lcom/miui/home/launcher/uninstall/UninstallController$DeleteObserver;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getUserId()I

    move-result v5

    const/4 v6, 0x4

    invoke-static {p0, v1, v4, v5, v6}, Lcom/miui/launcher/utils/LauncherUtils;->deletePackageAsUser(Landroid/content/Context;Ljava/lang/String;Lcom/miui/launcher/common/PackageDeleteObserverDelegate;II)V

    .line 99
    :goto_0
    iget-object p0, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz p0, :cond_4

    .line 100
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackDeletedShortCut(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 102
    :cond_4
    invoke-static {p1}, Lcom/miui/home/launcher/uninstall/UninstallController;->announceDeleted(Lcom/miui/home/launcher/ItemInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p0

    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not uninstallApp: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 107
    :cond_5
    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1, v1, v0}, Lcom/miui/home/launcher/uninstall/UninstallController;->isHideAppValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 108
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/uninstall/UninstallController;->hideApp(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)V

    .line 109
    invoke-static {p1}, Lcom/miui/home/launcher/uninstall/UninstallController;->announceDeleted(Lcom/miui/home/launcher/ItemInfo;)V

    return v3

    :cond_6
    :goto_1
    return v0
.end method

.method public uninstallApps(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 67
    sget-object v0, Lcom/miui/home/launcher/uninstall/UninstallController;->mDeleteAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 68
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 69
    invoke-static {v0}, Lcom/miui/home/launcher/uninstall/UninstallController;->addShortcutInfoToDeleteAppList(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 71
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->isApplicatoin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    new-instance v1, Lcom/miui/home/launcher/uninstall/UninstallController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/uninstall/UninstallController$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/uninstall/UninstallController;Lcom/miui/home/launcher/ShortcutInfo;)V

    const/4 v0, 0x0

    invoke-static {v1, v0, v0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/uninstall/UninstallController;->deleteItem(Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_0

    :cond_1
    return-void
.end method
