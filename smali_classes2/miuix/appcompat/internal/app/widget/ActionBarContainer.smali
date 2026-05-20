.class public Lmiuix/appcompat/internal/app/widget/ActionBarContainer;
.super Landroid/widget/FrameLayout;
.source "ActionBarContainer.java"

# interfaces
.implements Lmiuix/view/BlurableWidget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;
    }
.end annotation


# instance fields
.field private mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

.field private mActionBarHeightGap:I

.field private mActionBarHeightTotalGap:I

.field mActionBarTransitionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/appcompat/app/ActionBarTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

.field private mActionModeMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundArray:[Landroid/graphics/drawable/Drawable;

.field private final mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

.field protected mCoordinateListener:Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;

.field private mCoordinatedOffsetYInSearchModeAnimation:I

.field private mCurBarExpandState:I

.field private mCurBarResizable:Z

.field private mCurContextBarExpandState:I

.field private mCurContextBarResizable:Z

.field private mCurrentShowAnim:Landroid/animation/Animator;

.field private mCustomBackground:Z

.field private mCustomViewAutoFitSystemWindow:Z

.field private mDrawBackground:Z

.field private mHeightMaxMeasureSpec:I

.field private mHideListener:Landroid/animation/AnimatorListenerAdapter;

.field private mInternalApplyBgBlur:Z

.field private mInternalApplySpiltBgBlur:Z

.field private mIsInActionMode:Z

.field private mIsInWideMode:Z

.field private mIsMiuixFloating:Z

.field private mIsSplit:Z

.field private mIsStacked:Z

.field private mIsTransitioning:Z

.field private mLastActionBarResizingProcess:F

.field private mLastToState:I

.field private mNowShowing:Z

.field private mOverlayMode:Z

.field private mPendingInsets:Landroid/graphics/Rect;

.field private mRequestAnimation:Z

.field private mResidentActionMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

.field private mShowListener:Landroid/animation/AnimatorListenerAdapter;

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mStackedBackground:Landroid/graphics/drawable/Drawable;

.field private mTabContainer:Landroid/view/View;

.field private mTabContainerPaddingTop:I

.field private mUserApplyBgBlur:Ljava/lang/Boolean;

.field private mUserApplySplitActionBarBgBlur:Ljava/lang/Boolean;

.field private mUserBgViewApplyBlur:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 155
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mNowShowing:Z

    const/4 v1, 0x0

    .line 98
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mInternalApplyBgBlur:Z

    .line 99
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mInternalApplySpiltBgBlur:Z

    const/4 v2, 0x0

    .line 100
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplyBgBlur:Ljava/lang/Boolean;

    .line 101
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplySplitActionBarBgBlur:Ljava/lang/Boolean;

    .line 102
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserBgViewApplyBlur:Ljava/lang/Boolean;

    .line 103
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mResidentActionMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 104
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionModeMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 120
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCustomBackground:Z

    const/4 v3, -0x1

    .line 127
    iput v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mHeightMaxMeasureSpec:I

    const/4 v3, 0x0

    .line 129
    iput v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mLastActionBarResizingProcess:F

    .line 130
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mLastToState:I

    .line 131
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarHeightTotalGap:I

    .line 132
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarHeightGap:I

    .line 133
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCoordinateListener:Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;

    .line 134
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarTransitionListeners:Ljava/util/List;

    .line 136
    new-instance v3, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$1;

    invoke-direct {v3, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$1;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mHideListener:Landroid/animation/AnimatorListenerAdapter;

    .line 144
    new-instance v3, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$2;

    invoke-direct {v3, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$2;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mShowListener:Landroid/animation/AnimatorListenerAdapter;

    .line 156
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 157
    sget-object v2, Lmiuix/appcompat/R$styleable;->ActionBar:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 158
    sget v2, Lmiuix/appcompat/R$styleable;->ActionBar_android_background:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v3, v1

    .line 159
    sget v2, Lmiuix/appcompat/R$styleable;->ActionBar_actionBarEmbededTabsBackground:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v3, v0

    sget v2, Lmiuix/appcompat/R$styleable;->ActionBar_actionBarStackedBackground:I

    .line 160
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v3, v4

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackgroundArray:[Landroid/graphics/drawable/Drawable;

    .line 164
    sget v2, Lmiuix/appcompat/R$styleable;->ActionBar_customViewAutoFitSystemWindow:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCustomViewAutoFitSystemWindow:Z

    .line 166
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getId()I

    move-result v2

    sget v3, Lmiuix/appcompat/R$id;->split_action_bar:I

    if-ne v2, v3, :cond_0

    .line 167
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    .line 168
    sget v2, Lmiuix/appcompat/R$styleable;->ActionBar_android_backgroundSplit:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 170
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 175
    iget-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-nez p2, :cond_1

    .line 176
    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 181
    :cond_1
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->resizeSplitMaxHeight()V

    .line 183
    iget-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_3

    :goto_0
    move p2, v0

    goto :goto_1

    .line 184
    :cond_2
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_3

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    move p2, v1

    .line 183
    :goto_1
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 185
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mDrawBackground:Z

    .line 186
    new-instance p2, Lmiuix/view/MiuiBlurUiHelper;

    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V

    invoke-direct {p2, p1, p0, v1, v0}, Lmiuix/view/MiuiBlurUiHelper;-><init>(Landroid/content/Context;Landroid/view/View;ZLmiuix/view/MiuiBlurUiHelper$BlurStateCallback;)V

    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    return-void
.end method

.method static synthetic access$002(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 54
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$100(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 54
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    return p0
.end method

.method static synthetic access$300(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mInternalApplySpiltBgBlur:Z

    return p0
.end method

.method static synthetic access$302(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mInternalApplySpiltBgBlur:Z

    return p1
.end method

.method static synthetic access$400(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
    .locals 0

    .line 54
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mResidentActionMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    return-object p0
.end method

.method static synthetic access$500(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Ljava/lang/Boolean;
    .locals 0

    .line 54
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplySplitActionBarBgBlur:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$602(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mDrawBackground:Z

    return p1
.end method

.method static synthetic access$700(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Lmiuix/appcompat/internal/app/widget/ActionBarView;
    .locals 0

    .line 54
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    return-object p0
.end method

.method static synthetic access$800(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Lmiuix/appcompat/internal/app/widget/ActionBarContextView;
    .locals 0

    .line 54
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    return-object p0
.end method

.method private applyInsetsTopByMargin(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 722
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 724
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 725
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 726
    :goto_0
    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 727
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private getActionMenuViewCollapseHeight(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)I
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    .line 471
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 472
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getCollapsedHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 474
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getCollapsedHeight()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    :cond_0
    return p0
.end method

.method private getActionMenuViewInsetHeight(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)I
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    .line 507
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 508
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getCollapsedHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 511
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getCollapsedHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result p1

    sub-float/2addr v0, p1

    float-to-int p1, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    :cond_0
    return p0
.end method

.method private onMeasureSplit(II)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall",
            "WrongConstant"
        }
    .end annotation

    .line 794
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 795
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 800
    :cond_0
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mHeightMaxMeasureSpec:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    move p2, v0

    .line 803
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 805
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    move v0, p2

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 808
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    .line 811
    invoke-virtual {p0, p2, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    goto :goto_1

    .line 812
    :cond_3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mResidentActionMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz p1, :cond_4

    .line 814
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->hasOnlyCustomView()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mResidentActionMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    instance-of p2, p1, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    if-eqz p2, :cond_4

    check-cast p1, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 816
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->isSuspend()Z

    move-result p1

    if-nez p1, :cond_4

    .line 818
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    :cond_4
    :goto_1
    return-void
.end method

.method private resizeSplitMaxHeight()V
    .locals 3

    .line 935
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_0

    .line 936
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$attr;->actionBarSplitMaxPercentageHeight:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 937
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 938
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmiuix/core/util/WindowUtils;->getWindowHeight(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    .line 939
    invoke-virtual {v0, v1, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v0

    float-to-int v0, v0

    const/high16 v1, -0x80000000

    .line 940
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mHeightMaxMeasureSpec:I

    :cond_0
    return-void
.end method

.method private selectDrawable()V
    .locals 3

    .line 1046
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCustomBackground:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackgroundArray:[Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    array-length v1, v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1053
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isTightTitleWithEmbeddedTabs()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 1055
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_1

    and-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_1

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x2

    .line 1062
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackgroundArray:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v0, v1

    if-eqz v2, :cond_3

    .line 1063
    aget-object v0, v0, v1

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public applyBlur(Z)V
    .locals 1

    .line 380
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 383
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 384
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmiuix/view/MiuiBlurUiHelper;->applyBlur(Z)V

    goto :goto_0

    .line 386
    :cond_1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmiuix/view/MiuiBlurUiHelper;->applyBlur(Z)V

    :goto_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1032
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1034
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mRequestAnimation:Z

    if-eqz p1, :cond_0

    .line 1035
    new-instance p1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$4;

    invoke-direct {p1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$4;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 1041
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mRequestAnimation:Z

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 618
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 619
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 622
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 623
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 625
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 626
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    return-void
.end method

.method public finishActionMode()V
    .locals 1

    const/4 v0, 0x0

    .line 955
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsInActionMode:Z

    return-void
.end method

.method getActionBarCoordinateListener()Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;
    .locals 0

    .line 343
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCoordinateListener:Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;

    return-object p0
.end method

.method getCollapsedHeight()I
    .locals 3

    .line 445
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 446
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 447
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 449
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 450
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getCollapsedHeight()I

    move-result p0

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_1
    add-int/2addr p0, v0

    return p0

    .line 452
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_2

    .line 453
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 454
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getCollapsedHeight()I

    move-result p0

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    :cond_2
    return v1
.end method

.method getExpandedHeight()I
    .locals 3

    .line 480
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 482
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 484
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 485
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getExpandedHeight()I

    move-result p0

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_1
    add-int/2addr p0, v0

    return p0

    .line 487
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_2

    .line 488
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 489
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandedHeight()I

    move-result p0

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    :cond_2
    return v1
.end method

.method getInsetHeight()I
    .locals 2

    .line 496
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 500
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionModeMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getActionMenuViewInsetHeight(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 501
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mResidentActionMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-direct {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getActionMenuViewInsetHeight(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getPendingInsets()Landroid/graphics/Rect;
    .locals 0

    .line 335
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getPrimaryBackground()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 541
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method getSplitCollapsedHeight()I
    .locals 2

    .line 460
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 464
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionModeMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getActionMenuViewCollapseHeight(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 465
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mResidentActionMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-direct {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getActionMenuViewCollapseHeight(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getTabContainer()Landroid/view/View;
    .locals 0

    .line 665
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    return-object p0
.end method

.method public isApplyBlur()Z
    .locals 0

    .line 392
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    invoke-virtual {p0}, Lmiuix/view/MiuiBlurUiHelper;->isApplyBlur()Z

    move-result p0

    return p0
.end method

.method public isEnableBlur()Z
    .locals 0

    .line 375
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    invoke-virtual {p0}, Lmiuix/view/MiuiBlurUiHelper;->isEnableBlur()Z

    move-result p0

    return p0
.end method

.method public isSupportBlur()Z
    .locals 0

    .line 365
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    invoke-virtual {p0}, Lmiuix/view/MiuiBlurUiHelper;->isSupportBlur()Z

    move-result p0

    return p0
.end method

.method onActionModeMenuViewAdded(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)V
    .locals 1

    .line 1160
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionModeMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz p1, :cond_2

    .line 1161
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1162
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplySplitActionBarBgBlur:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1163
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isEnableBlur()Z

    move-result p0

    :goto_0
    if-eqz p0, :cond_1

    .line 1164
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p0

    if-lez p0, :cond_1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-interface {p1, p0}, Lmiuix/view/BlurableWidget;->applyBlur(Z)V

    :cond_2
    return-void
.end method

.method onActionModeMenuViewRemoved(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)V
    .locals 1

    .line 1169
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionModeMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 1170
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionModeMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 924
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 925
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->resizeSplitMaxHeight()V

    .line 926
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    if-eqz p1, :cond_0

    .line 927
    invoke-virtual {p1}, Lmiuix/view/MiuiBlurUiHelper;->onConfigChanged()V

    .line 928
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    invoke-virtual {p1}, Lmiuix/view/MiuiBlurUiHelper;->isEnableBlur()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserBgViewApplyBlur:Ljava/lang/Boolean;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 929
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->updateBackgroundInternal(Z)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 917
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 918
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setActionBarCoordinateListener(Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;)V

    .line 919
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarTransitionListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 690
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 694
    :cond_0
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 701
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mDrawBackground:Z

    if-eqz p0, :cond_2

    .line 702
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .line 235
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 236
    sget v0, Lmiuix/appcompat/R$id;->action_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 237
    sget v0, Lmiuix/appcompat/R$id;->action_context_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 238
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_0

    .line 239
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarTransitionListeners:Ljava/util/List;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->bindActionBarTransitionListeners(Ljava/util/List;)V

    .line 240
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurBarExpandState:I

    .line 241
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isResizable()Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurBarResizable:Z

    .line 243
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    .line 244
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getExpandState()I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurContextBarExpandState:I

    .line 245
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->isResizable()Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurContextBarResizable:Z

    .line 246
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setActionBarView(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    :cond_1
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 657
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 645
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsTransitioning:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

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

.method public onLayout(ZIIII)V
    .locals 6

    .line 824
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 826
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    .line 827
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p5

    iget p5, p5, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p3, p5

    float-to-int p3, p3

    .line 828
    iget-object p5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p5, :cond_3

    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result p5

    const/16 v1, 0x8

    if-eq p5, v1, :cond_3

    .line 829
    iget-object p5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    .line 830
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v1, :cond_0

    .line 831
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 832
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    if-lez v1, :cond_0

    .line 833
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainerPaddingTop:I

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 834
    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 833
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    .line 836
    :cond_0
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    add-int/2addr p5, v1

    .line 837
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 838
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    if-eqz v3, :cond_2

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainerPaddingTop:I

    add-int/2addr v3, v4

    goto :goto_1

    .line 839
    :cond_2
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainerPaddingTop:I

    :goto_1
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 840
    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 837
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 842
    :goto_2
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    sub-int p5, p1, p5

    invoke-virtual {v1, p2, p5, p4, p1}, Landroid/view/View;->layout(IIII)V

    .line 847
    :cond_3
    iget-boolean p5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    const/4 v1, 0x1

    if-eqz p5, :cond_4

    .line 848
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_5

    .line 849
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p4

    invoke-virtual {p1, v0, v0, p2, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_3

    .line 853
    :cond_4
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->selectDrawable()V

    .line 854
    iget-object p5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p5, :cond_5

    sub-int/2addr p4, p2

    .line 855
    invoke-virtual {p5, v0, v0, p4, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_3
    move p1, v1

    goto :goto_4

    :cond_5
    move p1, v0

    :goto_4
    const/16 p2, 0x280

    if-le p3, p2, :cond_6

    move p2, v1

    goto :goto_5

    :cond_6
    move p2, v0

    .line 873
    :goto_5
    iput-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsInWideMode:Z

    .line 876
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz p2, :cond_7

    iget-boolean p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsInActionMode:Z

    if-eqz p3, :cond_7

    .line 877
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {p3}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getCollapsedHeight()I

    move-result p3

    sub-int/2addr p2, p3

    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarHeightGap:I

    .line 878
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getExpandedHeight()I

    move-result p2

    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {p3}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getCollapsedHeight()I

    move-result p3

    goto :goto_6

    .line 879
    :cond_7
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz p2, :cond_8

    .line 880
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getCollapsedHeight()I

    move-result p3

    sub-int/2addr p2, p3

    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarHeightGap:I

    .line 881
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandedHeight()I

    move-result p2

    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getCollapsedHeight()I

    move-result p3

    :goto_6
    sub-int/2addr p2, p3

    goto :goto_7

    :cond_8
    move p2, v0

    .line 883
    :goto_7
    iget p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarHeightGap:I

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iput p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarHeightGap:I

    const/high16 p4, 0x3f800000    # 1.0f

    if-nez p2, :cond_9

    move p3, p4

    goto :goto_8

    :cond_9
    sub-int p3, p2, p3

    int-to-float p3, p3

    mul-float/2addr p3, p4

    int-to-float p5, p2

    div-float/2addr p3, p5

    .line 885
    :goto_8
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarHeightTotalGap:I

    .line 886
    invoke-static {p4, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 887
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p3

    const/4 p4, 0x0

    cmpg-float p3, p3, p4

    if-gez p3, :cond_a

    move p2, p4

    .line 890
    :cond_a
    iget p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mLastActionBarResizingProcess:F

    sub-float/2addr p3, p2

    cmpl-float p4, p3, p4

    if-lez p4, :cond_b

    goto :goto_9

    :cond_b
    move v1, v0

    .line 891
    :goto_9
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mLastToState:I

    .line 892
    iget-boolean p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mOverlayMode:Z

    if-eqz p4, :cond_c

    .line 893
    iget-object p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCoordinateListener:Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;

    if-eqz p4, :cond_c

    .line 894
    iget p5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarHeightGap:I

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCoordinatedOffsetYInSearchModeAnimation:I

    add-int/2addr p5, v2

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarHeightTotalGap:I

    invoke-interface {p4, v1, p2, p5, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;->onActionBarResizing(IFII)V

    .line 899
    :cond_c
    iget-object p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz p4, :cond_d

    .line 900
    invoke-virtual {p4}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateExpandStateOnLayout()Z

    move-result v0

    .line 902
    :cond_d
    iget-object p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarTransitionListeners:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_e
    :goto_a
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_f

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lmiuix/appcompat/app/ActionBarTransitionListener;

    .line 903
    invoke-interface {p5, p3, p2}, Lmiuix/appcompat/app/ActionBarTransitionListener;->onActionBarMove(FF)V

    .line 904
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mLastToState:I

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarHeightGap:I

    invoke-interface {p5, v1, p2, v2}, Lmiuix/appcompat/app/ActionBarTransitionListener;->onActionBarResizing(IFI)V

    if-eqz v0, :cond_e

    .line 906
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iget v1, v1, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandStateOnLayout:I

    invoke-interface {p5, v1}, Lmiuix/appcompat/app/ActionBarTransitionListener;->onExpandStateChanged(I)V

    goto :goto_a

    .line 909
    :cond_f
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mLastActionBarResizingProcess:F

    if-eqz p1, :cond_10

    .line 911
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_10
    return-void
.end method

.method public onMeasure(II)V
    .locals 6

    .line 733
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_0

    .line 734
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onMeasureSplit(II)V

    return-void

    .line 738
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 740
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainerPaddingTop:I

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 741
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 740
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 744
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->applyInsetsTopByMargin(Landroid/view/View;)V

    .line 745
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->applyInsetsTopByMargin(Landroid/view/View;)V

    .line 747
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 749
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    const/16 v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 750
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    if-lez p1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    move p1, v2

    :goto_0
    if-eqz p1, :cond_4

    .line 752
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 753
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v4}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isCollapsed()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 754
    :cond_3
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    goto :goto_1

    :cond_4
    move v3, v2

    .line 756
    :goto_1
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz v4, :cond_5

    .line 757
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-eq v4, v0, :cond_5

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    if-lez v4, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    if-eqz v1, :cond_6

    .line 760
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 761
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v1

    goto :goto_3

    :cond_6
    move v4, v2

    :goto_3
    if-gtz v3, :cond_7

    if-lez v4, :cond_8

    .line 764
    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0, v1, v4}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 768
    :cond_8
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_a

    .line 769
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_a

    .line 771
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 772
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 773
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v3, v1

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-nez p1, :cond_9

    .line 774
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    if-eqz p1, :cond_9

    iget p1, p1, Landroid/graphics/Rect;->top:I

    goto :goto_4

    :cond_9
    move p1, v2

    :goto_4
    add-int/2addr p2, p1

    .line 772
    invoke-virtual {p0, v0, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    :cond_a
    move p1, v2

    move p2, p1

    .line 780
    :goto_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_c

    .line 781
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 782
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-lez v1, :cond_b

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_b

    add-int/lit8 p2, p2, 0x1

    :cond_b
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_c
    if-nez p2, :cond_d

    .line 787
    invoke-virtual {p0, v2, v2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    :cond_d
    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II[I)V
    .locals 9

    .line 1119
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1120
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->onNestedPreScroll(Landroid/view/View;II[II[I)V

    goto :goto_0

    .line 1121
    :cond_0
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 1122
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->onNestedPreScroll(Landroid/view/View;II[II[I)V

    .line 1124
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mOverlayMode:Z

    if-eqz p1, :cond_4

    if-lez p3, :cond_4

    const/4 p1, 0x1

    aget p2, p4, p1

    sub-int/2addr p3, p2

    if-lez p3, :cond_4

    .line 1125
    iget-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-nez p2, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p2

    if-ne p2, v1, :cond_2

    .line 1126
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setActionBarBlurByNestedScrolled(Z)V

    .line 1127
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    .line 1128
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCoordinateListener:Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;

    if-eqz p2, :cond_2

    const/high16 p4, 0x3f800000    # 1.0f

    .line 1129
    iget p5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarHeightTotalGap:I

    invoke-interface {p2, p3, p4, p3, p5}, Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;->onActionBarResizing(IFII)V

    .line 1133
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRequested()Z

    move-result p2

    if-eqz p2, :cond_3

    return-void

    .line 1138
    :cond_3
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setActionBarBlurByNestedScrolled(Z)V

    :cond_4
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I[I)V
    .locals 13

    move-object v0, p0

    const/4 v10, 0x1

    .line 1069
    aget v11, p7, v10

    .line 1070
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    const/16 v12, 0x8

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1071
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->onNestedScroll(Landroid/view/View;IIIII[I[I)V

    goto :goto_0

    .line 1073
    :cond_0
    iget-boolean v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eq v1, v12, :cond_1

    .line 1074
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->onNestedScroll(Landroid/view/View;IIIII[I[I)V

    .line 1077
    :cond_1
    :goto_0
    aget v1, p7, v10

    sub-int/2addr v1, v11

    .line 1078
    iget-boolean v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mOverlayMode:Z

    if-eqz v2, :cond_2

    if-gez p5, :cond_2

    if-gtz v1, :cond_2

    const/4 v1, 0x0

    .line 1079
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setActionBarBlurByNestedScrolled(Z)V

    .line 1080
    iget-boolean v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-ne v1, v12, :cond_2

    .line 1081
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v1, v10}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    .line 1082
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCoordinateListener:Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    .line 1083
    iget v0, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarHeightTotalGap:I

    invoke-interface {v1, v10, v2, v0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;->onActionBarResizing(IFII)V

    :cond_2
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 2

    .line 1099
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1100
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {p0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    goto :goto_0

    .line 1102
    :cond_0
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 1103
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method onResidentActionMenuViewAdded(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)V
    .locals 1

    .line 1143
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mResidentActionMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz p1, :cond_2

    .line 1144
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1145
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isSupportBlur()Z

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->setSupportBlur(Z)V

    .line 1146
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isEnableBlur()Z

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->setEnableBlur(Z)V

    .line 1147
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplySplitActionBarBgBlur:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1148
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isEnableBlur()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    .line 1149
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-interface {p1, p0}, Lmiuix/view/BlurableWidget;->applyBlur(Z)V

    :cond_2
    return-void
.end method

.method onResidentActionMenuViewRemoved(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)V
    .locals 1

    .line 1154
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mResidentActionMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 1155
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mResidentActionMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .line 1190
    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;

    .line 1191
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1192
    iget v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->userActionBarApplyBlur:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    .line 1193
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplyBgBlur:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 1195
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplyBgBlur:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    if-ne v0, v3, :cond_2

    .line 1197
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplyBgBlur:Ljava/lang/Boolean;

    .line 1199
    :cond_2
    :goto_0
    iget v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->userSplitActionBarApplyBlur:I

    if-ne v0, v2, :cond_3

    .line 1200
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplySplitActionBarBgBlur:Ljava/lang/Boolean;

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    .line 1202
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplySplitActionBarBgBlur:Ljava/lang/Boolean;

    goto :goto_1

    :cond_4
    if-ne v0, v3, :cond_5

    .line 1204
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplySplitActionBarBgBlur:Ljava/lang/Boolean;

    .line 1206
    :cond_5
    :goto_1
    iget-boolean v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->actionBarSupportBlur:Z

    if-eqz v0, :cond_6

    .line 1207
    invoke-virtual {p0, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setSupportBlur(Z)V

    .line 1209
    :cond_6
    iget-boolean v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->actionBarEnableBlur:Z

    if-eqz v0, :cond_7

    .line 1210
    invoke-virtual {p0, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setEnableBlur(Z)V

    .line 1212
    :cond_7
    iget-boolean p1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->actionBarApplyBlur:Z

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isEnableBlur()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1213
    invoke-virtual {p0, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->applyBlur(Z)V

    :cond_8
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .line 1177
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1178
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;

    invoke-direct {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1179
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplyBgBlur:Ljava/lang/Boolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-nez v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iput v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->userActionBarApplyBlur:I

    .line 1180
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplySplitActionBarBgBlur:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    move v2, v4

    goto :goto_1

    .line 1181
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    iput v2, v1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->userSplitActionBarApplyBlur:I

    .line 1182
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isSupportBlur()Z

    move-result v0

    iput-boolean v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->actionBarSupportBlur:Z

    .line 1183
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isEnableBlur()Z

    move-result v0

    iput-boolean v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->actionBarEnableBlur:Z

    .line 1184
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isApplyBlur()Z

    move-result p0

    iput-boolean p0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->actionBarApplyBlur:Z

    return-object v1
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 1

    .line 1091
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1092
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {p0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result p0

    return p0

    .line 1094
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 2

    .line 1109
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1110
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->onStopNestedScroll(Landroid/view/View;I)V

    goto :goto_0

    .line 1112
    :cond_0
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 1113
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->onStopNestedScroll(Landroid/view/View;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 650
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method resetActionBarBlurConfigOnReshow()V
    .locals 1

    .line 404
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplyBgBlur:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    return-void

    .line 407
    :cond_0
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mInternalApplyBgBlur:Z

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->applyBlur(Z)V

    return-void
.end method

.method setActionBarBlur(Ljava/lang/Boolean;)V
    .locals 2

    .line 417
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isEnableBlur()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 421
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplyBgBlur:Ljava/lang/Boolean;

    .line 422
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mInternalApplyBgBlur:Z

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->applyBlur(Z)V

    return-void

    .line 425
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplyBgBlur:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_3

    .line 426
    :cond_2
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplyBgBlur:Ljava/lang/Boolean;

    .line 427
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->applyBlur(Z)V

    :cond_3
    return-void
.end method

.method setActionBarBlurByNestedScrolled(Z)V
    .locals 1

    .line 396
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mInternalApplyBgBlur:Z

    .line 397
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplyBgBlur:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    return-void

    .line 400
    :cond_0
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->applyBlur(Z)V

    return-void
.end method

.method public setActionBarContextView(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V
    .locals 1

    .line 313
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz p1, :cond_0

    .line 315
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setActionBarView(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    .line 316
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getExpandState()I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurContextBarExpandState:I

    .line 317
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->isResizable()Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurContextBarResizable:Z

    :cond_0
    return-void
.end method

.method setActionBarCoordinateListener(Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCoordinateListener:Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    .line 947
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public setCoordinatedOffsetYInSearchModeAnimation(I)V
    .locals 4

    .line 305
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCoordinatedOffsetYInSearchModeAnimation:I

    .line 306
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCoordinateListener:Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;

    if-eqz v0, :cond_0

    .line 307
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mLastToState:I

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mLastActionBarResizingProcess:F

    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarHeightGap:I

    add-int/2addr v3, p1

    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarHeightTotalGap:I

    invoke-interface {v0, v1, v2, v3, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;->onActionBarResizing(IFII)V

    :cond_0
    return-void
.end method

.method public setEnableBlur(Z)V
    .locals 0

    .line 370
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    invoke-virtual {p0, p1}, Lmiuix/view/MiuiBlurUiHelper;->setEnableBlur(Z)V

    return-void
.end method

.method public setIsMiuixFloating(Z)V
    .locals 3

    .line 271
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsMiuixFloating:Z

    .line 272
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 274
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurBarExpandState:I

    .line 275
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isResizable()Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurBarResizable:Z

    .line 276
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    .line 277
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setResizable(Z)V

    goto :goto_0

    .line 279
    :cond_0
    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurBarResizable:Z

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setResizable(Z)V

    .line 280
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurBarExpandState:I

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    .line 283
    :cond_1
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 285
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getExpandState()I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurContextBarExpandState:I

    .line 286
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->isResizable()Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurContextBarResizable:Z

    .line 287
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(I)V

    .line 288
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setResizable(Z)V

    goto :goto_1

    .line 290
    :cond_2
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurContextBarResizable:Z

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setResizable(Z)V

    .line 291
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurContextBarExpandState:I

    invoke-virtual {p1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setMiuixFloatingOnInit(Z)V
    .locals 2

    .line 251
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsMiuixFloating:Z

    .line 252
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 254
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isResizable()Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurBarResizable:Z

    .line 255
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    .line 256
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setResizable(Z)V

    .line 257
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurBarExpandState:I

    .line 260
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 262
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->isResizable()Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurContextBarResizable:Z

    .line 263
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(I)V

    .line 264
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setResizable(Z)V

    .line 265
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getExpandState()I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurContextBarExpandState:I

    :cond_1
    return-void
.end method

.method public setOverlayMode(Z)V
    .locals 0

    .line 301
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mOverlayMode:Z

    return-void
.end method

.method public setPendingInsets(Landroid/graphics/Rect;)V
    .locals 1

    .line 322
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_1

    .line 323
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 324
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    .line 326
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 327
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 328
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->applyInsetsTopByMargin(Landroid/view/View;)V

    .line 329
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->applyInsetsTopByMargin(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 518
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 520
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 521
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v1, v0

    .line 523
    :cond_0
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 525
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    if-nez v1, :cond_1

    .line 527
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_0

    .line 529
    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 531
    :goto_0
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCustomBackground:Z

    goto :goto_1

    .line 533
    :cond_2
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCustomBackground:Z

    .line 535
    :goto_1
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_4

    goto :goto_2

    .line 536
    :cond_3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_4

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    move v0, v2

    .line 535
    :goto_2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 537
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method setSplitActionBarBlur(Ljava/lang/Boolean;)V
    .locals 2

    .line 432
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_0

    return-void

    .line 435
    :cond_0
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplySplitActionBarBgBlur:Ljava/lang/Boolean;

    .line 436
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionModeMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 437
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mInternalApplySpiltBgBlur:Z

    :goto_0
    invoke-interface {v0, v1}, Lmiuix/view/BlurableWidget;->applyBlur(Z)V

    .line 439
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mResidentActionMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    .line 440
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_1

    :cond_3
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mInternalApplySpiltBgBlur:Z

    :goto_1
    invoke-interface {v0, p0}, Lmiuix/view/BlurableWidget;->applyBlur(Z)V

    :cond_4
    return-void
.end method

.method public setSplitBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 582
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 583
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 584
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 586
    :cond_0
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 588
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 590
    :cond_1
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_3

    goto :goto_0

    .line 591
    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_3

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    .line 590
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 592
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setStackedBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 566
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 567
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 568
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 570
    :cond_0
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 572
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 574
    :cond_1
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_3

    goto :goto_0

    .line 575
    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_3

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    .line 574
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 576
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 577
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-void
.end method

.method public setSupportBlur(Z)V
    .locals 0

    .line 360
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    invoke-virtual {p0, p1}, Lmiuix/view/MiuiBlurUiHelper;->setSupportBlur(Z)V

    return-void
.end method

.method public setTabContainer(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;)V
    .locals 2

    .line 669
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 670
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 674
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 675
    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 676
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x2

    .line 677
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v0, 0x0

    .line 678
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 680
    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainerPaddingTop:I

    goto :goto_0

    .line 681
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 682
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 684
    :cond_2
    :goto_0
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    return-void
.end method

.method public setTransitioning(Z)V
    .locals 0

    .line 638
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsTransitioning:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x60000

    goto :goto_0

    :cond_0
    const/high16 p1, 0x40000

    .line 639
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 597
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 599
    :goto_0
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 600
    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 602
    :cond_1
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 603
    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 605
    :cond_2
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_3

    .line 606
    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_3
    return-void
.end method

.method public show(Z)V
    .locals 4

    .line 992
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mNowShowing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 995
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mNowShowing:Z

    .line 996
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v1, :cond_1

    .line 997
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_1
    const/4 v1, 0x0

    .line 1000
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setVisibility(I)V

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 1002
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 1003
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    aput v3, p1, v1

    aput v2, p1, v0

    const-string v0, "TranslationY"

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 1004
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFeatureWholeAnim()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    .line 1005
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    .line 1004
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1006
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mShowListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1007
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 1008
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mResidentActionMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz p0, :cond_4

    .line 1009
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->startLayoutAnimation()V

    goto :goto_1

    .line 1013
    :cond_3
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_4
    :goto_1
    return-void
.end method

.method public startActionMode()V
    .locals 1

    const/4 v0, 0x1

    .line 951
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsInActionMode:Z

    return-void
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method updateBackgroundInternal(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 552
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mDrawBackground:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 554
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mDrawBackground:Z

    .line 556
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    .line 557
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->updateBackground(Z)V

    .line 559
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_2

    .line 560
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setApplyBgBlur(Z)V

    .line 562
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 612
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsStacked:Z

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_3

    .line 613
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const/4 p0, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
