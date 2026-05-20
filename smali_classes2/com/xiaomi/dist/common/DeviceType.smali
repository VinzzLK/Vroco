.class public final enum Lcom/xiaomi/dist/common/DeviceType;
.super Ljava/lang/Enum;
.source "DeviceType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/dist/common/DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/dist/common/DeviceType;

.field public static final enum NONE:Lcom/xiaomi/dist/common/DeviceType;

.field public static final enum PAD:Lcom/xiaomi/dist/common/DeviceType;

.field public static final enum PC:Lcom/xiaomi/dist/common/DeviceType;

.field public static final enum PHONE:Lcom/xiaomi/dist/common/DeviceType;

.field public static final enum TV:Lcom/xiaomi/dist/common/DeviceType;


# instance fields
.field private final type:I


# direct methods
.method public static synthetic $r8$lambda$CV-R6q9tzIhw27oaktm9JHVh54I(ILcom/xiaomi/dist/common/DeviceType;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaomi/dist/common/DeviceType;->lambda$valueOf$0(ILcom/xiaomi/dist/common/DeviceType;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 11

    .line 6
    new-instance v0, Lcom/xiaomi/dist/common/DeviceType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaomi/dist/common/DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/dist/common/DeviceType;->NONE:Lcom/xiaomi/dist/common/DeviceType;

    .line 7
    new-instance v1, Lcom/xiaomi/dist/common/DeviceType;

    const-string v3, "PHONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/xiaomi/dist/common/DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/xiaomi/dist/common/DeviceType;->PHONE:Lcom/xiaomi/dist/common/DeviceType;

    .line 8
    new-instance v3, Lcom/xiaomi/dist/common/DeviceType;

    const-string v5, "PAD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/xiaomi/dist/common/DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/xiaomi/dist/common/DeviceType;->PAD:Lcom/xiaomi/dist/common/DeviceType;

    .line 9
    new-instance v5, Lcom/xiaomi/dist/common/DeviceType;

    const-string v7, "TV"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/xiaomi/dist/common/DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/xiaomi/dist/common/DeviceType;->TV:Lcom/xiaomi/dist/common/DeviceType;

    .line 10
    new-instance v7, Lcom/xiaomi/dist/common/DeviceType;

    const-string v9, "PC"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/xiaomi/dist/common/DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/xiaomi/dist/common/DeviceType;->PC:Lcom/xiaomi/dist/common/DeviceType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/xiaomi/dist/common/DeviceType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 5
    sput-object v9, Lcom/xiaomi/dist/common/DeviceType;->$VALUES:[Lcom/xiaomi/dist/common/DeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/xiaomi/dist/common/DeviceType;->type:I

    return-void
.end method

.method private static synthetic lambda$valueOf$0(ILcom/xiaomi/dist/common/DeviceType;)Z
    .locals 0

    .line 20
    iget p1, p1, Lcom/xiaomi/dist/common/DeviceType;->type:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static valueOf(I)Lcom/xiaomi/dist/common/DeviceType;
    .locals 2

    .line 19
    invoke-static {}, Lcom/xiaomi/dist/common/DeviceType;->values()[Lcom/xiaomi/dist/common/DeviceType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/dist/common/DeviceType$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/xiaomi/dist/common/DeviceType$$ExternalSyntheticLambda0;-><init>(I)V

    .line 20
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 21
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/xiaomi/dist/common/DeviceType;->NONE:Lcom/xiaomi/dist/common/DeviceType;

    .line 22
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/dist/common/DeviceType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/dist/common/DeviceType;
    .locals 1

    .line 5
    const-class v0, Lcom/xiaomi/dist/common/DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/dist/common/DeviceType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/dist/common/DeviceType;
    .locals 1

    .line 5
    sget-object v0, Lcom/xiaomi/dist/common/DeviceType;->$VALUES:[Lcom/xiaomi/dist/common/DeviceType;

    invoke-virtual {v0}, [Lcom/xiaomi/dist/common/DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/dist/common/DeviceType;

    return-object v0
.end method


# virtual methods
.method public asIntType()I
    .locals 0

    .line 26
    iget p0, p0, Lcom/xiaomi/dist/common/DeviceType;->type:I

    return p0
.end method
