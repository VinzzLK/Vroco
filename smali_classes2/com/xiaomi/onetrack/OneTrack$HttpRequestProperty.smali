.class public final enum Lcom/xiaomi/onetrack/OneTrack$HttpRequestProperty;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/OneTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HttpRequestProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/onetrack/OneTrack$HttpRequestProperty;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLOSE:Lcom/xiaomi/onetrack/OneTrack$HttpRequestProperty;

.field public static final enum KEEP_ALIVE:Lcom/xiaomi/onetrack/OneTrack$HttpRequestProperty;

.field private static final synthetic b:[Lcom/xiaomi/onetrack/OneTrack$HttpRequestProperty;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 46
    new-instance v0, Lcom/xiaomi/onetrack/OneTrack$HttpRequestProperty;

    const-string v1, "KEEP_ALIVE"

    const/4 v2, 0x0

    const-string v3, "keep-alive"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/onetrack/OneTrack$HttpRequestProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/onetrack/OneTrack$HttpRequestProperty;->KEEP_ALIVE:Lcom/xiaomi/onetrack/OneTrack$HttpRequestProperty;

    .line 47
    new-instance v1, Lcom/xiaomi/onetrack/OneTrack$HttpRequestProperty;

    const-string v3, "CLOSE"

    const/4 v4, 0x1

    const-string v5, "close"

    invoke-direct {v1, v3, v4, v5}, Lcom/xiaomi/onetrack/OneTrack$HttpRequestProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/xiaomi/onetrack/OneTrack$HttpRequestProperty;->CLOSE:Lcom/xiaomi/onetrack/OneTrack$HttpRequestProperty;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/xiaomi/onetrack/OneTrack$HttpRequestProperty;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 45
    sput-object v3, Lcom/xiaomi/onetrack/OneTrack$HttpRequestProperty;->b:[Lcom/xiaomi/onetrack/OneTrack$HttpRequestProperty;

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

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput-object p3, p0, Lcom/xiaomi/onetrack/OneTrack$HttpRequestProperty;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/onetrack/OneTrack$HttpRequestProperty;
    .locals 1

    .line 45
    const-class v0, Lcom/xiaomi/onetrack/OneTrack$HttpRequestProperty;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/onetrack/OneTrack$HttpRequestProperty;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/onetrack/OneTrack$HttpRequestProperty;
    .locals 1

    .line 45
    sget-object v0, Lcom/xiaomi/onetrack/OneTrack$HttpRequestProperty;->b:[Lcom/xiaomi/onetrack/OneTrack$HttpRequestProperty;

    invoke-virtual {v0}, [Lcom/xiaomi/onetrack/OneTrack$HttpRequestProperty;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/onetrack/OneTrack$HttpRequestProperty;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/xiaomi/onetrack/OneTrack$HttpRequestProperty;->a:Ljava/lang/String;

    return-object p0
.end method
