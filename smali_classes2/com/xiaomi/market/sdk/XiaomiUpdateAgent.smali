.class public Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;
.super Ljava/lang/Object;
.source "XiaomiUpdateAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$CheckUpdateTask;,
        Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;
    }
.end annotation


# static fields
.field private static mAppInfo:Lcom/xiaomi/market/sdk/LocalAppInfo; = null

.field private static mAutoPopup:Z = false

.field private static mCheckUpdateOnlyWifi:Z = false

.field private static mContext:Ljava/lang/ref/WeakReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsInited:Z = false

.field private static mIsLoading:Z = false

.field private static mUpdateInfo:Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

.field private static mUpdateListener:Lcom/xiaomi/market/sdk/XiaomiUpdateListener;

.field private static sDebug:Z

.field private static sUseSandbox:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mContext:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    .line 26
    sput-boolean v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mAutoPopup:Z

    const/4 v0, 0x0

    .line 27
    sput-boolean v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mCheckUpdateOnlyWifi:Z

    return-void
.end method

.method static synthetic access$100()Ljava/lang/ref/WeakReference;
    .locals 1

    .line 20
    sget-object v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mContext:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 20
    sget-boolean v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mCheckUpdateOnlyWifi:Z

    return v0
.end method

.method static synthetic access$300()Lcom/xiaomi/market/sdk/LocalAppInfo;
    .locals 1

    .line 20
    sget-object v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mAppInfo:Lcom/xiaomi/market/sdk/LocalAppInfo;

    return-object v0
.end method

.method static synthetic access$302(Lcom/xiaomi/market/sdk/LocalAppInfo;)Lcom/xiaomi/market/sdk/LocalAppInfo;
    .locals 0

    .line 20
    sput-object p0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mAppInfo:Lcom/xiaomi/market/sdk/LocalAppInfo;

    return-object p0
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 20
    sget-boolean v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->sUseSandbox:Z

    return v0
.end method

.method static synthetic access$500()Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;
    .locals 1

    .line 20
    sget-object v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mUpdateInfo:Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    return-object v0
.end method

.method static synthetic access$502(Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;)Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;
    .locals 0

    .line 20
    sput-object p0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mUpdateInfo:Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    return-object p0
.end method

.method static synthetic access$602(Z)Z
    .locals 0

    .line 20
    sput-boolean p0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mIsLoading:Z

    return p0
.end method

.method static synthetic access$700()Z
    .locals 1

    .line 20
    sget-boolean v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mAutoPopup:Z

    return v0
.end method

.method static synthetic access$800()Lcom/xiaomi/market/sdk/XiaomiUpdateListener;
    .locals 1

    .line 20
    sget-object v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mUpdateListener:Lcom/xiaomi/market/sdk/XiaomiUpdateListener;

    return-object v0
.end method

.method public static arrange()V
    .locals 1

    .line 93
    sget-object v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 97
    :cond_0
    invoke-static {v0}, Lcom/xiaomi/market/sdk/Client;->init(Landroid/content/Context;)V

    .line 98
    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->openMarketOrArrange()V

    return-void
.end method

.method public static enableDebug(Z)V
    .locals 0

    .line 40
    sput-boolean p0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->sDebug:Z

    .line 41
    sput-boolean p0, Lcom/xiaomi/market/sdk/Utils;->DEBUG:Z

    return-void
.end method

