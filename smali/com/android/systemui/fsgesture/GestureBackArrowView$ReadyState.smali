.class final enum Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;
.super Ljava/lang/Enum;
.source "GestureBackArrowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fsgesture/GestureBackArrowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ReadyState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

.field public static final enum READY_STATE_BACK:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

.field public static final enum READY_STATE_NONE:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

.field public static final enum READY_STATE_RECENT:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 80
    new-instance v0, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    const-string v1, "READY_STATE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_NONE:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    new-instance v1, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    const-string v3, "READY_STATE_BACK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    new-instance v3, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    const-string v5, "READY_STATE_RECENT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_RECENT:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 79
    sput-object v5, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->$VALUES:[Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;
    .locals 1

    .line 79
    const-class v0, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;
    .locals 1

    .line 79
    sget-object v0, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->$VALUES:[Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    invoke-virtual {v0}, [Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    return-object v0
.end method
