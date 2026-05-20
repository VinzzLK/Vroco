.class public Lcom/miui/home/launcher/BaseAppInfo;
.super Lcom/miui/home/launcher/ShortcutInfo;
.source "BaseAppInfo.java"


# instance fields
.field private categories:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private componentKey:Lcom/miui/home/launcher/util/ComponentKey;

.field public componentName:Landroid/content/ComponentName;

.field private lastTimeUsed:J

.field private mAppLauncherCount:I

.field private mIconColorType:Ljava/lang/Integer;

.field private mLoadTime:J

.field private mPinyinList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutInfo;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/BaseAppInfo;->categories:Ljava/util/HashSet;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/BaseAppInfo;->mPinyinList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/BaseAppInfo;->mIconColorType:Ljava/lang/Integer;

    .line 32
    iput v0, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V
    .locals 0

    .line 39
    invoke-static {p1}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/miui/home/library/compat/UserManagerCompat;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result p1

    invoke-direct {p0, p2, p3, p1}, Lcom/miui/home/launcher/BaseAppInfo;-><init>(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;Z)V
    .locals 2

    .line 42
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutInfo;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/BaseAppInfo;->categories:Ljava/util/HashSet;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/BaseAppInfo;->mPinyinList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/BaseAppInfo;->mIconColorType:Ljava/lang/Integer;

    .line 43
    iput v0, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v0, 0x1

    .line 44
    iput v0, p0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    iput v0, p0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    const-wide/16 v0, -0x1

    .line 45
    iput-wide v0, p0, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/BaseAppInfo;->resetTitle(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V

    if-eqz p3, :cond_0

    .line 50
    iget p2, p0, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->runtimeStatusFlags:I

    or-int/lit8 p2, p2, 0x8

    iput p2, p0, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->runtimeStatusFlags:I

    .line 52
    :cond_0
    invoke-static {p0, p1}, Lcom/miui/home/launcher/BaseAppInfo;->updateRuntimeFlagsForActivityTarget(Lcom/miui/home/launcher/ShortcutInfo;Landroid/content/pm/LauncherActivityInfo;)V

    .line 53
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->updateInstallSourceInfo(Landroid/content/pm/LauncherActivityInfo;)V

    .line 54
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->setApplicationConfig(Landroid/content/ComponentName;)V

    return-void
.end method

.method static updateRuntimeFlagsForActivityTarget(Lcom/miui/home/launcher/ShortcutInfo;Landroid/content/pm/LauncherActivityInfo;)V
    .locals 3

    .line 99
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/miui/home/launcher/util/PackageManagerHelper;->isAppSuspended(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget v1, p0, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->runtimeStatusFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->runtimeStatusFlags:I

    .line 103
    :cond_0
    iget v1, p0, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->runtimeStatusFlags:I

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    const/16 v2, 0x80

    goto :goto_0

    :cond_1
    const/16 v2, 0x40

    :goto_0
    or-int/2addr v1, v2

    .line 104
    iput v1, p0, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->runtimeStatusFlags:I

    .line 105
    sget-boolean v1, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_OREO:Z

    if-eqz v1, :cond_2

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    .line 107
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 109
    iget p1, p0, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->runtimeStatusFlags:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->runtimeStatusFlags:I

    :cond_2
    return-void
.end method


# virtual methods
.method public addCategory(I)V
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/miui/home/launcher/BaseAppInfo;->categories:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAppLaunchCount()I
    .locals 0

    .line 164
    iget p0, p0, Lcom/miui/home/launcher/BaseAppInfo;->mAppLauncherCount:I

    return p0
.end method

.method public getCategories()Ljava/util/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object p0, p0, Lcom/miui/home/launcher/BaseAppInfo;->categories:Ljava/util/HashSet;

    return-object p0
.end method

.method public getIconColorType()Ljava/lang/Integer;
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/miui/home/launcher/BaseAppInfo;->mIconColorType:Ljava/lang/Integer;

    return-object p0
.end method

.method public getLastTimeUsed()J
    .locals 2

    .line 120
    iget-wide v0, p0, Lcom/miui/home/launcher/BaseAppInfo;->lastTimeUsed:J

    return-wide v0
.end method

.method public getLoadTime()J
    .locals 2

    .line 147
    iget-wide v0, p0, Lcom/miui/home/launcher/BaseAppInfo;->mLoadTime:J

    return-wide v0
.end method

.method public getPinyinList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 168
    iget-object p0, p0, Lcom/miui/home/launcher/BaseAppInfo;->mPinyinList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public isSecurityHided()Z
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseAppInfo;->toPackageAndUser()Lcom/miui/home/launcher/LauncherModel$PackageAndUser;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->isSecurityHided(Lcom/miui/home/launcher/LauncherModel$PackageAndUser;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isPairIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseAppInfo;->toPackageAndUser1()Lcom/miui/home/launcher/LauncherModel$PackageAndUser;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/LauncherModel;->isSecurityHided(Lcom/miui/home/launcher/LauncherModel$PackageAndUser;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public makeShortcut()Lcom/miui/home/launcher/ShortcutInfo;
    .locals 3

    .line 92
    new-instance v0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/ShortcutInfo;-><init>(Lcom/miui/home/launcher/BaseAppInfo;)V

    const-wide/16 v1, -0x1

    .line 93
    iput-wide v1, p0, Lcom/miui/home/launcher/ItemInfo;->id:J

    return-object v0
.end method

.method public onLaunch(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 152
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->onLaunch(Lcom/miui/home/launcher/Launcher;)V

    .line 153
    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseAppInfo;->getAppLaunchCount()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/BaseAppInfo;->setAppLaunchCount(I)V

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/BaseAppInfo;->setLastTimeUsed(J)V

    return-void
.end method

.method public removeCategory(I)V
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/miui/home/launcher/BaseAppInfo;->categories:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method resetTitle(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V
    .locals 3

    .line 58
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/BaseAppInfo;->componentName:Landroid/content/ComponentName;

    .line 59
    new-instance v1, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-direct {v1, v0, p2}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    iput-object v1, p0, Lcom/miui/home/launcher/BaseAppInfo;->componentKey:Lcom/miui/home/launcher/util/ComponentKey;

    .line 60
    iget-object v0, p0, Lcom/miui/home/launcher/BaseAppInfo;->componentName:Landroid/content/ComponentName;

    const/high16 v1, 0x10200000

    invoke-virtual {p0, v0, v1, p2}, Lcom/miui/home/launcher/ShortcutInfo;->setActivity(Landroid/content/ComponentName;ILandroid/os/UserHandle;)V

    .line 62
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->loadTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ItemInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ItemInfo;->setLabel(Ljava/lang/CharSequence;)V

    .line 65
    iget-object p2, p0, Lcom/miui/home/launcher/BaseAppInfo;->mPinyinList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 66
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isChinese()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 67
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->containsSimplifiedChinese(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 68
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, " "

    invoke-static {p1, p2}, Lcom/github/promeg/pinyinhelper/Pinyin;->toPinyin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 69
    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p1, v0

    .line 70
    iget-object v2, p0, Lcom/miui/home/launcher/BaseAppInfo;->mPinyinList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method setAppLaunchCount(I)V
    .locals 0

    .line 160
    iput p1, p0, Lcom/miui/home/launcher/BaseAppInfo;->mAppLauncherCount:I

    return-void
.end method

.method setCategories(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/miui/home/launcher/BaseAppInfo;->categories:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 129
    iget-object p0, p0, Lcom/miui/home/launcher/BaseAppInfo;->categories:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setIconColorType(Ljava/lang/Integer;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/miui/home/launcher/BaseAppInfo;->mIconColorType:Ljava/lang/Integer;

    return-void
.end method

.method setLastTimeUsed(J)V
    .locals 0

    .line 116
    iput-wide p1, p0, Lcom/miui/home/launcher/BaseAppInfo;->lastTimeUsed:J

    return-void
.end method

.method setLoadTime(J)V
    .locals 0

    .line 143
    iput-wide p1, p0, Lcom/miui/home/launcher/BaseAppInfo;->mLoadTime:J

    return-void
.end method

.method public toComponentKey()Lcom/miui/home/launcher/util/ComponentKey;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/miui/home/launcher/BaseAppInfo;->componentKey:Lcom/miui/home/launcher/util/ComponentKey;

    return-object p0
.end method

.method toPackageAndUser()Lcom/miui/home/launcher/LauncherModel$PackageAndUser;
    .locals 2

    .line 80
    new-instance v0, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;

    iget-object v1, p0, Lcom/miui/home/launcher/BaseAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/miui/home/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, p0}, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-object v0
.end method

.method toPackageAndUser1()Lcom/miui/home/launcher/LauncherModel$PackageAndUser;
    .locals 2

    .line 84
    new-instance v0, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getExtraPairPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/miui/home/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, p0}, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-object v0
.end method
