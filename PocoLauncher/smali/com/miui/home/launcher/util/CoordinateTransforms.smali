.class public Lcom/miui/home/launcher/util/CoordinateTransforms;
.super Ljava/lang/Object;
.source "CoordinateTransforms.java"


# direct methods
.method private static shouldSkipTransformToHome(II)Z
    .locals 1

    .line 173
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static transformCoordinate(IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    .line 232
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 233
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 234
    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    return-object p2
.end method

.method public static transformCoordinate(IILandroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0

    .line 178
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate2(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public static transformCoordinate2(IILandroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 4

    if-ne p0, p1, :cond_0

    return-object p2

    .line 185
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 186
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 188
    invoke-static {p1}, Lcom/miui/home/recents/util/RotationHelper;->isLandscapeRotation(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    .line 189
    :goto_0
    invoke-static {p1}, Lcom/miui/home/recents/util/RotationHelper;->isLandscapeRotation(I)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    sub-int/2addr p1, p0

    .line 192
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_3

    .line 193
    new-instance p0, Landroid/graphics/RectF;

    int-to-float p1, v2

    iget v1, p2, Landroid/graphics/RectF;->right:F

    sub-float v1, p1, v1

    int-to-float v0, v0

    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    sub-float v2, v0, v2

    iget v3, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v3

    iget p2, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p2

    invoke-direct {p0, v1, v2, p1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p0

    :cond_3
    const/4 p0, -0x1

    if-eq p1, p0, :cond_5

    const/4 p0, 0x3

    if-ne p1, p0, :cond_4

    goto :goto_2

    .line 197
    :cond_4
    new-instance p0, Landroid/graphics/RectF;

    iget p1, p2, Landroid/graphics/RectF;->top:F

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/RectF;->right:F

    sub-float v1, v0, v1

    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    iget p2, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p2

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p0

    .line 195
    :cond_5
    :goto_2
    new-instance p0, Landroid/graphics/RectF;

    int-to-float p1, v2

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    sub-float v0, p1, v0

    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v2

    iget p2, p2, Landroid/graphics/RectF;->right:F

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p0
.end method

.method public static transformCoordinateFromCurrentToHome(Lcom/miui/home/launcher/Launcher;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 2

    if-nez p0, :cond_0

    return-object p1

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result v0

    const-string/jumbo v1, "window"

    .line 146
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    .line 148
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    .line 149
    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate2(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0

    .line 151
    :cond_1
    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public static transformCoordinateOpenFromHome(Lcom/miui/home/launcher/Launcher;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 2

    .line 156
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinateOpenFromHome(Lcom/miui/home/launcher/Launcher;Landroid/graphics/RectF;I)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public static transformCoordinateOpenFromHome(Lcom/miui/home/launcher/Launcher;Landroid/graphics/RectF;I)Landroid/graphics/RectF;
    .locals 1

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    const-string/jumbo v0, "window"

    .line 163
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    .line 165
    invoke-static {p2, p0}, Lcom/miui/home/launcher/util/CoordinateTransforms;->shouldSkipTransformToHome(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    .line 166
    invoke-static {p2, p0, p1}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate2(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0

    .line 168
    :cond_1
    invoke-static {p2, p0, p1}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public static transformCoordinatePositionByOffset(Lcom/miui/home/launcher/Launcher;Landroid/graphics/RectF;FF)V
    .locals 4

    if-eqz p0, :cond_8

    .line 202
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 207
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-nez v0, :cond_4

    if-ne p0, v3, :cond_1

    .line 210
    invoke-virtual {p1, p2, p3}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_0

    :cond_1
    if-ne p0, v2, :cond_2

    .line 212
    invoke-virtual {p1, p3, p2}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_0

    :cond_2
    if-ne p0, v1, :cond_3

    neg-float p0, p2

    .line 214
    invoke-virtual {p1, p3, p0}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_0

    .line 216
    :cond_3
    invoke-virtual {p1, p2, p3}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_0

    :cond_4
    if-ne p0, v3, :cond_5

    .line 220
    invoke-virtual {p1, p2, p3}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_0

    :cond_5
    if-ne p0, v2, :cond_6

    neg-float p0, p3

    .line 222
    invoke-virtual {p1, p0, p2}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_0

    :cond_6
    if-ne p0, v1, :cond_7

    .line 224
    invoke-virtual {p1, p3, p2}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_0

    .line 226
    :cond_7
    invoke-virtual {p1, p2, p3}, Landroid/graphics/RectF;->offset(FF)V

    :goto_0
    return-void

    .line 203
    :cond_8
    :goto_1
    invoke-virtual {p1, p2, p3}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method private static transformLogicalToPhysicalCoordinates(IIILandroid/graphics/Matrix;)V
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    const/high16 p0, 0x43870000    # 270.0f

    .line 94
    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    neg-int p0, p2

    int-to-float p0, p0

    .line 95
    invoke-virtual {p3, p0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_0

    .line 98
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown rotation: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/high16 p0, 0x43340000    # 180.0f

    .line 90
    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    neg-int p0, p1

    int-to-float p0, p0

    neg-int p1, p2

    int-to-float p1, p1

    .line 91
    invoke-virtual {p3, p0, p1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_0

    :cond_2
    const/high16 p0, 0x42b40000    # 90.0f

    .line 86
    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    neg-int p0, p1

    int-to-float p0, p0

    .line 87
    invoke-virtual {p3, v1, p0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_0

    .line 83
    :cond_3
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    :goto_0
    return-void
.end method

.method private static transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    const/high16 p0, 0x42b40000    # 90.0f

    .line 64
    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    int-to-float p0, p2

    .line 65
    invoke-virtual {p3, p0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 68
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown rotation: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/high16 p0, 0x43340000    # 180.0f

    .line 60
    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    int-to-float p0, p1

    int-to-float p1, p2

    .line 61
    invoke-virtual {p3, p0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_2
    const/high16 p0, 0x43870000    # 270.0f

    .line 56
    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    int-to-float p0, p1

    .line 57
    invoke-virtual {p3, v1, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 53
    :cond_3
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    :goto_0
    return-void
.end method

.method public static transformRect(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 2

    if-nez p2, :cond_0

    .line 134
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 136
    :cond_0
    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 137
    invoke-virtual {p0, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 138
    iget p0, p2, Landroid/graphics/RectF;->left:F

    float-to-int p0, p0

    iget v0, p2, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    iget v1, p2, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    float-to-int p2, p2

    invoke-virtual {p1, p0, v0, v1, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public static transformToRotation(IIIILandroid/graphics/Matrix;)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    move v1, p2

    goto :goto_1

    :cond_2
    move v1, p3

    :goto_1
    if-eqz v0, :cond_3

    move p2, p3

    .line 119
    :cond_3
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    .line 120
    invoke-static {p0, p2, v1, p4}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformLogicalToPhysicalCoordinates(IIILandroid/graphics/Matrix;)V

    .line 121
    invoke-static {p1, p2, v1, p3}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V

    .line 122
    invoke-virtual {p4, p3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method
