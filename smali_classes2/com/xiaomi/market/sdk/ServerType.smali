.class public final enum Lcom/xiaomi/market/sdk/ServerType;
.super Ljava/lang/Enum;
.source "ServerType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/market/sdk/ServerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/market/sdk/ServerType;

.field public static final enum PREVIEW:Lcom/xiaomi/market/sdk/ServerType;

.field public static final enum PRODUCT:Lcom/xiaomi/market/sdk/ServerType;

.field public static final enum STAGING:Lcom/xiaomi/market/sdk/ServerType;


# instance fields
.field private baseUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 8
    new-instance v0, Lcom/xiaomi/market/sdk/ServerType;

    const-string v1, "PRODUCT"

    const/4 v2, 0x0

    const-string v3, "https://api.developer.xiaomi.com/autoupdate/"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/market/sdk/ServerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/market/sdk/ServerType;->PRODUCT:Lcom/xiaomi/market/sdk/ServerType;

    .line 9
    new-instance v1, Lcom/xiaomi/market/sdk/ServerType;

    const-string v3, "STAGING"

    const/4 v4, 0x1

    const-string v5, "http://staging.api.developer.n.xiaomi.com/autoupdate/"

    invoke-direct {v1, v3, v4, v5}, Lcom/xiaomi/market/sdk/ServerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/xiaomi/market/sdk/ServerType;->STAGING:Lcom/xiaomi/market/sdk/ServerType;

    .line 10
    new-instance v3, Lcom/xiaomi/market/sdk/ServerType;

    const-string v5, "PREVIEW"

    const/4 v6, 0x2

    const-string v7, "http://preview.api.developer.appstore.pt.xiaomi.com/autoupdate/"

    invoke-direct {v3, v5, v6, v7}, Lcom/xiaomi/market/sdk/ServerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/xiaomi/market/sdk/ServerType;->PREVIEW:Lcom/xiaomi/market/sdk/ServerType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/xiaomi/market/sdk/ServerType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 7
    sput-object v5, Lcom/xiaomi/market/sdk/ServerType;->$VALUES:[Lcom/xiaomi/market/sdk/ServerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lcom/xiaomi/market/sdk/ServerType;->baseUrl:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/market/sdk/ServerType;
    .locals 1

    .line 7
    const-class v0, Lcom/xiaomi/market/sdk/ServerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/market/sdk/ServerType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/market/sdk/ServerType;
    .locals 1

    .line 7
    sget-object v0, Lcom/xiaomi/market/sdk/ServerType;->$VALUES:[Lcom/xiaomi/market/sdk/ServerType;

    invoke-virtual {v0}, [Lcom/xiaomi/market/sdk/ServerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/market/sdk/ServerType;

    return-object v0
.end method


# virtual methods
.method public getBaseUrl()Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/xiaomi/market/sdk/ServerType;->baseUrl:Ljava/lang/String;

    return-object p0
.end method
