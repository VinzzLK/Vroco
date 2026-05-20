.class public Lcom/miui/launcher/utils/ActivityUtilsCompat;
.super Ljava/lang/Object;
.source "ActivityUtilsCompat.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityUtilsCompat"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLaunchActivityOptions(Landroid/view/View;Landroid/graphics/Rect;)Landroid/app/ActivityOptions;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 61
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 62
    iget v2, p1, Landroid/graphics/Rect;->left:I

    aget v0, v1, v0

    sub-int/2addr v2, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x1

    aget v1, v1, v3

    sub-int/2addr v0, v1

    .line 63
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    .line 62
    invoke-static {p0, v2, v0, v1, p1}, Landroid/app/ActivityOptions;->makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0

    .line 65
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {p0, v0, v0, p1, v1}, Landroid/app/ActivityOptions;->makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method public static inHomeStack(Landroid/app/Activity;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;)Landroid/app/ActivityOptions;
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method public static makeFreeformActivityOptions(Landroid/content/Context;Ljava/lang/String;)Landroid/app/ActivityOptions;
    .locals 10

    :try_start_0
    const-string v0, "android.util.MiuiMultiWindowUtils"

    .line 72
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/app/ActivityOptions;

    const-string v2, "getActivityOptions"

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    const/4 v9, 0x3

    aput-object v5, v4, v9

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    aput-object p1, v3, v7

    .line 75
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object p1, v3, v8

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object p1, v3, v9

    .line 71
    invoke-static {v0, v1, v2, v4, v3}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityOptions;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ActivityUtilsCompat"

    const-string v1, "MiuiMultiWindowUtils getActivityOptions error"

    .line 77
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    .line 80
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p1

    .line 81
    invoke-static {p1}, Lmiui/app/ActivityOptionsExpose;->box(Ljava/lang/Object;)Lmiui/app/ActivityOptionsExpose;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lmiui/app/ActivityOptionsExpose;->setLaunchWindowingMode(I)V

    .line 82
    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->getFreeformRect(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    :cond_0
    return-object p1
.end method
