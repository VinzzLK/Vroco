.class abstract Lmiuix/appcompat/internal/app/widget/AbsActionBarView;
.super Landroid/view/ViewGroup;
.source "AbsActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;
    }
.end annotation


# instance fields
.field mActionBarTransitionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/appcompat/app/ActionBarTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

.field protected mAnimConfigListener:Lmiuix/animation/listener/TransitionListener;

.field mBottomMenuMode:I

.field protected mCollapseAnimHideConfig:Lmiuix/animation/base/AnimConfig;

.field protected mCollapseAnimShowConfig:Lmiuix/animation/base/AnimConfig;

.field protected mCollapseTitleColorTransitEnable:Z

.field protected mEndActionMenuEnable:Z

.field mExpandState:I

.field mExpandStateBeforeResizing:I

.field mExpandStateOnLayout:I

.field protected mExpandTitleColorTransitEnable:Z

.field protected mHideProcessConfig:Lmiuix/animation/base/AnimConfig;

.field protected mHyperActionMenuEnable:Z

.field mInnerExpandState:I

.field protected mIsInWideMode:Z

.field mLastProcess:F

.field protected mMaxActionMenuItemCount:I

.field protected mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

.field protected mMovableAnimNormalConfig:Lmiuix/animation/base/AnimConfig;

.field protected mMovableAnimShowConfig:Lmiuix/animation/base/AnimConfig;

.field protected mPendingInset:Landroid/graphics/Rect;

.field private mResizable:Z

.field protected mShowProcessConfig:Lmiuix/animation/base/AnimConfig;

.field protected mSplitActionBarEnable:Z

.field protected mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

.field protected mSplitWhenNarrow:Z

.field protected mSubtitlePaddingV:I

.field protected mTitleClickable:Z

.field protected mTitleMaxHeight:I

.field protected mTitleMinHeight:I

.field protected mTitlePaddingV:I

.field protected mUserExpandState:I

.field protected mUserSetExpandState:Z

