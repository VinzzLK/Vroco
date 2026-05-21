.class public final Lcom/miui/home/recents/OverviewComponentObserver;
.super Ljava/lang/Object;
.source "OverviewComponentObserver.java"


# static fields
.field private static volatile INSTANCE:Lcom/miui/home/recents/OverviewComponentObserver;


# instance fields
.field private mActivityControlHelper:Lcom/miui/home/recents/ActivityControlHelper;

.field private final mConfigChangesMap:Landroid/util/SparseIntArray;

.field private final mContext:Landroid/content/Context;

.field private mHomeIntent:Landroid/content/Intent;

.field private mIsHomeAndOverviewSame:Z

.field private final mMyHomeComponent:Landroid/content/ComponentName;

.field private final mOtherHomeAppUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private final mOtherHomeAppUpdateReceiverRegisterLock:Ljava/lang/Object;

.field private mOverviewIntent:Landroid/content/Intent;

.field private mUpdateRegisteredPackage:Ljava/lang/String;

.field private final mUserPreferenceChangeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/miui/home/recents/OverviewComponentObserver$1;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/OverviewComponentObserver$1;-><init>(Lcom/miui/home/recents/OverviewComponentObserver;)V

    iput-object v0, p0, Lcom/miui/home/recents/OverviewComponentObserver;->mUserPreferenceChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 53
    new-instance v1, Lcom/miui/home/recents/OverviewComponentObserver$2;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/OverviewComponentObserver$2;-><init>(Lcom/miui/home/recents/OverviewComponentObserver;)V

    iput-object v1, p0, Lcom/miui/home/recents/OverviewComponentObserver;->mOtherHomeAppUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 59
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/OverviewComponentObserver;->mOtherHomeAppUpdateReceiverRegisterLock:Ljava/lang/Object;

    .line 69
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/OverviewComponentObserver;->mConfigChangesMap:Landroid/util/SparseIntArray;

    .line 88
    iput-object p1, p0, Lcom/miui/home/recents/OverviewComponentObserver;->mContext:Landroid/content/Context;

    .line 90
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    .line 91
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 94
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/miui/home/recents/OverviewComponentObserver;->mMyHomeComponent:Landroid/content/ComponentName;

    .line 95
    invoke-virtual {v3}, Landroid/content/ComponentName;->hashCode()I

    move-result v3

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->configChanges:I

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 97
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0}, Lcom/miui/home/recents/OverviewComponentObserver;->updateOverviewTargets()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/home/recents/OverviewComponentObserver;
    .locals 2

    .line 77
    sget-object v0, Lcom/miui/home/recents/OverviewComponentObserver;->INSTANCE:Lcom/miui/home/recents/OverviewComponentObserver;

    if-nez v0, :cond_1

    .line 78
    const-class v0, Lcom/miui/home/recents/OverviewComponentObserver;

    monitor-enter v0

    .line 79
    :try_start_0
    sget-object v1, Lcom/miui/home/recents/OverviewComponentObserver;->INSTANCE:Lcom/miui/home/recents/OverviewComponentObserver;

    if-nez v1, :cond_0

    .line 80
    new-instance v1, Lcom/miui/home/recents/OverviewComponentObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/miui/home/recents/OverviewComponentObserver;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/home/recents/OverviewComponentObserver;->INSTANCE:Lcom/miui/home/recents/OverviewComponentObserver;

    .line 82
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 84
    :cond_1
    :goto_0
    sget-object p0, Lcom/miui/home/recents/OverviewComponentObserver;->INSTANCE:Lcom/miui/home/recents/OverviewComponentObserver;

    return-object p0
.end method


# virtual methods
.method canHandleConfigChanges(Landroid/content/ComponentName;I)Z
    .locals 3

    and-int/lit16 v0, p2, 0x480

    const/4 v1, 0x1

    const/16 v2, 0x480

    if-ne v0, v2, :cond_0

    return v1

    .line 246
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/OverviewComponentObserver;->mConfigChangesMap:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/content/ComponentName;->hashCode()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    if-eqz p0, :cond_1

    not-int p0, p0

    and-int/2addr p0, p2

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getActivityControlHelper()Lcom/miui/home/recents/ActivityControlHelper;
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/miui/home/recents/OverviewComponentObserver;->mActivityControlHelper:Lcom/miui/home/recents/ActivityControlHelper;

    return-object p0
.end method

