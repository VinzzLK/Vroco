.class final Lcom/xiaomi/market/sdk/Utils$2;
.super Lcom/xiaomi/market/sdk/Singleton;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/market/sdk/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/market/sdk/Singleton<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/xiaomi/market/sdk/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Ljava/lang/Boolean;
    .locals 1

    .line 37
    invoke-static {}, Lcom/xiaomi/market/sdk/Utils;->access$000()Lcom/xiaomi/market/sdk/Singleton;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/market/sdk/Singleton;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 38
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 42
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/xiaomi/market/sdk/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 43
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 44
    :cond_2
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 48
    :catch_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/xiaomi/market/sdk/Utils$2;->create()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
