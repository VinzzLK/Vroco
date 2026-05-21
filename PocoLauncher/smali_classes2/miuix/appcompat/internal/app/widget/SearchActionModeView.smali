.class public Lmiuix/appcompat/internal/app/widget/SearchActionModeView;
.super Landroid/widget/FrameLayout;
.source "SearchActionModeView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Lmiuix/appcompat/internal/app/widget/ActionModeView;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/app/widget/SearchActionModeView$DimViewAnimationProcessor;,
        Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;,
        Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SplitActionBarAnimationProcessor;,
        Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ActionBarAnimationProcessor;,
        Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;
    }
.end annotation


# instance fields
.field private mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

.field private mActionBarTopMargin:I

.field private mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

.field private mAnchorParentView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchorView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimateToVisible:Z

.field private mAnimateView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatedViewListener:Lmiuix/view/SearchActionMode$AnimatedViewListener;

.field private mAnimationCanceled:Z

.field private mAnimationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/view/ActionModeAnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationProgress:F

.field private mCancelBtnInitPaddings:Lmiuix/internal/util/ViewUtils$RelativePadding;

.field private mContentOriginPaddingBottom:I

.field private mContentOriginPaddingTop:I

.field private mContentView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentAnimation:Landroid/animation/ObjectAnimator;

.field private mCustomFrameLayout:Landroid/widget/FrameLayout;

.field private mCustomView:Landroid/view/View;

.field private mDimView:Landroid/view/View;

.field private mExtraPadding:I

.field private mExtraPaddingApplyToAnchorByUser:Z

.field private mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

.field private mFirstLayout:Z

.field private mHasSetCustomView:Z

.field private mHorizontalPaddingDp:I

.field private mInActionMode:Z

.field private mInitPaddings:Lmiuix/internal/util/ViewUtils$RelativePadding;

.field private mInputPaddingRight:I

.field private mInputPaddingTop:I

.field private mInputView:Landroid/widget/EditText;

.field private mLimitTextSizeDp:I

