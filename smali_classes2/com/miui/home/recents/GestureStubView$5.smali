.class synthetic Lcom/miui/home/recents/GestureStubView$5;
.super Ljava/lang/Object;
.source "GestureStubView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/GestureStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$miui$home$recents$GestureBackArrowView$ReadyState:[I

.field static final synthetic $SwitchMap$com$miui$home$recents$GestureStubView$EventPosition:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 506
    invoke-static {}, Lcom/miui/home/recents/GestureStubView$EventPosition;->values()[Lcom/miui/home/recents/GestureStubView$EventPosition;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/miui/home/recents/GestureStubView$5;->$SwitchMap$com$miui$home$recents$GestureStubView$EventPosition:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/miui/home/recents/GestureStubView$EventPosition;->UPON_NOTCH:Lcom/miui/home/recents/GestureStubView$EventPosition;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/miui/home/recents/GestureStubView$5;->$SwitchMap$com$miui$home$recents$GestureStubView$EventPosition:[I

    sget-object v3, Lcom/miui/home/recents/GestureStubView$EventPosition;->BELOW_NOTCH:Lcom/miui/home/recents/GestureStubView$EventPosition;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/miui/home/recents/GestureStubView$5;->$SwitchMap$com$miui$home$recents$GestureStubView$EventPosition:[I

    sget-object v4, Lcom/miui/home/recents/GestureStubView$EventPosition;->ALIGN_NOTCH:Lcom/miui/home/recents/GestureStubView$EventPosition;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 265
    :catch_2
    invoke-static {}, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->values()[Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/miui/home/recents/GestureStubView$5;->$SwitchMap$com$miui$home$recents$GestureBackArrowView$ReadyState:[I

    :try_start_3
    sget-object v4, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/miui/home/recents/GestureStubView$5;->$SwitchMap$com$miui$home$recents$GestureBackArrowView$ReadyState:[I

    sget-object v3, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_RECENT:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/miui/home/recents/GestureStubView$5;->$SwitchMap$com$miui$home$recents$GestureBackArrowView$ReadyState:[I

    sget-object v1, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_NONE:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
