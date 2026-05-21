.class public Landroid/window/BackMotionEventProvider;
.super Ljava/lang/Object;
.source "BackMotionEventProvider.java"


# static fields
.field private static sBackMotionEventClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "android.window.BackMotionEvent"

    .line 14
    invoke-static {v0}, Lcom/miui/launcher/utils/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroid/window/BackMotionEventProvider;->sBackMotionEventClass:Ljava/lang/Class;

    return-void
.end method

.method public static getBackMotionEventClass()Ljava/lang/Class;
    .locals 1

    .line 18
    sget-object v0, Landroid/window/BackMotionEventProvider;->sBackMotionEventClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static getInstance(FFFFFILjava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 29
    sget-boolean v0, Lcom/miui/launcher/utils/SdkVersion;->ATLEAST_V:Z

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x7

    if-eqz v0, :cond_0

    .line 30
    sget-object v0, Landroid/window/BackMotionEventProvider;->sBackMotionEventClass:Ljava/lang/Class;

    const/16 v9, 0x8

    new-array v10, v9, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v7

    aput-object v11, v10, v6

    aput-object v11, v10, v5

    aput-object v11, v10, v4

    aput-object v11, v10, v3

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v2

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v1

    const-class v11, Landroid/view/RemoteAnimationTarget;

    aput-object v11, v10, v8

    new-array v9, v9, [Ljava/lang/Object;

    .line 32
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v7

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v9, v6

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v9, v5

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v9, v4

    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v9, v3

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v9, v2

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v1

    aput-object p6, v9, v8

    .line 30
    invoke-static {v0, v10, v9}, Lcom/miui/launcher/utils/ReflectUtils;->createNewInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 34
    :cond_0
    sget-object v0, Landroid/window/BackMotionEventProvider;->sBackMotionEventClass:Ljava/lang/Class;

    new-array v9, v8, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v7

    aput-object v10, v9, v6

    aput-object v10, v9, v5

    aput-object v10, v9, v4

    aput-object v10, v9, v3

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v2

    const-class v10, Landroid/view/RemoteAnimationTarget;

    aput-object v10, v9, v1

    new-array v8, v8, [Ljava/lang/Object;

    .line 36
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v7

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v8, v6

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v8, v5

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v8, v4

    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v8, v3

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v2

    aput-object p6, v8, v1

    .line 34
    invoke-static {v0, v9, v8}, Lcom/miui/launcher/utils/ReflectUtils;->createNewInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
