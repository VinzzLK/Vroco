.class public Lcom/xiaomi/market/sdk/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static UPDATE_64_URL:Ljava/lang/String;

.field public static UPDATE_URL:Ljava/lang/String;

.field public static volatile URL_BASE:Ljava/lang/String;

.field private static volatile sServer:Lcom/xiaomi/market/sdk/ServerType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    sget-object v0, Lcom/xiaomi/market/sdk/ServerType;->PRODUCT:Lcom/xiaomi/market/sdk/ServerType;

    sput-object v0, Lcom/xiaomi/market/sdk/Constants;->sServer:Lcom/xiaomi/market/sdk/ServerType;

    return-void
.end method

.method public static configURL()V
    .locals 2

    .line 19
    sget-object v0, Lcom/xiaomi/market/sdk/Constants;->sServer:Lcom/xiaomi/market/sdk/ServerType;

    invoke-virtual {v0}, Lcom/xiaomi/market/sdk/ServerType;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/market/sdk/Constants;->URL_BASE:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/market/sdk/Constants;->URL_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "updateself"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/market/sdk/Constants;->UPDATE_URL:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/market/sdk/Constants;->URL_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "updateself/support64App"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/market/sdk/Constants;->UPDATE_64_URL:Ljava/lang/String;

    return-void
.end method