.field protected mUserSubTitleClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 131
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 71
    iput p3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 72
    iput p3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandStateBeforeResizing:I

    .line 73
    iput p3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandState:I

    .line 74
    iput p3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandStateOnLayout:I

    .line 75
    iput-boolean p3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mResizable:Z

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleClickable:Z

    const/4 v1, 0x0

    .line 79
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mLastProcess:F

    const/4 v1, 0x2

    .line 80
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mBottomMenuMode:I

    const/high16 v2, -0x80000000

    .line 83
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMaxActionMenuItemCount:I

    .line 86
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mIsInWideMode:Z

    .line 88
    new-instance v2, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$1;

    invoke-direct {v2, p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$1;-><init>(Lmiuix/appcompat/internal/app/widget/AbsActionBarView;)V

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mAnimConfigListener:Lmiuix/animation/listener/TransitionListener;

    const/4 v2, 0x0

    .line 120
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserSubTitleClickListener:Landroid/view/View$OnClickListener;

    .line 132
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserSetExpandState:Z

    const/4 v2, -0x1

    .line 133
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserExpandState:I

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_collapse_padding_vertical:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitlePaddingV:I

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_subtitle_collapse_padding_vertical:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSubtitlePaddingV:I

    .line 137
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v3, v1, [F

    fill-array-data v3, :array_0

    const/4 v4, -0x2

    .line 138
    invoke-virtual {v2, v4, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseAnimShowConfig:Lmiuix/animation/base/AnimConfig;

    .line 139
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v3, v1, [F

    fill-array-data v3, :array_1

    .line 140
    invoke-virtual {v2, v4, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    new-array v3, p3, [Lmiuix/animation/listener/TransitionListener;

    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mAnimConfigListener:Lmiuix/animation/listener/TransitionListener;

    aput-object v5, v3, v0

    .line 141
    invoke-virtual {v2, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mShowProcessConfig:Lmiuix/animation/base/AnimConfig;

    .line 142
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v3, v1, [F

    fill-array-data v3, :array_2

    .line 143
    invoke-virtual {v2, v4, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseAnimHideConfig:Lmiuix/animation/base/AnimConfig;

    .line 144
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v3, v1, [F

    fill-array-data v3, :array_3

    .line 145
    invoke-virtual {v2, v4, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    new-array v3, p3, [Lmiuix/animation/listener/TransitionListener;

    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mAnimConfigListener:Lmiuix/animation/listener/TransitionListener;

    aput-object v5, v3, v0

    .line 146
    invoke-virtual {v2, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mHideProcessConfig:Lmiuix/animation/base/AnimConfig;

    .line 147
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v3, v1, [F

    fill-array-data v3, :array_4

    .line 148
    invoke-virtual {v2, v4, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMovableAnimShowConfig:Lmiuix/animation/base/AnimConfig;

    .line 149
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v1, v1, [F

    fill-array-data v1, :array_5

    .line 150
    invoke-virtual {v2, v4, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMovableAnimNormalConfig:Lmiuix/animation/base/AnimConfig;

    .line 152
    sget-object v1, Lmiuix/appcompat/R$styleable;->ActionBar:[I

    const v2, 0x10102ce

    invoke-virtual {p1, p2, v1, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 154
    sget p2, Lmiuix/appcompat/R$styleable;->ActionBar_expandState:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 155
    sget v1, Lmiuix/appcompat/R$styleable;->ActionBar_resizable:I

    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 156
    sget v2, Lmiuix/appcompat/R$styleable;->ActionBar_titleClickable:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 157
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 158
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->isUserSetExpandState()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 159
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserExpandState:I

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 160
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandState:I

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 163
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 164
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandState:I

    goto :goto_0

    .line 166
    :cond_1
    iput p3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 167
    iput p3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandState:I

    .line 170
    :goto_0
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mResizable:Z

    .line 171
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleClickable:Z

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3e19999a    # 0.15f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3e19999a    # 0.15f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data
.end method

.method private setTitleMaxHeight(I)V
    .locals 0

    .line 231
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMaxHeight:I

    .line 232
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method private setTitleMinHeight(I)V
    .locals 0

    .line 226
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMinHeight:I

    .line 227
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method


# virtual methods
.method bindActionBarTransitionListeners(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiuix/appcompat/app/ActionBarTransitionListener;",
            ">;)V"
        }
    .end annotation

    .line 175
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionBarTransitionListeners:Ljava/util/List;

    return-void
.end method

.method getActionBarStyle()I
    .locals 0

    const p0, 0x10102ce

    return p0
.end method

.method public getActionMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
    .locals 0

    .line 247
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    return-object p0
.end method

.method public getAnimatedVisibility()I
    .locals 0

    .line 243
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p0

    return p0
.end method

.method public abstract getCollapseTitle()Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;
.end method

.method public getExpandState()I
    .locals 0

    .line 363
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandState:I

    return p0
.end method

.method public abstract getExpandTitle()Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;
.end method

.method public getMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
    .locals 0

    .line 345
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    return-object p0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .line 282
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 0

    .line 286
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isResizable()Z
    .locals 0

    .line 398
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mResizable:Z

    return p0
.end method

.method public isUserSetExpandState()Z
    .locals 0

    .line 359
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserSetExpandState:Z

    return p0
.end method

.method protected measureChildView(Landroid/view/View;III)I
    .locals 0

    const/high16 p0, -0x80000000

    .line 301
    invoke-static {p2, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-virtual {p1, p0, p3}, Landroid/view/View;->measure(II)V

    .line 304
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    sub-int/2addr p2, p0

    sub-int/2addr p2, p4

    const/4 p0, 0x0

    .line 307
    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method protected onAnimatedExpandStateChanged(II)V
    .locals 0

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 180
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 181
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitWhenNarrow:Z

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$bool;->abc_split_action_bar_is_narrow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setSplitActionBar(Z)V

    .line 184
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz p0, :cond_1

    .line 185
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_1
    return-void
.end method

.method protected onExpandStateChanged(II)V
    .locals 0

    return-void
.end method

.method protected positionChild(Landroid/view/View;III)I
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 311
    invoke-virtual/range {v0 .. v5}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result p0

    return p0
.end method

.method protected positionChild(Landroid/view/View;IIIZ)I
    .locals 8

    .line 315
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 316
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p4, v1

    .line 317
    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    if-nez p5, :cond_0

    .line 319
    iget p3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMinHeight:I

    sub-int/2addr p3, v1

    div-int/lit8 p3, p3, 0x2

    :cond_0
    move v5, p3

    add-int v6, p2, v0

    add-int v7, v5, v1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    .line 321
    invoke-static/range {v2 .. v7}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    return v0
.end method

.method protected positionChildInverse(Landroid/view/View;III)I
    .locals 7

    .line 337
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    .line 338
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    .line 339
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMinHeight:I

    sub-int/2addr v0, p4

    div-int/lit8 v4, v0, 0x2

    sub-int v3, p2, p3

    add-int v6, v4, p4

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    .line 340
    invoke-static/range {v1 .. v6}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    return p3
.end method

.method protected positionChildWithOffset(Landroid/view/View;IIIZI)I
    .locals 8

    .line 326
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 327
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p4, v1

    .line 328
    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    if-nez p5, :cond_0

    .line 330
    iget p3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMinHeight:I

    sub-int/2addr p3, v1

    div-int/lit8 p3, p3, 0x2

    :cond_0
    move v5, p3

    add-int v4, p2, p6

    add-int/2addr p2, v0

    add-int v6, p2, p6

    add-int v7, v5, v1

    move-object v2, p0

    move-object v3, p1

    .line 332
    invoke-static/range {v2 .. v7}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    add-int/2addr v0, p6

    return v0
.end method

.method public postShowOverflowMenu()V
    .locals 1

    .line 278
    new-instance v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$$ExternalSyntheticLambda0;-><init>(Lmiuix/appcompat/internal/app/widget/AbsActionBarView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public abstract refreshBottomMenu()V
.end method

.method protected setActionMenuItemLimit(I)V
    .locals 1

    .line 586
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMaxActionMenuItemCount:I

    .line 587
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz p0, :cond_0

    instance-of v0, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;

    if-nez v0, :cond_0

    .line 588
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setItemLimit(I)V

    :cond_0
    return-void
.end method

.method public setBottomMenuMode(I)V
    .locals 0

    .line 427
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mBottomMenuMode:I

    return-void
.end method

.method public setExpandState(I)V
    .locals 1

    const/4 v0, 0x0

    .line 367
    invoke-virtual {p0, p1, v0, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setExpandState(IZZ)V

    return-void
.end method

.method public setExpandState(IZZ)V
    .locals 1

    .line 371
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mResizable:Z

    if-nez v0, :cond_0

    if-eqz p3, :cond_5

    :cond_0
    iget p3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    if-eq p3, p1, :cond_5

    if-eqz p2, :cond_1

    .line 375
    invoke-virtual {p0, p3, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->onAnimatedExpandStateChanged(II)V

    goto :goto_1

    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 378
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandState:I

    iput p2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandStateBeforeResizing:I

    .line 380
    :cond_2
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    if-nez p1, :cond_3

    const/4 p2, 0x0

    .line 382
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandState:I

    goto :goto_0

    :cond_3
    const/4 p2, 0x1

    if-ne p1, p2, :cond_4

    .line 384
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandState:I

    .line 386
    :cond_4
    :goto_0
    invoke-virtual {p0, p3, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->onExpandStateChanged(II)V

    .line 387
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandState:I

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandStateOnLayout:I

    .line 388
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_5
    :goto_1
    return-void
.end method

.method protected setExpandStateByUser(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    .line 350
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserSetExpandState:Z

    .line 351
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserExpandState:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 353
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserSetExpandState:Z

    .line 354
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserExpandState:I

    :goto_0
    return-void
.end method

.method public setPendingInset(Landroid/graphics/Rect;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 434
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mPendingInset:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 436
    :goto_0
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mPendingInset:Landroid/graphics/Rect;

    if-nez v1, :cond_3

    .line 437
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mPendingInset:Landroid/graphics/Rect;

    .line 439
    :cond_3
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mPendingInset:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz v0, :cond_4

    .line 441
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->refreshBottomMenu()V

    :cond_4
    return-void
.end method

.method public setResizable(Z)V
    .locals 0

    .line 394
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mResizable:Z

    return-void
.end method

.method public setSplitActionBar(Z)V
    .locals 0

    .line 213
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBarEnable:Z

    return-void
.end method

.method public setSplitView(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    return-void
.end method

.method public setSplitWhenNarrow(Z)V
    .locals 0

    .line 222
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitWhenNarrow:Z

    return-void
.end method

.method public setSubTitleClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserSubTitleClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setTitleClickable(Z)V
    .locals 0

    .line 200
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleClickable:Z

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 268
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 269
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 0

    .line 274
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->showOverflowMenu()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
