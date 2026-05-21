.class public final synthetic Lcom/miui/home/recents/gesture/NavStubGestureListener$WhenMappings;
.super Ljava/lang/Object;
.source "NavStubGestureListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/gesture/NavStubGestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/miui/home/recents/gesture/NavStubGestureListener$GestureType;->values()[Lcom/miui/home/recents/gesture/NavStubGestureListener$GestureType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/miui/home/recents/gesture/NavStubGestureListener$GestureType;->DOUBLE_TAP:Lcom/miui/home/recents/gesture/NavStubGestureListener$GestureType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/miui/home/recents/gesture/NavStubGestureListener$GestureType;->LONG_PRESS:Lcom/miui/home/recents/gesture/NavStubGestureListener$GestureType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sput-object v0, Lcom/miui/home/recents/gesture/NavStubGestureListener$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
