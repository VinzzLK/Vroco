.class public Lcom/miui/home/recents/util/TransformEventUtils;
.super Ljava/lang/Object;
.source "TransformEventUtils.java"


# direct methods
.method private static createRotateMatrix(III)Landroid/graphics/Matrix;
    .locals 17

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object v0

    :cond_0
    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/16 v10, 0x9

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    if-ne v0, v14, :cond_1

    new-array v3, v10, [F

    aput v16, v3, v9

    aput v15, v3, v14

    aput v16, v3, v13

    aput v11, v3, v12

    aput v16, v3, v8

    int-to-float v0, v2

    aput v0, v3, v7

    aput v16, v3, v6

    aput v16, v3, v5

    aput v15, v3, v4

    goto :goto_0

    :cond_1
    if-ne v0, v13, :cond_2

    new-array v3, v10, [F

    aput v11, v3, v9

    aput v16, v3, v14

    int-to-float v0, v1

    aput v0, v3, v13

    aput v16, v3, v12

    aput v11, v3, v8

    int-to-float v0, v2

    aput v0, v3, v7

    aput v16, v3, v6

    aput v16, v3, v5

    aput v15, v3, v4

    goto :goto_0

    :cond_2
    if-ne v0, v12, :cond_3

    new-array v3, v10, [F

    aput v16, v3, v9

    aput v11, v3, v14

    int-to-float v0, v1

    aput v0, v3, v13

    aput v15, v3, v12

    aput v16, v3, v8

    aput v16, v3, v7

    aput v16, v3, v6

    aput v16, v3, v5

    aput v15, v3, v4

    .line 90
    :cond_3
    :goto_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 91
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->setValues([F)V

    return-object v0
.end method

.method private static tranformToHomerotation(II)I
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    if-eq p0, v2, :cond_3

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_1

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    :goto_0
    add-int/2addr v0, p1

    .line 122
    rem-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static transformEventIfNeed(Landroid/view/MotionEvent;Lcom/miui/home/launcher/Launcher;Z)V
    .locals 7

    .line 22
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportHorizontalInterrupt()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_6

    if-nez p0, :cond_1

    goto :goto_0

    .line 30
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getSurfaceRotation"

    const-class v4, Ljava/lang/Integer;

    const/4 v5, 0x0

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/Object;

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 31
    invoke-virtual {p1}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 32
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p1

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 34
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsContainer;->getRecentsRotation()I

    move-result p1

    add-int/2addr v1, p1

    :cond_2
    if-ne v0, v1, :cond_3

    return-void

    .line 39
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result p1

    .line 40
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result p2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 42
    :cond_4
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result p1

    .line 43
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result p2

    .line 50
    :cond_5
    invoke-static {v0, v1}, Lcom/miui/home/recents/util/TransformEventUtils;->tranformToHomerotation(II)I

    move-result v0

    invoke-static {v0, p1, p2}, Lcom/miui/home/recents/util/TransformEventUtils;->createRotateMatrix(III)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "TransformEventUtils"

    const-string p2, "transformEventIfNeed: getSurfaceRotation error!"

    .line 52
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_0
    return-void
.end method
