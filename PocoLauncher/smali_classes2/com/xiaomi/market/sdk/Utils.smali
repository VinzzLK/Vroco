.class public Lcom/xiaomi/market/sdk/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field static DEBUG:Z = false

.field private static volatile isMiMarketExists:Lcom/xiaomi/market/sdk/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/market/sdk/Singleton<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static marketPkgName:Lcom/xiaomi/market/sdk/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/market/sdk/Singleton<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/xiaomi/market/sdk/Utils$1;

    invoke-direct {v0}, Lcom/xiaomi/market/sdk/Utils$1;-><init>()V

    sput-object v0, Lcom/xiaomi/market/sdk/Utils;->marketPkgName:Lcom/xiaomi/market/sdk/Singleton;

    .line 34
    new-instance v0, Lcom/xiaomi/market/sdk/Utils$2;

    invoke-direct {v0}, Lcom/xiaomi/market/sdk/Utils$2;-><init>()V

    sput-object v0, Lcom/xiaomi/market/sdk/Utils;->isMiMarketExists:Lcom/xiaomi/market/sdk/Singleton;

    return-void
.end method

.method static synthetic access$000()Lcom/xiaomi/market/sdk/Singleton;
    .locals 1

    .line 17
    sget-object v0, Lcom/xiaomi/market/sdk/Utils;->marketPkgName:Lcom/xiaomi/market/sdk/Singleton;

    return-object v0
.end method

.method static getMarketPackageName()Ljava/lang/String;
    .locals 1

    .line 57
    sget-object v0, Lcom/xiaomi/market/sdk/Utils;->marketPkgName:Lcom/xiaomi/market/sdk/Singleton;

    invoke-virtual {v0}, Lcom/xiaomi/market/sdk/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static isConnected(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "connectivity"

    .line 106
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 107
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 108
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method static isMiuiMarketExisted(Landroid/content/Context;)Z
    .locals 0

    .line 61
    sget-object p0, Lcom/xiaomi/market/sdk/Utils;->isMiMarketExists:Lcom/xiaomi/market/sdk/Singleton;

    invoke-virtual {p0}, Lcom/xiaomi/market/sdk/Singleton;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method static isWifiConnected(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "connectivity"

    .line 116
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 117
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    .line 119
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-ne p0, v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method
