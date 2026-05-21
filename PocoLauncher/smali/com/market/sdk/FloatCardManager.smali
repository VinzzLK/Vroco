.class public Lcom/market/sdk/FloatCardManager;
.super Ljava/lang/Object;
.source "FloatCardManager.java"


# static fields
.field private static final OVERLAY_POSITION:Ljava/lang/String; = "&overlayPosition="

.field private static volatile sInstance:Lcom/market/sdk/FloatCardManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private targetPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/market/sdk/FloatCardManager;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/market/sdk/FloatCardManager;->getStringFromUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static get(Landroid/app/Application;)Lcom/market/sdk/FloatCardManager;
    .locals 1

    .line 34
    sget-object p0, Lcom/market/sdk/FloatCardManager;->sInstance:Lcom/market/sdk/FloatCardManager;

    if-nez p0, :cond_1

    .line 35
    const-class p0, Lcom/market/sdk/FloatCardManager;

    monitor-enter p0

    .line 36
    :try_start_0
    sget-object v0, Lcom/market/sdk/FloatCardManager;->sInstance:Lcom/market/sdk/FloatCardManager;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/market/sdk/FloatCardManager;

    invoke-direct {v0}, Lcom/market/sdk/FloatCardManager;-><init>()V

    sput-object v0, Lcom/market/sdk/FloatCardManager;->sInstance:Lcom/market/sdk/FloatCardManager;

    .line 39
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 41
    :cond_1
    :goto_0
    sget-object p0, Lcom/market/sdk/FloatCardManager;->sInstance:Lcom/market/sdk/FloatCardManager;

    return-object p0
.end method

