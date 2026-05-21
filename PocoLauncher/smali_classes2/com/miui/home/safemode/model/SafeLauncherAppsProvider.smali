.class public Lcom/miui/home/safemode/model/SafeLauncherAppsProvider;
.super Ljava/lang/Object;
.source "SafeLauncherAppsProvider.java"


# instance fields
.field private final mAllApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/miui/home/safemode/model/SafeComponentKey;",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final mLauncherApps:Landroid/content/pm/LauncherApps;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/safemode/model/SafeLauncherAppsProvider;->mAllUsers:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/safemode/model/SafeLauncherAppsProvider;->mAllApps:Ljava/util/HashMap;

    const-string v0, "user"

    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/miui/home/safemode/model/SafeLauncherAppsProvider;->mUserManager:Landroid/os/UserManager;

    const-string v0, "launcherapps"

    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    iput-object p1, p0, Lcom/miui/home/safemode/model/SafeLauncherAppsProvider;->mLauncherApps:Landroid/content/pm/LauncherApps;

    return-void
.end method


# virtual methods
.method public getAllLauncherActivityInfo()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object p0, p0, Lcom/miui/home/safemode/model/SafeLauncherAppsProvider;->mAllApps:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public loadApps()V
    .locals 7

    .line 28
    iget-object v0, p0, Lcom/miui/home/safemode/model/SafeLauncherAppsProvider;->mAllUsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 29
    iget-object v0, p0, Lcom/miui/home/safemode/model/SafeLauncherAppsProvider;->mAllApps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 30
    iget-object v0, p0, Lcom/miui/home/safemode/model/SafeLauncherAppsProvider;->mAllUsers:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/home/safemode/model/SafeLauncherAppsProvider;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 31
    iget-object v0, p0, Lcom/miui/home/safemode/model/SafeLauncherAppsProvider;->mAllUsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 32
    iget-object v2, p0, Lcom/miui/home/safemode/model/SafeLauncherAppsProvider;->mLauncherApps:Landroid/content/pm/LauncherApps;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    .line 33
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/LauncherActivityInfo;

    .line 34
    iget-object v4, p0, Lcom/miui/home/safemode/model/SafeLauncherAppsProvider;->mAllApps:Ljava/util/HashMap;

    new-instance v5, Lcom/miui/home/safemode/model/SafeComponentKey;

    .line 35
    invoke-virtual {v3}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lcom/miui/home/safemode/model/SafeComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 34
    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method
