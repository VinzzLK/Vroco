.class public Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SmartRefreshLayout.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
.implements Landroidx/core/view/NestedScrollingParent;
.implements Landroidx/core/view/NestedScrollingChild;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;,
        Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;,
        Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$BounceRunnable;,
        Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;
    }
.end annotation


# static fields
.field protected static sFooterCreator:Lcom/scwang/smartrefresh/layout/api/DefaultRefreshFooterCreator; = null

.field protected static sHeaderCreator:Lcom/scwang/smartrefresh/layout/api/DefaultRefreshHeaderCreator; = null

.field protected static sManualFooterCreator:Z = false


# instance fields
.field protected animationRunnable:Ljava/lang/Runnable;

.field protected mDisableContentWhenLoading:Z

.field protected mDisableContentWhenRefresh:Z

.field protected mDragDirection:C

.field protected mDragRate:F

.field protected mEnableAutoLoadMore:Z

.field protected mEnableClipFooterWhenFixedBehind:Z

.field protected mEnableClipHeaderWhenFixedBehind:Z

.field protected mEnableFooterFollowWhenLoadFinished:Z

.field protected mEnableFooterTranslationContent:Z

.field protected mEnableHeaderTranslationContent:Z

.field protected mEnableLoadMore:Z

.field protected mEnableLoadMoreWhenContentNotFull:Z

.field protected mEnableOverScrollBounce:Z

.field protected mEnableOverScrollDrag:Z

.field protected mEnablePreviewInEditMode:Z

.field protected mEnablePureScrollMode:Z

.field protected mEnableRefresh:Z

.field protected mEnableScrollContentWhenLoaded:Z

.field protected mEnableScrollContentWhenRefreshed:Z

.field protected mFalsifyEvent:Landroid/view/MotionEvent;

.field protected mFixedFooterViewId:I

.field protected mFixedHeaderViewId:I

.field protected mFloorDuration:I

.field protected mFooterBackgroundColor:I

.field protected mFooterExtendHeight:I

.field protected mFooterHeight:I

.field protected mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

.field protected mFooterInsetStart:I

.field protected mFooterLocked:Z

.field protected mFooterMaxDragRate:F

.field protected mFooterNeedTouchEventWhenLoading:Z

.field protected mFooterNoMoreData:Z

.field protected mFooterTriggerRate:F

.field protected mHandler:Landroid/os/Handler;

.field protected mHeaderBackgroundColor:I

.field protected mHeaderExtendHeight:I

.field protected mHeaderHeight:I

.field protected mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

.field protected mHeaderInsetStart:I

.field protected mHeaderMaxDragRate:F

.field protected mHeaderNeedTouchEventWhenRefreshing:Z

.field protected mHeaderTriggerRate:F

.field protected mIsBeingDragged:Z

.field protected mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

.field protected mLastOpenTime:J

.field protected mLastSpinner:I

.field protected mLastTouchX:F

.field protected mLastTouchY:F

.field protected mListDelayedRunnable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/scwang/smartrefresh/layout/util/DelayedRunnable;",
            ">;"
        }
    .end annotation
.end field

.field protected mLoadMoreListener:Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;

.field protected mManualFooterTranslationContent:Z

.field protected mManualHeaderTranslationContent:Z

.field protected mManualLoadMore:Z

.field protected mManualNestedScrolling:Z

.field protected mMaximumVelocity:I

.field protected mMinimumVelocity:I

.field protected mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

.field protected mNestedInProgress:Z

.field protected mNestedParent:Landroidx/core/view/NestedScrollingParentHelper;

.field protected mOnMultiPurposeListener:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

.field protected mPaint:Landroid/graphics/Paint;

