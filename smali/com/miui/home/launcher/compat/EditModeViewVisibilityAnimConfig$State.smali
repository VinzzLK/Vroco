.class public final enum Lcom/miui/home/launcher/compat/EditModeViewVisibilityAnimConfig$State;
.super Ljava/lang/Enum;
.source "EditModeViewVisibilityAnimConfig.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/home/launcher/compat/EditModeViewVisibilityAnimConfig$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/home/launcher/compat/EditModeViewVisibilityAnimConfig$State;

.field public static final enum HIDE_WITHOUT_ANIM:Lcom/miui/home/launcher/compat/EditModeViewVisibilityAnimConfig$State;

.field public static final enum HIDE_WITH_ANIM:Lcom/miui/home/launcher/compat/EditModeViewVisibilityAnimConfig$State;

.field public static final enum SHOW_WITH_ANIM:Lcom/miui/home/launcher/compat/EditModeViewVisibilityAnimConfig$State;


# instance fields
.field private final stateCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 10
    new-instance v0, Lcom/miui/home/launcher/compat/EditModeViewVisibilityAnimConfig$State;

    const-string v1, "SHOW_WITH_ANIM"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/home/launcher/compat/EditModeViewVisibilityAnimConfig$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/home/launcher/compat/EditModeViewVisibilityAnimConfig$State;->SHOW_WITH_ANIM:Lcom/miui/home/launcher/compat/EditModeViewVisibilityAnimConfig$State;

    .line 11
    new-instance v1, Lcom/miui/home/launcher/compat/EditModeViewVisibilityAnimConfig$State;

    const-string v4, "HIDE_WITH_ANIM"

    const/4 v5, 0x3

    invoke-direct {v1, v4, v3, v5}, Lcom/miui/home/launcher/compat/EditModeViewVisibilityAnimConfig$State;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/miui/home/launcher/compat/EditModeViewVisibilityAnimConfig$State;->HIDE_WITH_ANIM:Lcom/miui/home/launcher/compat/EditModeViewVisibilityAnimConfig$State;

    .line 12
    new-instance v4, Lcom/miui/home/launcher/compat/EditModeViewVisibilityAnimConfig$State;

    const-string v6, "HIDE_WITHOUT_ANIM"

    const/4 v7, 0x2

    const/4 v8, 0x4

    invoke-direct {v4, v6, v7, v8}, Lcom/miui/home/launcher/compat/EditModeViewVisibilityAnimConfig$State;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/miui/home/launcher/compat/EditModeViewVisibilityAnimConfig$State;->HIDE_WITHOUT_ANIM:Lcom/miui/home/launcher/compat/EditModeViewVisibilityAnimConfig$State;

    new-array v5, v5, [Lcom/miui/home/launcher/compat/EditModeViewVisibilityAnimConfig$State;

    aput-object v0, v5, v2

    aput-object v1, v5, v3

    aput-object v4, v5, v7

    .line 9
    sput-object v5, Lcom/miui/home/launcher/compat/EditModeViewVisibilityAnimConfig$State;->$VALUES:[Lcom/miui/home/launcher/compat/EditModeViewVisibilityAnimConfig$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/miui/home/launcher/compat/EditModeViewVisibilityAnimConfig$State;->stateCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/home/launcher/compat/EditModeViewVisibilityAnimConfig$State;
    .locals 1

    .line 9
    const-class v0, Lcom/miui/home/launcher/compat/EditModeViewVisibilityAnimConfig$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/compat/EditModeViewVisibilityAnimConfig$State;

    return-object p0
.end method

.method public static values()[Lcom/miui/home/launcher/compat/EditModeViewVisibilityAnimConfig$State;
    .locals 1

    .line 9
    sget-object v0, Lcom/miui/home/launcher/compat/EditModeViewVisibilityAnimConfig$State;->$VALUES:[Lcom/miui/home/launcher/compat/EditModeViewVisibilityAnimConfig$State;

    invoke-virtual {v0}, [Lcom/miui/home/launcher/compat/EditModeViewVisibilityAnimConfig$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/home/launcher/compat/EditModeViewVisibilityAnimConfig$State;

    return-object v0
.end method


# virtual methods
.method public isShow()Z
    .locals 1

    .line 21
    iget p0, p0, Lcom/miui/home/launcher/compat/EditModeViewVisibilityAnimConfig$State;->stateCode:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWithAnim()Z
    .locals 2

    .line 25
    iget p0, p0, Lcom/miui/home/launcher/compat/EditModeViewVisibilityAnimConfig$State;->stateCode:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method