.field private mLocation:[I

.field private mOnBackClickListener:Landroid/view/View$OnClickListener;

.field private mOriginOverlayMode:Z

.field private mOriginalPaddingTop:I

.field private mOverlayView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mParentLocationY:I

.field private mPendingInsetTop:I

.field private mResultView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mResultViewOriginMarginBottom:I

.field private mResultViewOriginMarginTop:I

.field private mResultViewOriginPaddingBottom:I

.field private mResultViewOriginPaddingTop:I

.field private mResultViewSet:Z

.field private mSearchContainer:Landroid/view/ViewGroup;

.field private mSearchViewHeight:I

.field private mSplitActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

.field private mTextCancel:Landroid/widget/TextView;

.field private mTextLengthBeforeChanged:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 152
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 63
    iput-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInActionMode:Z

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInitPaddings:Lmiuix/internal/util/ViewUtils$RelativePadding;

    .line 66
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCancelBtnInitPaddings:Lmiuix/internal/util/ViewUtils$RelativePadding;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 84
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mLocation:[I

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mFirstLayout:Z

    const/4 v0, -0x1

    .line 94
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mPendingInsetTop:I

    const v0, 0x7fffffff

    .line 138
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mParentLocationY:I

    const/4 v0, 0x0

    .line 153
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_search_view_default_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSearchViewHeight:I

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_search_mode_bg_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputPaddingTop:I

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_search_mode_bg_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputPaddingRight:I

    .line 157
    invoke-static {p1, v1}, Lmiuix/core/util/MiuixUIUtils;->getDefDimen(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mHorizontalPaddingDp:I

    .line 159
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lmiuix/core/util/MiuixUIUtils;->isTallFontLang(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    goto :goto_0

    :cond_0
    const/16 p1, 0x1b

    .line 160
    :goto_0
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mLimitTextSizeDp:I

    .line 161
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPadding:I

    .line 162
    iput-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPaddingApplyToAnchorByUser:Z

    return-void
.end method

.method static synthetic access$000(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I
    .locals 0

    .line 52
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputPaddingRight:I

    return p0
.end method

.method static synthetic access$100(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/widget/EditText;
    .locals 0

    .line 52
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1000(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 52
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$1100(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 52
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mResultView:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$1200(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 52
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnchorParentView:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$1300(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I
    .locals 0

    .line 52
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mParentLocationY:I

    return p0
.end method

.method static synthetic access$1302(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;I)I
    .locals 0

    .line 52
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mParentLocationY:I

    return p1
.end method

.method static synthetic access$1400(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)[I
    .locals 0

    .line 52
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mLocation:[I

    return-object p0
.end method

.method static synthetic access$1500(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Lmiuix/view/SearchActionMode$AnimatedViewListener;
    .locals 0

    .line 52
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimatedViewListener:Lmiuix/view/SearchActionMode$AnimatedViewListener;

    return-object p0
.end method

.method static synthetic access$1600(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/view/View;
    .locals 0

    .line 52
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1700(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I
    .locals 0

    .line 52
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mContentOriginPaddingTop:I

    return p0
.end method

.method static synthetic access$1800(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I
    .locals 0

    .line 52
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mContentOriginPaddingBottom:I

    return p0
.end method

.method static synthetic access$1900(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I
    .locals 0

    .line 52
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mResultViewOriginPaddingTop:I

    return p0
.end method

.method static synthetic access$200(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I
    .locals 0

    .line 52
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mPendingInsetTop:I

    return p0
.end method

.method static synthetic access$2000(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I
    .locals 0

    .line 52
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mResultViewOriginPaddingBottom:I

    return p0
.end method

.method static synthetic access$300(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I
    .locals 0

    .line 52
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginalPaddingTop:I

    return p0
.end method

.method static synthetic access$400(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I
    .locals 0

    .line 52
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSearchViewHeight:I

    return p0
.end method

.method static synthetic access$500(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/widget/TextView;
    .locals 0

    .line 52
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextCancel:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/view/ViewGroup;
    .locals 0

    .line 52
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSearchContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$700(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginOverlayMode:Z

    return p0
.end method

.method static synthetic access$800(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Lmiuix/appcompat/internal/app/widget/ActionBarContainer;
    .locals 0

    .line 52
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    return-object p0
.end method

.method static synthetic access$900(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 52
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private getContentView()Landroid/view/View;
    .locals 2

    .line 783
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mContentView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 784
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mContentView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    .line 786
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOverlayView:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    const v1, 0x1020002

    .line 788
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 789
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mContentView:Ljava/lang/ref/WeakReference;

    return-object v0

    :cond_2
    return-object v1
.end method

.method private resetLocationY()V
    .locals 1

    const v0, 0x7fffffff

    .line 532
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mParentLocationY:I

    return-void
.end method

.method private resetTextSize(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 5

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 505
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 506
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_search_edit_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 507
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    .line 509
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mLimitTextSizeDp:I

    int-to-float v4, v3

    cmpl-float v1, v1, v4

    const/4 v4, 0x1

    if-lez v1, :cond_1

    int-to-float v1, v3

    .line 510
    invoke-virtual {p1, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 512
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_search_action_mode_cancel_text_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    .line 514
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mLimitTextSizeDp:I

    int-to-float v0, p0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    int-to-float p0, p0

    .line 515
    invoke-virtual {p2, v4, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    :goto_0
    return-void
.end method

.method private shouldAnimateContent()Z
    .locals 0

    .line 844
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateExtraPadding(F)V
    .locals 3

    .line 227
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOverlayView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 230
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isExtraPaddingApplyToContentEnable()Z

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 231
    :goto_1
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    if-eqz v2, :cond_3

    .line 232
    invoke-virtual {v2}, Lmiuix/container/ExtraPaddingPolicy;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPaddingApplyToAnchorByUser:Z

    if-eqz v0, :cond_3

    .line 234
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    invoke-virtual {v0}, Lmiuix/container/ExtraPaddingPolicy;->getExtraPaddingDp()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPadding:I

    goto :goto_2

    .line 236
    :cond_3
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPadding:I

    :goto_2
    return-void
.end method

.method private updateOnPaddingTopChanged()V
    .locals 4

    .line 554
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v0

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginalPaddingTop:I

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mPendingInsetTop:I

    add-int/2addr v1, v2

    .line 556
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v2

    .line 557
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v3

    .line 554
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    .line 558
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSearchViewHeight:I

    iget p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mPendingInsetTop:I

    add-int/2addr v1, p0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method private updateResultViewMargin(Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 658
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mResultView:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 659
    :goto_0
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :cond_2
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 661
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eq v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    return-void

    :cond_4
    if-eqz p1, :cond_5

    .line 666
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginOverlayMode:Z

    if-nez v0, :cond_5

    .line 672
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 673
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getViewHeight()I

    move-result p0

    .line 674
    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 675
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 676
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 677
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_5
    return-void
.end method

.method private updateViewPadding(IF)V
    .locals 4

    .line 241
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mHorizontalPaddingDp:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int p2, v0

    add-int/2addr p2, p1

    .line 243
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    .line 244
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v1

    .line 245
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v2

    .line 241
    invoke-virtual {p0, p2, v0, v1, v2}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    .line 246
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextCancel:Landroid/widget/TextView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCancelBtnInitPaddings:Lmiuix/internal/util/ViewUtils$RelativePadding;

    iget v1, v0, Lmiuix/internal/util/ViewUtils$RelativePadding;->start:I

    iget v2, v0, Lmiuix/internal/util/ViewUtils$RelativePadding;->top:I

    iget v3, v0, Lmiuix/internal/util/ViewUtils$RelativePadding;->end:I

    iget v0, v0, Lmiuix/internal/util/ViewUtils$RelativePadding;->bottom:I

    invoke-virtual {p2, v1, v2, v3, v0}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 251
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextCancel:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    .line 252
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextCancel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextCancel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 254
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_search_action_mode_cancel_text_margin_end:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 255
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextCancel:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v0

    add-int/2addr p1, v0

    add-int/2addr p2, p1

    .line 258
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSearchContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_1

    .line 259
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSearchContainer:Landroid/view/ViewGroup;

    .line 260
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 262
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 261
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 263
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSearchContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addAnimationListener(Lmiuix/view/ActionModeAnimationListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    if-nez v0, :cond_1

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    .line 295
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 296
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    .line 748
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    :goto_0
    if-nez p1, :cond_2

    .line 750
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 751
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 753
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lmiuix/view/inputmethod/InputMethodHelper;->getInstance(Landroid/content/Context;)Lmiuix/view/inputmethod/InputMethodHelper;

    move-result-object p1

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Lmiuix/view/inputmethod/InputMethodHelper;->showKeyBoard(Landroid/widget/EditText;)V

    goto :goto_1

    .line 754
    :cond_2
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextLengthBeforeChanged:I

    if-nez p1, :cond_3

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    if-eqz p0, :cond_3

    const/16 p1, 0x8

    .line 755
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public animateToVisibility(Z)V
    .locals 2

    .line 186
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->pollViews()V

    .line 187
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 188
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->updateExtraPadding(F)V

    .line 189
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPadding:I

    invoke-direct {p0, v1, v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->updateViewPadding(IF)V

    .line 190
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimateToVisible:Z

    .line 191
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->makeAnimation()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_1

    .line 193
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->createAnimationListeners()V

    .line 194
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOverlayView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 197
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    .line 200
    :cond_1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->notifyAnimationStart(Z)V

    .line 201
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 203
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimateToVisible:Z

    if-nez p1, :cond_2

    .line 205
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 206
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 207
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 738
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    :goto_0
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextLengthBeforeChanged:I

    return-void
.end method

.method public closeMode()V
    .locals 2

    .line 396
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 397
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 398
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 401
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomFrameLayout:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_1

    const/16 v0, 0x8

    .line 402
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected createAnimationListeners()V
    .locals 2

    .line 796
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 797
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    .line 800
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    new-instance v1, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;-><init>(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 801
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->shouldAnimateContent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 802
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    new-instance v1, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;-><init>(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 803
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    new-instance v1, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ActionBarAnimationProcessor;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ActionBarAnimationProcessor;-><init>(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 804
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    new-instance v1, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SplitActionBarAnimationProcessor;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SplitActionBarAnimationProcessor;-><init>(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 808
    :cond_1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getDimView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 809
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    new-instance v1, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$DimViewAnimationProcessor;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$DimViewAnimationProcessor;-><init>(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method protected finishAnimation()V
    .locals 1

    .line 440
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v0, 0x0

    .line 442
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    :cond_0
    return-void
.end method

.method protected getActionBarContainer()Lmiuix/appcompat/internal/app/widget/ActionBarContainer;
    .locals 5

    .line 562
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-nez v0, :cond_3

    .line 563
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOverlayView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 565
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 566
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 567
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lmiuix/appcompat/R$id;->action_bar_container:I

    if-ne v3, v4, :cond_1

    instance-of v3, v2, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v3, :cond_1

    .line 568
    check-cast v2, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 573
    :cond_2
    :goto_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_3

    .line 574
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarTopMargin:I

    if-lez v0, :cond_3

    .line 577
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v0

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginalPaddingTop:I

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mPendingInsetTop:I

    add-int/2addr v1, v2

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarTopMargin:I

    add-int/2addr v1, v2

    .line 579
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v3

    .line 577
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    .line 583
    :cond_3
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    return-object p0
.end method

.method protected getActionBarView()Lmiuix/appcompat/internal/app/widget/ActionBarView;
    .locals 2

    .line 603
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-nez v0, :cond_1

    .line 604
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOverlayView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 606
    sget v1, Lmiuix/appcompat/R$id;->action_bar:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 609
    :cond_1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    return-object p0
.end method

.method public getAnimationProgress()F
    .locals 0

    .line 431
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationProgress:F

    return p0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 0

    .line 376
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomView:Landroid/view/View;

    return-object p0
.end method

.method protected getDimView()Landroid/view/View;
    .locals 5

    .line 613
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    if-nez v0, :cond_4

    .line 614
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOverlayView:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_4

    .line 618
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_2

    .line 619
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lmiuix/appcompat/R$id;->search_mask_vs:I

    if-ne v3, v4, :cond_1

    .line 620
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    .line 625
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    goto :goto_3

    .line 627
    :cond_3
    sget v1, Lmiuix/appcompat/R$id;->search_mask:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    .line 631
    :cond_4
    :goto_3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    .line 632
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 634
    :cond_5
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    return-object p0
.end method

.method public getSearchInput()Landroid/widget/EditText;
    .locals 0

    .line 380
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    return-object p0
.end method

.method protected getSplitActionBarContainer()Lmiuix/appcompat/internal/app/widget/ActionBarContainer;
    .locals 5

    .line 587
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSplitActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-nez v0, :cond_2

    .line 588
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOverlayView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 590
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 591
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 592
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lmiuix/appcompat/R$id;->split_action_bar:I

    if-ne v3, v4, :cond_1

    instance-of v3, v2, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v3, :cond_1

    .line 593
    check-cast v2, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSplitActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 599
    :cond_2
    :goto_2
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSplitActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    return-object p0
.end method

.method public getViewHeight()I
    .locals 0

    .line 321
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSearchViewHeight:I

    return p0
.end method

.method protected getViewPager()Lmiuix/viewpager/widget/ViewPager;
    .locals 2

    .line 644
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOverlayView:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    .line 646
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 647
    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 648
    sget v0, Lmiuix/appcompat/R$id;->view_pager:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lmiuix/viewpager/widget/ViewPager;

    return-object p0

    :cond_1
    return-object v0
.end method

.method public initForMode(Landroid/view/ActionMode;)V
    .locals 0

    const/4 p1, 0x1

    .line 732
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInActionMode:Z

    .line 733
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->updateResultViewMargin(Z)V

    return-void
.end method

.method public killMode()V
    .locals 2

    .line 408
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->finishAnimation()V

    const/4 v0, 0x0

    .line 409
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInActionMode:Z

    .line 410
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 414
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 415
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 416
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 417
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 418
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    .line 420
    :cond_1
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimatedViewListener:Lmiuix/view/SearchActionMode$AnimatedViewListener;

    if-eqz v1, :cond_2

    .line 421
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimatedViewListener:Lmiuix/view/SearchActionMode$AnimatedViewListener;

    .line 423
    :cond_2
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSplitActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    return-void
.end method

.method protected makeAnimation()Landroid/animation/ObjectAnimator;
    .locals 3

    .line 447
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v0, 0x0

    .line 449
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 455
    fill-array-data v0, :array_0

    const-string v1, "AnimationProgress"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 456
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 457
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFeatureWholeAnim()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x190

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 458
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->obtainInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public notifyAnimationEnd(Z)V
    .locals 1

    .line 835
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    if-nez p0, :cond_0

    return-void

    .line 838
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/view/ActionModeAnimationListener;

    .line 839
    invoke-interface {v0, p1}, Lmiuix/view/ActionModeAnimationListener;->onStop(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyAnimationStart(Z)V
    .locals 1

    .line 815
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    if-nez p0, :cond_0

    return-void

    .line 818
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/view/ActionModeAnimationListener;

    .line 819
    invoke-interface {v0, p1}, Lmiuix/view/ActionModeAnimationListener;->onStart(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyAnimationUpdate(ZF)V
    .locals 1

    .line 825
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    if-nez p0, :cond_0

    return-void

    .line 828
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/view/ActionModeAnimationListener;

    .line 829
    invoke-interface {v0, p1, p2}, Lmiuix/view/ActionModeAnimationListener;->onUpdate(ZF)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public obtainInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    const/4 p0, 0x2

    new-array p0, p0, [F

    .line 463
    fill-array-data p0, :array_0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lmiuix/animation/utils/EaseManager;->getInterpolator(I[F)Landroid/animation/TimeInterpolator;

    move-result-object p0

    return-object p0

    :array_0
    .array-data 4
        0x3f7ae148    # 0.98f
        0x3f400000    # 0.75f
    .end array-data
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 722
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 691
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationCanceled:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 694
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    .line 695
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimateToVisible:Z

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->notifyAnimationEnd(Z)V

    .line 696
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimateToVisible:Z

    if-eqz v0, :cond_1

    .line 697
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 698
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 699
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/view/inputmethod/InputMethodHelper;->getInstance(Landroid/content/Context;)Lmiuix/view/inputmethod/InputMethodHelper;

    move-result-object v0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lmiuix/view/inputmethod/InputMethodHelper;->showKeyBoard(Landroid/widget/EditText;)V

    goto :goto_0

    .line 701
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/view/inputmethod/InputMethodHelper;->getInstance(Landroid/content/Context;)Lmiuix/view/inputmethod/InputMethodHelper;

    move-result-object v0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lmiuix/view/inputmethod/InputMethodHelper;->hideKeyBoard(Landroid/widget/EditText;)V

    .line 704
    :goto_0
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimateToVisible:Z

    if-nez v0, :cond_6

    .line 705
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOverlayView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 706
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    goto :goto_1

    :cond_2
    move-object v0, p1

    :goto_1
    if-eqz v0, :cond_3

    .line 708
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginOverlayMode:Z

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    .line 709
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->requestDispatchContentInset()V

    .line 711
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    :cond_4
    if-eqz p1, :cond_5

    const/high16 v0, 0x3f800000    # 1.0f

    .line 713
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    const/4 p1, 0x0

    .line 715
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 716
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->killMode()V

    :cond_6
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    .line 683
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationCanceled:Z

    .line 684
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimateToVisible:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 685
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 761
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOnBackClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 762
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lmiuix/appcompat/R$id;->search_text_cancel:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lmiuix/appcompat/R$id;->search_mask:I

    if-ne v0, v1, :cond_1

    .line 763
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOnBackClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 525
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 526
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->resetLocationY()V

    const/4 p1, 0x1

    .line 527
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mFirstLayout:Z

    .line 528
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextCancel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->resetTextSize(Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 468
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 469
    new-instance v0, Lmiuix/internal/util/ViewUtils$RelativePadding;

    invoke-direct {v0, p0}, Lmiuix/internal/util/ViewUtils$RelativePadding;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInitPaddings:Lmiuix/internal/util/ViewUtils$RelativePadding;

    .line 470
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 472
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 473
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 474
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInitPaddings:Lmiuix/internal/util/ViewUtils$RelativePadding;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Lmiuix/internal/util/ViewUtils$RelativePadding;->top:I

    .line 475
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Lmiuix/internal/util/ViewUtils$RelativePadding;->bottom:I

    .line 477
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInitPaddings:Lmiuix/internal/util/ViewUtils$RelativePadding;

    iget v1, v0, Lmiuix/internal/util/ViewUtils$RelativePadding;->top:I

    if-nez v1, :cond_1

    .line 478
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputPaddingTop:I

    iput v1, v0, Lmiuix/internal/util/ViewUtils$RelativePadding;->top:I

    .line 480
    :cond_1
    sget v0, Lmiuix/appcompat/R$id;->search_text_cancel:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextCancel:Landroid/widget/TextView;

    .line 481
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    new-instance v0, Lmiuix/internal/util/ViewUtils$RelativePadding;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextCancel:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Lmiuix/internal/util/ViewUtils$RelativePadding;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCancelBtnInitPaddings:Lmiuix/internal/util/ViewUtils$RelativePadding;

    .line 483
    sget v0, Lmiuix/appcompat/R$id;->search_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSearchContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 484
    invoke-static {v0, v1}, Lmiuix/view/CompatViewMethod;->setForceDarkAllowed(Landroid/view/View;Z)V

    const v0, 0x1020009

    .line 485
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    .line 486
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextCancel:Landroid/widget/TextView;

    invoke-direct {p0, v0, v2}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->resetTextSize(Landroid/widget/TextView;Landroid/widget/TextView;)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    .line 487
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSearchContainer:Landroid/view/ViewGroup;

    aput-object v2, v0, v1

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    new-array v3, v1, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v0, v2, v3}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v2, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 488
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInitPaddings:Lmiuix/internal/util/ViewUtils$RelativePadding;

    iget v0, v0, Lmiuix/internal/util/ViewUtils$RelativePadding;->top:I

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginalPaddingTop:I

    .line 489
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 491
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mContentOriginPaddingTop:I

    .line 492
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mContentOriginPaddingBottom:I

    :cond_2
    return-void
.end method

.method public onFloatingModeChanged()V
    .locals 0

    .line 520
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->resetLocationY()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 173
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 174
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 175
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p2

    int-to-float p4, p5

    add-float/2addr p2, p4

    int-to-float p3, p3

    sub-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 177
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_2

    .line 178
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 179
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->updateExtraPadding(F)V

    .line 180
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPadding:I

    invoke-direct {p0, p2, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->updateViewPadding(IF)V

    :cond_2
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected pollViews()V
    .locals 0

    .line 638
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getActionBarView()Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 639
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getActionBarContainer()Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 640
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getSplitActionBarContainer()Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    return-void
.end method

.method public rePaddingAndRelayout(Landroid/graphics/Rect;)V
    .locals 2

    .line 536
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mPendingInsetTop:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_4

    .line 538
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mPendingInsetTop:I

    .line 539
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->updateOnPaddingTopChanged()V

    .line 540
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginOverlayMode:Z

    if-nez p1, :cond_3

    .line 541
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnchorParentView:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 542
    :goto_1
    instance-of p1, p1, Lmiuix/core/view/NestedCoordinatorObserver;

    if-eqz p1, :cond_2

    .line 543
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mPendingInsetTop:I

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getViewHeight()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0, p1, v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewPadding(II)V

    goto :goto_2

    .line 545
    :cond_2
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mPendingInsetTop:I

    invoke-virtual {p0, p1, v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewPadding(II)V

    .line 548
    :cond_3
    :goto_2
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInActionMode:Z

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->updateResultViewMargin(Z)V

    .line 549
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_4
    return-void
.end method

.method public setAnchorApplyExtraPaddingByUser(Z)V
    .locals 1

    .line 311
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPaddingApplyToAnchorByUser:Z

    if-eq v0, p1, :cond_0

    .line 312
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPaddingApplyToAnchorByUser:Z

    .line 313
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 314
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->updateExtraPadding(F)V

    .line 315
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPadding:I

    invoke-direct {p0, v0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->updateViewPadding(IF)V

    :cond_0
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 273
    sget v0, Lmiuix/appcompat/R$id;->search_mode_stub:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;

    .line 275
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnchorParentView:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public setAnimateView(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 283
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public setAnimatedViewListener(Lmiuix/view/SearchActionMode$AnimatedViewListener;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimatedViewListener:Lmiuix/view/SearchActionMode$AnimatedViewListener;

    return-void
.end method

.method public setAnimationProgress(F)V
    .locals 1

    .line 435
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationProgress:F

    .line 436
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimateToVisible:Z

    invoke-virtual {p0, v0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->notifyAnimationUpdate(ZF)V

    return-void
.end method

.method protected setContentViewPadding(II)V
    .locals 3

    .line 775
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 777
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mContentOriginPaddingTop:I

    add-int/2addr p1, v2

    .line 778
    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    iget p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mContentOriginPaddingBottom:I

    add-int/2addr p2, p0

    .line 777
    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_0
    return-void
.end method

.method protected setContentViewTranslation(F)V
    .locals 0

    .line 768
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getContentView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 770
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 345
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mHasSetCustomView:Z

    if-nez v0, :cond_0

    .line 346
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomView:Landroid/view/View;

    .line 347
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 348
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomFrameLayout:Landroid/widget/FrameLayout;

    .line 349
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomFrameLayout:Landroid/widget/FrameLayout;

    sget v1, Lmiuix/appcompat/R$id;->searchActionMode_customFrameLayout:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 351
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomFrameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomFrameLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 353
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getDimView()Landroid/view/View;

    .line 354
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 355
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 356
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mHasSetCustomView:Z

    :cond_0
    return-void
.end method

.method public setExtraPaddingPolicy(Lmiuix/container/ExtraPaddingPolicy;)V
    .locals 1

    .line 218
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    if-eq v0, p1, :cond_0

    .line 219
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    .line 220
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 221
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->updateExtraPadding(F)V

    .line 222
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPadding:I

    invoke-direct {p0, v0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->updateViewPadding(IF)V

    :cond_0
    return-void
.end method

.method public setOnBackClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOnBackClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOverlayModeView(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V
    .locals 1

    .line 213
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOverlayView:Ljava/lang/ref/WeakReference;

    .line 214
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginOverlayMode:Z

    return-void
.end method

.method public setResultView(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 326
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 327
    instance-of v0, v0, Lmiuix/core/view/NestedContentInsetObserver;

    if-eqz v0, :cond_0

    return-void

    .line 332
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mResultView:Ljava/lang/ref/WeakReference;

    .line 333
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mResultViewOriginPaddingTop:I

    .line 334
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mResultViewOriginPaddingBottom:I

    .line 335
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 336
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 337
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mResultViewOriginMarginTop:I

    .line 338
    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mResultViewOriginMarginBottom:I

    :cond_1
    const/4 p1, 0x1

    .line 340
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mResultViewSet:Z

    :cond_2
    return-void
.end method
