.class public Lcom/miui/home/recents/util/FloatingIconViewBlurUtils;
.super Ljava/lang/Object;
.source "FloatingIconViewBlurUtils.java"


# direct methods
.method public static clearFloatingIconViewBlurConfig(Landroid/view/View;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 49
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isWidgetBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 51
    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->clearWidgetOrMaMlBlur(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private static isSupportBlur(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)Z
    .locals 1

    .line 59
    instance-of v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;

    if-eqz v0, :cond_0

    .line 60
    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->supportWidgetBackgroundBlur(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isViewSupportBlur(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)Z
    .locals 1

    .line 66
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isWidgetBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/miui/home/recents/util/FloatingIconViewBlurUtils;->isSupportBlur(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static resetBlur(Landroid/view/View;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V
    .locals 1

    .line 20
    invoke-static {p1}, Lcom/miui/home/recents/util/FloatingIconViewBlurUtils;->isViewSupportBlur(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-static {p0, p1}, Lcom/miui/home/recents/util/FloatingIconViewBlurUtils;->setFloatingIconViewBlur(Landroid/view/View;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V

    goto :goto_0

    .line 23
    :cond_0
    invoke-static {p0}, Lcom/miui/home/recents/util/FloatingIconViewBlurUtils;->clearFloatingIconViewBlurConfig(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public static setFloatingIconViewBlur(Landroid/view/View;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 35
    :cond_0
    invoke-static {p1}, Lcom/miui/home/recents/util/FloatingIconViewBlurUtils;->isViewSupportBlur(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v0}, Lcom/miui/home/launcher/common/BlurUtilities;->setContainerWidgetBlur(Landroid/view/View;IZI)V

    .line 37
    invoke-static {p0, v1}, Lcom/miui/home/launcher/common/BlurUtilities;->setViewBlur(Landroid/view/View;I)V

    :cond_1
    return-void
.end method
