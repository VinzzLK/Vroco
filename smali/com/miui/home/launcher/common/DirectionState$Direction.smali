.class final enum Lcom/miui/home/launcher/common/DirectionState$Direction;
.super Ljava/lang/Enum;
.source "DirectionState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/common/DirectionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/home/launcher/common/DirectionState$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/home/launcher/common/DirectionState$Direction;

.field public static final enum DIRECTION_END_TO_START:Lcom/miui/home/launcher/common/DirectionState$Direction;

.field public static final enum DIRECTION_START_TO_END:Lcom/miui/home/launcher/common/DirectionState$Direction;

.field public static final enum DIRECTION_UNKNOWN:Lcom/miui/home/launcher/common/DirectionState$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 11
    new-instance v0, Lcom/miui/home/launcher/common/DirectionState$Direction;

    const-string v1, "DIRECTION_START_TO_END"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/common/DirectionState$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/common/DirectionState$Direction;->DIRECTION_START_TO_END:Lcom/miui/home/launcher/common/DirectionState$Direction;

    new-instance v1, Lcom/miui/home/launcher/common/DirectionState$Direction;

    const-string v3, "DIRECTION_END_TO_START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/miui/home/launcher/common/DirectionState$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/home/launcher/common/DirectionState$Direction;->DIRECTION_END_TO_START:Lcom/miui/home/launcher/common/DirectionState$Direction;

    new-instance v3, Lcom/miui/home/launcher/common/DirectionState$Direction;

    const-string v5, "DIRECTION_UNKNOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/miui/home/launcher/common/DirectionState$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/miui/home/launcher/common/DirectionState$Direction;->DIRECTION_UNKNOWN:Lcom/miui/home/launcher/common/DirectionState$Direction;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/miui/home/launcher/common/DirectionState$Direction;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 10
    sput-object v5, Lcom/miui/home/launcher/common/DirectionState$Direction;->$VALUES:[Lcom/miui/home/launcher/common/DirectionState$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/home/launcher/common/DirectionState$Direction;
    .locals 1

    .line 10
    const-class v0, Lcom/miui/home/launcher/common/DirectionState$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/common/DirectionState$Direction;

    return-object p0
.end method

.method public static values()[Lcom/miui/home/launcher/common/DirectionState$Direction;
    .locals 1

    .line 10
    sget-object v0, Lcom/miui/home/launcher/common/DirectionState$Direction;->$VALUES:[Lcom/miui/home/launcher/common/DirectionState$Direction;

    invoke-virtual {v0}, [Lcom/miui/home/launcher/common/DirectionState$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/home/launcher/common/DirectionState$Direction;

    return-object v0
.end method
