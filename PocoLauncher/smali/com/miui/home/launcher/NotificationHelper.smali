.class public Lcom/miui/home/launcher/NotificationHelper;
.super Ljava/lang/Object;
.source "NotificationHelper.java"


# instance fields
.field mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mNotificationDataProvider:Lcom/miui/home/launcher/notification/NotificationDataProvider;

.field private mNotificationListener:Lcom/miui/home/launcher/notification/NotificationListener;

.field mUseSystemUI:Z


# direct methods
.method public static synthetic $r8$lambda$N0C2d5Dvm-N04njvd6SAquDi-0I(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/NotificationHelper;->lambda$updateWorkSpaceIconBadges$2(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TVRaKIEajclXc3r4stfMGlg6148(Ljava/util/Set;Lcom/miui/home/launcher/AppInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/NotificationHelper;->lambda$updateAllAppsIconBadges$3(Ljava/util/Set;Lcom/miui/home/launcher/AppInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ZdTQd9vaaI12eoSsRHICdstmXDw(Lcom/miui/home/launcher/NotificationHelper;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/AppInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/NotificationHelper;->lambda$updateAllAppsIconBadges$4(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/AppInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bTiEH5KT8H0SYRFc5y5VgVxUQJE(Lcom/miui/home/launcher/NotificationHelper;Lcom/miui/home/launcher/notification/PackageUserKey;Ljava/util/Set;Ljava/util/Map;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/NotificationHelper;->lambda$updateWorkSpaceIconBadges$1(Lcom/miui/home/launcher/notification/PackageUserKey;Ljava/util/Set;Ljava/util/Map;Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vkFylk6NmVYd1RMLoSdiwsgtCP0(Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/NotificationHelper;->lambda$updateWorkSpaceIconBadges$0(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/miui/home/launcher/NotificationHelper;->mNotificationListener:Lcom/miui/home/launcher/notification/NotificationListener;

    .line 26
    iput-object v0, p0, Lcom/miui/home/launcher/NotificationHelper;->mNotificationDataProvider:Lcom/miui/home/launcher/notification/NotificationDataProvider;

    .line 32
    iput-object p1, p0, Lcom/miui/home/launcher/NotificationHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 33
    new-instance v0, Lcom/miui/home/launcher/notification/NotificationDataProvider;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/notification/NotificationDataProvider;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v0, p0, Lcom/miui/home/launcher/NotificationHelper;->mNotificationDataProvider:Lcom/miui/home/launcher/notification/NotificationDataProvider;

    return-void
.end method

.method private static synthetic lambda$updateAllAppsIconBadges$3(Ljava/util/Set;Lcom/miui/home/launcher/AppInfo;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 144
    new-instance v0, Lcom/miui/home/launcher/notification/PackageUserKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/miui/home/launcher/notification/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 145
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/notification/PackageUserKey;->updateFromItemInfo(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$updateAllAppsIconBadges$4(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/AppInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 150
    iget-object p0, p0, Lcom/miui/home/launcher/NotificationHelper;->mNotificationDataProvider:Lcom/miui/home/launcher/notification/NotificationDataProvider;

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/notification/NotificationDataProvider;->getBadgeInfoForItem(Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/notification/BadgeInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/miui/home/launcher/notification/BadgeInfo;->getNotificationCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/miui/home/launcher/ShortcutInfo;->setMessage(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/notification/BadgeInfo;->getNotificationCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0, v0, v0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->updateMessage(Lcom/miui/home/launcher/AppInfo;Ljava/lang/String;Ljava/lang/String;[B)V

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/ShortcutInfo;->setMessage(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object p0

    invoke-virtual {p0, p2, v0, v0, v0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->updateMessage(Lcom/miui/home/launcher/AppInfo;Ljava/lang/String;Ljava/lang/String;[B)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$updateWorkSpaceIconBadges$0(Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 105
    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$updateWorkSpaceIconBadges$1(Lcom/miui/home/launcher/notification/PackageUserKey;Ljava/util/Set;Ljava/util/Map;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 110
    invoke-virtual {p1, p4}, Lcom/miui/home/launcher/notification/PackageUserKey;->updateFromItemInfo(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 112
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/notification/BadgeInfo;

    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {p1}, Lcom/miui/home/launcher/notification/BadgeInfo;->getNotificationCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/miui/home/launcher/ShortcutInfo;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 117
    invoke-virtual {p4, p1}, Lcom/miui/home/launcher/ShortcutInfo;->setMessage(Ljava/lang/String;)V

    .line 119
    :goto_0
    invoke-direct {p0, p4}, Lcom/miui/home/launcher/NotificationHelper;->updateFolderBadges(Lcom/miui/home/launcher/ShortcutInfo;)V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$updateWorkSpaceIconBadges$2(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private updateAllAppsIconBadges(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/miui/home/launcher/notification/PackageUserKey;",
            ">;)V"
        }
    .end annotation

    .line 137
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v1, p0, Lcom/miui/home/launcher/NotificationHelper;->mNotificationDataProvider:Lcom/miui/home/launcher/notification/NotificationDataProvider;

    if-nez v1, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getApps()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 142
    invoke-static {v1}, Lio/reactivex2/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex2/Observable;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/NotificationHelper$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1}, Lcom/miui/home/launcher/NotificationHelper$$ExternalSyntheticLambda3;-><init>(Ljava/util/Set;)V

    .line 143
    invoke-virtual {v1, v2}, Lio/reactivex2/Observable;->filter(Lio/reactivex2/functions/Predicate;)Lio/reactivex2/Observable;

    move-result-object p1

    .line 147
    invoke-static {}, Lio/reactivex2/schedulers/Schedulers;->computation()Lio/reactivex2/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex2/Observable;->subscribeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object p1

    .line 148
    invoke-static {}, Lio/reactivex2/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex2/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex2/Observable;->observeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object p1

    new-instance v1, Lcom/miui/home/launcher/NotificationHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/NotificationHelper$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/NotificationHelper;Lcom/miui/home/launcher/Launcher;)V

    .line 149
    invoke-virtual {p1, v1}, Lio/reactivex2/Observable;->subscribe(Lio/reactivex2/functions/Consumer;)Lio/reactivex2/disposables/Disposable;

    :cond_1
    :goto_0
    return-void
.end method

.method private updateFolderBadges(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 125
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 129
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->getParentFolderInfo(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 131
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    .line 132
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->updateFolderMessage(Lcom/miui/home/launcher/FolderInfo;)V

    :cond_1
    return-void
.end method

.method private updateWorkSpaceIconBadges(Ljava/util/Set;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/miui/home/launcher/notification/PackageUserKey;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/miui/home/launcher/notification/PackageUserKey;",
            "Lcom/miui/home/launcher/notification/BadgeInfo;",
            ">;)V"
        }
    .end annotation

    .line 97
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 101
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAllLoadedShortcut()Ljava/util/ArrayList;

    move-result-object v0

    .line 102
    new-instance v1, Lcom/miui/home/launcher/notification/PackageUserKey;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lcom/miui/home/launcher/notification/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 104
    invoke-static {v0}, Lio/reactivex2/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex2/Observable;

    move-result-object v0

    sget-object v2, Lcom/miui/home/launcher/NotificationHelper$$ExternalSyntheticLambda4;->INSTANCE:Lcom/miui/home/launcher/NotificationHelper$$ExternalSyntheticLambda4;

    .line 105
    invoke-virtual {v0, v2}, Lio/reactivex2/Observable;->filter(Lio/reactivex2/functions/Predicate;)Lio/reactivex2/Observable;

    move-result-object v0

    .line 107
    invoke-static {}, Lio/reactivex2/schedulers/Schedulers;->computation()Lio/reactivex2/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex2/Observable;->subscribeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object v0

    .line 108
    invoke-static {}, Lio/reactivex2/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex2/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex2/Observable;->observeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object v0

    new-instance v2, Lcom/miui/home/launcher/NotificationHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1, p1, p2}, Lcom/miui/home/launcher/NotificationHelper$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/NotificationHelper;Lcom/miui/home/launcher/notification/PackageUserKey;Ljava/util/Set;Ljava/util/Map;)V

    sget-object p0, Lcom/miui/home/launcher/NotificationHelper$$ExternalSyntheticLambda2;->INSTANCE:Lcom/miui/home/launcher/NotificationHelper$$ExternalSyntheticLambda2;

    .line 109
    invoke-virtual {v0, v2, p0}, Lio/reactivex2/Observable;->subscribe(Lio/reactivex2/functions/Consumer;Lio/reactivex2/functions/Consumer;)Lio/reactivex2/disposables/Disposable;

    return-void
.end method

.method private useSystemUI()V
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/miui/home/launcher/NotificationHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.systemui"

    const/16 v2, 0x80

    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 40
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-string v0, "NotificationHelper"

    const-string v1, "metaData is null"

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/miui/home/launcher/NotificationHelper;->mUseSystemUI:Z

    return-void

    :cond_0
    const-string v1, "miui.sendBadgeBroadcastToLauncher"

    const/4 v2, 0x0

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/NotificationHelper;->mUseSystemUI:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public recreateNotificationChangeListener()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/miui/home/launcher/NotificationHelper;->mNotificationDataProvider:Lcom/miui/home/launcher/notification/NotificationDataProvider;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Lcom/miui/home/launcher/notification/NotificationDataProvider;->clearAllBadgeInfos()V

    .line 73
    invoke-virtual {p0}, Lcom/miui/home/launcher/NotificationHelper;->registerNotificationChangeListener()V

    :cond_0
    return-void
.end method

.method public registerListener()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/miui/home/launcher/NotificationHelper;->useSystemUI()V

    .line 56
    iget-boolean v0, p0, Lcom/miui/home/launcher/NotificationHelper;->mUseSystemUI:Z

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/miui/home/launcher/notification/NotificationListener;

    invoke-direct {v0}, Lcom/miui/home/launcher/notification/NotificationListener;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/NotificationHelper;->mNotificationListener:Lcom/miui/home/launcher/notification/NotificationListener;

    .line 58
    iget-object p0, p0, Lcom/miui/home/launcher/NotificationHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/notification/NotificationListener;->registerAsSystemService(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public registerNotificationChangeListener()V
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/miui/home/launcher/NotificationHelper;->mUseSystemUI:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/NotificationHelper;->mNotificationDataProvider:Lcom/miui/home/launcher/notification/NotificationDataProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/NotificationHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object p0, p0, Lcom/miui/home/launcher/NotificationHelper;->mNotificationDataProvider:Lcom/miui/home/launcher/notification/NotificationDataProvider;

    invoke-static {p0}, Lcom/miui/home/launcher/notification/NotificationListener;->setNotificationsChangedListener(Lcom/miui/home/launcher/notification/NotificationListener$NotificationsChangedListener;)V

    :cond_0
    return-void
.end method

.method public unRegisterListener()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/miui/home/launcher/NotificationHelper;->mNotificationListener:Lcom/miui/home/launcher/notification/NotificationListener;

    if-eqz v0, :cond_0

    .line 65
    iget-object p0, p0, Lcom/miui/home/launcher/NotificationHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/notification/NotificationListener;->unRegisterAsSystemService(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public unRegisterNotificationChangeListener()V
    .locals 0

    .line 86
    invoke-static {}, Lcom/miui/home/launcher/notification/NotificationListener;->removeNotificationsChangedListener()V

    return-void
.end method

.method public updateAllBadges(Ljava/util/Set;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/miui/home/launcher/notification/PackageUserKey;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/miui/home/launcher/notification/PackageUserKey;",
            "Lcom/miui/home/launcher/notification/BadgeInfo;",
            ">;)V"
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/NotificationHelper;->updateWorkSpaceIconBadges(Ljava/util/Set;Ljava/util/Map;)V

    .line 91
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/NotificationHelper;->updateAllAppsIconBadges(Ljava/util/Set;)V

    return-void
.end method
