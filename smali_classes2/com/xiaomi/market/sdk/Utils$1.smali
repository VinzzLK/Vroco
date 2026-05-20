.class final Lcom/xiaomi/market/sdk/Utils$1;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/xiaomi/market/sdk/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/xiaomi/market/sdk/Utils$1;->create()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected create()Ljava/lang/String;
    .locals 0

    .line 27
    invoke-static {}, Lcom/xiaomi/market/sdk/Client;->isMiui()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "com.xiaomi.market"

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method
