.class public Lcom/miui/home/launcher/notification/NotificationDataProvider;
.super Ljava/lang/Object;
.source "NotificationDataProvider.java"

# interfaces
.implements Lcom/miui/home/launcher/notification/NotificationListener$NotificationsChangedListener;


# instance fields
.field private final mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mPackageUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/miui/home/launcher/notification/PackageUserKey;",
            "Lcom/miui/home/launcher/notification/BadgeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/notification/NotificationDataProvider;->mPackageUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    iput-object p1, p0, Lcom/miui/home/launcher/notification/NotificationDataProvider;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method private updateLauncherIconBadges(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/miui/home/launcher/notification/PackageUserKey;",
            ">;)V"
        }
    .end annotation

    .line 99
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/miui/home/launcher/notification/NotificationDataProvider;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getNotificationCallback()Lcom/miui/home/launcher/NotificationHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/notification/NotificationDataProvider;->mPackageUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p0}, Lcom/miui/home/launcher/NotificationHelper;->updateAllBadges(Ljava/util/Set;Ljava/util/Map;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearAllBadgeInfos()V
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/miui/home/launcher/notification/NotificationDataProvider;->mPackageUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public getBadgeInfoForItem(Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/notification/BadgeInfo;
    .locals 1

    .line 109
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->supportsShortcuts(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 112
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/notification/NotificationDataProvider;->mPackageUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Lcom/miui/home/launcher/notification/PackageUserKey;->fromItemInfo(Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/notification/PackageUserKey;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/notification/BadgeInfo;

    return-object p0
.end method

.method public onNotificationFullRefresh(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;)V"
        }
    .end annotation

    const-string v0, "NotificationDataProvider"

    const-string v1, "onNotificationFullRefresh: refresh by launcher"

    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/miui/home/launcher/notification/NotificationDataProvider;->mPackageUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 61
    iget-object v1, p0, Lcom/miui/home/launcher/notification/NotificationDataProvider;->mPackageUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 62
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/StatusBarNotification;

    .line 63
    invoke-static {v1}, Lcom/miui/home/launcher/notification/PackageUserKey;->fromNotification(Landroid/service/notification/StatusBarNotification;)Lcom/miui/home/launcher/notification/PackageUserKey;

    move-result-object v2

    .line 64
    iget-object v3, p0, Lcom/miui/home/launcher/notification/NotificationDataProvider;->mPackageUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/notification/BadgeInfo;

    if-nez v3, :cond_1

    .line 66
    new-instance v3, Lcom/miui/home/launcher/notification/BadgeInfo;

    invoke-direct {v3, v2}, Lcom/miui/home/launcher/notification/BadgeInfo;-><init>(Lcom/miui/home/launcher/notification/PackageUserKey;)V

    .line 67
    iget-object v4, p0, Lcom/miui/home/launcher/notification/NotificationDataProvider;->mPackageUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_1
    invoke-static {v1}, Lcom/miui/home/launcher/notification/NotificationKeyData;->fromNotification(Landroid/service/notification/StatusBarNotification;)Lcom/miui/home/launcher/notification/NotificationKeyData;

    move-result-object v1

    .line 69
    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/notification/BadgeInfo;->addOrUpdateNotificationKey(Lcom/miui/home/launcher/notification/NotificationKeyData;)Z

    goto :goto_0

    .line 74
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/notification/NotificationDataProvider;->mPackageUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/notification/PackageUserKey;

    .line 75
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/notification/BadgeInfo;

    .line 76
    iget-object v3, p0, Lcom/miui/home/launcher/notification/NotificationDataProvider;->mPackageUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/notification/BadgeInfo;

    if-nez v2, :cond_4

    .line 78
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 80
    :cond_4
    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/notification/BadgeInfo;->shouldBeInvalidated(Lcom/miui/home/launcher/notification/BadgeInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 81
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 85
    :cond_5
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 86
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/notification/NotificationDataProvider;->updateLauncherIconBadges(Ljava/util/Set;)V

    :cond_6
    return-void
.end method

.method public onNotificationPosted(Lcom/miui/home/launcher/notification/PackageUserKey;Lcom/miui/home/launcher/notification/NotificationKeyData;)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/miui/home/launcher/notification/NotificationDataProvider;->mPackageUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/notification/BadgeInfo;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/miui/home/launcher/notification/BadgeInfo;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/notification/BadgeInfo;-><init>(Lcom/miui/home/launcher/notification/PackageUserKey;)V

    .line 35
    iget-object v1, p0, Lcom/miui/home/launcher/notification/NotificationDataProvider;->mPackageUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_0
    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/notification/BadgeInfo;->addOrUpdateNotificationKey(Lcom/miui/home/launcher/notification/NotificationKeyData;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 38
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->singletonHashSet(Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/notification/NotificationDataProvider;->updateLauncherIconBadges(Ljava/util/Set;)V

    :cond_1
    return-void
.end method

.method public onNotificationRemoved(Lcom/miui/home/launcher/notification/PackageUserKey;Lcom/miui/home/launcher/notification/NotificationKeyData;)V
    .locals 2

    const-string v0, "NotificationDataProvider"

    const-string v1, "NotificationListener: remove by launcher"

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, p0, Lcom/miui/home/launcher/notification/NotificationDataProvider;->mPackageUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/notification/BadgeInfo;

    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/notification/BadgeInfo;->removeNotificationKey(Lcom/miui/home/launcher/notification/NotificationKeyData;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 47
    invoke-virtual {v0}, Lcom/miui/home/launcher/notification/BadgeInfo;->getNotificationKeys()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_0

    .line 48
    iget-object p2, p0, Lcom/miui/home/launcher/notification/NotificationDataProvider;->mPackageUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_0
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->singletonHashSet(Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/notification/NotificationDataProvider;->updateLauncherIconBadges(Ljava/util/Set;)V

    :cond_1
    return-void
.end method