.field protected mParentOffsetInWindow:[I

.field protected mPrimaryColors:[I

.field protected mReboundDuration:I

.field protected mReboundInterpolator:Landroid/view/animation/Interpolator;

.field protected mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

.field protected mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

.field protected mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

.field protected mRefreshListener:Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;

.field protected mScreenHeightPixels:I

.field protected mScrollBoundaryDecider:Lcom/scwang/smartrefresh/layout/api/ScrollBoundaryDecider;

.field protected mScroller:Landroid/widget/Scroller;

.field protected mSpinner:I

.field protected mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

.field protected mSuperDispatchTouchEvent:Z

.field protected mTotalUnconsumed:I

.field protected mTouchSlop:I

.field protected mTouchSpinner:I

.field protected mTouchX:F

.field protected mTouchY:F

.field protected mVelocityTracker:Landroid/view/VelocityTracker;

.field protected mVerticalPermit:Z

.field protected mViceState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

.field protected reboundAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 201
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$1;

    invoke-direct {v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$1;-><init>()V

    sput-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->sFooterCreator:Lcom/scwang/smartrefresh/layout/api/DefaultRefreshFooterCreator;

    .line 208
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$2;

    invoke-direct {v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$2;-><init>()V

    sput-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->sHeaderCreator:Lcom/scwang/smartrefresh/layout/api/DefaultRefreshHeaderCreator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 224
    invoke-direct {p0, p1, p2, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .line 228
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0xfa

    .line 96
    iput p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFloorDuration:I

    .line 97
    iput p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mReboundDuration:I

    const/high16 p3, 0x3f000000    # 0.5f

    .line 103
    iput p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDragRate:F

    const/16 p3, 0x6e

    .line 104
    iput-char p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDragDirection:C

    const/4 p3, 0x1

    .line 120
    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 122
    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableClipHeaderWhenFixedBehind:Z

    .line 123
    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableClipFooterWhenFixedBehind:Z

    .line 124
    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    .line 125
    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterTranslationContent:Z

    .line 126
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenLoadFinished:Z

    .line 127
    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnablePreviewInEditMode:Z

    .line 128
    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollBounce:Z

    .line 129
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    .line 130
    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableAutoLoadMore:Z

    .line 131
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnablePureScrollMode:Z

    .line 132
    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableScrollContentWhenLoaded:Z

    .line 133
    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableScrollContentWhenRefreshed:Z

    .line 134
    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMoreWhenContentNotFull:Z

    .line 135
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDisableContentWhenRefresh:Z

    .line 136
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDisableContentWhenLoading:Z

    .line 137
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    .line 139
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualLoadMore:Z

    .line 140
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualNestedScrolling:Z

    .line 141
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualHeaderTranslationContent:Z

    .line 142
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualFooterTranslationContent:Z

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 155
    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mParentOffsetInWindow:[I

    .line 156
    new-instance v2, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {v2, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    .line 157
    new-instance v2, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {v2, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedParent:Landroidx/core/view/NestedScrollingParentHelper;

    .line 163
    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->DefaultUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    .line 165
    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    const/high16 v2, 0x40200000    # 2.5f

    .line 172
    iput v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    .line 173
    iput v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterMaxDragRate:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 174
    iput v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderTriggerRate:F

    .line 175
    iput v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterTriggerRate:F

    .line 184
    new-instance v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;

    invoke-direct {v3, p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V

    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 187
    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    .line 188
    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    const-wide/16 v3, 0x0

    .line 190
    iput-wide v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastOpenTime:J

    .line 192
    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderBackgroundColor:I

    .line 193
    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterBackgroundColor:I

    .line 198
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    .line 767
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mVerticalPermit:Z

    const/4 v3, 0x0

    .line 797
    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    .line 230
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 232
    new-instance v3, Lcom/scwang/smartrefresh/layout/util/DensityUtil;

    invoke-direct {v3}, Lcom/scwang/smartrefresh/layout/util/DensityUtil;-><init>()V

    .line 233
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    .line 235
    new-instance v5, Landroid/widget/Scroller;

    invoke-direct {v5, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    .line 236
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScreenHeightPixels:I

    .line 238
    new-instance v5, Lcom/scwang/smartrefresh/layout/util/ViscousFluidInterpolator;

    invoke-direct {v5}, Lcom/scwang/smartrefresh/layout/util/ViscousFluidInterpolator;-><init>()V

    iput-object v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mReboundInterpolator:Landroid/view/animation/Interpolator;

    .line 239
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSlop:I

    .line 240
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v5

    iput v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mMinimumVelocity:I

    .line 241
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mMaximumVelocity:I

    .line 243
    sget-object v4, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 245
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableNestedScrolling:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setNestedScrollingEnabled(Z)V

    .line 246
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlDragRate:I

    iget v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDragRate:F

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDragRate:F

    .line 247
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlHeaderMaxDragRate:I

    iget v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    .line 248
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlFooterMaxDragRate:I

    iget v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterMaxDragRate:F

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterMaxDragRate:F

    .line 249
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlHeaderTriggerRate:I

    iget v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderTriggerRate:F

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderTriggerRate:F

    .line 250
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlFooterTriggerRate:I

    iget v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterTriggerRate:F

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterTriggerRate:F

    .line 251
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableRefresh:I

    iget-boolean v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    .line 252
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlReboundDuration:I

    iget v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mReboundDuration:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mReboundDuration:I

    .line 253
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableLoadMore:I

    iget-boolean v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 254
    sget v5, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlHeaderHeight:I

    const/high16 v6, 0x42c80000    # 100.0f

    invoke-virtual {v3, v6}, Lcom/scwang/smartrefresh/layout/util/DensityUtil;->dip2px(F)I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    .line 255
    sget v6, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlFooterHeight:I

    const/high16 v7, 0x42700000    # 60.0f

    invoke-virtual {v3, v7}, Lcom/scwang/smartrefresh/layout/util/DensityUtil;->dip2px(F)I

    move-result v3

    invoke-virtual {p1, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    .line 256
    sget v3, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlHeaderInsetStart:I

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderInsetStart:I

    .line 257
    sget v3, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlFooterInsetStart:I

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterInsetStart:I

    .line 258
    sget v3, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlDisableContentWhenRefresh:I

    iget-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDisableContentWhenRefresh:Z

    invoke-virtual {p1, v3, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDisableContentWhenRefresh:Z

    .line 259
    sget v3, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlDisableContentWhenLoading:I

    iget-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDisableContentWhenLoading:Z

    invoke-virtual {p1, v3, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDisableContentWhenLoading:Z

    .line 260
    sget v3, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableHeaderTranslationContent:I

    iget-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    invoke-virtual {p1, v3, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    .line 261
    sget v7, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableFooterTranslationContent:I

    iget-boolean v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterTranslationContent:Z

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterTranslationContent:Z

    .line 262
    sget v7, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnablePreviewInEditMode:I

    iget-boolean v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnablePreviewInEditMode:Z

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnablePreviewInEditMode:Z

    .line 263
    sget v7, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableAutoLoadMore:I

    iget-boolean v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableAutoLoadMore:Z

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableAutoLoadMore:Z

    .line 264
    sget v7, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableOverScrollBounce:I

    iget-boolean v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollBounce:Z

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollBounce:Z

    .line 265
    sget v7, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnablePureScrollMode:I

    iget-boolean v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnablePureScrollMode:Z

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnablePureScrollMode:Z

    .line 266
    sget v7, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableScrollContentWhenLoaded:I

    iget-boolean v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableScrollContentWhenLoaded:Z

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableScrollContentWhenLoaded:Z

    .line 267
    sget v7, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableScrollContentWhenRefreshed:I

    iget-boolean v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableScrollContentWhenRefreshed:Z

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableScrollContentWhenRefreshed:Z

    .line 268
    sget v7, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableLoadMoreWhenContentNotFull:I

    iget-boolean v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMoreWhenContentNotFull:Z

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMoreWhenContentNotFull:Z

    .line 269
    sget v7, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableFooterFollowWhenLoadFinished:I

    iget-boolean v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenLoadFinished:Z

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenLoadFinished:Z

    .line 270
    sget v7, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableClipHeaderWhenFixedBehind:I

    iget-boolean v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableClipHeaderWhenFixedBehind:Z

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableClipHeaderWhenFixedBehind:Z

    .line 271
    sget v7, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableClipFooterWhenFixedBehind:I

    iget-boolean v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableClipFooterWhenFixedBehind:Z

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableClipFooterWhenFixedBehind:Z

    .line 272
    sget v7, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableOverScrollDrag:I

    iget-boolean v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    .line 273
    sget v8, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlFixedHeaderViewId:I

    const/4 v9, -0x1

    invoke-virtual {p1, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFixedHeaderViewId:I

    .line 274
    sget v8, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlFixedFooterViewId:I

    invoke-virtual {p1, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFixedFooterViewId:I

    .line 276
    iget-boolean v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnablePureScrollMode:Z

    if-eqz v8, :cond_0

    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 277
    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    .line 280
    :cond_0
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualLoadMore:Z

    .line 281
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualNestedScrolling:Z

    .line 282
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualHeaderTranslationContent:Z

    .line 283
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlLayoutUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    :goto_0
    iput-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    .line 284
    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlLayoutUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    :goto_1
    iput-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    .line 286
    iget p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    int-to-float p2, p2

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    sub-float/2addr v3, v2

    mul-float/2addr p2, v3

    const/4 v3, 0x0

    invoke-static {p2, v3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderExtendHeight:I

    .line 287
    iget p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    int-to-float p2, p2

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterMaxDragRate:F

    sub-float/2addr v4, v2

    mul-float/2addr p2, v4

    invoke-static {p2, v3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterExtendHeight:I

    .line 289
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlAccentColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 290
    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlPrimaryColor:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p2, :cond_3

    new-array v1, v1, [I

    aput v2, v1, v0

    aput p2, v1, p3

    .line 293
    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mPrimaryColors:[I

    goto :goto_2

    :cond_3
    new-array p2, p3, [I

    aput v2, p2, v0

    .line 295
    iput-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mPrimaryColors:[I

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_5

    new-array v1, v1, [I

    aput v0, v1, v0

    aput p2, v1, p3

    .line 298
    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mPrimaryColors:[I

    .line 301
    :cond_5
    :goto_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$001(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 87
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$101(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 87
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$201(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 87
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$301(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 87
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static setDefaultRefreshFooterCreator(Lcom/scwang/smartrefresh/layout/api/DefaultRefreshFooterCreator;)V
    .locals 0

    .line 2724
    sput-object p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->sFooterCreator:Lcom/scwang/smartrefresh/layout/api/DefaultRefreshFooterCreator;

    const/4 p0, 0x1

    .line 2725
    sput-boolean p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->sManualFooterCreator:Z

    return-void
.end method

.method public static setDefaultRefreshHeaderCreator(Lcom/scwang/smartrefresh/layout/api/DefaultRefreshHeaderCreator;)V
    .locals 0

    .line 2716
    sput-object p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->sHeaderCreator:Lcom/scwang/smartrefresh/layout/api/DefaultRefreshHeaderCreator;

    return-void
.end method


# virtual methods
.method protected animSpinner(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;
    .locals 3

    .line 1328
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_1

    .line 1329
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1330
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1332
    :cond_0
    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 1333
    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    int-to-long v0, p4

    .line 1334
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1335
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1336
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;

    invoke-direct {p3, p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1353
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;

    invoke-direct {p3, p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1359
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1360
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 1361
    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    return-object p0

    :cond_1
    return-object v1
.end method

.method protected animSpinnerBounce(F)V
    .locals 3

    .line 1370
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    .line 1371
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v1, v2, :cond_1

    .line 1372
    :cond_0
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$BounceRunnable;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    invoke-direct {v0, p0, p1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$BounceRunnable;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;FI)V

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    goto :goto_0

    :cond_1
    cmpg-float v0, p1, v0

    if-gez v0, :cond_4

    .line 1373
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenLoadFinished:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v0, :cond_2

    .line 1374
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableLoadMore()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableAutoLoadMore:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-nez v0, :cond_4

    .line 1375
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableLoadMore()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v0, v1, :cond_4

    .line 1376
    :cond_3
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$BounceRunnable;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    neg-int v1, v1

    invoke-direct {v0, p0, p1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$BounceRunnable;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;FI)V

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 1377
    :cond_4
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollBounce:Z

    if-eqz v0, :cond_5

    .line 1378
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$BounceRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$BounceRunnable;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;FI)V

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    :cond_5
    :goto_0
    return-void
.end method

.method public canScrollVertically(I)Z
    .locals 3

    .line 1648
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getScrollableView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez p1, :cond_2

    .line 1650
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefresh()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {v0}, Lcom/scwang/smartrefresh/layout/util/ScrollBoundaryUtil;->canScrollUp(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    :cond_2
    if-lez p1, :cond_5

    .line 1652
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableLoadMore()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/scwang/smartrefresh/layout/util/ScrollBoundaryUtil;->canScrollDown(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1

    :cond_5
    return v2
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1482
    instance-of p0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;

    return p0
.end method

.method public computeScroll()V
    .locals 3

    .line 770
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    .line 771
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 772
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    const/4 v1, 0x1

    if-gez v0, :cond_1

    .line 773
    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefresh()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->canRefresh()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    if-lez v0, :cond_6

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez v2, :cond_2

    .line 774
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableLoadMore()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_2
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->canLoadMore()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 775
    :cond_3
    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mVerticalPermit:Z

    if-eqz v2, :cond_5

    if-lez v0, :cond_4

    .line 778
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v0

    neg-float v0, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v0

    .line 782
    :goto_0
    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->animSpinnerBounce(F)V

    .line 784
    :cond_5
    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_1

    .line 786
    :cond_6
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mVerticalPermit:Z

    .line 788
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_7
    :goto_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 806
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v2, 0x6

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ne v6, v2, :cond_0

    move v3, v11

    goto :goto_0

    :cond_0
    move v3, v10

    :goto_0
    if-eqz v3, :cond_1

    .line 808
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    .line 812
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/4 v7, 0x0

    move v9, v7

    move v12, v9

    move v8, v10

    :goto_2
    if-ge v8, v5, :cond_3

    if-ne v4, v8, :cond_2

    goto :goto_3

    .line 815
    :cond_2
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    add-float/2addr v9, v13

    .line 816
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    add-float/2addr v12, v13

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    add-int/lit8 v5, v5, -0x1

    :cond_4
    int-to-float v3, v5

    div-float/2addr v9, v3

    div-float v8, v12, v3

    const/4 v3, 0x5

    if-eq v6, v2, :cond_5

    if-ne v6, v3, :cond_6

    .line 821
    :cond_5
    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz v4, :cond_6

    .line 823
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchY:F

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchY:F

    sub-float v5, v8, v5

    add-float/2addr v4, v5

    iput v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchY:F

    .line 825
    :cond_6
    iput v9, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchX:F

    .line 826
    iput v8, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchY:F

    .line 831
    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedInProgress:Z

    const/4 v5, 0x2

    if-eqz v4, :cond_a

    .line 832
    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    .line 833
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-ne v6, v5, :cond_9

    .line 836
    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    if-ne v2, v3, :cond_9

    .line 837
    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchX:F

    float-to-int v2, v2

    .line 838
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 839
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchX:F

    if-nez v3, :cond_7

    goto :goto_4

    :cond_7
    move v11, v3

    :goto_4
    int-to-float v5, v11

    div-float/2addr v4, v5

    .line 840
    invoke-virtual/range {p0 .. p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefresh()Z

    move-result v5

    if-eqz v5, :cond_8

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-lez v5, :cond_8

    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v5, :cond_8

    invoke-interface {v5}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->isSupportHorizontalDrag()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 841
    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v0, v4, v2, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onHorizontalDrag(FII)V

    goto :goto_5

    .line 842
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableLoadMore()Z

    move-result v5

    if-eqz v5, :cond_9

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-gez v5, :cond_9

    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v5, :cond_9

    invoke-interface {v5}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->isSupportHorizontalDrag()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 843
    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v0, v4, v2, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onHorizontalDrag(FII)V

    :cond_9
    :goto_5
    return v1

    .line 848
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 849
    invoke-virtual/range {p0 .. p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefresh()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableLoadMore()Z

    move-result v4

    if-nez v4, :cond_b

    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-eqz v4, :cond_3a

    :cond_b
    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderNeedTouchEventWhenRefreshing:Z

    if-eqz v4, :cond_d

    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v12, v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-nez v12, :cond_c

    iget-boolean v12, v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isFinishing:Z

    if-eqz v12, :cond_d

    :cond_c
    iget-boolean v4, v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isHeader:Z

    if-nez v4, :cond_3a

    :cond_d
    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNeedTouchEventWhenLoading:Z

    if-eqz v4, :cond_f

    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v12, v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-nez v12, :cond_e

    iget-boolean v12, v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isFinishing:Z

    if-eqz v12, :cond_f

    :cond_e
    iget-boolean v4, v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isFooter:Z

    if-eqz v4, :cond_f

    goto/16 :goto_f

    .line 855
    :cond_f
    invoke-virtual {v0, v6}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->interceptByAnimator(I)Z

    move-result v4

    if-nez v4, :cond_39

    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v12, v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isFinishing:Z

    if-nez v12, :cond_39

    sget-object v12, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v4, v12, :cond_10

    iget-boolean v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDisableContentWhenLoading:Z

    if-nez v13, :cond_39

    :cond_10
    sget-object v13, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v4, v13, :cond_11

    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDisableContentWhenRefresh:Z

    if-eqz v4, :cond_11

    goto/16 :goto_e

    .line 861
    :cond_11
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-eqz v4, :cond_15

    if-eqz v6, :cond_14

    if-eq v6, v11, :cond_13

    if-eq v6, v5, :cond_12

    goto :goto_6

    .line 871
    :cond_12
    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedInProgress:Z

    if-nez v4, :cond_15

    .line 872
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_6

    .line 876
    :cond_13
    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedInProgress:Z

    if-nez v4, :cond_15

    .line 877
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 878
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v13, 0x3e8

    iget v14, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mMaximumVelocity:I

    int-to-float v14, v14

    invoke-virtual {v4, v13, v14}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    goto :goto_6

    .line 865
    :cond_14
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->clear()V

    .line 866
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 867
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v4, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->onActionDown(Landroid/view/MotionEvent;)V

    .line 868
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4, v11}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_15
    :goto_6
    const/16 v4, 0x68

    if-eqz v6, :cond_37

    const/4 v2, 0x0

    if-eq v6, v11, :cond_33

    const/4 v3, 0x3

    if-eq v6, v5, :cond_16

    if-eq v6, v3, :cond_34

    goto/16 :goto_d

    .line 900
    :cond_16
    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchX:F

    sub-float/2addr v9, v5

    .line 901
    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchY:F

    sub-float v5, v8, v5

    .line 902
    iget-boolean v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    if-nez v6, :cond_23

    iget-char v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDragDirection:C

    if-eq v6, v4, :cond_23

    iget-object v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-eqz v13, :cond_23

    const/16 v13, 0x76

    if-eq v6, v13, :cond_18

    .line 903
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v14, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSlop:I

    int-to-float v14, v14

    cmpl-float v6, v6, v14

    if-ltz v6, :cond_17

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v14

    cmpg-float v6, v6, v14

    if-gez v6, :cond_17

    goto :goto_7

    .line 925
    :cond_17
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSlop:I

    int-to-float v12, v12

    cmpl-float v6, v6, v12

    if-ltz v6, :cond_23

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v12

    cmpl-float v6, v6, v12

    if-lez v6, :cond_23

    iget-char v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDragDirection:C

    if-eq v6, v13, :cond_23

    .line 926
    iput-char v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDragDirection:C

    goto/16 :goto_b

    .line 904
    :cond_18
    :goto_7
    iput-char v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDragDirection:C

    cmpl-float v4, v5, v7

    if-lez v4, :cond_1b

    .line 905
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-ltz v4, :cond_1a

    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez v4, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefresh()Z

    move-result v4

    if-eqz v4, :cond_1b

    :cond_19
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v4}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->canRefresh()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 906
    :cond_1a
    iput-boolean v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    .line 907
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSlop:I

    int-to-float v4, v4

    sub-float v4, v8, v4

    iput v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchY:F

    goto :goto_8

    :cond_1b
    cmpg-float v4, v5, v7

    if-gez v4, :cond_1f

    .line 908
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-gtz v4, :cond_1e

    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez v4, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableLoadMore()Z

    move-result v4

    if-eqz v4, :cond_1f

    :cond_1c
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v4, v12, :cond_1d

    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    if-nez v4, :cond_1e

    :cond_1d
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v4}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->canLoadMore()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 909
    :cond_1e
    iput-boolean v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    .line 910
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSlop:I

    int-to-float v4, v4

    add-float/2addr v4, v8

    iput v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchY:F

    .line 912
    :cond_1f
    :goto_8
    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz v4, :cond_23

    .line 913
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchY:F

    sub-float v5, v8, v4

    .line 914
    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSuperDispatchTouchEvent:Z

    if-eqz v4, :cond_20

    .line 915
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 916
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 918
    :cond_20
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-gtz v4, :cond_22

    if-nez v4, :cond_21

    cmpl-float v4, v5, v7

    if-lez v4, :cond_21

    goto :goto_9

    .line 921
    :cond_21
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v6, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v4, v6}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_a

    .line 919
    :cond_22
    :goto_9
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v6, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v4, v6}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 923
    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v11}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 929
    :cond_23
    :goto_b
    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz v4, :cond_32

    float-to-int v4, v5

    .line 930
    iget v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSpinner:I

    add-int/2addr v4, v6

    .line 931
    iget-object v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v12, v6, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isHeader:Z

    if-eqz v12, :cond_24

    if-ltz v4, :cond_25

    iget v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastSpinner:I

    if-ltz v12, :cond_25

    :cond_24
    iget-boolean v6, v6, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isFooter:Z

    if-eqz v6, :cond_31

    if-gtz v4, :cond_25

    iget v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastSpinner:I

    if-lez v6, :cond_31

    .line 932
    :cond_25
    iput v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastSpinner:I

    .line 933
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

    .line 934
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    if-nez v1, :cond_26

    const/16 v16, 0x0

    .line 935
    iget v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchX:F

    add-float v17, v1, v9

    iget v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchY:F

    const/16 v19, 0x0

    move-wide/from16 v12, v20

    move-wide/from16 v14, v20

    move/from16 v18, v1

    invoke-static/range {v12 .. v19}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    .line 936
    invoke-super {v0, v1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_26
    const/16 v16, 0x2

    .line 938
    iget v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchX:F

    add-float v17, v1, v9

    iget v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchY:F

    int-to-float v6, v4

    add-float v18, v1, v6

    const/16 v19, 0x0

    move-wide/from16 v12, v20

    move-wide/from16 v14, v20

    invoke-static/range {v12 .. v19}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 939
    invoke-super {v0, v1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 940
    iget-boolean v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    if-eqz v6, :cond_27

    iget v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_27

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-gez v5, :cond_27

    .line 941
    iput-boolean v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    :cond_27
    if-lez v4, :cond_29

    .line 943
    iget-boolean v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez v5, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefresh()Z

    move-result v5

    if-eqz v5, :cond_29

    :cond_28
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v5}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->canRefresh()Z

    move-result v5

    if-eqz v5, :cond_29

    .line 944
    iput v8, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchY:F

    iput v8, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchY:F

    .line 945
    iput v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSpinner:I

    .line 946
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v5, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v4, v5}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_c

    :cond_29
    if-gez v4, :cond_2b

    .line 947
    iget-boolean v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez v5, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableLoadMore()Z

    move-result v5

    if-eqz v5, :cond_2b

    :cond_2a
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v5}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->canLoadMore()Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 948
    iput v8, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchY:F

    iput v8, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchY:F

    .line 949
    iput v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSpinner:I

    .line 950
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v5, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v4, v5}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_c

    :cond_2b
    move v10, v4

    .line 952
    :goto_c
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v5, v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isHeader:Z

    if-eqz v5, :cond_2c

    if-ltz v10, :cond_2d

    :cond_2c
    iget-boolean v4, v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isFooter:Z

    if-eqz v4, :cond_2f

    if-lez v10, :cond_2f

    .line 953
    :cond_2d
    iget v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-eqz v1, :cond_2e

    .line 954
    invoke-virtual {v0, v7}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->moveSpinnerInfinitely(F)V

    :cond_2e
    return v11

    .line 957
    :cond_2f
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_30

    .line 958
    iput-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    .line 959
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 960
    invoke-super {v0, v1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 962
    :cond_30
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    move v4, v10

    :cond_31
    int-to-float v1, v4

    .line 964
    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->moveSpinnerInfinitely(F)V

    return v11

    .line 966
    :cond_32
    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    if-eqz v2, :cond_36

    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v2, v5, v2

    if-lez v2, :cond_36

    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-gez v2, :cond_36

    .line 967
    iput-boolean v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    goto :goto_d

    .line 971
    :cond_33
    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->startFlingIfNeed(Ljava/lang/Float;)Z

    :cond_34
    const/16 v3, 0x6e

    .line 973
    iput-char v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDragDirection:C

    .line 974
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_35

    .line 975
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 976
    iput-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    .line 977
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 978
    iget v7, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchX:F

    const/4 v9, 0x0

    move-wide v2, v4

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 979
    invoke-super {v0, v2}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 980
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 982
    :cond_35
    invoke-virtual/range {p0 .. p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->overSpinner()V

    .line 983
    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_36

    .line 984
    iput-boolean v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    return v11

    .line 989
    :cond_36
    :goto_d
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 887
    :cond_37
    iput v9, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchX:F

    .line 888
    iput v8, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchY:F

    .line 889
    iput v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastSpinner:I

    .line 890
    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    iput v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSpinner:I

    .line 891
    iput-boolean v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    .line 892
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSuperDispatchTouchEvent:Z

    .line 893
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v5, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v1, v5, :cond_38

    iget v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchY:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    mul-int/2addr v5, v3

    div-int/2addr v5, v2

    int-to-float v2, v5

    cmpg-float v1, v1, v2

    if-gez v1, :cond_38

    .line 894
    iput-char v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDragDirection:C

    .line 895
    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSuperDispatchTouchEvent:Z

    return v0

    :cond_38
    return v11

    :cond_39
    :goto_e
    return v10

    .line 852
    :cond_3a
    :goto_f
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 10

    .line 712
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 713
    :goto_0
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, p2, :cond_6

    .line 714
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefresh()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnablePreviewInEditMode:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    :cond_1
    if-eqz v0, :cond_6

    .line 718
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    add-int/2addr v1, v3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 719
    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderBackgroundColor:I

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    if-eqz v4, :cond_4

    .line 720
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 721
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v3

    sget-object v4, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Scale:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v3, v4, :cond_2

    .line 722
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v1

    goto :goto_1

    .line 723
    :cond_2
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v3

    sget-object v4, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v3, v4, :cond_3

    .line 724
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    add-int/2addr v1, v3

    .line 726
    :cond_3
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v5, v3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v6, v3

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v7, v3

    int-to-float v8, v1

    iget-object v9, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 728
    :cond_4
    iget-boolean v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableClipHeaderWhenFixedBehind:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v3

    sget-object v4, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v3, v4, :cond_6

    .line 729
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 730
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 731
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    .line 732
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p0

    :cond_5
    :goto_2
    return v2

    .line 737
    :cond_6
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v1, :cond_c

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, p2, :cond_c

    .line 738
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableLoadMore()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnablePreviewInEditMode:Z

    if-nez v1, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_4

    :cond_7
    if-eqz v0, :cond_c

    .line 742
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    add-int/2addr v1, v0

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 743
    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterBackgroundColor:I

    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_a

    .line 744
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 745
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v1

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Scale:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v1, v2, :cond_8

    .line 746
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_3

    .line 747
    :cond_8
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v1

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v1, v2, :cond_9

    .line 748
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    add-int/2addr v0, v1

    .line 750
    :cond_9
    :goto_3
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v3, v1

    int-to-float v4, v0

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v5, v1

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v6, v1

    iget-object v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 752
    :cond_a
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableClipFooterWhenFixedBehind:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v1

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v1, v2, :cond_c

    .line 753
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 754
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 755
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    .line 756
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p0

    :cond_b
    :goto_4
    return v2

    .line 762
    :cond_c
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0
.end method

.method public finishLoadMore(I)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2423
    invoke-virtual {p0, p1, v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore(IZZ)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p0

    return-object p0
.end method

.method public finishLoadMore(IZZ)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 1

    .line 2446
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;

    invoke-direct {v0, p0, p2, p3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;ZZ)V

    if-gtz p1, :cond_0

    const-wide/16 p1, 0x1

    goto :goto_0

    :cond_0
    int-to-long p1, p1

    :goto_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p0
.end method

.method public finishRefresh(I)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 1

    const/4 v0, 0x1

    .line 2354
    invoke-virtual {p0, p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh(IZ)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p0

    return-object p0
.end method

.method public finishRefresh(IZ)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 1

    .line 2376
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;

    invoke-direct {v0, p0, p2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Z)V

    if-gtz p1, :cond_0

    const-wide/16 p1, 0x1

    goto :goto_0

    :cond_0
    int-to-long p1, p1

    :goto_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 85
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->generateDefaultLayoutParams()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateDefaultLayoutParams()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;
    .locals 1

    .line 1487
    new-instance p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;
    .locals 1

    .line 1498
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;
    .locals 0

    .line 1492
    new-instance p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public bridge synthetic getLayout()Landroid/view/ViewGroup;
    .locals 0

    .line 85
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->getLayout()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p0

    return-object p0
.end method

.method public getLayout()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 0

    return-object p0
.end method

.method public getNestedScrollAxes()I
    .locals 0

    .line 1536
    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedParent:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result p0

    return p0
.end method

.method public getRefreshFooter()Lcom/scwang/smartrefresh/layout/api/RefreshFooter;
    .locals 1

    .line 2188
    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    instance-of v0, p0, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getRefreshHeader()Lcom/scwang/smartrefresh/layout/api/RefreshHeader;
    .locals 1

    .line 2198
    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    instance-of v0, p0, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getState()Lcom/scwang/smartrefresh/layout/constant/RefreshState;
    .locals 0

    .line 2207
    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    return-object p0
.end method

.method protected interceptByAnimator(I)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 1021
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    .line 1022
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_3

    .line 1023
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v2, v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isFinishing:Z

    if-eqz v2, :cond_0

    return v0

    .line 1026
    :cond_0
    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownCanceled:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v1, v2, :cond_1

    .line 1027
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v1, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_0

    .line 1028
    :cond_1
    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpCanceled:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v1, v2, :cond_2

    .line 1029
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v1, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 1031
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1032
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    .line 1035
    :cond_3
    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public isEnableLoadMore()Z
    .locals 1

    .line 2708
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnablePureScrollMode:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnableRefresh()Z
    .locals 1

    .line 2703
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnablePureScrollMode:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 0

    .line 1643
    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result p0

    return p0
.end method

.method protected moveSpinnerInfinitely(F)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1428
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    cmpl-float v3, v1, v5

    if-lez v3, :cond_0

    .line 1429
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    float-to-int v3, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-interface {v2, v3, v4}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto/16 :goto_0

    .line 1430
    :cond_0
    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    if-ne v2, v3, :cond_3

    cmpl-float v3, v1, v5

    if-ltz v3, :cond_3

    .line 1431
    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    .line 1432
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    float-to-int v3, v1

    invoke-interface {v2, v3, v4}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto/16 :goto_0

    .line 1434
    :cond_1
    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderExtendHeight:I

    int-to-double v2, v2

    .line 1435
    iget v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScreenHeightPixels:I

    mul-int/lit8 v12, v12, 0x4

    div-int/lit8 v12, v12, 0x3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    iget v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    sub-int/2addr v12, v13

    int-to-double v14, v12

    int-to-float v12, v13

    sub-float v12, v1, v12

    .line 1436
    iget v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDragRate:F

    mul-float/2addr v12, v13

    invoke-static {v5, v12}, Ljava/lang/Math;->max(FF)F

    move-result v12

    float-to-double v12, v12

    neg-double v4, v12

    cmpl-double v6, v14, v6

    if-nez v6, :cond_2

    move-wide v14, v10

    :cond_2
    div-double/2addr v4, v14

    .line 1437
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double/2addr v10, v4

    mul-double/2addr v2, v10

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 1438
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    double-to-int v2, v2

    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    add-int/2addr v2, v3

    const/4 v3, 0x1

    invoke-interface {v4, v2, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto/16 :goto_0

    :cond_3
    move v3, v5

    cmpg-float v4, v1, v3

    if-gez v4, :cond_8

    .line 1440
    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v2, v3, :cond_5

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenLoadFinished:Z

    if-eqz v2, :cond_4

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v2, :cond_4

    .line 1441
    invoke-virtual/range {p0 .. p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableLoadMore()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableAutoLoadMore:Z

    if-eqz v2, :cond_8

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-nez v2, :cond_8

    .line 1442
    invoke-virtual/range {p0 .. p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableLoadMore()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1443
    :cond_5
    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_6

    .line 1444
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    float-to-int v3, v1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto/16 :goto_0

    .line 1446
    :cond_6
    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterExtendHeight:I

    int-to-double v2, v2

    .line 1447
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScreenHeightPixels:I

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v4, v4, 0x3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    sub-int/2addr v4, v5

    int-to-double v12, v4

    int-to-float v4, v5

    add-float/2addr v4, v1

    .line 1448
    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDragRate:F

    mul-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    neg-float v4, v4

    float-to-double v4, v4

    neg-double v14, v4

    cmpl-double v6, v12, v6

    if-nez v6, :cond_7

    move-wide v12, v10

    :cond_7
    div-double/2addr v14, v12

    .line 1449
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-double/2addr v10, v6

    mul-double/2addr v2, v10

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    neg-double v2, v2

    .line 1450
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    double-to-int v2, v2

    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    invoke-interface {v4, v2, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_0

    :cond_8
    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_a

    .line 1453
    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderExtendHeight:I

    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    add-int/2addr v2, v3

    int-to-double v2, v2

    .line 1454
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScreenHeightPixels:I

    div-int/lit8 v4, v4, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-double v4, v4

    .line 1455
    iget v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDragRate:F

    mul-float/2addr v12, v1

    const/4 v13, 0x0

    invoke-static {v13, v12}, Ljava/lang/Math;->max(FF)F

    move-result v12

    float-to-double v12, v12

    neg-double v14, v12

    cmpl-double v6, v4, v6

    if-nez v6, :cond_9

    move-wide v4, v10

    :cond_9
    div-double/2addr v14, v4

    .line 1456
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double/2addr v10, v4

    mul-double/2addr v2, v10

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 1457
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    double-to-int v2, v2

    const/4 v3, 0x1

    invoke-interface {v4, v2, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_0

    .line 1459
    :cond_a
    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterExtendHeight:I

    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    add-int/2addr v2, v3

    int-to-double v2, v2

    .line 1460
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScreenHeightPixels:I

    div-int/lit8 v4, v4, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-double v4, v4

    .line 1461
    iget v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDragRate:F

    mul-float/2addr v12, v1

    const/4 v13, 0x0

    invoke-static {v13, v12}, Ljava/lang/Math;->min(FF)F

    move-result v12

    neg-float v12, v12

    float-to-double v12, v12

    neg-double v14, v12

    cmpl-double v6, v4, v6

    if-nez v6, :cond_b

    move-wide v4, v10

    :cond_b
    div-double/2addr v14, v4

    .line 1462
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double/2addr v10, v4

    mul-double/2addr v2, v10

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    neg-double v2, v2

    .line 1463
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    double-to-int v2, v2

    const/4 v3, 0x1

    invoke-interface {v4, v2, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 1465
    :goto_0
    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableAutoLoadMore:Z

    if-eqz v2, :cond_c

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-nez v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableLoadMore()Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_c

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v1, v2, :cond_c

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v1, v2, :cond_c

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->LoadFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v1, v2, :cond_c

    .line 1469
    invoke-virtual/range {p0 .. p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setStateDirectLoading()V

    .line 1470
    iget-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDisableContentWhenLoading:Z

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    .line 1471
    iput-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    .line 1472
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    neg-int v0, v0

    invoke-interface {v1, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    :cond_c
    return-void
.end method

.method protected notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V
    .locals 4

    .line 1062
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v0, p1, :cond_2

    .line 1064
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    .line 1065
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    .line 1066
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    .line 1067
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    .line 1068
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mOnMultiPurposeListener:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    if-eqz v1, :cond_0

    .line 1070
    invoke-interface {v1, p0, v0, p1}, Lcom/scwang/smartrefresh/layout/listener/OnStateChangedListener;->onStateChanged(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Lcom/scwang/smartrefresh/layout/constant/RefreshState;Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    :cond_0
    if-eqz v2, :cond_1

    .line 1073
    invoke-interface {v2, p0, v0, p1}, Lcom/scwang/smartrefresh/layout/listener/OnStateChangedListener;->onStateChanged(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Lcom/scwang/smartrefresh/layout/constant/RefreshState;Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    :cond_1
    if-eqz v3, :cond_2

    .line 1076
    invoke-interface {v3, p0, v0, p1}, Lcom/scwang/smartrefresh/layout/listener/OnStateChangedListener;->onStateChanged(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Lcom/scwang/smartrefresh/layout/constant/RefreshState;Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    :cond_2
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .line 374
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 377
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_b

    .line 379
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 380
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mListDelayedRunnable:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 384
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scwang/smartrefresh/layout/util/DelayedRunnable;

    .line 385
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    iget-wide v4, v2, Lcom/scwang/smartrefresh/layout/util/DelayedRunnable;->delayMillis:J

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mListDelayedRunnable:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 388
    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mListDelayedRunnable:Ljava/util/List;

    .line 391
    :cond_2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-nez v0, :cond_3

    .line 392
    sget-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->sHeaderCreator:Lcom/scwang/smartrefresh/layout/api/DefaultRefreshHeaderCreator;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2, p0}, Lcom/scwang/smartrefresh/layout/api/DefaultRefreshHeaderCreator;->createRefreshHeader(Landroid/content/Context;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setRefreshHeader(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 394
    :cond_3
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    const/4 v2, 0x0

    if-nez v0, :cond_4

    .line 395
    sget-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->sFooterCreator:Lcom/scwang/smartrefresh/layout/api/DefaultRefreshFooterCreator;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v0, v3, p0}, Lcom/scwang/smartrefresh/layout/api/DefaultRefreshFooterCreator;->createRefreshFooter(Landroid/content/Context;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setRefreshFooter(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    goto :goto_3

    .line 397
    :cond_4
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualLoadMore:Z

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 400
    :goto_3
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-nez v0, :cond_7

    const/high16 v0, 0x41a00000    # 20.0f

    .line 401
    invoke-static {v0}, Lcom/scwang/smartrefresh/layout/util/DensityUtil;->dp2px(F)I

    move-result v3

    .line 402
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v5, -0x9a00

    .line 403
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v5, 0x11

    .line 404
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 405
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 406
    sget v0, Lcom/scwang/smartrefresh/layout/R$string;->srl_content_empty:I

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, -0x1

    .line 407
    invoke-super {p0, v4, v0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 408
    new-instance v0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;

    invoke-direct {v0, v4}, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    .line 409
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 412
    :cond_7
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFixedHeaderViewId:I

    if-lez v0, :cond_8

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_4

    :cond_8
    move-object v0, v1

    .line 413
    :goto_4
    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFixedFooterViewId:I

    if-lez v3, :cond_9

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 415
    :cond_9
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScrollBoundaryDecider:Lcom/scwang/smartrefresh/layout/api/ScrollBoundaryDecider;

    invoke-interface {v3, v4}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->setScrollBoundaryDecider(Lcom/scwang/smartrefresh/layout/api/ScrollBoundaryDecider;)V

    .line 416
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    iget-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMoreWhenContentNotFull:Z

    invoke-interface {v3, v4}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->setEnableLoadMoreWhenContentNotFull(Z)V

    .line 417
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v3, v4, v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->setUpComponent(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;Landroid/view/View;Landroid/view/View;)V

    .line 419
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-eqz v0, :cond_a

    .line 420
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    .line 421
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    iput v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    invoke-interface {v0, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->moveSpinner(I)V

    .line 424
    :cond_a
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualNestedScrolling:Z

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isNestedScrollingEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    .line 425
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$3;

    invoke-direct {v0, p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$3;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->post(Ljava/lang/Runnable;)Z

    .line 447
    :cond_b
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mPrimaryColors:[I

    if-eqz v0, :cond_d

    .line 448
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v1, :cond_c

    .line 449
    invoke-interface {v1, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->setPrimaryColors([I)V

    .line 451
    :cond_c
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_d

    .line 452
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mPrimaryColors:[I

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->setPrimaryColors([I)V

    .line 457
    :cond_d
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-eqz v0, :cond_e

    .line 458
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 460
    :cond_e
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v0

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-eq v0, v1, :cond_f

    .line 461
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 463
    :cond_f
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v0

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-eq v0, v1, :cond_10

    .line 464
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_10
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 693
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 694
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 695
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    .line 696
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 697
    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    .line 698
    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualLoadMore:Z

    .line 699
    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualNestedScrolling:Z

    .line 700
    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    .line 701
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 702
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 703
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 704
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 705
    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 11

    .line 310
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 311
    invoke-super {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_11

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v5, v2

    move v4, v3

    move v6, v4

    :goto_0
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v4, v0, :cond_4

    .line 319
    invoke-super {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 320
    invoke-static {v9}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->isScrollableView(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_1

    if-lt v6, v7, :cond_0

    if-ne v4, v8, :cond_1

    :cond_0
    move v5, v4

    move v6, v7

    goto :goto_2

    .line 323
    :cond_1
    instance-of v7, v9, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-nez v7, :cond_3

    if-ge v6, v8, :cond_3

    if-lez v4, :cond_2

    move v6, v8

    goto :goto_1

    :cond_2
    move v6, v3

    :goto_1
    move v5, v4

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-ltz v5, :cond_7

    .line 347
    new-instance v4, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;

    invoke-super {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-ne v5, v8, :cond_6

    if-ne v0, v1, :cond_5

    goto :goto_3

    :cond_5
    move v7, v2

    :goto_3
    move v1, v3

    goto :goto_4

    :cond_6
    if-ne v0, v7, :cond_7

    move v1, v2

    move v7, v8

    goto :goto_4

    :cond_7
    move v1, v2

    move v7, v1

    :goto_4
    move v4, v3

    :goto_5
    if-ge v4, v0, :cond_10

    .line 359
    invoke-super {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eq v4, v1, :cond_d

    if-eq v4, v7, :cond_8

    if-ne v1, v2, :cond_8

    .line 360
    iget-object v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-nez v6, :cond_8

    instance-of v6, v5, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    if-eqz v6, :cond_8

    goto :goto_9

    :cond_8
    if-eq v4, v7, :cond_9

    if-ne v7, v2, :cond_f

    .line 362
    instance-of v6, v5, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    if-eqz v6, :cond_f

    .line 363
    :cond_9
    iget-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    if-nez v6, :cond_b

    iget-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualLoadMore:Z

    if-nez v6, :cond_a

    goto :goto_6

    :cond_a
    move v6, v3

    goto :goto_7

    :cond_b
    :goto_6
    move v6, v8

    :goto_7
    iput-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 364
    instance-of v6, v5, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    if-eqz v6, :cond_c

    check-cast v5, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    goto :goto_8

    :cond_c
    new-instance v6, Lcom/scwang/smartrefresh/layout/impl/RefreshFooterWrapper;

    invoke-direct {v6, v5}, Lcom/scwang/smartrefresh/layout/impl/RefreshFooterWrapper;-><init>(Landroid/view/View;)V

    move-object v5, v6

    :goto_8
    iput-object v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    goto :goto_b

    .line 361
    :cond_d
    :goto_9
    instance-of v6, v5, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    if-eqz v6, :cond_e

    check-cast v5, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    goto :goto_a

    :cond_e
    new-instance v6, Lcom/scwang/smartrefresh/layout/impl/RefreshHeaderWrapper;

    invoke-direct {v6, v5}, Lcom/scwang/smartrefresh/layout/impl/RefreshHeaderWrapper;-><init>(Landroid/view/View;)V

    move-object v5, v6

    :goto_a
    iput-object v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    :cond_f
    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_10
    return-void

    .line 313
    :cond_11
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "\u6700\u591a\u53ea\u652f\u63013\u4e2a\u5b50View\uff0cMost only support three sub view"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    .line 625
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    .line 626
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    .line 627
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 629
    invoke-super {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 p4, 0x0

    move p5, p4

    :goto_0
    if-ge p5, p3, :cond_d

    .line 630
    invoke-super {p0, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 632
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, v0, :cond_3

    .line 633
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnablePreviewInEditMode:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefresh()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    move v1, p4

    .line 634
    :goto_1
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v3}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v3

    .line 635
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;

    .line 636
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, p1

    .line 637
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, p2

    .line 638
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v5

    .line 639
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v4

    if-eqz v1, :cond_2

    .line 640
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v1

    sget-object v8, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v1, v8, :cond_2

    .line 641
    :cond_1
    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    add-int/2addr v4, v1

    add-int/2addr v7, v1

    .line 645
    :cond_2
    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 647
    :cond_3
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, v0, :cond_6

    .line 648
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnablePreviewInEditMode:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefresh()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    move v1, p4

    .line 649
    :goto_2
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v3

    .line 650
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;

    .line 651
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 652
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderInsetStart:I

    add-int/2addr v4, v6

    .line 653
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v5

    .line 654
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v4

    if-nez v1, :cond_5

    .line 656
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v1

    sget-object v8, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v1, v8, :cond_5

    .line 657
    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    sub-int/2addr v4, v1

    sub-int/2addr v7, v1

    .line 666
    :cond_5
    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 668
    :cond_6
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v1, :cond_c

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, v0, :cond_c

    .line 669
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnablePreviewInEditMode:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableLoadMore()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    move v2, p4

    .line 670
    :goto_3
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    .line 671
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;

    .line 672
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v3

    .line 673
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 674
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v1, v5

    iget v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterInsetStart:I

    sub-int/2addr v1, v5

    if-nez v2, :cond_a

    .line 676
    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedFront:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-eq v3, v2, :cond_a

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v3, v2, :cond_8

    goto :goto_5

    .line 680
    :cond_8
    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Scale:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v3, v2, :cond_b

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-gez v2, :cond_b

    .line 681
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableLoadMore()Z

    move-result v2

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    neg-int v2, v2

    goto :goto_4

    :cond_9
    move v2, p4

    :goto_4
    invoke-static {v2, p4}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_6

    .line 679
    :cond_a
    :goto_5
    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    :goto_6
    sub-int/2addr v1, v2

    .line 684
    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v4

    .line 685
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v1

    .line 686
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    :cond_c
    add-int/lit8 p5, p5, 0x1

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method protected onMeasure(II)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 473
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnablePreviewInEditMode:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    .line 475
    :goto_0
    invoke-super/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    move v6, v4

    move v7, v6

    :goto_1
    if-ge v6, v5, :cond_20

    .line 476
    invoke-super {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 478
    iget-object v9, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    const/high16 v14, -0x80000000

    const/high16 v15, 0x40000000    # 2.0f

    if-eqz v9, :cond_d

    invoke-interface {v9}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v9

    if-ne v9, v8, :cond_d

    .line 479
    iget-object v9, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v9}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v9

    .line 480
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;

    .line 481
    iget v11, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v11, v12

    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v1, v11, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v11

    .line 484
    iget-object v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    sget-object v13, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlLayoutUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    invoke-virtual {v12, v13}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->gteReplaceWith(Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 485
    iget v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v12, v13

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v12, v13

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-static {v12, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 486
    invoke-virtual {v9, v11, v12}, Landroid/view/View;->measure(II)V

    goto/16 :goto_3

    .line 487
    :cond_1
    iget-object v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v12}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v12

    sget-object v13, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v12, v13, :cond_3

    .line 489
    iget-object v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    iget-boolean v12, v12, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->notified:Z

    if-nez v12, :cond_2

    .line 490
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v12, v13

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v12, v13

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-static {v12, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-super {v0, v9, v11, v12}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 491
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    goto :goto_2

    :cond_2
    move v12, v4

    .line 493
    :goto_2
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    iget v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v13, v14

    iget v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v13, v14

    invoke-static {v13, v4}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-static {v13, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v9, v11, v13}, Landroid/view/View;->measure(II)V

    if-lez v12, :cond_9

    .line 494
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    if-eq v12, v13, :cond_9

    .line 495
    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v12, v13

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v12, v13

    iput v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    goto/16 :goto_3

    .line 497
    :cond_3
    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-lez v12, :cond_5

    .line 498
    iget-object v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    sget-object v13, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlExactUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    invoke-virtual {v12, v13}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->canReplaceWith(Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 499
    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v12, v14

    iget v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v12, v14

    iput v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    .line 500
    iput-object v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    .line 502
    :cond_4
    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v12, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 503
    invoke-virtual {v9, v11, v12}, Landroid/view/View;->measure(II)V

    goto :goto_3

    :cond_5
    const/4 v13, -0x2

    if-ne v12, v13, :cond_7

    .line 505
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v12, v13

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v12, v13

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v12

    const/high16 v13, -0x80000000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 506
    invoke-virtual {v9, v11, v12}, Landroid/view/View;->measure(II)V

    .line 507
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    if-lez v12, :cond_6

    .line 508
    iget-object v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    sget-object v14, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlWrapUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    invoke-virtual {v13, v14}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->canReplaceWith(Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 509
    iput-object v14, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    .line 510
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v12, v13

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v12, v13

    iput v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    goto :goto_3

    :cond_6
    if-gtz v12, :cond_9

    .line 512
    iget v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v12, v13

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v12, v13

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-static {v12, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 513
    invoke-virtual {v9, v11, v12}, Landroid/view/View;->measure(II)V

    goto :goto_3

    :cond_7
    const/4 v13, -0x1

    if-ne v12, v13, :cond_8

    .line 516
    iget v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v12, v13

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v12, v13

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-static {v12, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 517
    invoke-virtual {v9, v11, v12}, Landroid/view/View;->measure(II)V

    goto :goto_3

    .line 519
    :cond_8
    invoke-virtual {v9, v11, v2}, Landroid/view/View;->measure(II)V

    .line 521
    :cond_9
    :goto_3
    iget-object v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v12}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v12

    sget-object v13, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Scale:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v12, v13, :cond_b

    if-nez v3, :cond_b

    .line 522
    invoke-virtual/range {p0 .. p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefresh()Z

    move-result v12

    if-eqz v12, :cond_a

    iget v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    goto :goto_4

    :cond_a
    move v12, v4

    :goto_4
    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 523
    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v12, v13

    iget v10, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v12, v10

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v10, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 524
    invoke-virtual {v9, v11, v10}, Landroid/view/View;->measure(II)V

    .line 527
    :cond_b
    iget-object v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    iget-boolean v11, v10, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->notified:Z

    if-nez v11, :cond_c

    .line 528
    invoke-virtual {v10}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->notified()Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    move-result-object v10

    iput-object v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    .line 529
    iget v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    int-to-float v10, v10

    iget v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    const/4 v11, 0x0

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    float-to-int v10, v10

    iput v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderExtendHeight:I

    .line 530
    iget-object v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    iget-object v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    invoke-interface {v11, v12, v13, v10}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onInitialized(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;II)V

    :cond_c
    if-eqz v3, :cond_d

    .line 533
    invoke-virtual/range {p0 .. p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefresh()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 534
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v7, v9

    .line 538
    :cond_d
    iget-object v9, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v9, :cond_1a

    invoke-interface {v9}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v9

    if-ne v9, v8, :cond_1a

    .line 539
    iget-object v9, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v9}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v9

    .line 540
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;

    .line 541
    iget v11, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v11, v12

    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v1, v11, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v11

    .line 543
    iget-object v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    sget-object v13, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlLayoutUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    invoke-virtual {v12, v13}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->gteReplaceWith(Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 544
    iget v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v12, v13

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v12, v13

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-static {v12, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 545
    invoke-virtual {v9, v11, v12}, Landroid/view/View;->measure(II)V

    goto/16 :goto_6

    .line 546
    :cond_e
    iget-object v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v12}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v12

    sget-object v13, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v12, v13, :cond_10

    .line 548
    iget-object v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    iget-boolean v12, v12, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->notified:Z

    if-nez v12, :cond_f

    .line 549
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v12, v13

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v12, v13

    const/high16 v13, -0x80000000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-super {v0, v9, v11, v12}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 550
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    goto :goto_5

    :cond_f
    move v12, v4

    .line 552
    :goto_5
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    iget v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v13, v14

    iget v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v13, v14

    invoke-static {v13, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v9, v11, v13}, Landroid/view/View;->measure(II)V

    if-lez v12, :cond_16

    .line 553
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    if-eq v12, v13, :cond_16

    .line 554
    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v12, v13

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v12, v13

    iput v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    goto/16 :goto_6

    .line 556
    :cond_10
    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-lez v12, :cond_12

    .line 557
    iget-object v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    sget-object v13, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlExactUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    invoke-virtual {v12, v13}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->canReplaceWith(Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 558
    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v12, v14

    iget v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v12, v14

    iput v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    .line 559
    iput-object v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    .line 561
    :cond_11
    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v12, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 562
    invoke-virtual {v9, v11, v12}, Landroid/view/View;->measure(II)V

    goto :goto_6

    :cond_12
    const/4 v13, -0x2

    if-ne v12, v13, :cond_14

    .line 564
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v12, v13

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v12, v13

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v12

    const/high16 v13, -0x80000000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 565
    invoke-virtual {v9, v11, v12}, Landroid/view/View;->measure(II)V

    .line 566
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    if-lez v12, :cond_13

    .line 567
    iget-object v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    sget-object v14, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlWrapUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    invoke-virtual {v13, v14}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->canReplaceWith(Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 568
    iput-object v14, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    .line 569
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v12, v13

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v12, v13

    iput v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    goto :goto_6

    :cond_13
    if-gtz v12, :cond_16

    .line 571
    iget v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v12, v13

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v12, v13

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-static {v12, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 572
    invoke-virtual {v9, v11, v12}, Landroid/view/View;->measure(II)V

    goto :goto_6

    :cond_14
    const/4 v13, -0x1

    if-ne v12, v13, :cond_15

    .line 575
    iget v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v12, v13

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v12, v13

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-static {v12, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 576
    invoke-virtual {v9, v11, v12}, Landroid/view/View;->measure(II)V

    goto :goto_6

    .line 578
    :cond_15
    invoke-virtual {v9, v11, v2}, Landroid/view/View;->measure(II)V

    .line 581
    :cond_16
    :goto_6
    iget-object v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v12}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v12

    sget-object v13, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Scale:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v12, v13, :cond_18

    if-nez v3, :cond_18

    .line 582
    iget-boolean v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    if-eqz v12, :cond_17

    iget v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    neg-int v12, v12

    goto :goto_7

    :cond_17
    move v12, v4

    :goto_7
    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 583
    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v12, v13

    iget v10, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v12, v10

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v10, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 584
    invoke-virtual {v9, v11, v10}, Landroid/view/View;->measure(II)V

    .line 587
    :cond_18
    iget-object v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    iget-boolean v11, v10, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->notified:Z

    if-nez v11, :cond_19

    .line 588
    invoke-virtual {v10}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->notified()Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    move-result-object v10

    iput-object v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    .line 589
    iget v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    int-to-float v10, v10

    iget v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterMaxDragRate:F

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    const/4 v11, 0x0

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    float-to-int v10, v10

    iput v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterExtendHeight:I

    .line 590
    iget-object v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    iget-object v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    invoke-interface {v11, v12, v13, v10}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onInitialized(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;II)V

    :cond_19
    if-eqz v3, :cond_1a

    .line 593
    invoke-virtual/range {p0 .. p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableLoadMore()Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 594
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v7, v9

    .line 598
    :cond_1a
    iget-object v9, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-eqz v9, :cond_1f

    invoke-interface {v9}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v9

    if-ne v9, v8, :cond_1f

    .line 599
    iget-object v8, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v8}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v8

    .line 600
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;

    .line 602
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v10, v11

    iget v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v10, v11

    iget v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 601
    invoke-static {v1, v10, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v10

    .line 605
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    add-int/2addr v11, v12

    iget v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v11, v12

    iget v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v11, v12

    if-eqz v3, :cond_1c

    .line 607
    invoke-virtual/range {p0 .. p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefresh()Z

    move-result v12

    if-eqz v12, :cond_1c

    iget-object v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v12, :cond_1c

    iget-boolean v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    if-nez v13, :cond_1b

    invoke-interface {v12}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v12

    sget-object v13, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v12, v13, :cond_1c

    :cond_1b
    iget v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    goto :goto_8

    :cond_1c
    move v12, v4

    :goto_8
    add-int/2addr v11, v12

    if-eqz v3, :cond_1e

    .line 608
    invoke-virtual/range {p0 .. p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableLoadMore()Z

    move-result v12

    if-eqz v12, :cond_1e

    iget-object v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v12, :cond_1e

    iget-boolean v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterTranslationContent:Z

    if-nez v13, :cond_1d

    invoke-interface {v12}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v12

    sget-object v13, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v12, v13, :cond_1e

    :cond_1d
    iget v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    goto :goto_9

    :cond_1e
    move v12, v4

    :goto_9
    add-int/2addr v11, v12

    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 604
    invoke-static {v2, v11, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    .line 609
    invoke-virtual {v8, v10, v9}, Landroid/view/View;->measure(II)V

    .line 611
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    :cond_1f
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 616
    :cond_20
    invoke-super/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v3, v1}, Landroid/view/View;->resolveSize(II)I

    move-result v1

    .line 617
    invoke-static {v7, v2}, Landroid/view/View;->resolveSize(II)I

    move-result v2

    .line 615
    invoke-super {v0, v1, v2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 619
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchX:F

    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    .line 1618
    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p0

    return p0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    .line 1613
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    cmpl-float p1, p3, p1

    if-gtz p1, :cond_2

    :cond_0
    neg-float p1, p3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->startFlingIfNeed(Ljava/lang/Float;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 2

    .line 1563
    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    mul-int v0, p3, p1

    const/4 v1, 0x0

    if-lez v0, :cond_3

    .line 1564
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le p1, v0, :cond_0

    .line 1565
    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    .line 1566
    iput v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    move v1, p1

    goto :goto_0

    .line 1569
    :cond_0
    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    move v1, p3

    .line 1571
    :goto_0
    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->moveSpinnerInfinitely(F)V

    .line 1572
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne p1, v0, :cond_4

    .line 1573
    :cond_1
    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-lez p1, :cond_2

    .line 1574
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {p1, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_1

    .line 1576
    :cond_2
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {p1, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_1

    :cond_3
    if-lez p3, :cond_4

    .line 1579
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    if-eqz v0, :cond_4

    sub-int/2addr p1, p3

    .line 1581
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    int-to-float p1, p1

    .line 1582
    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->moveSpinnerInfinitely(F)V

    move v1, p3

    .line 1586
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    sub-int/2addr p3, v1

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p3, p4, p1}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    const/4 p0, 0x1

    .line 1587
    aget p1, p4, p0

    add-int/2addr p1, v1

    aput p1, p4, p0

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 6

    .line 1594
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mParentOffsetInWindow:[I

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    .line 1601
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mParentOffsetInWindow:[I

    const/4 p2, 0x1

    aget p1, p1, p2

    add-int/2addr p5, p1

    if-eqz p5, :cond_4

    .line 1602
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez p1, :cond_1

    if-gez p5, :cond_0

    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefresh()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    if-lez p5, :cond_4

    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableLoadMore()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1603
    :cond_1
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object p2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne p1, p2, :cond_3

    .line 1604
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    if-lez p5, :cond_2

    sget-object p2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    :goto_0
    invoke-interface {p1, p2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 1606
    :cond_3
    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    sub-int/2addr p1, p5

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->moveSpinnerInfinitely(F)V

    :cond_4
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    .line 1550
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedParent:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 1552
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    and-int/lit8 p2, p3, 0x2

    invoke-virtual {p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    .line 1553
    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    const/4 p1, 0x1

    .line 1554
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedInProgress:Z

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    .line 1542
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isNestedScrollingEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 1543
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefresh()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableLoadMore()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move p2, v0

    :cond_2
    :goto_1
    return p2
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1

    .line 1623
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedParent:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 1624
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedInProgress:Z

    .line 1627
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    .line 1628
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->overSpinner()V

    .line 1630
    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method

.method protected overSpinner()V
    .locals 4

    .line 1388
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_1

    .line 1390
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    const/high16 v1, -0x3b860000    # -1000.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    .line 1391
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1393
    iget p0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFloorDuration:I

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/16 :goto_1

    .line 1395
    :cond_0
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz v0, :cond_c

    .line 1396
    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {p0}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->finishTwoLevel()Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto/16 :goto_1

    .line 1398
    :cond_1
    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenLoadFinished:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-gez v0, :cond_2

    .line 1399
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableLoadMore()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1405
    :cond_2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_4

    .line 1406
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    if-le v0, v1, :cond_3

    .line 1407
    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {p0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto :goto_1

    :cond_3
    if-gez v0, :cond_c

    .line 1409
    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {p0, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto :goto_1

    .line 1411
    :cond_4
    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_5

    .line 1412
    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownCanceled:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {p0, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_1

    .line 1413
    :cond_5
    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_6

    .line 1414
    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpCanceled:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {p0, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_1

    .line 1415
    :cond_6
    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_7

    .line 1416
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setStateRefreshing()V

    goto :goto_1

    .line 1417
    :cond_7
    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_8

    .line 1418
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setStateLoading()V

    goto :goto_1

    .line 1419
    :cond_8
    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToTwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_9

    .line 1420
    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevelReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {p0, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_1

    .line 1421
    :cond_9
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-eqz v0, :cond_c

    .line 1422
    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {p0, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto :goto_1

    .line 1400
    :cond_a
    :goto_0
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    neg-int v3, v1

    if-ge v0, v3, :cond_b

    .line 1401
    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    neg-int v0, v1

    invoke-interface {p0, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto :goto_1

    :cond_b
    if-lez v0, :cond_c

    .line 1403
    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {p0, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    :cond_c
    :goto_1
    return-void
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 3

    .line 3192
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    .line 3193
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mListDelayedRunnable:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mListDelayedRunnable:Ljava/util/List;

    .line 3194
    new-instance p0, Lcom/scwang/smartrefresh/layout/util/DelayedRunnable;

    invoke-direct {p0, p1, v1, v2}, Lcom/scwang/smartrefresh/layout/util/DelayedRunnable;-><init>(Ljava/lang/Runnable;J)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0

    .line 3197
    :cond_1
    new-instance p0, Lcom/scwang/smartrefresh/layout/util/DelayedRunnable;

    invoke-direct {p0, p1, v1, v2}, Lcom/scwang/smartrefresh/layout/util/DelayedRunnable;-><init>(Ljava/lang/Runnable;J)V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    .line 3203
    new-instance p0, Lcom/scwang/smartrefresh/layout/util/DelayedRunnable;

    invoke-direct {p0, p1, v0, v1}, Lcom/scwang/smartrefresh/layout/util/DelayedRunnable;-><init>(Ljava/lang/Runnable;J)V

    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/util/DelayedRunnable;->run()V

    const/4 p0, 0x1

    return p0

    .line 3206
    :cond_0
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_2

    .line 3207
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mListDelayedRunnable:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mListDelayedRunnable:Ljava/util/List;

    .line 3208
    new-instance p0, Lcom/scwang/smartrefresh/layout/util/DelayedRunnable;

    invoke-direct {p0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/util/DelayedRunnable;-><init>(Ljava/lang/Runnable;J)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0

    .line 3211
    :cond_2
    new-instance p0, Lcom/scwang/smartrefresh/layout/util/DelayedRunnable;

    invoke-direct {p0, p1, v0, v1}, Lcom/scwang/smartrefresh/layout/util/DelayedRunnable;-><init>(Ljava/lang/Runnable;J)V

    invoke-virtual {v2, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p0

    return p0
.end method

.method protected resetStatus()V
    .locals 2

    .line 1184
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v0, v1, :cond_0

    .line 1185
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-nez v0, :cond_0

    .line 1186
    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    .line 1189
    :cond_0
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-eqz v0, :cond_1

    .line 1190
    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    :cond_1
    return-void
.end method

.method public setEnableNestedScroll(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 2039
    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setNestedScrollingEnabled(Z)V

    return-object p0
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1637
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualNestedScrolling:Z

    .line 1638
    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setNoMoreData(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 2

    .line 2320
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    .line 2321
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    instance-of v1, v0, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    invoke-interface {v0, p1}, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;->setNoMoreData(Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2322
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Footer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Prompt completion is not supported.(\u4e0d\u652f\u6301\u63d0\u793a\u5b8c\u6210)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public setRefreshFooter(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 2

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 2106
    invoke-virtual {p0, p1, v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setRefreshFooter(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;II)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p0

    return-object p0
.end method

.method public setRefreshFooter(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;II)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 2

    .line 2118
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_0

    .line 2119
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2121
    :cond_0
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    const/4 p1, 0x0

    .line 2122
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterBackgroundColor:I

    .line 2123
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNeedTouchEventWhenLoading:Z

    .line 2124
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->unNotify()Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    .line 2125
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualLoadMore:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 2126
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v0

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v0, v1, :cond_3

    .line 2127
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;

    invoke-direct {v1, p2, p3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 2129
    :cond_3
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :goto_2
    return-object p0
.end method

.method public setRefreshHeader(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 2

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 2072
    invoke-virtual {p0, p1, v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setRefreshHeader(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;II)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p0

    return-object p0
.end method

.method public setRefreshHeader(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;II)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 2

    .line 2084
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_0

    .line 2085
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2087
    :cond_0
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    const/4 v0, 0x0

    .line 2088
    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderBackgroundColor:I

    .line 2089
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderNeedTouchEventWhenRefreshing:Z

    .line 2090
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    invoke-virtual {v1}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->unNotify()Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    .line 2091
    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object p1

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne p1, v1, :cond_1

    .line 2092
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;

    invoke-direct {v1, p2, p3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2094
    :cond_1
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :goto_0
    return-object p0
.end method

.method protected setStateDirectLoading()V
    .locals 4

    .line 1082
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v0, v1, :cond_3

    .line 1083
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastOpenTime:J

    const/4 v0, 0x1

    .line 1096
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    .line 1097
    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    .line 1098
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLoadMoreListener:Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;

    if-eqz v0, :cond_0

    .line 1099
    invoke-interface {v0, p0}, Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;->onLoadMore(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    goto :goto_0

    .line 1100
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mOnMultiPurposeListener:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    if-nez v0, :cond_1

    const/16 v0, 0x7d0

    .line 1101
    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore(I)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 1103
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_2

    .line 1104
    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterExtendHeight:I

    invoke-interface {v0, p0, v1, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onStartAnimator(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V

    .line 1106
    :cond_2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mOnMultiPurposeListener:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    instance-of v1, v1, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    if-eqz v1, :cond_3

    .line 1107
    invoke-interface {v0, p0}, Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;->onLoadMore(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    .line 1108
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mOnMultiPurposeListener:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    check-cast v1, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    iget p0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterExtendHeight:I

    invoke-interface {v0, v1, v2, p0}, Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;->onFooterStartAnimator(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;II)V

    :cond_3
    return-void
.end method

.method protected setStateLoading()V
    .locals 5

    .line 1114
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$4;

    invoke-direct {v0, p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$4;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V

    .line 1120
    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->LoadReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    .line 1121
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    neg-int v2, v2

    invoke-interface {v1, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1123
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1125
    :cond_0
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v2, :cond_1

    .line 1128
    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterExtendHeight:I

    invoke-interface {v2, p0, v3, v4}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onReleased(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V

    .line 1130
    :cond_1
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mOnMultiPurposeListener:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    instance-of v4, v3, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    if-eqz v4, :cond_2

    .line 1132
    check-cast v3, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    iget p0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterExtendHeight:I

    invoke-interface {v2, v3, v4, p0}, Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;->onFooterReleased(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;II)V

    :cond_2
    if-nez v1, :cond_3

    const/4 p0, 0x0

    .line 1136
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_3
    return-void
.end method

.method protected setStateRefreshing()V
    .locals 5

    .line 1141
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$5;

    invoke-direct {v0, p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$5;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V

    .line 1160
    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->RefreshReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    .line 1161
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    invoke-interface {v1, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1163
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1165
    :cond_0
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v2, :cond_1

    .line 1168
    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderExtendHeight:I

    invoke-interface {v2, p0, v3, v4}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onReleased(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V

    .line 1170
    :cond_1
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mOnMultiPurposeListener:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    instance-of v4, v3, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    if-eqz v4, :cond_2

    .line 1172
    check-cast v3, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    iget p0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderExtendHeight:I

    invoke-interface {v2, v3, v4, p0}, Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;->onHeaderReleased(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;II)V

    :cond_2
    if-nez v1, :cond_3

    const/4 p0, 0x0

    .line 1176
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_3
    return-void
.end method

.method protected setViceState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V
    .locals 2

    .line 1195
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v1, v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isDragging:Z

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isHeader:Z

    iget-boolean v1, p1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isHeader:Z

    if-eq v0, v1, :cond_0

    .line 1196
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    .line 1198
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v0, p1, :cond_1

    .line 1199
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    :cond_1
    return-void
.end method

.method protected startFlingIfNeed(Ljava/lang/Float;)Z
    .locals 12

    if-nez p1, :cond_0

    .line 993
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 994
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mMinimumVelocity:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_7

    const/4 v0, 0x0

    cmpg-float v2, p1, v0

    if-gez v2, :cond_3

    .line 995
    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollBounce:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableLoadMore()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_1
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-gez v2, :cond_5

    :cond_2
    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableAutoLoadMore:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableLoadMore()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    cmpl-float v2, p1, v0

    if-lez v2, :cond_6

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollBounce:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez v2, :cond_5

    .line 996
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefresh()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v2, v3, :cond_6

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-gtz v2, :cond_6

    .line 997
    :cond_5
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mVerticalPermit:Z

    .line 998
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    neg-float v2, p1

    float-to-int v7, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const v10, -0x7fffffff

    const v11, 0x7fffffff

    invoke-virtual/range {v3 .. v11}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 999
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1001
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1003
    :cond_6
    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    cmpg-float v0, v2, v0

    if-gez v0, :cond_7

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v0, v2, :cond_7

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v0, v2, :cond_7

    .line 1009
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;

    invoke-direct {v0, p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;F)V

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->start()Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    const/4 p0, 0x1

    return p0

    :cond_7
    return v1
.end method
