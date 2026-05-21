.class public final enum Lcom/miui/home/library/utils/CPUBooster$ThreadLevel;
.super Ljava/lang/Enum;
.source "CPUBooster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/library/utils/CPUBooster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ThreadLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/home/library/utils/CPUBooster$ThreadLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/home/library/utils/CPUBooster$ThreadLevel;

.field public static final enum HIGH_FOR_NON_RENDER_THREAD:Lcom/miui/home/library/utils/CPUBooster$ThreadLevel;

.field public static final enum MIDDLE_FOR_NON_RENDER_THREAD:Lcom/miui/home/library/utils/CPUBooster$ThreadLevel;

.field public static final enum RENDER_THREAD:Lcom/miui/home/library/utils/CPUBooster$ThreadLevel;


# instance fields
.field public level:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 80
    new-instance v0, Lcom/miui/home/library/utils/CPUBooster$ThreadLevel;

    const-string v1, "RENDER_THREAD"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/home/library/utils/CPUBooster$ThreadLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/home/library/utils/CPUBooster$ThreadLevel;->RENDER_THREAD:Lcom/miui/home/library/utils/CPUBooster$ThreadLevel;

    .line 81
    new-instance v1, Lcom/miui/home/library/utils/CPUBooster$ThreadLevel;

    const-string v4, "HIGH_FOR_NON_RENDER_THREAD"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/miui/home/library/utils/CPUBooster$ThreadLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/miui/home/library/utils/CPUBooster$ThreadLevel;->HIGH_FOR_NON_RENDER_THREAD:Lcom/miui/home/library/utils/CPUBooster$ThreadLevel;

    .line 82
    new-instance v4, Lcom/miui/home/library/utils/CPUBooster$ThreadLevel;

    const-string v6, "MIDDLE_FOR_NON_RENDER_THREAD"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/miui/home/library/utils/CPUBooster$ThreadLevel;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/miui/home/library/utils/CPUBooster$ThreadLevel;->MIDDLE_FOR_NON_RENDER_THREAD:Lcom/miui/home/library/utils/CPUBooster$ThreadLevel;

    new-array v6, v7, [Lcom/miui/home/library/utils/CPUBooster$ThreadLevel;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    .line 79
    sput-object v6, Lcom/miui/home/library/utils/CPUBooster$ThreadLevel;->$VALUES:[Lcom/miui/home/library/utils/CPUBooster$ThreadLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    iput p3, p0, Lcom/miui/home/library/utils/CPUBooster$ThreadLevel;->level:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/home/library/utils/CPUBooster$ThreadLevel;
    .locals 1

    .line 79
    const-class v0, Lcom/miui/home/library/utils/CPUBooster$ThreadLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/home/library/utils/CPUBooster$ThreadLevel;

    return-object p0
.end method

.method public static values()[Lcom/miui/home/library/utils/CPUBooster$ThreadLevel;
    .locals 1

    .line 79
    sget-object v0, Lcom/miui/home/library/utils/CPUBooster$ThreadLevel;->$VALUES:[Lcom/miui/home/library/utils/CPUBooster$ThreadLevel;

    invoke-virtual {v0}, [Lcom/miui/home/library/utils/CPUBooster$ThreadLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/home/library/utils/CPUBooster$ThreadLevel;

    return-object v0
.end method