.method static getAppInfo(Landroid/content/Context;)Lcom/xiaomi/market/sdk/LocalAppInfo;
    .locals 3

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/market/sdk/LocalAppInfo;->get(Ljava/lang/String;)Lcom/xiaomi/market/sdk/LocalAppInfo;

    move-result-object v0

    .line 147
    iget-object v1, v0, Lcom/xiaomi/market/sdk/LocalAppInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/xiaomi/market/sdk/PkgUtils;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz v1, :cond_0

    .line 149
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    .line 150
    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 151
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaomi/market/sdk/LocalAppInfo;->displayName:Ljava/lang/String;

    .line 152
    iget p0, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput p0, v0, Lcom/xiaomi/market/sdk/LocalAppInfo;->versionCode:I

    .line 153
    iget-object p0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object p0, v0, Lcom/xiaomi/market/sdk/LocalAppInfo;->versionName:Ljava/lang/String;

    .line 154
    iget-object p0, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    .line 155
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toChars()[C

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/market/sdk/Coder;->encodeMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaomi/market/sdk/LocalAppInfo;->signature:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static getContext()Landroid/content/Context;
    .locals 1

    .line 136
    sget-object v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method static openMarketOrArrange()V
    .locals 6

    .line 351
    sget-object v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 352
    sget-object v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mUpdateInfo:Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    if-eqz v1, :cond_2

    sget-object v2, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mAppInfo:Lcom/xiaomi/market/sdk/LocalAppInfo;

    if-nez v2, :cond_0

    goto :goto_0

    .line 356
    :cond_0
    iget v1, v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->source:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    invoke-static {v0}, Lcom/xiaomi/market/sdk/Utils;->isMiuiMarketExisted(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://details?ref=update_sdk&back=true&startDownload=true&id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mAppInfo:Lcom/xiaomi/market/sdk/LocalAppInfo;

    iget-object v3, v3, Lcom/xiaomi/market/sdk/LocalAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 358
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 359
    invoke-static {}, Lcom/xiaomi/market/sdk/Utils;->getMarketPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v4, 0x0

    .line 362
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 363
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v2, :cond_2

    .line 364
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 365
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_2

    iget-boolean v2, v1, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v2, :cond_2

    iget-boolean v1, v1, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v1, :cond_2

    const/high16 v1, 0x10000000

    .line 368
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 369
    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v0, "MarketUpdateAgent"

    const-string v1, "MiMarket doesn\'t exist"

    .line 373
    invoke-static {v0, v1}, Lcom/xiaomi/market/sdk/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static setCheckUpdateOnlyWifi(Z)V
    .locals 0

    .line 114
    sput-boolean p0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mCheckUpdateOnlyWifi:Z

    return-void
.end method

.method public static setUpdateAutoPopup(Z)V
    .locals 0

    .line 105
    sput-boolean p0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mAutoPopup:Z

    return-void
.end method

.method public static setUpdateListener(Lcom/xiaomi/market/sdk/XiaomiUpdateListener;)V
    .locals 0

    .line 123
    sput-object p0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mUpdateListener:Lcom/xiaomi/market/sdk/XiaomiUpdateListener;

    return-void
.end method

.method public static declared-synchronized update(Landroid/content/Context;Z)V
    .locals 3

    const-class v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;

    monitor-enter v0

    if-eqz p0, :cond_2

    .line 52
    :try_start_0
    sget-boolean v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mIsLoading:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/market/sdk/AppGlobal;->setContext(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 56
    sput-boolean v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mIsLoading:Z

    .line 57
    invoke-static {p0}, Lcom/xiaomi/market/sdk/Client;->init(Landroid/content/Context;)V

    .line 58
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mContext:Ljava/lang/ref/WeakReference;

    .line 59
    sput-boolean p1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->sUseSandbox:Z

    .line 61
    sget-boolean p0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mIsInited:Z

    const/4 p1, 0x0

    if-nez p0, :cond_1

    .line 62
    sput-object p1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mAppInfo:Lcom/xiaomi/market/sdk/LocalAppInfo;

    .line 63
    sput-object p1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mUpdateInfo:Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    .line 64
    invoke-static {}, Lcom/xiaomi/market/sdk/Constants;->configURL()V

    .line 65
    sput-boolean v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mIsInited:Z

    .line 67
    :cond_1
    new-instance p0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$CheckUpdateTask;

    invoke-direct {p0, p1}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$CheckUpdateTask;-><init>(Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$1;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 53
    :cond_2
    :goto_0
    monitor-exit v0

    return-void
.end method
