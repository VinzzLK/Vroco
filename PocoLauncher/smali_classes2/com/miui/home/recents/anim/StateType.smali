.class public final enum Lcom/miui/home/recents/anim/StateType;
.super Ljava/lang/Enum;
.source "State.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/home/recents/anim/StateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/home/recents/anim/StateType;

.field public static final enum STATE_APP:Lcom/miui/home/recents/anim/StateType;

.field public static final enum STATE_HOME:Lcom/miui/home/recents/anim/StateType;

.field public static final enum STATE_IDLE:Lcom/miui/home/recents/anim/StateType;

.field public static final enum STATE_RECENTS:Lcom/miui/home/recents/anim/StateType;


# direct methods
.method private static final synthetic $values()[Lcom/miui/home/recents/anim/StateType;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miui/home/recents/anim/StateType;

    sget-object v1, Lcom/miui/home/recents/anim/StateType;->STATE_IDLE:Lcom/miui/home/recents/anim/StateType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/home/recents/anim/StateType;->STATE_APP:Lcom/miui/home/recents/anim/StateType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/home/recents/anim/StateType;->STATE_HOME:Lcom/miui/home/recents/anim/StateType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/home/recents/anim/StateType;->STATE_RECENTS:Lcom/miui/home/recents/anim/StateType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Lcom/miui/home/recents/anim/StateType;

    const-string v1, "STATE_IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/home/recents/anim/StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/recents/anim/StateType;->STATE_IDLE:Lcom/miui/home/recents/anim/StateType;

    .line 16
    new-instance v0, Lcom/miui/home/recents/anim/StateType;

    const-string v1, "STATE_APP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/miui/home/recents/anim/StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/recents/anim/StateType;->STATE_APP:Lcom/miui/home/recents/anim/StateType;

    .line 17
    new-instance v0, Lcom/miui/home/recents/anim/StateType;

    const-string v1, "STATE_HOME"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/miui/home/recents/anim/StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/recents/anim/StateType;->STATE_HOME:Lcom/miui/home/recents/anim/StateType;

    .line 18
    new-instance v0, Lcom/miui/home/recents/anim/StateType;

    const-string v1, "STATE_RECENTS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/miui/home/recents/anim/StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/recents/anim/StateType;->STATE_RECENTS:Lcom/miui/home/recents/anim/StateType;

    invoke-static {}, Lcom/miui/home/recents/anim/StateType;->$values()[Lcom/miui/home/recents/anim/StateType;

    move-result-object v0

    sput-object v0, Lcom/miui/home/recents/anim/StateType;->$VALUES:[Lcom/miui/home/recents/anim/StateType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/home/recents/anim/StateType;
    .locals 1

    const-class v0, Lcom/miui/home/recents/anim/StateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/home/recents/anim/StateType;

    return-object p0
.end method

.method public static values()[Lcom/miui/home/recents/anim/StateType;
    .locals 1

    sget-object v0, Lcom/miui/home/recents/anim/StateType;->$VALUES:[Lcom/miui/home/recents/anim/StateType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/home/recents/anim/StateType;

    return-object v0
.end method
