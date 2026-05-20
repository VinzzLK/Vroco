.class public final enum Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;
.super Ljava/lang/Enum;
.source "RectFSpringAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/util/RectFSpringAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

.field public static final enum APP_TO_APP:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

.field public static final enum CIRCLE_SMALL_VIEW:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

.field public static final enum CLOSE_FROM_FEED:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

.field public static final enum CLOSE_TO_DRAG:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

.field public static final enum CLOSE_TO_ELEMENT:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

.field public static final enum CLOSE_TO_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

.field public static final enum CLOSE_TO_HOME_CENTER:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

.field public static final enum CLOSE_TO_RECENTS:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

.field public static final enum CLOSE_TO_SMALL_WINDOW:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

.field public static final enum CLOSE_TO_SMALL_WINDOW_ROTATE:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

.field public static final enum CLOSE_TO_WORLD_CIRCLE:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

.field public static final enum OPEN_FROM_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

.field public static final enum OPEN_FROM_RECENTS:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

.field public static final enum START_FIRST_TASK:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 611
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const-string v1, "OPEN_FROM_HOME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->OPEN_FROM_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    .line 612
    new-instance v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const-string v3, "OPEN_FROM_RECENTS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->OPEN_FROM_RECENTS:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    .line 613
    new-instance v3, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const-string v5, "CLOSE_TO_RECENTS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_RECENTS:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    .line 614
    new-instance v5, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const-string v7, "CLOSE_TO_HOME"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    .line 615
    new-instance v7, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const-string v9, "CLOSE_TO_HOME_CENTER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_HOME_CENTER:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    .line 616
    new-instance v9, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const-string v11, "CLOSE_TO_ELEMENT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_ELEMENT:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    .line 617
    new-instance v11, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const-string v13, "CLOSE_FROM_FEED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_FROM_FEED:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    .line 618
    new-instance v13, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const-string v15, "APP_TO_APP"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->APP_TO_APP:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    .line 619
    new-instance v15, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const-string v14, "START_FIRST_TASK"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->START_FIRST_TASK:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    .line 620
    new-instance v14, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const-string v12, "CLOSE_TO_DRAG"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_DRAG:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    .line 621
    new-instance v12, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const-string v10, "CLOSE_TO_WORLD_CIRCLE"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_WORLD_CIRCLE:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    .line 622
    new-instance v10, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const-string v8, "CIRCLE_SMALL_VIEW"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CIRCLE_SMALL_VIEW:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    .line 623
    new-instance v8, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const-string v6, "CLOSE_TO_SMALL_WINDOW"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_SMALL_WINDOW:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    .line 624
    new-instance v6, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const-string v4, "CLOSE_TO_SMALL_WINDOW_ROTATE"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_SMALL_WINDOW_ROTATE:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const/16 v4, 0xe

    new-array v4, v4, [Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const/16 v16, 0x0

    aput-object v0, v4, v16

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    aput-object v6, v4, v2

    .line 610
    sput-object v4, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->$VALUES:[Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 610
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;
    .locals 1

    .line 610
    const-class v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    return-object p0
.end method

.method public static values()[Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;
    .locals 1

    .line 610
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->$VALUES:[Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    invoke-virtual {v0}, [Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    return-object v0
.end method
