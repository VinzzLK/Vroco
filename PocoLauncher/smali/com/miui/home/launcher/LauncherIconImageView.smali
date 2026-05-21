.class public Lcom/miui/home/launcher/LauncherIconImageView;
.super Landroid/widget/ImageView;
.source "LauncherIconImageView.java"

# interfaces
.implements Lcom/miui/launcher/sosc/interfaces/SoscingView;


# instance fields
.field private mInvalidRunnable:Ljava/lang/Runnable;

.field private mInvalidateDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/LauncherIconImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    new-instance p1, Lcom/miui/home/launcher/LauncherIconImageView$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/LauncherIconImageView$1;-><init>(Lcom/miui/home/launcher/LauncherIconImageView;)V

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mInvalidRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/LauncherIconImageView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mInvalidateDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$101(Lcom/miui/home/launcher/LauncherIconImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 18
    invoke-super {p0, p1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected getHeightMeasureSpec(I)I
    .locals 0

    .line 59
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconHeight()I

    move-result p0

    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {p0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method protected getWidthMeasureSpec(I)I
    .locals 0

    .line 55
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result p0

    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {p0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 73
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 74
    invoke-super {p0, p1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 77
    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mInvalidateDrawable:Landroid/graphics/drawable/Drawable;

    .line 78
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mInvalidRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 79
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mInvalidRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "LauncherIconImageView"

    const-string v0, "invalidateDrawable error"

    .line 81
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 34
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 35
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 36
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 37
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public onInterceptSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherIconImageView;->getWidthMeasureSpec(I)I

    move-result p1

    .line 50
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/LauncherIconImageView;->getHeightMeasureSpec(I)I

    move-result p2

    .line 51
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void
.end method

.method public onSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 0

    .line 88
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    .line 109
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public setIconSize(II)V
    .locals 1

    .line 42
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p1

    if-eq p2, p1, :cond_1

    .line 43
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 101
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
