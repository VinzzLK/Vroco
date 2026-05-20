.class public Lcom/android/systemui/fsgesture/GestureTitleViewUtil;
.super Ljava/lang/Object;
.source "GestureTitleViewUtil.java"


# direct methods
.method public static setMargin(Landroid/content/Context;Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;)V
    .locals 5

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/home/gesturedemo/R$dimen;->gesture_title_view_margin_left_right:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 17
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 18
    invoke-static {}, Lcom/android/systemui/navigationbar/Utils;->isNotch()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 19
    invoke-static {}, Lcom/android/systemui/navigationbar/Utils;->getStatusBarHeight()I

    move-result v2

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v4, Lcom/miui/home/gesturedemo/R$dimen;->gesture_title_view_notch_top:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v2, p0

    .line 21
    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/miui/home/gesturedemo/R$dimen;->gesture_title_view_margin_top:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 24
    invoke-virtual {v1, v0, p0, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 26
    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
