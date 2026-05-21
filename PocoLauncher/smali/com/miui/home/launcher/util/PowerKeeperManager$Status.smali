.class public final enum Lcom/miui/home/launcher/util/PowerKeeperManager$Status;
.super Ljava/lang/Enum;
.source "PowerKeeperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/util/PowerKeeperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/home/launcher/util/PowerKeeperManager$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

.field public static final enum GESTURE_END:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

.field public static final enum GESTURE_START:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

.field public static final enum TO_APP:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

.field public static final enum TO_ASSISTANT:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

.field public static final enum TO_HOME:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

.field public static final enum TO_ONE_HAND:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

.field public static final enum TO_RECENT:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 20
    new-instance v0, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    const-string v1, "GESTURE_START"

    const/4 v2, 0x0

    const-string v3, "gesture_start"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;->GESTURE_START:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    new-instance v1, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    const-string v3, "GESTURE_END"

    const/4 v4, 0x1

    const-string v5, "gesture_end"

    invoke-direct {v1, v3, v4, v5}, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;->GESTURE_END:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    .line 21
    new-instance v3, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    const-string v5, "TO_HOME"

    const/4 v6, 0x2

    const-string/jumbo v7, "to_home"

    invoke-direct {v3, v5, v6, v7}, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;->TO_HOME:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    new-instance v5, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    const-string v7, "TO_RECENT"

    const/4 v8, 0x3

    const-string/jumbo v9, "to_recent"

    invoke-direct {v5, v7, v8, v9}, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;->TO_RECENT:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    new-instance v7, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    const-string v9, "TO_APP"

    const/4 v10, 0x4

    const-string/jumbo v11, "to_app"

    invoke-direct {v7, v9, v10, v11}, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;->TO_APP:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    .line 22
    new-instance v9, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    const-string v11, "TO_ASSISTANT"

    const/4 v12, 0x5

    const-string/jumbo v13, "to_assistant"

    invoke-direct {v9, v11, v12, v13}, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;->TO_ASSISTANT:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    new-instance v11, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    const-string v13, "TO_ONE_HAND"

    const/4 v14, 0x6

    const-string/jumbo v15, "to_one_hand"

    invoke-direct {v11, v13, v14, v15}, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;->TO_ONE_HAND:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 19
    sput-object v13, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;->$VALUES:[Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

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

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;->value:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/util/PowerKeeperManager$Status;)Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;->value:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/home/launcher/util/PowerKeeperManager$Status;
    .locals 1

    .line 19
    const-class v0, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    return-object p0
.end method

.method public static values()[Lcom/miui/home/launcher/util/PowerKeeperManager$Status;
    .locals 1

    .line 19
    sget-object v0, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;->$VALUES:[Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    invoke-virtual {v0}, [Lcom/miui/home/launcher/util/PowerKeeperManager$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    return-object v0
.end method
