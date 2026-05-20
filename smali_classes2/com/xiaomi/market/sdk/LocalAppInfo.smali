.class public Lcom/xiaomi/market/sdk/LocalAppInfo;
.super Ljava/lang/Object;
.source "LocalAppInfo.java"


# instance fields
.field public displayName:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public signature:Ljava/lang/String;

.field public versionCode:I

.field public versionName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 9
    iput-object v0, p0, Lcom/xiaomi/market/sdk/LocalAppInfo;->packageName:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/xiaomi/market/sdk/LocalAppInfo;->displayName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 11
    iput v1, p0, Lcom/xiaomi/market/sdk/LocalAppInfo;->versionCode:I

    .line 12
    iput-object v0, p0, Lcom/xiaomi/market/sdk/LocalAppInfo;->versionName:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/xiaomi/market/sdk/LocalAppInfo;->signature:Ljava/lang/String;

    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/xiaomi/market/sdk/LocalAppInfo;
    .locals 1

    .line 20
    new-instance v0, Lcom/xiaomi/market/sdk/LocalAppInfo;

    invoke-direct {v0}, Lcom/xiaomi/market/sdk/LocalAppInfo;-><init>()V

    .line 21
    iput-object p0, v0, Lcom/xiaomi/market/sdk/LocalAppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method
