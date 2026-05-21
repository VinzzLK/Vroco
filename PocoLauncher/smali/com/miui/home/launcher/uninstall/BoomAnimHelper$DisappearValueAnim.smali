.class public Lcom/miui/home/launcher/uninstall/BoomAnimHelper$DisappearValueAnim;
.super Landroid/animation/ValueAnimator;
.source "BoomAnimHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/uninstall/BoomAnimHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisappearValueAnim"
.end annotation


# instance fields
.field private mBoomByFolmeAnimator:Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;


# direct methods
.method public static synthetic $r8$lambda$uethc0zagpyG-xuOkeJeX1rEB0g(Landroid/view/View;Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$DisappearValueAnim;->lambda$new$0(Landroid/view/View;Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;)V
    .locals 4

    .line 236
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 237
    iput-object p2, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$DisappearValueAnim;->mBoomByFolmeAnimator:Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;

    const-wide/16 v0, 0x64

    .line 238
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 239
    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 240
    sget-object v0, Lcom/miui/home/launcher/common/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 244
    instance-of v0, p1, Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    if-eqz v0, :cond_0

    .line 245
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    .line 246
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v1

    .line 247
    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setPivotY(F)V

    .line 248
    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setPivotX(F)V

    goto :goto_0

    .line 249
    :cond_0
    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v0, :cond_1

    .line 250
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ShortcutIcon;

    .line 251
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 252
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ShortcutIcon;->getIconBounds(Landroid/graphics/Rect;)V

    .line 253
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setPivotY(F)V

    .line 254
    iget v1, v1, Landroid/graphics/Rect;->right:I

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotX(F)V

    goto :goto_0

    .line 256
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 257
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 259
    :goto_0
    new-instance v0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$DisappearValueAnim$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$DisappearValueAnim$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;)V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 269
    new-instance p2, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$DisappearValueAnim$1;

    invoke-direct {p2, p0, p1}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$DisappearValueAnim$1;-><init>(Lcom/miui/home/launcher/uninstall/BoomAnimHelper$DisappearValueAnim;Landroid/view/View;)V

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static synthetic lambda$new$0(Landroid/view/View;Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 260
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3f666666    # 0.9f

    .line 261
    invoke-static {v0, v1, p2}, Lcom/miui/home/launcher/common/Utilities;->calcProgress(FFF)F

    move-result v1

    .line 262
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 263
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    const/4 v1, 0x0

    .line 264
    invoke-static {v0, v1, p2}, Lcom/miui/home/launcher/common/Utilities;->calcProgress(FFF)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const p0, 0x3f333333    # 0.7f

    cmpl-float p0, p2, p0

    if-ltz p0, :cond_0

    .line 265
    invoke-virtual {p1}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->isStart()Z

    move-result p0

    if-nez p0, :cond_0

    .line 266
    invoke-virtual {p1}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->start()V

    :cond_0
    return-void
.end method