.method private getStringFromUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_1

    .line 264
    invoke-virtual {p1}, Landroid/net/Uri;->isHierarchical()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public cancelByFloat(Ljava/lang/String;)Z
    .locals 4

    .line 225
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string v0, "&overlayPosition="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    invoke-static {p1}, Lcom/market/sdk/utils/Utils;->getPackageNameByUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 229
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 233
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/market/sdk/FloatCardManager;->targetPackage:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/market/sdk/FloatService;->openService(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/market/IAppDownloadManager;

    move-result-object v0

    .line 234
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/market/sdk/FloatCardManager$5;

    invoke-direct {v3, p0, v0, p1}, Lcom/market/sdk/FloatCardManager$5;-><init>(Lcom/market/sdk/FloatCardManager;Lcom/xiaomi/market/IAppDownloadManager;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 243
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 246
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MarketManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v1
.end method

.method public downloadByFloat(Ljava/lang/String;)Z
    .locals 2

    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "&overlayPosition="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/market/sdk/FloatCardManager;->targetPackage:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/market/sdk/FloatService;->openService(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/market/IAppDownloadManager;

    move-result-object p0

    .line 91
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/xiaomi/market/IAppDownloadManager;->downloadByUri(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MarketManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v1
.end method

.method public downloadByFloat(Ljava/lang/String;I)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v2, -0x1

    if-eq p2, v2, :cond_1

    move p2, v0

    .line 74
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&overlayPosition="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 76
    :try_start_0
    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p0, p0, Lcom/market/sdk/FloatCardManager;->targetPackage:Ljava/lang/String;

    invoke-static {p2, p0}, Lcom/market/sdk/FloatService;->openService(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/market/IAppDownloadManager;

    move-result-object p0

    .line 77
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/xiaomi/market/IAppDownloadManager;->downloadByUri(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p0

    .line 80
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MarketManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public downloadOnly(Ljava/lang/String;)Z
    .locals 2

    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 57
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/market/sdk/FloatCardManager;->targetPackage:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/market/sdk/FloatService;->openService(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/market/IAppDownloadManager;

    move-result-object p0

    .line 58
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/xiaomi/market/IAppDownloadManager;->downloadByUri(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 61
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MarketManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public lifecycleChanged(Landroid/app/Activity;I)Z
    .locals 1

    .line 254
    :try_start_0
    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/market/sdk/FloatCardManager;->targetPackage:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/market/sdk/FloatService;->openService(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/market/IAppDownloadManager;

    move-result-object p0

    .line 255
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/xiaomi/market/IAppDownloadManager;->lifecycleChanged(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 258
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MarketManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public pauseByFloat(Ljava/lang/String;)Z
    .locals 4

    .line 132
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string v0, "&overlayPosition="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 138
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/market/sdk/FloatCardManager;->targetPackage:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/market/sdk/FloatService;->openService(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/market/IAppDownloadManager;

    move-result-object v0

    .line 139
    invoke-static {}, Lcom/market/sdk/MarketManager;->getManager()Lcom/market/sdk/MarketManager;

    move-result-object v2

    sget-object v3, Lcom/market/sdk/MarketFeatures;->FLOAT_CARD:Lcom/market/sdk/MarketFeatures;

    invoke-virtual {v2, v3}, Lcom/market/sdk/MarketManager;->hasFeature(Lcom/market/sdk/MarketFeatures;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/xiaomi/market/IAppDownloadManager;->pauseByUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 142
    :cond_1
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/market/sdk/FloatCardManager$2;

    invoke-direct {v3, p0, v0, p1}, Lcom/market/sdk/FloatCardManager$2;-><init>(Lcom/market/sdk/FloatCardManager;Lcom/xiaomi/market/IAppDownloadManager;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 150
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 154
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MarketManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return v1
.end method

.method public pauseByFloat(Ljava/lang/String;I)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v2, -0x1

    if-eq p2, v2, :cond_1

    move p2, v0

    .line 107
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&overlayPosition="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 110
    :try_start_0
    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v2, p0, Lcom/market/sdk/FloatCardManager;->targetPackage:Ljava/lang/String;

    invoke-static {p2, v2}, Lcom/market/sdk/FloatService;->openService(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/market/IAppDownloadManager;

    move-result-object p2

    .line 111
    invoke-static {}, Lcom/market/sdk/MarketManager;->getManager()Lcom/market/sdk/MarketManager;

    move-result-object v2

    sget-object v3, Lcom/market/sdk/MarketFeatures;->FLOAT_CARD:Lcom/market/sdk/MarketFeatures;

    invoke-virtual {v2, v3}, Lcom/market/sdk/MarketManager;->hasFeature(Lcom/market/sdk/MarketFeatures;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 112
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/xiaomi/market/IAppDownloadManager;->pauseByUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 114
    :cond_2
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/market/sdk/FloatCardManager$1;

    invoke-direct {v3, p0, p2, p1}, Lcom/market/sdk/FloatCardManager$1;-><init>(Lcom/market/sdk/FloatCardManager;Lcom/xiaomi/market/IAppDownloadManager;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 122
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception p0

    .line 126
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MarketManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public resumeByFloat(Ljava/lang/String;)Z
    .locals 4

    .line 192
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string v0, "&overlayPosition="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 197
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/market/sdk/FloatCardManager;->targetPackage:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/market/sdk/FloatService;->openService(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/market/IAppDownloadManager;

    move-result-object v0

    .line 198
    invoke-static {}, Lcom/market/sdk/MarketManager;->getManager()Lcom/market/sdk/MarketManager;

    move-result-object v2

    sget-object v3, Lcom/market/sdk/MarketFeatures;->FLOAT_CARD:Lcom/market/sdk/MarketFeatures;

    invoke-virtual {v2, v3}, Lcom/market/sdk/MarketManager;->hasFeature(Lcom/market/sdk/MarketFeatures;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/xiaomi/market/IAppDownloadManager;->resumeByUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 201
    :cond_1
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/market/sdk/FloatCardManager$4;

    invoke-direct {v3, p0, v0, p1}, Lcom/market/sdk/FloatCardManager$4;-><init>(Lcom/market/sdk/FloatCardManager;Lcom/xiaomi/market/IAppDownloadManager;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 209
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 213
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MarketManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return v1
.end method

.method public resumeByFloat(Ljava/lang/String;I)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 161
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v2, -0x1

    if-eq p2, v2, :cond_1

    move p2, v0

    .line 167
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&overlayPosition="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 170
    :try_start_0
    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v2, p0, Lcom/market/sdk/FloatCardManager;->targetPackage:Ljava/lang/String;

    invoke-static {p2, v2}, Lcom/market/sdk/FloatService;->openService(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/market/IAppDownloadManager;

    move-result-object p2

    .line 171
    invoke-static {}, Lcom/market/sdk/MarketManager;->getManager()Lcom/market/sdk/MarketManager;

    move-result-object v2

    sget-object v3, Lcom/market/sdk/MarketFeatures;->FLOAT_CARD:Lcom/market/sdk/MarketFeatures;

    invoke-virtual {v2, v3}, Lcom/market/sdk/MarketManager;->hasFeature(Lcom/market/sdk/MarketFeatures;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 172
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/xiaomi/market/IAppDownloadManager;->resumeByUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 174
    :cond_2
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/market/sdk/FloatCardManager$3;

    invoke-direct {v3, p0, p2, p1}, Lcom/market/sdk/FloatCardManager$3;-><init>(Lcom/market/sdk/FloatCardManager;Lcom/xiaomi/market/IAppDownloadManager;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 182
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception p0

    .line 186
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MarketManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public setUseGetApps(Z)V
    .locals 1

    .line 45
    sget-boolean v0, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string p1, "com.xiaomi.mipicks"

    .line 46
    iput-object p1, p0, Lcom/market/sdk/FloatCardManager;->targetPackage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, "MarketManager"

    const-string/jumbo p1, "you can only set target market package name in international build!"

    .line 48
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
