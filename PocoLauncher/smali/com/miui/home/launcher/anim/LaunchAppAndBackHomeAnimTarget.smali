.class public interface abstract Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;
.super Ljava/lang/Object;
.source "LaunchAppAndBackHomeAnimTarget.java"


# virtual methods
.method public endFolmeAnim()V
    .locals 0

    return-void
.end method

.method public getAnimTargetContainerView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAnimTargetHeight()I
    .locals 1

    .line 28
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getAnimTargetContainerView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getAnimTargetContainerView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getAnimTargetOriginalLocation()Landroid/graphics/Rect;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAnimTargetVisibility()I
    .locals 1

    .line 47
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getAnimTargetContainerView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getAnimTargetContainerView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x4

    return p0
.end method

.method public getAnimTargetWidth()I
    .locals 1

    .line 21
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getAnimTargetContainerView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 22
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getAnimTargetContainerView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getContentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getHeightDiffBetweenImageAndImageView()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getIconRadius()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getIconTransparentEdge()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getWidthDiffBetweenImageAndImageView()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isBigIcon()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCrop()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isLauncherView()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isTargetAttachedToWindow()Z
    .locals 1

    .line 92
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 93
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public needChangeIconAlpha()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onEnterHomeAnimFinish()V
    .locals 0

    return-void
.end method

.method public onEnterHomeAnimStart()V
    .locals 0

    return-void
.end method

.method public onLaunchAppAnimEnd()V
    .locals 2

    .line 130
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getAnimTargetContainerView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getAnimTargetContainerView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    const/4 v0, 0x0

    .line 133
    invoke-interface {p0, v0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->setAnimTargetVisibility(I)V

    .line 134
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-string v0, "onLaunchAppAnimEnd"

    const-string v1, "onLaunchAppAnimEnd "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onLaunchAppAnimStart()V
    .locals 2

    const-string v0, "LaunchAppAndBackHomeAnimTarget"

    const-string v1, "onLaunchAppAnimStart set target invisible! "

    .line 115
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    .line 116
    invoke-interface {p0, v0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->setAnimTargetVisibility(I)V

    return-void
.end method

.method public onLaunchAppWindowAlphaChange(F)V
    .locals 1

    .line 120
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getAnimTargetContainerView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getAnimTargetContainerView()Landroid/view/View;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setAnimTargetAlpha(F)V
    .locals 1

    .line 41
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getAnimTargetContainerView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getAnimTargetContainerView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setAnimTargetVisibility(I)V
    .locals 1

    .line 35
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getAnimTargetContainerView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getAnimTargetContainerView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showIcon()V
    .locals 2

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetShortcutIcon, icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LaunchAppAndBackHomeAnimTarget"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 143
    invoke-interface {p0, v0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->setAnimTargetVisibility(I)V

    return-void
.end method
