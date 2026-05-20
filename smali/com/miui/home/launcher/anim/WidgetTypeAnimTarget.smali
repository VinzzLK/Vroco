.class public interface abstract Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;
.super Ljava/lang/Object;
.source "WidgetTypeAnimTarget.java"

# interfaces
.implements Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;


# virtual methods
.method public getAnimTargetOriginalLocation()Landroid/graphics/Rect;
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 52
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getAnimTargetContainerView()Landroid/view/View;

    move-result-object v1

    invoke-interface {p0}, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;->getTargetRootView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, v3}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    .line 53
    new-instance v1, Landroid/graphics/Rect;

    aget v2, v0, v3

    float-to-int v2, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    float-to-int v5, v5

    aget v3, v0, v3

    .line 55
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getAnimTargetContainerView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v3, v6

    float-to-int v3, v3

    aget v0, v0, v4

    .line 56
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getAnimTargetContainerView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v0, p0

    float-to-int p0, v0

    invoke-direct {v1, v2, v5, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public getBindAppPackage()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getContentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v0, 0x0

    .line 83
    :try_start_0
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getAnimTargetWidth()I

    move-result v1

    .line 84
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getAnimTargetHeight()I

    move-result v2

    .line 85
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 86
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x1

    .line 87
    invoke-interface {p0, v3}, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;->setIsDrawPagToContent(Z)V

    .line 88
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getAnimTargetContainerView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    :try_start_1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 90
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getAnimTargetContainerView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 91
    invoke-interface {p0, v1}, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;->setIsDrawPagToContent(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v0, v3

    goto :goto_0

    :catch_1
    move-exception p0

    .line 93
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get widget content drawable fail : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "WidgetTypeAnimTarget"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v0

    :goto_1
    return-object v3
.end method

.method public getTargetRootView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isUseTransitionAnimation()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onEnterHomeAnimFinish()V
    .locals 2

    .line 34
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getAnimTargetContainerView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 35
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getAnimTargetContainerView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 37
    :cond_0
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getAnimTargetContainerView()Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setAnimTargetVisibility(I)V
    .locals 0

    if-nez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 62
    invoke-interface {p0, p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->setAnimTargetAlpha(F)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 64
    invoke-interface {p0, p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->setAnimTargetAlpha(F)V

    :goto_0
    return-void
.end method

.method public abstract setIsDrawPagToContent(Z)V
.end method
