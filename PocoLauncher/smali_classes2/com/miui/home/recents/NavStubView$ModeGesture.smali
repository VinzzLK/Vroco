.class final enum Lcom/miui/home/recents/NavStubView$ModeGesture;
.super Ljava/lang/Enum;
.source "NavStubView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/NavStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ModeGesture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/home/recents/NavStubView$ModeGesture;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/home/recents/NavStubView$ModeGesture;

.field public static final enum APP_MODE_GESTURE:Lcom/miui/home/recents/NavStubView$ModeGesture;

.field public static final enum HALF_APP_MODE_GESTURE:Lcom/miui/home/recents/NavStubView$ModeGesture;

.field public static final enum HOME_MODE_GESTURE:Lcom/miui/home/recents/NavStubView$ModeGesture;

.field public static final enum IDLE:Lcom/miui/home/recents/NavStubView$ModeGesture;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 401
    new-instance v0, Lcom/miui/home/recents/NavStubView$ModeGesture;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/home/recents/NavStubView$ModeGesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/recents/NavStubView$ModeGesture;->IDLE:Lcom/miui/home/recents/NavStubView$ModeGesture;

    .line 402
    new-instance v1, Lcom/miui/home/recents/NavStubView$ModeGesture;

    const-string v3, "APP_MODE_GESTURE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/miui/home/recents/NavStubView$ModeGesture;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/home/recents/NavStubView$ModeGesture;->APP_MODE_GESTURE:Lcom/miui/home/recents/NavStubView$ModeGesture;

    .line 403
    new-instance v3, Lcom/miui/home/recents/NavStubView$ModeGesture;

    const-string v5, "HALF_APP_MODE_GESTURE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/miui/home/recents/NavStubView$ModeGesture;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/miui/home/recents/NavStubView$ModeGesture;->HALF_APP_MODE_GESTURE:Lcom/miui/home/recents/NavStubView$ModeGesture;

    .line 404
    new-instance v5, Lcom/miui/home/recents/NavStubView$ModeGesture;

    const-string v7, "HOME_MODE_GESTURE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/miui/home/recents/NavStubView$ModeGesture;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/miui/home/recents/NavStubView$ModeGesture;->HOME_MODE_GESTURE:Lcom/miui/home/recents/NavStubView$ModeGesture;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/miui/home/recents/NavStubView$ModeGesture;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 400
    sput-object v7, Lcom/miui/home/recents/NavStubView$ModeGesture;->$VALUES:[Lcom/miui/home/recents/NavStubView$ModeGesture;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 400
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/home/recents/NavStubView$ModeGesture;
    .locals 1

    .line 400
    const-class v0, Lcom/miui/home/recents/NavStubView$ModeGesture;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/home/recents/NavStubView$ModeGesture;

    return-object p0
.end method

.method public static values()[Lcom/miui/home/recents/NavStubView$ModeGesture;
    .locals 1

    .line 400
    sget-object v0, Lcom/miui/home/recents/NavStubView$ModeGesture;->$VALUES:[Lcom/miui/home/recents/NavStubView$ModeGesture;

    invoke-virtual {v0}, [Lcom/miui/home/recents/NavStubView$ModeGesture;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/home/recents/NavStubView$ModeGesture;

    return-object v0
.end method
