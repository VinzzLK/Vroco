.class public Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;
.super Ljava/lang/Object;
.source "HideAppsTransitionController.java"

# interfaces
.implements Lcom/miui/home/launcher/util/TouchController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController$HideAppsSimpleOnGestureListener;
    }
.end annotation


# instance fields
.field private mActivePointerId:I

.field private mAllAppsContainerView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

.field private mAllAppsViewPlaceHolder:Landroid/view/View;

.field private mEnterAnimtor:Landroid/animation/ValueAnimator;

.field private mExitAnimtor:Landroid/animation/ValueAnimator;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHideAppsContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mSearcherBarDivider:Landroid/view/View;

.field private mTouchSlop:I


# direct methods
.method public static synthetic $r8$lambda$6t0ijxma4GOxugjMCi_qywZM0QM(Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->lambda$new$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$B72oMABR4ExrFU7aCLZL8gUAxzc(Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->lambda$new$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mActivePointerId:I

    .line 60
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mEnterAnimtor:Landroid/animation/ValueAnimator;

    .line 61
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mExitAnimtor:Landroid/animation/ValueAnimator;

    .line 65
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 66
    invoke-static {v0}, Landroidx/core/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mTouchSlop:I

    .line 68
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController$HideAppsSimpleOnGestureListener;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController$HideAppsSimpleOnGestureListener;-><init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mGestureDetector:Landroid/view/GestureDetector;

    .line 70
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mEnterAnimtor:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 71
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mExitAnimtor:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 72
    new-instance p1, Lcom/miui/home/launcher/animate/MAMLInterpolater$QuintEaseOutInterpolater;

    invoke-direct {p1}, Lcom/miui/home/launcher/animate/MAMLInterpolater$QuintEaseOutInterpolater;-><init>()V

    .line 73
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mEnterAnimtor:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 74
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mExitAnimtor:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 76
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mEnterAnimtor:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 84
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mEnterAnimtor:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController$1;-><init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 104
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mExitAnimtor:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 114
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mExitAnimtor:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController$2;-><init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;)Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mHideAppsContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;)Lcom/miui/home/launcher/allapps/AllAppsContainerView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mAllAppsContainerView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    return-object p0
.end method

.method private getSearchBarView()Landroid/view/View;
    .locals 0

    .line 295
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 77
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 78
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mHideAppsContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 79
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mAllAppsViewPlaceHolder:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 80
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mSearcherBarDivider:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 81
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->getSearchBarView()Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 106
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 107
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mHideAppsContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 108
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mAllAppsViewPlaceHolder:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 109
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mSearcherBarDivider:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 110
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->getSearchBarView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 111
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mAllAppsContainerView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->getColorFilterContainerView()Lcom/miui/home/launcher/ColorFilterContainerView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    return-void
.end method


# virtual methods
.method public hideHideView(Z)V
    .locals 5

    .line 231
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mAllAppsContainerView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->isInHideView()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mExitAnimtor:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mEnterAnimtor:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mEnterAnimtor:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mAllAppsContainerView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->isColorFilterEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mAllAppsContainerView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->getCategoryContainer()Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->isInMainPage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mAllAppsContainerView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->changeSearchBarState(Z)V

    :cond_2
    const/4 v0, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_3

    .line 244
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mHideAppsContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 245
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mAllAppsViewPlaceHolder:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 246
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mSearcherBarDivider:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 247
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->getSearchBarView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 248
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mAllAppsContainerView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->setHideView(Z)V

    goto :goto_0

    .line 250
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mExitAnimtor:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget-object v4, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mHideAppsContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v0

    aput v2, v3, v1

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 251
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mExitAnimtor:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    .line 165
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mActivePointerId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 170
    :cond_1
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_1

    .line 174
    :cond_2
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 175
    iget v3, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mLastMotionX:F

    sub-float/2addr v2, v3

    .line 176
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 177
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    .line 178
    iget v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mInitialMotionY:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 180
    iget v4, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mTouchSlop:I

    int-to-float v5, v4

    cmpl-float v5, v3, v5

    if-lez v5, :cond_7

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v3, v5

    cmpl-float v0, v3, v0

    if-lez v0, :cond_7

    const/4 v0, 0x0

    cmpl-float v3, v2, v0

    .line 181
    iget v5, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mInitialMotionX:F

    int-to-float v4, v4

    if-lez v3, :cond_3

    add-float/2addr v5, v4

    goto :goto_0

    :cond_3
    sub-float/2addr v5, v4

    :goto_0
    iput v5, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mLastMotionX:F

    .line 182
    iput p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mLastMotionY:F

    .line 183
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mAllAppsContainerView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->isInHideView()Z

    move-result p1

    if-nez p1, :cond_4

    if-gtz v3, :cond_5

    :cond_4
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mAllAppsContainerView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    .line 184
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->isInHideView()Z

    move-result p0

    if-eqz p0, :cond_7

    cmpg-float p0, v2, v0

    if-gez p0, :cond_7

    :cond_5
    const/4 v1, 0x1

    goto :goto_1

    .line 158
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mInitialMotionX:F

    iput v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mLastMotionX:F

    .line 159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mInitialMotionY:F

    iput v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mLastMotionY:F

    .line 160
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mActivePointerId:I

    :cond_7
    :goto_1
    return v1
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setUpView(Lcom/miui/home/launcher/allapps/AllAppsContainerView;Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mAllAppsContainerView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    .line 142
    iput-object p2, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mHideAppsContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    .line 143
    iput-object p3, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mAllAppsViewPlaceHolder:Landroid/view/View;

    .line 144
    iput-object p4, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mSearcherBarDivider:Landroid/view/View;

    return-void
.end method

.method public showHideView(Z)V
    .locals 4

    .line 201
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mAllAppsContainerView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->isInHideView()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mEnterAnimtor:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mExitAnimtor:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mExitAnimtor:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mAllAppsContainerView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->isColorFilterEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mAllAppsContainerView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->changeSearchBarState(Z)V

    .line 213
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->setNoMoreShowGuideView()V

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 215
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mHideAppsContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 216
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mHideAppsContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 217
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mEnterAnimtor:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v1

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mHideAppsContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    aput v1, v2, v0

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 218
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mEnterAnimtor:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 220
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mAllAppsViewPlaceHolder:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mHideAppsContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 221
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mSearcherBarDivider:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mHideAppsContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 222
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->getSearchBarView()Landroid/view/View;

    move-result-object p1

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mHideAppsContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 223
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mHideAppsContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 224
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mHideAppsContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->onEnter()V

    .line 225
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->mAllAppsContainerView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->setHideView(Z)V

    :cond_4
    :goto_0
    return-void
.end method