.method public getHomeIntent()Landroid/content/Intent;
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/miui/home/recents/OverviewComponentObserver;->mHomeIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getHomePackageName()Ljava/lang/String;
    .locals 1

    .line 223
    invoke-virtual {p0}, Lcom/miui/home/recents/OverviewComponentObserver;->getHomeIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 224
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMyHomeComponent()Landroid/content/ComponentName;
    .locals 0

    .line 231
    iget-object p0, p0, Lcom/miui/home/recents/OverviewComponentObserver;->mMyHomeComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getOverviewIntent()Landroid/content/Intent;
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/miui/home/recents/OverviewComponentObserver;->mOverviewIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public isHomeAndOverviewSame()Z
    .locals 0

    .line 254
    iget-boolean p0, p0, Lcom/miui/home/recents/OverviewComponentObserver;->mIsHomeAndOverviewSame:Z

    return p0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public updateOverviewTargets()V
    .locals 7

    .line 103
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->getCurrentDefaultHome()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/miui/home/recents/OverviewComponentObserver;->mMyHomeComponent:Landroid/content/ComponentName;

    :cond_0
    const-string v1, "OverviewComponentObserver"

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateOverviewTargets: defaultHome="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 111
    iput-object v1, p0, Lcom/miui/home/recents/OverviewComponentObserver;->mHomeIntent:Landroid/content/Intent;

    if-eqz v0, :cond_5

    .line 113
    iget-object v2, p0, Lcom/miui/home/recents/OverviewComponentObserver;->mMyHomeComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_1

    .line 128
    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiResolverActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 129
    iget-object v1, p0, Lcom/miui/home/recents/OverviewComponentObserver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->queryHomeIntents(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 131
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_2

    .line 132
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_2

    const-string v3, "OverviewComponentObserver"

    .line 133
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "category home info: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v2, "OverviewComponentObserver"

    const-string v3, "category home info: null"

    .line 135
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 141
    :cond_3
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/miui/home/recents/OverviewComponentObserver;->mContext:Landroid/content/Context;

    const-class v3, Lcom/miui/home/recents/RecentsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    new-instance v2, Lcom/miui/home/recents/FallbackActivityControllerHelper;

    invoke-direct {v2}, Lcom/miui/home/recents/FallbackActivityControllerHelper;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/OverviewComponentObserver;->mActivityControlHelper:Lcom/miui/home/recents/ActivityControlHelper;

    const/4 v2, 0x0

    .line 143
    iput-boolean v2, p0, Lcom/miui/home/recents/OverviewComponentObserver;->mIsHomeAndOverviewSame:Z

    const-string v3, "android.intent.category.DEFAULT"

    .line 146
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.intent.category.HOME"

    .line 147
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 148
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/home/recents/OverviewComponentObserver;->mHomeIntent:Landroid/content/Intent;

    .line 153
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/home/recents/OverviewComponentObserver;->mUpdateRegisteredPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 155
    iget-object v4, p0, Lcom/miui/home/recents/OverviewComponentObserver;->mOtherHomeAppUpdateReceiverRegisterLock:Ljava/lang/Object;

    monitor-enter v4

    .line 156
    :try_start_0
    iget-object v5, p0, Lcom/miui/home/recents/OverviewComponentObserver;->mUpdateRegisteredPackage:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 158
    iget-object v5, p0, Lcom/miui/home/recents/OverviewComponentObserver;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/miui/home/recents/OverviewComponentObserver;->mOtherHomeAppUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 161
    :cond_4
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/OverviewComponentObserver;->mUpdateRegisteredPackage:Ljava/lang/String;

    .line 163
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.intent.action.PACKAGE_ADDED"

    .line 164
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    .line 165
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    .line 166
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "package"

    .line 167
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 168
    iget-object v5, p0, Lcom/miui/home/recents/OverviewComponentObserver;->mUpdateRegisteredPackage:Ljava/lang/String;

    invoke-virtual {v0, v5, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 170
    iget-object v2, p0, Lcom/miui/home/recents/OverviewComponentObserver;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/miui/home/recents/OverviewComponentObserver;->mOtherHomeAppUpdateReceiver:Landroid/content/BroadcastReceiver;

    const/4 v6, 0x4

    invoke-virtual {v2, v5, v0, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 171
    monitor-exit v4

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 115
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/miui/home/recents/OverviewComponentObserver;->mMyHomeComponent:Landroid/content/ComponentName;

    .line 116
    new-instance v2, Lcom/miui/home/recents/LauncherActivityControllerHelper;

    invoke-direct {v2}, Lcom/miui/home/recents/LauncherActivityControllerHelper;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/OverviewComponentObserver;->mActivityControlHelper:Lcom/miui/home/recents/ActivityControlHelper;

    const/4 v2, 0x1

    .line 117
    iput-boolean v2, p0, Lcom/miui/home/recents/OverviewComponentObserver;->mIsHomeAndOverviewSame:Z

    const-string v3, "android.intent.category.HOME"

    .line 120
    iget-object v2, p0, Lcom/miui/home/recents/OverviewComponentObserver;->mOtherHomeAppUpdateReceiverRegisterLock:Ljava/lang/Object;

    monitor-enter v2

    .line 121
    :try_start_1
    iget-object v4, p0, Lcom/miui/home/recents/OverviewComponentObserver;->mUpdateRegisteredPackage:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 123
    iget-object v4, p0, Lcom/miui/home/recents/OverviewComponentObserver;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/miui/home/recents/OverviewComponentObserver;->mOtherHomeAppUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 124
    iput-object v1, p0, Lcom/miui/home/recents/OverviewComponentObserver;->mUpdateRegisteredPackage:Ljava/lang/String;

    .line 126
    :cond_6
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v0

    .line 178
    :cond_7
    :goto_2
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 180
    iget-boolean v2, p0, Lcom/miui/home/recents/OverviewComponentObserver;->mIsHomeAndOverviewSame:Z

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/BaseRecentsImpl;->setIsUseMiuiHomeAsDefaultHome(Z)V

    .line 183
    :cond_8
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 185
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 186
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/OverviewComponentObserver;->mOverviewIntent:Landroid/content/Intent;

    .line 187
    sget-boolean v1, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_U:Z

    if-eqz v1, :cond_9

    const/high16 v1, 0x40000

    .line 188
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 190
    :cond_9
    iget-object v0, p0, Lcom/miui/home/recents/OverviewComponentObserver;->mHomeIntent:Landroid/content/Intent;

    if-nez v0, :cond_a

    .line 191
    iget-object v0, p0, Lcom/miui/home/recents/OverviewComponentObserver;->mOverviewIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/miui/home/recents/OverviewComponentObserver;->mHomeIntent:Landroid/content/Intent;

    :cond_a
    return-void

    :catchall_1
    move-exception p0

    .line 126
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public updateOverviewTargetsPost()V
    .locals 2

    .line 196
    invoke-static {}, Lcom/miui/home/launcher/common/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/OverviewComponentObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/OverviewComponentObserver$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/OverviewComponentObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
