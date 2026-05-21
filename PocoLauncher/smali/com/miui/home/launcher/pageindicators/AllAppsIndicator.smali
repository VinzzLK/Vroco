.class public Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;
.super Lcom/miui/home/launcher/ScreenView$SeekBarIndicator;
.source "AllAppsIndicator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAllAppsIndicator:Landroid/widget/ImageView;

.field private mCaretDrawable:Lcom/miui/home/launcher/pageindicators/CaretDrawable;

.field private mCurrentAnimator:Landroid/animation/AnimatorSet;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mScreenIndicator:Landroid/view/View;

.field private mShowAllAppsArrowRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$e_IuXq4dSrg8dwbswxwoaEhVjFI(Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->showAllAppsArrow()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 51
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView$SeekBarIndicator;-><init>(Landroid/content/Context;)V

    .line 107
    new-instance v0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;)V

    iput-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mShowAllAppsArrowRunnable:Ljava/lang/Runnable;

    .line 52
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 53
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->getScreenIndicator()Lcom/miui/home/launcher/ScreenView;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mScreenIndicator:Landroid/view/View;

    .line 54
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mAllAppsIndicator:Landroid/widget/ImageView;

    .line 55
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 56
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 57
    iget-object v1, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mAllAppsIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    new-instance v0, Lcom/miui/home/launcher/pageindicators/CaretDrawable;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/pageindicators/CaretDrawable;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->setCaretDrawable(Lcom/miui/home/launcher/pageindicators/CaretDrawable;)V

    .line 59
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mAllAppsIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->getCaretDrawable()Lcom/miui/home/launcher/pageindicators/CaretDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mAllAppsIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mAllAppsIndicator:Landroid/widget/ImageView;

    const v1, 0x7f10001e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mAllAppsIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    const/4 v0, 0x1

    .line 63
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    const v0, 0x7f10044f

    .line 64
    invoke-static {p0, v0, p1}, Lcom/miui/home/launcher/common/Utilities;->setRoleDescription(Landroid/view/View;ILandroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;)Landroid/widget/ImageView;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mAllAppsIndicator:Landroid/widget/ImageView;

    return-object p0
.end method

.method private hideAllAppsArrow()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mScreenIndicator:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 145
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mAllAppsIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 146
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mAllAppsIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 147
    iget-object p0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mAllAppsIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    return-void
.end method

.method private isScreenViewScrolling()Z
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 171
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView;->isScrollingOrSlidingState()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getMinusOneScreenView()Lcom/miui/home/launcher/MinusOneScreenView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 175
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getMinusOneScreenView()Lcom/miui/home/launcher/MinusOneScreenView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isScrollingOrSlidingState()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private showAllAppsArrow()V
    .locals 8

    .line 112
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mScreenIndicator:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mAllAppsIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    goto :goto_0

    .line 119
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    .line 120
    iget-object v2, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mScreenIndicator:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v5, v4, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v6, v5, v7

    .line 121
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mAllAppsIndicator:Landroid/widget/ImageView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v4, [F

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v5, v7

    .line 122
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v4

    .line 120
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 123
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 124
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator$1;-><init>(Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 136
    iget-object p0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getCaretDrawable()Lcom/miui/home/launcher/pageindicators/CaretDrawable;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCaretDrawable:Lcom/miui/home/launcher/pageindicators/CaretDrawable;

    return-object p0
.end method

.method public isAssistantPointExist()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 46
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 47
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 155
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 156
    iget-object p0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->showAppView()V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 40
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 193
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 194
    const-class p0, Landroid/widget/SeekBar;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6

    .line 199
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 200
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 201
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 204
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    .line 205
    const-class v1, Landroid/widget/SeekBar;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 206
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f10007e

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 207
    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result p0

    if-le p0, v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 208
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 209
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 0

    .line 69
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCaretDrawable:Lcom/miui/home/launcher/pageindicators/CaretDrawable;

    if-eqz v0, :cond_1

    .line 181
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f06001c

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f06001b

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 181
    :goto_0
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->setPaintColor(I)V

    :cond_1
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 5

    .line 214
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    .line 217
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_5

    .line 218
    invoke-virtual {p2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 221
    :cond_1
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v2

    const/16 v3, 0x1000

    const/16 v4, 0x80

    if-eq p1, v3, :cond_3

    const/16 p2, 0x2000

    if-eq p1, p2, :cond_2

    goto :goto_0

    .line 239
    :cond_2
    invoke-virtual {v2}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result p1

    invoke-virtual {v2}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result p2

    invoke-virtual {v2}, Lcom/miui/home/launcher/ScreenView;->getVisibleRange()I

    move-result v3

    sub-int/2addr p2, v3

    if-ge p1, p2, :cond_5

    .line 240
    invoke-virtual {v2}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result p1

    invoke-virtual {v2}, Lcom/miui/home/launcher/ScreenView;->getVisibleRange()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/ScreenView;->setCurrentScreen(I)V

    .line 241
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    return v0

    .line 224
    :cond_3
    invoke-virtual {v2}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result p1

    if-lez p1, :cond_4

    .line 225
    invoke-virtual {v2}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result p1

    invoke-virtual {v2}, Lcom/miui/home/launcher/ScreenView;->getVisibleRange()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/ScreenView;->setCurrentScreen(I)V

    .line 226
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    return v0

    .line 230
    :cond_4
    invoke-virtual {v2}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->isAssistantPointExist()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 231
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getAssistantOverlayController()Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-static {p2}, Lcom/miui/home/launcher/DeviceConfig;->supportAssistant(Lcom/miui/home/launcher/Launcher;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 232
    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(I)I

    .line 233
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getAssistantOverlayController()Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->showOverlay(Z)V

    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public refreshAllAppsArrow()V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->refreshAllAppsArrow(Z)V

    return-void
.end method

.method public refreshAllAppsArrow(Z)V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez v0, :cond_0

    .line 97
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mShowAllAppsArrowRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 100
    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->shouldHide()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    invoke-direct {p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->hideAllAppsArrow()V

    goto :goto_1

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mShowAllAppsArrowRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_2
    const-wide/16 v1, 0x190

    :goto_0
    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method

.method public setCaretDrawable(Lcom/miui/home/launcher/pageindicators/CaretDrawable;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCaretDrawable:Lcom/miui/home/launcher/pageindicators/CaretDrawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 78
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 80
    :cond_0
    iput-object p1, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCaretDrawable:Lcom/miui/home/launcher/pageindicators/CaretDrawable;

    if-eqz p1, :cond_1

    .line 82
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    return-void
.end method

.method public shouldHide()Z
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 162
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 163
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 164
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderOpened()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 165
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isMultiProcessMinusScreenShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    invoke-direct {p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->isScreenViewScrolling()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 88
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->getCaretDrawable()Lcom/miui/home/launcher/pageindicators/CaretDrawable;

    move-result-object p0

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
