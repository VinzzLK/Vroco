.class public Lmiuix/appcompat/internal/app/widget/ActionBarView;
.super Lmiuix/appcompat/internal/app/widget/AbsActionBarView;
.source "ActionBarView.java"

# interfaces
.implements Lmiuix/view/ActionModeAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/app/widget/ActionBarView$InnerTransitionListener;,
        Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;,
        Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;,
        Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;
    }
.end annotation


# instance fields
.field private mAnimateStart:Z

.field private mApplyBgBlur:Z

.field private mBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

.field private mBackInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

.field private mBottomMenuTransitionListener:Lmiuix/animation/listener/TransitionListener;

.field private mCallback:Landroidx/appcompat/app/ActionBar$OnNavigationListener;

.field protected mCollapseAnimHideConfigListener:Lmiuix/animation/listener/TransitionListener;

.field protected mCollapseAnimShowConfigListener:Lmiuix/animation/listener/TransitionListener;

.field private mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

.field private mCollapseCustomContainer:Landroid/widget/FrameLayout;

.field private mCollapseSecondaryTabHeight:I

.field private final mCollapseSubtitleStyleRes:I

.field private mCollapseTabContainer:Landroid/widget/FrameLayout;

.field private mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

.field private mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

.field private mCollapseTitleShowable:Z

.field private mCollapseTitleStyleRes:I

.field mCollapseTotalHeight:I

.field private mCollapsedTitleVisible:Z

.field private mContext:Landroid/content/Context;

.field private mCustomNavView:Landroid/view/View;

.field private final mCustomTitleWatcher:Landroid/text/TextWatcher;

.field private mDensity:F

.field private mDisplayOptions:I

.field private mDoContainerShowAnimInFinishActionMode:Z

.field private mEndActionMenuItemLimit:I

.field private mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

.field private mEndMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field private mEndMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

.field private mEndView:Landroid/view/View;

.field private mExpandSubtitlePaddingBottom:I

.field private mExpandTabTopPadding:I

.field private mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

.field private mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

.field private mExpandTitlePaddingBottom:I

.field private mExpandTitleVisible:Z

.field mExpandTotalHeight:I

.field mExpandedActionView:Landroid/view/View;

.field private final mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

.field private mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

.field private mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

.field private mExtraPadding:I

.field private mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

.field private mHasNavigatorSwitchView:Z

.field private mHasStartView:Z

.field private mHomeAsUpIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mHomeAsUpIndicatorResId:I

.field private mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

.field private final mHomeResId:I

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconLogoInitIndicator:I

.field private mInActionMode:Z

.field private mInActionModeAnimating:Z

.field private mInSearchMode:Z

.field private mIndeterminateProgressView:Landroid/widget/ProgressBar;

.field private mInitCustomTitle:Ljava/lang/CharSequence;

.field private mIsBottomMenuVisible:Z

.field private mIsCollapseTitleShowingOnResizing:Z

.field private mIsCollapsed:Z

.field private mItemPadding:I

.field private mLastResizingProcess:F

.field private mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field private mListNavLayout:Landroid/widget/LinearLayout;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field private mLogoNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

.field private mMainContainer:Landroid/widget/FrameLayout;

.field private mMenuAnimConfig:Lmiuix/animation/base/AnimConfig;

.field protected mMovableAlphaShowListener:Lmiuix/animation/listener/TransitionListener;

.field protected mMovableAnimAlphaListener:Lmiuix/animation/listener/TransitionListener;

.field private mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

.field private mMovableMainContainer:Landroid/widget/FrameLayout;

.field private mMovableSecondaryTabHeight:I

.field private mMovableTabContainer:Landroid/widget/FrameLayout;

.field private final mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mNavigationMode:I

.field private mNavigatorSwitch:Landroid/view/View;

.field private final mNavigatorSwitchResId:I

.field private mNeedRequestLayoutOnExpandTitleShowing:Z

.field private mNonTouchScrolling:Z

.field private mOptionalIconsVisible:Z

.field private mOptionsMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field private mPendingCreated:Z

.field private mPendingHeight:I

.field private mPostScroll:Ljava/lang/Runnable;

.field private mPostScroller:Landroid/widget/Scroller;

.field private mProgressBarPadding:I

.field private mProgressView:Landroid/widget/ProgressBar;

.field private mScheduleBottomMenuRunnable:Ljava/lang/Runnable;

.field private mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

.field private mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

.field private mSecondaryTabVerticalPadding:I

.field private mSpinner:Landroid/widget/Spinner;

.field private mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

.field private mStartView:Landroid/view/View;

.field private mStateChangeAnimStateStyle:Lmiuix/animation/IStateStyle;

.field private final mSubTitleClickListener:Landroid/view/View$OnClickListener;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTabsExit:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCenter:Z

.field private final mTitleClickListener:Landroid/view/View$OnClickListener;

.field private mTitleNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

.field private mTitleUpView:Landroid/view/View;

.field private mTitleUpViewMarginEnd:I

.field private mTitleUpViewMarginStart:I

.field private mTouchScrolling:Z

.field private mTransitionTarget:I

.field private mUncollapsePaddingH:I

.field private mUncollapseTabPaddingH:I

.field private final mUpClickListener:Landroid/view/View$OnClickListener;

.field private mUserSetEndActionMenuItemLimit:Z

.field private mUserTitle:Z

.field mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public static synthetic $r8$lambda$0vNOwIsUZkTLpmEgHvTj0u8Op04(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->lambda$setSubtitle$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$302EA2pOmLJ4NB1iG0Kf0CTt_hs(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->lambda$postRefreshTitleControllerStatus$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$kB04uwSTmHMe_53_h85BY3LzmYM(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->lambda$updateCollapseTitle$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$vCQHROmk-BunDv0Pk3WlONEZuhk(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->lambda$initTitle$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$xcBxPplW_CJZh8l-CMCMNKnE7_k(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->lambda$onConfigurationChanged$1()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .line 389
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 127
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    const/4 v1, 0x0

    .line 137
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    const/4 v2, 0x0

    .line 160
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDoContainerShowAnimInFinishActionMode:Z

    const/4 v3, 0x1

    .line 179
    iput-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsBottomMenuVisible:Z

    .line 197
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingCreated:Z

    .line 202
    iput-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapsedTitleVisible:Z

    .line 203
    iput-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitleVisible:Z

    .line 207
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHasStartView:Z

    .line 208
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHasNavigatorSwitchView:Z

    .line 209
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mApplyBgBlur:Z

    .line 230
    iput-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitleShowable:Z

    const/4 v4, 0x0

    .line 233
    iput v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLastResizingProcess:F

    .line 235
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNeedRequestLayoutOnExpandTitleShowing:Z

    .line 237
    new-instance v5, Lmiuix/appcompat/internal/app/widget/ActionBarView$1;

    invoke-direct {v5, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$1;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    iput-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseAnimShowConfigListener:Lmiuix/animation/listener/TransitionListener;

    .line 248
    new-instance v5, Lmiuix/appcompat/internal/app/widget/ActionBarView$2;

    invoke-direct {v5, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$2;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    iput-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseAnimHideConfigListener:Lmiuix/animation/listener/TransitionListener;

    .line 259
    new-instance v5, Lmiuix/appcompat/internal/app/widget/ActionBarView$3;

    invoke-direct {v5, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$3;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    iput-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableAlphaShowListener:Lmiuix/animation/listener/TransitionListener;

    .line 287
    new-instance v5, Lmiuix/appcompat/internal/app/widget/ActionBarView$4;

    invoke-direct {v5, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$4;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    iput-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableAnimAlphaListener:Lmiuix/animation/listener/TransitionListener;

    .line 316
    new-instance v5, Lmiuix/appcompat/internal/app/widget/ActionBarView$5;

    invoke-direct {v5, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$5;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    iput-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 332
    new-instance v5, Lmiuix/appcompat/internal/app/widget/ActionBarView$6;

    invoke-direct {v5, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$6;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    iput-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    .line 342
    new-instance v5, Lmiuix/appcompat/internal/app/widget/ActionBarView$7;

    invoke-direct {v5, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$7;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    iput-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    .line 349
    new-instance v5, Lmiuix/appcompat/internal/app/widget/ActionBarView$8;

    invoke-direct {v5, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$8;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    iput-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleClickListener:Landroid/view/View$OnClickListener;

    .line 356
    new-instance v5, Lmiuix/appcompat/internal/app/widget/ActionBarView$9;

    invoke-direct {v5, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$9;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    iput-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubTitleClickListener:Landroid/view/View$OnClickListener;

    .line 365
    new-instance v5, Lmiuix/appcompat/internal/app/widget/ActionBarView$10;

    invoke-direct {v5, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$10;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    iput-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomTitleWatcher:Landroid/text/TextWatcher;

    .line 385
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsCollapseTitleShowingOnResizing:Z

    .line 386
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTransitionTarget:I

    .line 3817
    new-instance v5, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-direct {v5}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;-><init>()V

    iput-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 3818
    new-instance v5, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-direct {v5}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;-><init>()V

    iput-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 3820
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTouchScrolling:Z

    .line 3821
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNonTouchScrolling:Z

    .line 3830
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    .line 3832
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInSearchMode:Z

    .line 3834
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionModeAnimating:Z

    .line 3836
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStateChangeAnimStateStyle:Lmiuix/animation/IStateStyle;

    .line 4045
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$14;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$14;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroll:Ljava/lang/Runnable;

    .line 391
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 393
    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    .line 395
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    .line 396
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInSearchMode:Z

    .line 398
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDensity:F

    .line 399
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_horizontal_padding:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    .line 400
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_tab_horizontal_padding:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapseTabPaddingH:I

    .line 401
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_top_padding:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabTopPadding:I

    .line 402
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_bottom_padding:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitlePaddingBottom:I

    .line 403
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_subtitle_bottom_padding:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandSubtitlePaddingBottom:I

    .line 404
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_secondary_tab_vertical_padding:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryTabVerticalPadding:I

    .line 405
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_up_view_margin_start:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpViewMarginStart:I

    .line 407
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpViewMarginEnd:I

    .line 410
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMovableAnimShowConfig:Lmiuix/animation/base/AnimConfig;

    new-array v5, v3, [Lmiuix/animation/listener/TransitionListener;

    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableAlphaShowListener:Lmiuix/animation/listener/TransitionListener;

    aput-object v6, v5, v2

    invoke-virtual {v1, v5}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 411
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMovableAnimNormalConfig:Lmiuix/animation/base/AnimConfig;

    new-array v5, v3, [Lmiuix/animation/listener/TransitionListener;

    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableAnimAlphaListener:Lmiuix/animation/listener/TransitionListener;

    aput-object v6, v5, v2

    invoke-virtual {v1, v5}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 412
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseAnimShowConfig:Lmiuix/animation/base/AnimConfig;

    new-array v5, v3, [Lmiuix/animation/listener/TransitionListener;

    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseAnimShowConfigListener:Lmiuix/animation/listener/TransitionListener;

    aput-object v6, v5, v2

    invoke-virtual {v1, v5}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 413
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseAnimHideConfig:Lmiuix/animation/base/AnimConfig;

    new-array v5, v3, [Lmiuix/animation/listener/TransitionListener;

    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseAnimHideConfigListener:Lmiuix/animation/listener/TransitionListener;

    aput-object v6, v5, v2

    invoke-virtual {v1, v5}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 414
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    .line 415
    sget v5, Lmiuix/appcompat/R$id;->action_bar_collapse_container:I

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setId(I)V

    .line 416
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    const/16 v5, 0x11

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setForegroundGravity(I)V

    .line 417
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 418
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    iget v5, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    const/high16 v6, 0x3f800000    # 1.0f

    if-nez v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 420
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 421
    sget v5, Lmiuix/appcompat/R$id;->action_bar_movable_container:I

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setId(I)V

    .line 422
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    iget v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    iget v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabTopPadding:I

    iget v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitlePaddingBottom:I

    invoke-virtual {v1, v5, v7, v5, v8}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    .line 427
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 428
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    iget v5, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    move v4, v6

    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 430
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V

    .line 431
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V

    .line 434
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 436
    sget-object v1, Lmiuix/appcompat/R$styleable;->ActionBar:[I

    const v4, 0x10102ce

    invoke-virtual {p1, p2, v1, v4, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 439
    sget v4, Lmiuix/appcompat/R$styleable;->ActionBar_android_navigationMode:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    .line 441
    sget v4, Lmiuix/appcompat/R$styleable;->ActionBar_android_title:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 442
    sget v4, Lmiuix/appcompat/R$styleable;->ActionBar_android_subtitle:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 443
    sget v4, Lmiuix/appcompat/R$styleable;->ActionBar_titleCenter:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleCenter:Z

    .line 445
    sget v4, Lmiuix/appcompat/R$styleable;->ActionBar_android_logo:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 446
    sget v4, Lmiuix/appcompat/R$styleable;->ActionBar_android_icon:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 448
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 450
    sget v5, Lmiuix/appcompat/R$styleable;->ActionBar_navigatorSwitchLayout:I

    sget v6, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_bar_navigator_switch:I

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitchResId:I

    .line 454
    sget v5, Lmiuix/appcompat/R$styleable;->ActionBar_android_homeLayout:I

    sget v6, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_bar_home:I

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeResId:I

    .line 458
    sget v5, Lmiuix/appcompat/R$styleable;->ActionBar_android_titleTextStyle:I

    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitleStyleRes:I

    .line 459
    sget v5, Lmiuix/appcompat/R$styleable;->ActionBar_android_subtitleTextStyle:I

    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseSubtitleStyleRes:I

    .line 461
    sget v5, Lmiuix/appcompat/R$styleable;->ActionBar_android_progressBarPadding:I

    .line 462
    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressBarPadding:I

    .line 463
    sget v5, Lmiuix/appcompat/R$styleable;->ActionBar_android_itemPadding:I

    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mItemPadding:I

    .line 465
    sget v5, Lmiuix/appcompat/R$styleable;->ActionBar_android_displayOptions:I

    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setDisplayOptions(I)V

    .line 467
    sget v5, Lmiuix/appcompat/R$styleable;->ActionBar_android_customNavigationLayout:I

    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-eqz v5, :cond_2

    .line 469
    invoke-virtual {v4, v5, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 470
    new-instance v5, Landroidx/appcompat/app/ActionBar$LayoutParams;

    const/4 v6, -0x2

    const v7, 0x800013

    invoke-direct {v5, v0, v6, v7}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 471
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    .line 474
    :cond_2
    sget v0, Lmiuix/appcompat/R$styleable;->ActionBar_android_minHeight:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMinHeight:I

    .line 475
    sget v0, Lmiuix/appcompat/R$styleable;->ActionBar_android_maxHeight:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMaxHeight:I

    .line 476
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_large_font_max_height:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 477
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    sget v5, Lmiuix/appcompat/R$attr;->actionBarTitleAdaptLargeFont:I

    invoke-static {v4, v5, v3}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v4

    .line 478
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lmiuix/core/util/MiuixUIUtils;->getFontLevel(Landroid/content/Context;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    goto :goto_3

    .line 479
    :cond_4
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMaxHeight:I

    :goto_3
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMaxHeight:I

    .line 480
    sget v0, Lmiuix/appcompat/R$styleable;->ActionBar_showOptionIcons:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionalIconsVisible:Z

    .line 481
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 482
    new-instance v7, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    const/4 v2, 0x0

    const v3, 0x102002c

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogoNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    .line 483
    new-instance v7, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    const v3, 0x1020016

    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    .line 485
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->postRefreshTitleControllerStatus()V

    return-void
.end method

.method static synthetic access$000(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;
    .locals 0

    .line 100
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 100
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1000(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;
    .locals 0

    .line 100
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    return-object p0
.end method

.method static synthetic access$1100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mAnimateStart:Z

    return p0
.end method

.method static synthetic access$1102(Lmiuix/appcompat/internal/app/widget/ActionBarView;Z)Z
    .locals 0

    .line 100
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mAnimateStart:Z

    return p1
.end method

.method static synthetic access$1200(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->initExpandedHomeLayout()V

    return-void
.end method

.method static synthetic access$1300(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 100
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;
    .locals 0

    .line 100
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    return-object p0
.end method

.method static synthetic access$1500(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;
    .locals 0

    .line 100
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    return-object p0
.end method

.method static synthetic access$1600(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;
    .locals 0

    .line 100
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    return-object p0
.end method

.method static synthetic access$1700(Lmiuix/appcompat/internal/app/widget/ActionBarView;Z)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleVisibility(Z)V

    return-void
.end method

.method static synthetic access$1800(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;
    .locals 0

    .line 100
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    return-object p0
.end method

.method static synthetic access$1900(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;
    .locals 0

    .line 100
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;
    .locals 0

    .line 100
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    return-object p0
.end method

.method static synthetic access$2000(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;
    .locals 0

    .line 100
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    return-object p0
.end method

.method static synthetic access$2100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;
    .locals 0

    .line 100
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    return-object p0
.end method

.method static synthetic access$2200(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/Spinner;
    .locals 0

    .line 100
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$2300(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/view/View;
    .locals 0

    .line 100
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2400(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateBackInvokedCallbackState()V

    return-void
.end method

.method static synthetic access$2500(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I
    .locals 0

    .line 100
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    return p0
.end method

.method static synthetic access$2600(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->initTitle()V

    return-void
.end method

.method static synthetic access$2700(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I
    .locals 0

    .line 100
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    return p0
.end method

.method static synthetic access$2900(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/Scroller;
    .locals 0

    .line 100
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$300(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNeedRequestLayoutOnExpandTitleShowing:Z

    return p0
.end method

.method static synthetic access$3002(Lmiuix/appcompat/internal/app/widget/ActionBarView;I)I
    .locals 0

    .line 100
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    return p1
.end method

.method static synthetic access$302(Lmiuix/appcompat/internal/app/widget/ActionBarView;Z)Z
    .locals 0

    .line 100
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNeedRequestLayoutOnExpandTitleShowing:Z

    return p1
.end method

.method static synthetic access$3100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I
    .locals 0

    .line 100
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseSecondaryTabHeight:I

    return p0
.end method

.method static synthetic access$400(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroidx/appcompat/app/ActionBar$OnNavigationListener;
    .locals 0

    .line 100
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCallback:Landroidx/appcompat/app/ActionBar$OnNavigationListener;

    return-object p0
.end method

.method static synthetic access$500(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;
    .locals 0

    .line 100
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    return-object p0
.end method

.method static synthetic access$600(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;
    .locals 0

    .line 100
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogoNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    return-object p0
.end method

.method static synthetic access$700(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;
    .locals 0

    .line 100
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    return-object p0
.end method

.method static synthetic access$800(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Ljava/lang/CharSequence;
    .locals 0

    .line 100
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$902(Lmiuix/appcompat/internal/app/widget/ActionBarView;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 100
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInitCustomTitle:Ljava/lang/CharSequence;

    return-object p1
.end method

.method private addCustomView()V
    .locals 3

    .line 1953
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    sget v1, Lmiuix/appcompat/R$id;->action_bar_expand_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1954
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getCustomTitleView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1956
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInitCustomTitle:Ljava/lang/CharSequence;

    .line 1957
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->freeMainContainerChildren()Z

    .line 1958
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseCustomContainer:Landroid/widget/FrameLayout;

    .line 1959
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v2, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V

    .line 1960
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-eqz v0, :cond_0

    .line 1961
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInitCustomTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setTitle(Ljava/lang/CharSequence;)V

    .line 1962
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setTitleVisibility(I)V

    .line 1963
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setVisibility(I)V

    .line 1964
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setSubTitleVisibility(I)V

    .line 1965
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    invoke-virtual {v2}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->getLayout()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1966
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    invoke-virtual {v2}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->getLayout()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 1969
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomTitleWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    return-void
.end method

.method private addEndMenuView()V
    .locals 5

    .line 1222
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1224
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 1225
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lmiuix/appcompat/R$bool;->abc_action_bar_expanded_action_views_exclusive:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 1224
    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 1227
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuItemLimit:I

    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setItemLimit(I)V

    .line 1228
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1229
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const v1, 0x800005

    .line 1230
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1231
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 1232
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    if-eq v2, p0, :cond_0

    .line 1234
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1236
    :cond_0
    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1237
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    return-void
.end method

.method private addSecondaryTabsToCollapseTabContainers()V
    .locals 6

    .line 1006
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    if-eqz v0, :cond_3

    .line 1007
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1008
    sget v0, Lmiuix/appcompat/R$id;->action_bar_collapse_tab_container:I

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->createSecondaryTabContainer(I)Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    .line 1009
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    if-ne v2, v1, :cond_1

    const/4 v2, 0x0

    .line 1010
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_0

    .line 1013
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1015
    :cond_1
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1016
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1017
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1020
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    if-ne v0, v1, :cond_2

    .line 1021
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1023
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method private addSecondaryTabsToExpandTabContainers()V
    .locals 5

    .line 1029
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    if-eqz v0, :cond_3

    .line 1030
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 1031
    sget v0, Lmiuix/appcompat/R$id;->action_bar_movable_tab_container:I

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->createSecondaryTabContainer(I)Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    .line 1032
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 1033
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_0

    .line 1036
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1038
    :cond_1
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1039
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1040
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1043
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    if-nez v0, :cond_2

    .line 1044
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1046
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method private addSplitMenuView()V
    .locals 6

    .line 1352
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz v0, :cond_0

    .line 1353
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mScheduleBottomMenuRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    .line 1355
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1356
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mScheduleBottomMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 1357
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mScheduleBottomMenuRunnable:Ljava/lang/Runnable;

    .line 1359
    :cond_0
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mBottomMenuMode:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    .line 1360
    :goto_0
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {v1, v3}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 1362
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v4, v2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 1363
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v1, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1364
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eqz v0, :cond_2

    .line 1366
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v4, v5}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1368
    :cond_2
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mPendingInset:Landroid/graphics/Rect;

    if-eqz v4, :cond_4

    if-eqz v0, :cond_3

    .line 1370
    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v4

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1371
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-static {v4, v3}, Lmiuix/internal/util/ViewUtils;->resetPaddingBottom(Landroid/view/View;I)V

    goto :goto_1

    .line 1373
    :cond_3
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v5, v4}, Lmiuix/internal/util/ViewUtils;->resetPaddingBottom(Landroid/view/View;I)V

    .line 1376
    :cond_4
    :goto_1
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v4, :cond_7

    .line 1377
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-direct {p0, v4}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->removeMenuViewFromOldParent(Landroid/view/View;)V

    .line 1378
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v4, v5}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onResidentActionMenuViewRemoved(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)V

    .line 1379
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    instance-of v5, v4, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    if-eqz v5, :cond_5

    .line 1380
    check-cast v4, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 1381
    invoke-virtual {v4, v0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->setSuspendEnabled(Z)V

    .line 1382
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsBottomMenuVisible:Z

    xor-int/2addr v0, v2

    invoke-virtual {v4, v0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->setHidden(Z)V

    .line 1385
    :cond_5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0, v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1386
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onResidentActionMenuViewAdded(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)V

    .line 1388
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    sget v1, Lmiuix/appcompat/R$id;->expanded_menu:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1390
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1392
    :cond_6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_2

    .line 1395
    :cond_7
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    return-void
.end method

.method private addTabsContainer()V
    .locals 6

    .line 845
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 846
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 847
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-eqz v3, :cond_1

    .line 848
    invoke-virtual {v3}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->getLayout()Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 851
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    .line 852
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v3, :cond_1

    .line 853
    invoke-virtual {v3}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getLayout()Landroid/view/View;

    move-result-object v2

    .line 856
    :cond_1
    :goto_0
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v3, v3, 0x10

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    if-eqz v3, :cond_3

    .line 858
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 860
    sget v5, Lmiuix/appcompat/R$id;->action_bar_expand_container:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 861
    invoke-direct {p0, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getCustomTitleView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v4

    .line 866
    :goto_2
    iget v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_4

    .line 867
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isAllTitlesEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    move v1, v4

    .line 868
    :goto_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-nez v5, :cond_5

    if-eqz v3, :cond_6

    :cond_5
    if-nez v1, :cond_7

    .line 870
    :cond_6
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addTabsToMainContainers()V

    goto :goto_5

    :cond_7
    if-eqz v3, :cond_8

    .line 873
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addSecondaryTabsToCollapseTabContainers()V

    .line 874
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addSecondaryTabsToExpandTabContainers()V

    goto :goto_5

    :cond_8
    if-eqz v2, :cond_b

    .line 875
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, v0, :cond_b

    .line 877
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lmiuix/appcompat/internal/view/ActionBarPolicy;

    move-result-object v1

    .line 878
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->isTightTitle()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hasTabsInContainer(Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_4

    .line 881
    :cond_9
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addSecondaryTabsToCollapseTabContainers()V

    .line 882
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addSecondaryTabsToExpandTabContainers()V

    goto :goto_5

    .line 879
    :cond_a
    :goto_4
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addTabsToMainContainers()V

    .line 886
    :cond_b
    :goto_5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_c

    .line 887
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 889
    :cond_c
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_d

    .line 890
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, p0, v0, v4}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 892
    :cond_d
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateTabsLayoutParams()V

    .line 894
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateTightTitle()V

    return-void
.end method

.method private addTabsToMainContainers()V
    .locals 3

    .line 970
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 971
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 972
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 973
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->detachView(Landroid/view/View;)V

    .line 975
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 976
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    .line 978
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    .line 979
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_2

    .line 980
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 981
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->detachView(Landroid/view/View;)V

    .line 983
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 984
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    .line 986
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 987
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 988
    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 989
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-direct {p0, v0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 991
    :cond_4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 992
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_5

    .line 993
    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 994
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-direct {p0, v0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 996
    :cond_5
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    .line 997
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandState:I

    invoke-virtual {p0, v0, v1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(IZZ)V

    :cond_6
    return-void
.end method

.method private animateLayoutWithProcess(F)V
    .locals 12

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2698
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float v0, v1, v0

    .line 2699
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    const/16 v3, 0x14

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2722
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    if-ne v2, v5, :cond_5

    .line 2701
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mLastProcess:F

    cmpl-float p1, v2, p1

    if-nez p1, :cond_0

    .line 2702
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLastResizingProcess:F

    return-void

    :cond_0
    cmpl-float p1, v0, v4

    const/4 v2, 0x3

    const-wide/16 v9, 0x1

    const-string v11, "target"

    if-lez p1, :cond_2

    .line 2706
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsCollapseTitleShowingOnResizing:Z

    if-eqz p1, :cond_4

    .line 2707
    iput-boolean v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsCollapseTitleShowingOnResizing:Z

    .line 2708
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseAnimHideConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p1, v4, v7, v3, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    .line 2709
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionBarTransitionListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    new-array p1, v5, [Ljava/lang/Object;

    aput-object v11, p1, v7

    aput-object v8, p1, v6

    .line 2710
    invoke-static {p1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    invoke-interface {p1, v9, v10}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object p1

    .line 2711
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Lmiuix/animation/IStateStyle;->setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array v1, v5, [Ljava/lang/Object;

    const-string v4, "expand"

    aput-object v4, v1, v7

    iget v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTransitionTarget:I

    .line 2712
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v6

    invoke-interface {p1, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v4, v1, v7

    .line 2713
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mHideProcessConfig:Lmiuix/animation/base/AnimConfig;

    aput-object v2, v1, v5

    invoke-interface {p1, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 2715
    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, v7}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    goto :goto_0

    .line 2718
    :cond_2
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsCollapseTitleShowingOnResizing:Z

    if-nez p1, :cond_4

    .line 2719
    iput-boolean v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsCollapseTitleShowingOnResizing:Z

    .line 2720
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseAnimShowConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p1, v1, v7, v7, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    .line 2721
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionBarTransitionListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    new-array p1, v5, [Ljava/lang/Object;

    aput-object v11, p1, v7

    aput-object v8, p1, v6

    .line 2722
    invoke-static {p1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    invoke-interface {p1, v9, v10}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object p1

    .line 2723
    invoke-interface {p1, v8}, Lmiuix/animation/IStateStyle;->setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array v1, v5, [Ljava/lang/Object;

    const-string v3, "collapse"

    aput-object v3, v1, v7

    iget v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTransitionTarget:I

    .line 2724
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v6

    invoke-interface {p1, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v3, v1, v7

    aput-object v8, v1, v6

    .line 2725
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mShowProcessConfig:Lmiuix/animation/base/AnimConfig;

    aput-object v2, v1, v5

    invoke-interface {p1, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 2727
    :cond_3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, v7}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 2730
    :cond_4
    :goto_0
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLastResizingProcess:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_a

    .line 2731
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMovableAnimNormalConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p1, v0, v7, v7, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    .line 2732
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLastResizingProcess:F

    goto :goto_2

    :cond_5
    if-ne v2, v6, :cond_8

    .line 2735
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLastResizingProcess:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    move v6, v7

    :goto_1
    iput-boolean v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNeedRequestLayoutOnExpandTitleShowing:Z

    .line 2736
    iput v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTransitionTarget:I

    .line 2737
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLastResizingProcess:F

    .line 2738
    iput-boolean v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsCollapseTitleShowingOnResizing:Z

    .line 2739
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mLastProcess:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_7

    return-void

    .line 2742
    :cond_7
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseAnimHideConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p1, v4, v7, v3, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    .line 2743
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMovableAnimShowConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p1, v1, v7, v7, p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    goto :goto_2

    :cond_8
    if-nez v2, :cond_a

    .line 2745
    iput-boolean v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNeedRequestLayoutOnExpandTitleShowing:Z

    .line 2746
    iput v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTransitionTarget:I

    .line 2747
    iput v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLastResizingProcess:F

    .line 2748
    iput-boolean v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsCollapseTitleShowingOnResizing:Z

    .line 2749
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mLastProcess:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_9

    return-void

    .line 2752
    :cond_9
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseAnimShowConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p1, v1, v7, v7, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    .line 2753
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMovableAnimNormalConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p1, v4, v7, v7, p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    :cond_a
    :goto_2
    return-void
.end method

.method private canCollapseTitleBeShown()Z
    .locals 2

    .line 2764
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2767
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->canTitleBeShown(Ljava/lang/String;)Z

    move-result v0

    .line 2768
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lmiuix/appcompat/internal/view/ActionBarPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->isTitleEnableEllipsis()Z

    move-result p0

    if-eqz p0, :cond_1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private canConsumeScroll()Z
    .locals 2

    .line 4036
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isShowTitle()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-nez v0, :cond_0

    return v1

    .line 4039
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isResizable()Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private clipViewBounds(Landroid/view/View;IIII)V
    .locals 0

    .line 3054
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 3055
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 3056
    invoke-virtual {p1, p0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method private computeTitleCenterLayoutStart(Landroid/view/View;)I
    .locals 2

    .line 3060
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 3061
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    sub-int/2addr p0, v0

    div-int/lit8 p0, p0, 0x2

    .line 3063
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 3064
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3065
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 3066
    invoke-virtual {p1}, Landroid/widget/LinearLayout$LayoutParams;->getMarginStart()I

    move-result p1

    add-int/2addr v1, p1

    :cond_0
    sub-int/2addr p0, v1

    return p0
.end method

.method private createCollapseTitle(Z)V
    .locals 5

    .line 2166
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-nez v0, :cond_6

    .line 2167
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitleStyleRes:I

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseSubtitleStyleRes:I

    invoke-static {v0, v1, v2}, Lmiuix/appcompat/internal/util/ActionBarViewFactory;->generateCollapseTitle(Landroid/content/Context;II)Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 2169
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapsedTitleVisible:Z

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setVisible(Z)V

    .line 2170
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseTitleColorTransitEnable:Z

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setTextColorTransitEnable(ZI)V

    .line 2171
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleClickable:Z

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setAllTitlesClickable(Z)V

    .line 2173
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setTitle(Ljava/lang/CharSequence;)V

    .line 2174
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleClickListener:Landroid/view/View$OnClickListener;

    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleClickable:Z

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setOnClickListener(Landroid/view/View$OnClickListener;Z)V

    .line 2175
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubTitleClickListener:Landroid/view/View$OnClickListener;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserSubTitleClickListener:Landroid/view/View$OnClickListener;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitleOnClickListener(Landroid/view/View$OnClickListener;Z)V

    .line 2176
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitle(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_1

    .line 2178
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getLayout()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_3

    .line 2180
    :cond_1
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_2

    move p1, v3

    goto :goto_1

    :cond_2
    move p1, v4

    :goto_1
    if-eqz p1, :cond_6

    .line 2183
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getNavigationMode()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    goto :goto_2

    :cond_3
    move v3, v4

    :goto_2
    if-eqz v3, :cond_4

    .line 2184
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isTightTitleWithEmbeddedTabs()Z

    move-result p1

    if-nez p1, :cond_6

    .line 2185
    :cond_4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hasTabsInContainer(Landroid/view/ViewGroup;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2186
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addSecondaryTabsToCollapseTabContainers()V

    .line 2188
    :cond_5
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2189
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getLayout()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    :cond_6
    :goto_3
    return-void
.end method

.method private createExpandTitle(Z)V
    .locals 6

    .line 2197
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-nez v0, :cond_9

    .line 2198
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/appcompat/internal/util/ActionBarViewFactory;->generateExpandTitle(Landroid/content/Context;)Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 2199
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitleVisible:Z

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setVisible(Z)V

    .line 2200
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandTitleColorTransitEnable:Z

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setTextColorTransitEnable(ZI)V

    .line 2201
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleClickable:Z

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setAllTitlesClickable(Z)V

    .line 2202
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 2205
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    .line 2206
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 2208
    sget v4, Lmiuix/appcompat/R$id;->action_bar_expand_container:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 2209
    invoke-direct {p0, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getCustomTitleView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2211
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInitCustomTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2212
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInitCustomTitle:Ljava/lang/CharSequence;

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 2218
    :goto_1
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    invoke-virtual {v4, v0}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setTitle(Ljava/lang/CharSequence;)V

    .line 2219
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleClickListener:Landroid/view/View$OnClickListener;

    iget-boolean v5, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleClickable:Z

    invoke-virtual {v0, v4, v5}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setOnClickListener(Landroid/view/View$OnClickListener;Z)V

    .line 2220
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubTitleClickListener:Landroid/view/View$OnClickListener;

    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserSubTitleClickListener:Landroid/view/View$OnClickListener;

    if-eqz v5, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    invoke-virtual {v0, v4, v5}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setSubTitleOnClickListener(Landroid/view/View$OnClickListener;Z)V

    if-nez v3, :cond_3

    .line 2222
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setSubTitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 2224
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setSubTitle(Ljava/lang/CharSequence;)V

    :goto_3
    if-nez p1, :cond_4

    .line 2227
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->getLayout()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_6

    .line 2229
    :cond_4
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_5

    move p1, v1

    goto :goto_4

    :cond_5
    move p1, v2

    :goto_4
    if-eqz p1, :cond_9

    .line 2232
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getNavigationMode()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    goto :goto_5

    :cond_6
    move v1, v2

    :goto_5
    if-eqz v1, :cond_7

    .line 2233
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isTightTitleWithEmbeddedTabs()Z

    move-result p1

    if-nez p1, :cond_9

    .line 2234
    :cond_7
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hasTabsInContainer(Landroid/view/ViewGroup;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 2235
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addSecondaryTabsToExpandTabContainers()V

    .line 2237
    :cond_8
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2238
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->getLayout()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    :cond_9
    :goto_6
    return-void
.end method

.method private createSecondaryTabContainer(I)Landroid/widget/FrameLayout;
    .locals 3

    .line 1452
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1453
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 1455
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result p1

    .line 1456
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    .line 1457
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v2

    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryTabVerticalPadding:I

    .line 1454
    invoke-virtual {v0, p1, v1, v2, p0}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    const/4 p0, 0x0

    .line 1459
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-object v0
.end method

.method private divideHyperMenuAndSplitMenu(Landroid/view/Menu;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            ")",
            "Landroid/util/Pair<",
            "Lmiuix/appcompat/internal/view/menu/MenuBuilder;",
            "Lmiuix/appcompat/internal/view/menu/MenuBuilder;",
            ">;"
        }
    .end annotation

    .line 1174
    move-object v0, p1

    check-cast v0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 1175
    new-instance v1, Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 1176
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getCallback()Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setCallback(Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;)V

    .line 1177
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1178
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    .line 1179
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    check-cast v3, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 1180
    invoke-virtual {v3}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    sget v5, Lmiuix/appcompat/R$id;->miuix_split_action_menu_group:I

    if-ne v4, v5, :cond_1

    .line 1181
    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->removeItemAt(I)V

    .line 1182
    invoke-virtual {v3}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v4

    .line 1183
    instance-of v5, v4, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    if-eqz v5, :cond_0

    .line 1184
    check-cast v4, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    invoke-virtual {v4, v1}, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;->setParentMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 1186
    :cond_0
    invoke-virtual {v3, v1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 1187
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1190
    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_3

    .line 1191
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1, v2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->add(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Landroid/view/MenuItem;

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 1193
    :cond_3
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private divideMenuByGroup(Landroid/view/Menu;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            ")",
            "Landroid/util/Pair<",
            "Lmiuix/appcompat/internal/view/menu/MenuBuilder;",
            "Lmiuix/appcompat/internal/view/menu/MenuBuilder;",
            ">;"
        }
    .end annotation

    .line 1198
    move-object v0, p1

    check-cast v0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 1199
    new-instance v1, Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 1200
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getCallback()Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setCallback(Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;)V

    .line 1201
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1202
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    .line 1203
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    check-cast v3, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 1204
    invoke-virtual {v3}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    sget v5, Lmiuix/appcompat/R$id;->miuix_action_end_menu_group:I

    if-ne v4, v5, :cond_1

    .line 1205
    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->removeItemAt(I)V

    .line 1206
    invoke-virtual {v3}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v4

    .line 1207
    instance-of v5, v4, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    if-eqz v5, :cond_0

    .line 1208
    check-cast v4, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    invoke-virtual {v4, v1}, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;->setParentMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 1210
    :cond_0
    invoke-virtual {v3, v1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 1211
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1214
    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_3

    .line 1215
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1, v2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->add(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Landroid/view/MenuItem;

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 1217
    :cond_3
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private findActionBarOverlayLayout()Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;
    .locals 1

    .line 3611
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 3613
    :goto_0
    instance-of v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 3621
    check-cast p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    return-object p0

    .line 3615
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3616
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    .line 3618
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "ActionBarOverlayLayout not found"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private freeMainContainerChildren()Z
    .locals 1

    .line 1588
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hasTabsInContainer(Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1589
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addSecondaryTabsToCollapseTabContainers()V

    .line 1591
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hasTabsInContainer(Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1592
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addSecondaryTabsToExpandTabContainers()V

    .line 1594
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1595
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    const/4 p0, 0x1

    return p0
.end method

.method private getCircularProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    .line 3716
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    .line 3718
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-object p0
.end method

.method private getCustomTitleView(Landroid/view/View;)Landroid/widget/TextView;
    .locals 0

    if-eqz p1, :cond_0

    const p0, 0x1020016

    .line 1576
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getHorizontalProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    .line 3724
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    .line 3726
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-object p0
.end method

.method private getIcon()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 3732
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_2

    .line 3733
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 3735
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "ActionBarView"

    const-string v3, "Activity component name not found!"

    .line 3737
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3740
    :cond_0
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 3741
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 3743
    :cond_1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    or-int/2addr v0, v1

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    .line 3745
    :cond_2
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private getLogo()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 3749
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_2

    .line 3751
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 3753
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "ActionBarView"

    const-string v3, "Activity component name not found!"

    .line 3755
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3758
    :cond_0
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 3759
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 3762
    :cond_1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    or-int/2addr v0, v1

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    .line 3764
    :cond_2
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private hasTabsInContainer(Landroid/view/ViewGroup;)Z
    .locals 2

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1583
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ne v1, p0, :cond_0

    .line 1584
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    return p0
.end method

.method private hasTitle()Z
    .locals 1

    .line 2758
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 2759
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isAllTitlesEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2760
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getNavigationMode()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 1

    const/4 p0, 0x4

    if-eqz p2, :cond_0

    .line 3707
    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3708
    invoke-virtual {p2, p0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    if-eqz p1, :cond_1

    .line 3710
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p2

    if-nez p2, :cond_1

    .line 3711
    invoke-virtual {p1, p0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private initExpandedHomeLayout()V
    .locals 3

    .line 3789
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-nez v0, :cond_0

    .line 3790
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    const/4 v1, 0x1

    .line 3791
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setUp(Z)V

    .line 3792
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private initHomeLayout()V
    .locals 3

    .line 3768
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-nez v0, :cond_2

    .line 3769
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 3770
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3771
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 3772
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 3774
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorResId:I

    if-eqz v0, :cond_0

    .line 3775
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setUpIndicator(I)V

    .line 3776
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorResId:I

    .line 3779
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 3780
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setUpIndicator(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 3781
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 3784
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private initTitle()V
    .locals 3

    const/4 v0, 0x0

    .line 2090
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingCreated:Z

    .line 2091
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->initTitleUpView()V

    .line 2092
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2095
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->freeMainContainerChildren()Z

    .line 2098
    :cond_0
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 2099
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-nez v1, :cond_1

    .line 2100
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->createExpandTitle(Z)V

    .line 2102
    :cond_1
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    if-eqz v1, :cond_3

    .line 2103
    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->onHide()V

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    .line 2106
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-nez v1, :cond_3

    .line 2107
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->createCollapseTitle(Z)V

    .line 2110
    :cond_3
    :goto_0
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateTightTitle()V

    .line 2113
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$$ExternalSyntheticLambda5;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 2121
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v1, :cond_4

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isAllTitlesEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2123
    :cond_4
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleVisibility(Z)V

    .line 2125
    :cond_5
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 2126
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, p0, v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;I)V

    return-void
.end method

.method private initTitleUpView()V
    .locals 4

    .line 2130
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2131
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiuix/appcompat/internal/util/ActionBarViewFactory;->generateTitleUpView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 2132
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2134
    :cond_0
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 2136
    :goto_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-nez v2, :cond_4

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x4

    goto :goto_2

    :cond_4
    const/16 v3, 0x8

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2137
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2138
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2139
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    invoke-direct {p0, p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method private isAllTitlesEmpty()Z
    .locals 1

    .line 1664
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isShowTitle()Z
    .locals 1

    .line 2336
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseCustomContainer:Landroid/widget/FrameLayout;

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

.method private isSimpleCustomNavView()Z
    .locals 4

    .line 2320
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 2321
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2322
    instance-of v2, v0, Landroidx/appcompat/app/ActionBar$LayoutParams;

    if-eqz v2, :cond_0

    .line 2323
    check-cast v0, Landroidx/appcompat/app/ActionBar$LayoutParams;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_2

    :cond_1
    move v1, v2

    goto :goto_1

    .line 2325
    :cond_2
    iget v0, v0, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    invoke-direct {p0, v0, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->normalizeHorizontalGravity(IZ)I

    move-result p0

    const v0, 0x800005

    if-ne p0, v0, :cond_1

    :cond_3
    :goto_1
    return v1
.end method

.method private isTitleCenter()Z
    .locals 1

    .line 2331
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleCenter:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isSimpleCustomNavView()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz p0, :cond_0

    .line 2332
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$initTitle$4()V
    .locals 1

    .line 2115
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->pendingCreateTitle()V

    .line 2116
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->shouldTitleVisible()Z

    move-result v0

    .line 2117
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleVisibility(Z)V

    .line 2118
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateTightTitle()V

    return-void
.end method

.method private synthetic lambda$onConfigurationChanged$1()V
    .locals 2

    .line 572
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 575
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-eqz v1, :cond_0

    .line 576
    invoke-interface {v1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    .line 579
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    :cond_1
    return-void
.end method

.method private synthetic lambda$postRefreshTitleControllerStatus$0()V
    .locals 6

    .line 490
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 491
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v2, v4, v4, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FIIZ)V

    .line 492
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p0, v1, v4, v4, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FIIZ)V

    goto :goto_0

    :cond_0
    if-ne v0, v3, :cond_1

    .line 494
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    const/16 v5, 0x14

    invoke-virtual {v0, v1, v4, v5, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FIIZ)V

    .line 495
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p0, v2, v4, v4, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FIIZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$setSubtitle$3()V
    .locals 1

    .line 1805
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz p0, :cond_0

    .line 1806
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getSubtitleAdjustSize()F

    move-result v0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitleTextSize(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateCollapseTitle$2()V
    .locals 1

    .line 1736
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz p0, :cond_0

    .line 1737
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getSubtitleAdjustSize()F

    move-result v0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitleTextSize(F)V

    :cond_0
    return-void
.end method

.method private normalizeHorizontalGravity(IZ)I
    .locals 2

    const p0, 0x800007

    and-int/2addr p0, p1

    const/high16 p1, 0x800000

    and-int/2addr p1, p0

    if-nez p1, :cond_3

    const/4 p1, 0x3

    const v0, 0x800005

    const v1, 0x800003

    if-ne p0, p1, :cond_2

    if-eqz p2, :cond_1

    :cond_0
    move p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v1

    goto :goto_1

    :cond_2
    const/4 p1, 0x5

    if-ne p0, p1, :cond_3

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_3
    :goto_1
    return p0
.end method

.method private notifyMenuStateChange()V
    .locals 2

    .line 2973
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBarEnable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2977
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 2978
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getCollapsedHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result p0

    sub-float/2addr v1, p0

    float-to-int p0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->onMenuStateChanged(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onLayoutCollapseViews(ZIIIII)V
    .locals 20

    move-object/from16 v7, p0

    .line 2775
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v6

    .line 2777
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v8

    .line 2778
    iget-object v9, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    .line 2779
    iget-object v10, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    .line 2781
    invoke-static/range {p0 .. p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v11

    .line 2782
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    sub-int v0, p5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int v12, v0, v1

    if-gtz v12, :cond_0

    return-void

    :cond_0
    sub-int v0, p4, p2

    .line 2790
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2792
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    const/16 v13, 0x8

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, v7, :cond_1

    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eq v1, v13, :cond_1

    .line 2793
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v7, v1, v0, v8, v12}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 2794
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2797
    :cond_1
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v13, :cond_2

    .line 2798
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    invoke-virtual {v7, v1, v0, v8, v12}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 2799
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2802
    :cond_2
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_3

    .line 2803
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-eq v1, v13, :cond_3

    .line 2804
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    iget v2, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressBarPadding:I

    sub-int v2, v0, v2

    invoke-virtual {v7, v1, v2, v8, v12}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 2806
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v1

    iget v2, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressBarPadding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    :cond_3
    move v14, v0

    .line 2809
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v13, :cond_4

    .line 2810
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v2, v6

    move v3, v8

    move v4, v12

    invoke-virtual/range {v0 .. v5}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    move/from16 v16, v0

    goto :goto_0

    :cond_4
    const/16 v16, 0x0

    .line 2813
    :goto_0
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    goto :goto_1

    :cond_5
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    :goto_1
    move-object v1, v0

    if-eqz v1, :cond_6

    .line 2814
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 2815
    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->getStartOffset()I

    move-result v17

    add-int v2, v6, v17

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v3, v8

    move v4, v12

    .line 2816
    invoke-virtual/range {v0 .. v5}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int v0, v0, v17

    :goto_2
    add-int/2addr v6, v0

    goto :goto_3

    .line 2817
    :cond_6
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v13, :cond_7

    .line 2818
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v2, v6

    move v3, v8

    move v4, v12

    invoke-virtual/range {v0 .. v5}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    goto :goto_2

    :cond_7
    :goto_3
    move/from16 v17, v6

    .line 2821
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    const/4 v6, 0x1

    if-nez v0, :cond_14

    .line 2822
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isShowTitle()Z

    move-result v18

    if-nez v18, :cond_8

    .line 2824
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_b

    .line 2825
    :cond_8
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    .line 2826
    iget-boolean v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHasStartView:Z

    if-nez v0, :cond_a

    iget-boolean v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHasNavigatorSwitchView:Z

    if-eqz v0, :cond_9

    goto :goto_4

    .line 2828
    :cond_9
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, v17

    move v3, v8

    move v4, v12

    invoke-virtual/range {v0 .. v5}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    move v15, v6

    goto :goto_5

    .line 2827
    :cond_a
    :goto_4
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    const/4 v5, 0x0

    iget v4, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpViewMarginStart:I

    move-object/from16 v0, p0

    move/from16 v2, v17

    move v3, v8

    move/from16 v19, v4

    move v4, v12

    move v15, v6

    move/from16 v6, v19

    invoke-virtual/range {v0 .. v6}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChildWithOffset(Landroid/view/View;IIIZI)I

    move-result v0

    :goto_5
    add-int v17, v17, v0

    goto :goto_6

    :cond_b
    move v15, v6

    :goto_6
    if-eqz v18, :cond_11

    if-eqz v9, :cond_11

    add-int v6, v17, v16

    .line 2836
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isTitleCenter()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2838
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq v0, v13, :cond_c

    .line 2839
    invoke-direct {v7, v9}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->computeTitleCenterLayoutStart(Landroid/view/View;)I

    move-result v0

    goto :goto_7

    :cond_c
    move v0, v6

    .line 2841
    :goto_7
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->canCollapseTitleBeShown()Z

    move-result v1

    iput-boolean v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitleShowable:Z

    .line 2842
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateTightTitle()V

    .line 2844
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v0

    .line 2846
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v6

    if-le v2, v14, :cond_d

    move v2, v6

    :goto_8
    move v4, v14

    goto :goto_9

    :cond_d
    if-le v1, v14, :cond_e

    .line 2851
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v14, v0

    move v2, v0

    goto :goto_8

    :cond_e
    if-ge v0, v6, :cond_f

    .line 2854
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v6

    move v4, v0

    move v2, v6

    goto :goto_9

    :cond_f
    move v2, v0

    move v4, v1

    .line 2857
    :goto_9
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    sub-int v1, v12, v0

    .line 2858
    div-int/lit8 v1, v1, 0x2

    add-int v3, v8, v1

    add-int v5, v3, v0

    move-object/from16 v0, p0

    move-object v1, v9

    .line 2859
    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    goto :goto_a

    .line 2861
    :cond_10
    invoke-virtual {v7, v9, v6, v8, v12}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v0

    add-int/2addr v6, v0

    :goto_a
    move/from16 v17, v6

    .line 2865
    :cond_11
    iget v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    if-eq v0, v15, :cond_12

    goto :goto_b

    .line 2869
    :cond_12
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_15

    if-eqz v18, :cond_13

    .line 2871
    iget v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mItemPadding:I

    add-int v17, v17, v1

    :cond_13
    move/from16 v1, v17

    .line 2873
    invoke-virtual {v7, v0, v1, v8, v12}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v0

    iget v2, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mItemPadding:I

    add-int/2addr v0, v2

    add-int v17, v1, v0

    goto :goto_b

    :cond_14
    move v15, v6

    .line 2880
    :cond_15
    :goto_b
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-eqz v0, :cond_16

    goto :goto_c

    .line 2882
    :cond_16
    iget v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_17

    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v0, :cond_17

    goto :goto_c

    :cond_17
    move-object v0, v1

    :goto_c
    if-eqz v0, :cond_27

    .line 2886
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v13, :cond_27

    .line 2887
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2888
    instance-of v4, v3, Landroidx/appcompat/app/ActionBar$LayoutParams;

    if-eqz v4, :cond_18

    .line 2889
    move-object v1, v3

    check-cast v1, Landroidx/appcompat/app/ActionBar$LayoutParams;

    :cond_18
    if-eqz v1, :cond_19

    .line 2891
    iget v3, v1, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    goto :goto_d

    :cond_19
    const v3, 0x800013

    .line 2892
    :goto_d
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-eqz v1, :cond_1a

    .line 2897
    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v5

    add-int v17, v17, v5

    .line 2898
    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v5

    sub-int/2addr v14, v5

    .line 2899
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2900
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v6, v17

    goto :goto_e

    :cond_1a
    move/from16 v6, v17

    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_e
    const v8, 0x800007

    and-int/2addr v8, v3

    const v9, 0x800005

    const/4 v12, -0x1

    const v13, 0x800003

    if-ne v8, v15, :cond_1c

    .line 2906
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v16

    sub-int v16, v16, v4

    div-int/lit8 v2, v16, 0x2

    if-ge v2, v6, :cond_1b

    goto :goto_f

    :cond_1b
    add-int/2addr v2, v4

    if-le v2, v14, :cond_1d

    move v8, v9

    goto :goto_10

    :cond_1c
    if-ne v3, v12, :cond_1d

    :goto_f
    move v8, v13

    .line 2916
    :cond_1d
    :goto_10
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v2

    .line 2917
    invoke-direct {v7, v8, v11}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->normalizeHorizontalGravity(IZ)I

    move-result v8

    if-eq v8, v15, :cond_1f

    if-eq v8, v13, :cond_20

    if-eq v8, v9, :cond_1e

    move v6, v2

    goto :goto_11

    :cond_1e
    sub-int v6, v14, v4

    goto :goto_11

    .line 2919
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    sub-int/2addr v2, v4

    div-int/lit8 v6, v2, 0x2

    :cond_20
    :goto_11
    and-int/lit8 v2, v3, 0x70

    if-ne v3, v12, :cond_21

    const/16 v2, 0x10

    :cond_21
    const/16 v3, 0x10

    if-eq v2, v3, :cond_24

    const/16 v3, 0x30

    if-eq v2, v3, :cond_23

    const/16 v3, 0x50

    if-eq v2, v3, :cond_22

    const/4 v15, 0x0

    goto :goto_12

    .line 2946
    :cond_22
    iget v2, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTotalHeight:I

    sub-int v2, v2, p6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v15, v2, v1

    goto :goto_12

    .line 2943
    :cond_23
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    add-int v15, v1, v5

    goto :goto_12

    .line 2938
    :cond_24
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    .line 2939
    iget v2, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTotalHeight:I

    sub-int v2, v2, p6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    .line 2940
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v2, v1

    div-int/lit8 v15, v2, 0x2

    .line 2950
    :goto_12
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-eqz v11, :cond_25

    .line 2951
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    sub-int/2addr v2, v6

    sub-int/2addr v2, v1

    goto :goto_13

    :cond_25
    move v2, v6

    :goto_13
    if-eqz v11, :cond_26

    .line 2952
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    sub-int/2addr v1, v6

    goto :goto_14

    :cond_26
    add-int/2addr v1, v6

    .line 2953
    :goto_14
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v15

    invoke-virtual {v0, v2, v15, v1, v3}, Landroid/view/View;->layout(IIII)V

    .line 2956
    :cond_27
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_28

    .line 2957
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 2958
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 2959
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    iget v2, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressBarPadding:I

    neg-int v3, v0

    .line 2960
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    .line 2959
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/ProgressBar;->layout(IIII)V

    :cond_28
    if-lez p6, :cond_29

    .line 2964
    iget v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapseTabPaddingH:I

    iget v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExtraPadding:I

    add-int v2, v0, v1

    .line 2965
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    add-int v4, v2, v0

    add-int v5, p5, p6

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v3, p5

    .line 2966
    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    :cond_29
    return-void
.end method

.method private pendingCreateTitle()V
    .locals 4

    .line 2143
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingCreated:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2146
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingCreated:Z

    .line 2147
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 2149
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-nez v1, :cond_2

    .line 2150
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->createExpandTitle(Z)V

    .line 2151
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateExpandTitle()V

    .line 2153
    :cond_2
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-nez v1, :cond_3

    .line 2154
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->createCollapseTitle(Z)V

    .line 2156
    :cond_3
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateCollapseTitle()V

    .line 2158
    :cond_4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v0, :cond_5

    .line 2159
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getHitRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 2160
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lmiuix/appcompat/R$attr;->actionBarPaddingStart:I

    invoke-static {v2, v3}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2161
    new-instance v1, Landroid/view/TouchDelegate;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    invoke-virtual {v2}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getLayout()Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_5
    return-void
.end method

.method private postRefreshTitleControllerStatus()V
    .locals 1

    .line 489
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$$ExternalSyntheticLambda3;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private removeMenuViewFromOldParent(Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1408
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    .line 1410
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private removeTabsFromContainer()V
    .locals 3

    .line 898
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 899
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 900
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 901
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->detachView(Landroid/view/View;)V

    .line 903
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 904
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    .line 906
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    .line 907
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 908
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 909
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->detachView(Landroid/view/View;)V

    .line 911
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 912
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    .line 914
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    if-eqz v0, :cond_4

    .line 915
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 916
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 919
    :cond_4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    if-eqz v0, :cond_5

    .line 920
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 921
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 926
    :cond_5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_6

    .line 927
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 929
    :cond_6
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 930
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandState:I

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    return-void
.end method

.method private safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    .line 2246
    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;I)V

    return-void
.end method

.method private safeAddView(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    .line 2250
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2251
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 2254
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method private scheduleBottomMenuAnimation(Ljava/lang/Runnable;)V
    .locals 0

    .line 1348
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mScheduleBottomMenuRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private setTitleImpl(Ljava/lang/CharSequence;)V
    .locals 5

    .line 1674
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->shouldTitleVisible()Z

    move-result v0

    .line 1675
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 1677
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 1678
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1679
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateExpandTitleOnShowCustom()Z

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    if-eqz v1, :cond_2

    return-void

    .line 1686
    :cond_2
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateCollapseTitle()V

    .line 1687
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateExpandTitle()V

    .line 1688
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->shouldTitleVisible()Z

    move-result v1

    .line 1689
    invoke-direct {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleVisibility(Z)V

    .line 1690
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogoNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    if-eqz v4, :cond_3

    .line 1691
    invoke-virtual {v4, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1693
    :cond_3
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    if-eqz v4, :cond_4

    .line 1694
    invoke-virtual {v4, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_4
    const/4 p1, 0x2

    if-eqz v0, :cond_7

    if-nez v1, :cond_7

    .line 1698
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    if-ne v0, p1, :cond_5

    goto :goto_2

    :cond_5
    move v2, v3

    :goto_2
    if-nez v2, :cond_6

    .line 1699
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isTightTitleWithEmbeddedTabs()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1700
    :cond_6
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addTabsToMainContainers()V

    goto :goto_5

    :cond_7
    if-nez v0, :cond_d

    if-eqz v1, :cond_d

    .line 1704
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    if-ne v0, p1, :cond_8

    move p1, v2

    goto :goto_3

    :cond_8
    move p1, v3

    :goto_3
    if-eqz p1, :cond_9

    .line 1705
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isTightTitleWithEmbeddedTabs()Z

    move-result p1

    if-nez p1, :cond_d

    .line 1707
    :cond_9
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz p1, :cond_a

    .line 1708
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getLayout()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_a

    move v3, v2

    .line 1710
    :cond_a
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-eqz p1, :cond_b

    if-nez v3, :cond_b

    .line 1711
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->getLayout()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_b

    goto :goto_4

    :cond_b
    move v2, v3

    :goto_4
    if-eqz v2, :cond_d

    .line 1716
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->freeMainContainerChildren()Z

    .line 1717
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz p1, :cond_c

    .line 1718
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getLayout()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 1720
    :cond_c
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-eqz p1, :cond_d

    .line 1721
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->getLayout()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    :cond_d
    :goto_5
    return-void
.end method

.method private setTitleVisibility(Z)V
    .locals 5

    .line 3552
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 3553
    :goto_0
    invoke-virtual {v0, v3}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setVisibility(I)V

    .line 3555
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    const/4 v3, 0x4

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    move p1, v3

    .line 3557
    :goto_1
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setVisibility(I)V

    .line 3560
    :cond_3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    move-result p1

    and-int/lit8 p1, p1, 0x20

    if-nez p1, :cond_8

    .line 3561
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, p1, 0x4

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move v4, v2

    .line 3563
    :goto_3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-nez v4, :cond_7

    if-eqz v0, :cond_6

    move v1, v2

    goto :goto_4

    :cond_6
    move v1, v3

    :cond_7
    :goto_4
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3565
    :cond_8
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitlePaddingBottom:I

    goto :goto_5

    :cond_9
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandSubtitlePaddingBottom:I

    .line 3566
    :goto_5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v1

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 3567
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 3568
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result p0

    .line 3566
    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    return-void
.end method

.method private setupTabView(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;)V
    .locals 0

    .line 830
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 831
    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 832
    iput-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 833
    iput-object p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    if-eqz p3, :cond_0

    .line 835
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mApplyBgBlur:Z

    invoke-virtual {p3, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->setParentApplyBlur(Z)V

    .line 837
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    if-eqz p1, :cond_1

    .line 838
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mApplyBgBlur:Z

    invoke-virtual {p1, p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->setParentApplyBlur(Z)V

    :cond_1
    return-void
.end method

.method private shouldMeasureCollapseTabContainer()Z
    .locals 1

    .line 1464
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1465
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    .line 1466
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private shouldMeasureMovableTabContainer()Z
    .locals 1

    .line 1470
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1471
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    .line 1472
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private shouldTitleVisible()Z
    .locals 1

    .line 1668
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v0, :cond_0

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 1670
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isAllTitlesEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showContainerInFinishActionMode()V
    .locals 4

    .line 4189
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 4190
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMovableAnimNormalConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v0, v1, v2, v2, p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    goto :goto_0

    .line 4191
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 4192
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    .line 4193
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 4194
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMovableAnimShowConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v0, v1, v2, v2, p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 2

    const/4 p0, 0x0

    if-eqz p2, :cond_0

    .line 3696
    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3697
    invoke-virtual {p2, p0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    if-eqz p1, :cond_1

    .line 3700
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p2

    const/16 v0, 0x2710

    if-ge p2, v0, :cond_1

    .line 3701
    invoke-virtual {p1, p0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private updateBackInvokedCallbackState()V
    .locals 3

    .line 595
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_3

    .line 596
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    .line 597
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hasExpandedActionView()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 599
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 601
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mBackInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

    if-nez v2, :cond_2

    .line 602
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    if-nez v1, :cond_1

    .line 603
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$$ExternalSyntheticLambda0;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    :cond_1
    const v1, 0xf4240

    .line 605
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    invoke-interface {v0, v1, v2}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 607
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mBackInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    .line 608
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mBackInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

    if-eqz v0, :cond_3

    .line 609
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    invoke-interface {v0, v1}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    const/4 v0, 0x0

    .line 610
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mBackInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

    :cond_3
    :goto_1
    return-void
.end method

.method private updateBadgeOnMenuItemViews()V
    .locals 1

    .line 1164
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-nez v0, :cond_0

    return-void

    .line 1167
    :cond_0
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->updateBadgeOnItemViews()V

    .line 1168
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    instance-of v0, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;

    if-eqz v0, :cond_1

    .line 1169
    check-cast p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;->updateBadgeOnMoreButton()V

    :cond_1
    return-void
.end method

.method private updateCollapseTitle()V
    .locals 2

    .line 1729
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v0, :cond_1

    .line 1730
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getTitleVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1731
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setTitleVisibility(I)V

    .line 1733
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setTitle(Ljava/lang/CharSequence;)V

    .line 1734
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 1735
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$$ExternalSyntheticLambda4;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private updateExpandTitle()V
    .locals 3

    .line 1744
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-eqz v0, :cond_3

    .line 1745
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 1747
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1749
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateExpandTitleOnShowCustom()Z

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 1751
    :goto_1
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    invoke-virtual {v2, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setTitleVisibility(I)V

    if-nez v0, :cond_2

    .line 1753
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setTitle(Ljava/lang/CharSequence;)V

    .line 1755
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setSubTitle(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method private updateExpandTitleOnShowCustom()Z
    .locals 4

    .line 1760
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    sget v1, Lmiuix/appcompat/R$id;->action_bar_expand_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1761
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getCustomTitleView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 1763
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-eqz v2, :cond_3

    .line 1764
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInitCustomTitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1765
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInitCustomTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1766
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomTitleWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1767
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInitCustomTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1768
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomTitleWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1770
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInitCustomTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1772
    :cond_1
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setTitle(Ljava/lang/CharSequence;)V

    .line 1773
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomTitleWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1774
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1775
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomTitleWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1777
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1778
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setVisibility(I)V

    .line 1780
    :cond_2
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setSubTitleVisibility(I)V

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    return v1
.end method

.method private updateProgressBars(I)V
    .locals 5

    .line 3656
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getCircularProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    .line 3657
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getHorizontalProgressBar()Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x2710

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne p1, v4, :cond_3

    if-eqz v1, :cond_2

    .line 3661
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p0

    .line 3662
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result p1

    if-nez p1, :cond_1

    if-ge p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v3

    .line 3664
    :goto_1
    invoke-virtual {v1, p0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2
    if-eqz v0, :cond_9

    .line 3667
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    :cond_3
    const/4 v4, -0x2

    if-ne p1, v4, :cond_5

    const/16 p0, 0x8

    if-eqz v1, :cond_4

    .line 3671
    invoke-virtual {v1, p0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_4
    if-eqz v0, :cond_9

    .line 3674
    invoke-virtual {v0, p0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    :cond_5
    const/4 v4, -0x3

    if-ne p1, v4, :cond_6

    const/4 p0, 0x1

    .line 3677
    invoke-virtual {v1, p0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_2

    :cond_6
    const/4 v4, -0x4

    if-ne p1, v4, :cond_7

    .line 3679
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_2

    :cond_7
    if-ltz p1, :cond_9

    if-gt p1, v2, :cond_9

    add-int/lit8 v3, p1, 0x0

    .line 3684
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    if-ge p1, v2, :cond_8

    .line 3687
    invoke-direct {p0, v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_2

    .line 3689
    :cond_8
    invoke-direct {p0, v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    :cond_9
    :goto_2
    return-void
.end method

.method private updateTabsLayoutParams()V
    .locals 3

    .line 934
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    .line 935
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 937
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 938
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 941
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_1

    .line 942
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 944
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 945
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 948
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    if-eqz v0, :cond_2

    .line 949
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 951
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 952
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 955
    :cond_2
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    if-eqz p0, :cond_3

    .line 956
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 958
    iput v2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 959
    iput v2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_3
    return-void
.end method

.method private updateTightTitle()V
    .locals 5

    .line 2305
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isTightTitleWithEmbeddedTabs()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2306
    :goto_0
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    .line 2308
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitleShowable:Z

    if-nez v0, :cond_2

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v1

    .line 2309
    :goto_1
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v4, :cond_3

    .line 2310
    invoke-virtual {v4, v0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setTitleVisibility(I)V

    :cond_3
    if-eqz v2, :cond_4

    move v1, v3

    .line 2313
    :cond_4
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz p0, :cond_5

    .line 2314
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitleVisibility(I)V

    :cond_5
    return-void
.end method

.method private updateTitleCenter()V
    .locals 1

    .line 2341
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v0, :cond_0

    .line 2342
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isTitleCenter()Z

    move-result p0

    invoke-virtual {v0, p0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->updateTitleCenter(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public collapseActionView()V
    .locals 0

    .line 1553
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1554
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    :goto_0
    if-eqz p0, :cond_1

    .line 1556
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    :cond_1
    return-void
.end method

.method protected createActionMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;
    .locals 4

    .line 3576
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->findActionBarOverlayLayout()Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    move-result-object v0

    .line 3577
    new-instance v1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    sget v2, Lmiuix/appcompat/R$layout;->miuix_appcompat_responsive_action_menu_layout:I

    sget v3, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_menu_item_layout:I

    invoke-direct {v1, p0, v0, v2, v3}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;II)V

    .line 3581
    invoke-virtual {v1, p1}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->setCallback(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V

    .line 3582
    sget p0, Lmiuix/appcompat/R$id;->action_menu_presenter:I

    invoke-virtual {v1, p0}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->setId(I)V

    return-object v1
.end method

.method protected createEndActionMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;Z)Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;
    .locals 7

    .line 3588
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->findActionBarOverlayLayout()Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    move-result-object v2

    if-eqz p2, :cond_0

    .line 3591
    new-instance p2, Lmiuix/appcompat/internal/view/menu/action/HyperActionMenuPresenter;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    sget v3, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_end_menu_layout:I

    sget v4, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_end_menu_item_layout:I

    sget v5, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_bar_expanded_menu_layout:I

    sget v6, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_bar_list_menu_item_layout:I

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/view/menu/action/HyperActionMenuPresenter;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;IIII)V

    goto :goto_0

    .line 3598
    :cond_0
    new-instance p2, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    sget v3, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_end_menu_layout:I

    sget v4, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_end_menu_item_layout:I

    sget v5, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_bar_expanded_menu_layout:I

    sget v6, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_bar_list_menu_item_layout:I

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;IIII)V

    .line 3605
    :goto_0
    invoke-virtual {p2, p1}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->setCallback(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V

    .line 3606
    sget p0, Lmiuix/appcompat/R$id;->miuix_action_end_menu_presenter:I

    invoke-virtual {p2, p0}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->setId(I)V

    return-object p2
.end method

.method protected createExpandedActionViewMenuPresenter()Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;
    .locals 2

    .line 3625
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;Lmiuix/appcompat/internal/app/widget/ActionBarView$1;)V

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2086
    new-instance p0, Landroidx/appcompat/app/ActionBar$LayoutParams;

    const v0, 0x800013

    invoke-direct {p0, v0}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(I)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 3073
    new-instance v0, Landroidx/appcompat/app/ActionBar$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    if-nez p1, :cond_0

    .line 3079
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public bridge synthetic getActionMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
    .locals 0

    .line 100
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getActionMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getAnimatedVisibility()I
    .locals 0

    .line 100
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getAnimatedVisibility()I

    move-result p0

    return p0
.end method

.method public getBottomMenuCustomViewOffset()I
    .locals 1

    .line 1156
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    instance-of v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    if-eqz v0, :cond_0

    .line 1157
    check-cast p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->getBottomMenuCustomViewOffset()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCollapseTitle()Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;
    .locals 1

    .line 4240
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4241
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->createCollapseTitle(Z)V

    .line 4243
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    return-object p0
.end method

.method public getCollapsedHeight()I
    .locals 0

    .line 793
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTotalHeight:I

    return p0
.end method

.method public getCustomNavigationView()Landroid/view/View;
    .locals 0

    .line 2071
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object p0
.end method

.method public getDisplayOptions()I
    .locals 0

    .line 2079
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    return p0
.end method

.method public getDropdownAdapter()Landroid/widget/SpinnerAdapter;
    .locals 0

    .line 2059
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    return-object p0
.end method

.method public getDropdownSelectedPosition()I
    .locals 0

    .line 2067
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p0

    return p0
.end method

.method public getEndActionMenuItemLimit()I
    .locals 0

    .line 2293
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuItemLimit:I

    return p0
.end method

.method public getEndMenu()Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    .locals 0

    .line 1122
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    return-object p0
.end method

.method public getEndView()Landroid/view/View;
    .locals 0

    .line 1630
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    return-object p0
.end method

.method public bridge synthetic getExpandState()I
    .locals 0

    .line 100
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getExpandState()I

    move-result p0

    return p0
.end method

.method public getExpandTitle()Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;
    .locals 1

    .line 4248
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4249
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->createExpandTitle(Z)V

    .line 4251
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    return-object p0
.end method

.method public getExpandedHeight()I
    .locals 0

    .line 797
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTotalHeight:I

    return p0
.end method

.method public getHyperMenuPrimaryCheckedData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1509
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    instance-of v0, p0, Lmiuix/appcompat/internal/view/menu/action/HyperActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 1510
    check-cast p0, Lmiuix/appcompat/internal/view/menu/action/HyperActionMenuPresenter;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/HyperActionMenuPresenter;->getHyperPrimaryCheckedData()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHyperMenuSecondaryCheckedData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1516
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    instance-of v0, p0, Lmiuix/appcompat/internal/view/menu/action/HyperActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 1517
    check-cast p0, Lmiuix/appcompat/internal/view/menu/action/HyperActionMenuPresenter;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/HyperActionMenuPresenter;->getHyperSecondaryCheckedData()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
    .locals 0

    .line 100
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    move-result-object p0

    return-object p0
.end method

.method public getNavigationMode()I
    .locals 0

    .line 2075
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    return p0
.end method

.method public getStartView()Landroid/view/View;
    .locals 0

    .line 1613
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    return-object p0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 0

    .line 1788
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 1634
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public hasExpandedActionView()Z
    .locals 0

    .line 1476
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic hideOverflowMenu()Z
    .locals 0

    .line 100
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->hideOverflowMenu()Z

    move-result p0

    return p0
.end method

.method public initIndeterminateProgress()V
    .locals 4

    .line 701
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    sget v2, Lmiuix/appcompat/R$attr;->actionBarIndeterminateProgressStyle:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 702
    sget v1, Lmiuix/appcompat/R$id;->progress_circular:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 703
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 704
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 705
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public isCollapsed()Z
    .locals 0

    .line 2271
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsCollapsed:Z

    return p0
.end method

.method public isEndActionMenuEnable()Z
    .locals 0

    .line 717
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mEndActionMenuEnable:Z

    return p0
.end method

.method public isEndOverflowMenuShowing()Z
    .locals 0

    .line 1438
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

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

.method public bridge synthetic isOverflowMenuShowing()Z
    .locals 0

    .line 100
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->isOverflowMenuShowing()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isResizable()Z
    .locals 0

    .line 100
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->isResizable()Z

    move-result p0

    return p0
.end method

.method public isSplitActionBar()Z
    .locals 0

    .line 779
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBarEnable:Z

    return p0
.end method

.method public isTightTitleWithEmbeddedTabs()Z
    .locals 1

    .line 789
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTabsExit:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lmiuix/appcompat/internal/view/ActionBarPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->isTightTitle()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUserSetEndActionMenuItemLimit()Z
    .locals 0

    .line 2301
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUserSetEndActionMenuItemLimit:Z

    return p0
.end method

.method public bridge synthetic isUserSetExpandState()Z
    .locals 0

    .line 100
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->isUserSetExpandState()Z

    move-result p0

    return p0
.end method

.method protected makeMenuViewShowHide(Z)V
    .locals 4

    .line 1317
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBarEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 1320
    :cond_0
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsBottomMenuVisible:Z

    if-ne p1, v0, :cond_1

    return-void

    .line 1323
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-nez v0, :cond_2

    .line 1324
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$13;

    invoke-direct {v0, p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$13;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;Z)V

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->scheduleBottomMenuAnimation(Ljava/lang/Runnable;)V

    return-void

    .line 1336
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 1337
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getCollapsedHeight()I

    move-result v1

    .line 1338
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz p1, :cond_3

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    int-to-float v3, v1

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 1339
    :goto_1
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->animateContentMarginBottomByBottomMenu(I)V

    .line 1340
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsBottomMenuVisible:Z

    .line 1341
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    instance-of v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    if-eqz v0, :cond_5

    .line 1342
    check-cast p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    xor-int/lit8 p1, p1, 0x1

    .line 1343
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->setHidden(Z)V

    :cond_5
    return-void
.end method

.method protected makeMenuViewShowHideWithAnimation(Z)V
    .locals 9

    .line 1242
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsBottomMenuVisible:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 1245
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-nez v0, :cond_1

    .line 1246
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$11;

    invoke-direct {v0, p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$11;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;Z)V

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->scheduleBottomMenuAnimation(Ljava/lang/Runnable;)V

    return-void

    .line 1258
    :cond_1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsBottomMenuVisible:Z

    const/4 v1, 0x0

    .line 1259
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mAnimateStart:Z

    .line 1260
    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBarEnable:Z

    if-nez v2, :cond_2

    return-void

    .line 1264
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-nez v0, :cond_3

    move v3, v1

    goto :goto_0

    .line 1265
    :cond_3
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getCollapsedHeight()I

    move-result v3

    :goto_0
    if-eqz p1, :cond_4

    move v4, v1

    move p1, v3

    goto :goto_1

    :cond_4
    move p1, v1

    move v4, v3

    :goto_1
    if-eqz v0, :cond_7

    .line 1276
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuAnimConfig:Lmiuix/animation/base/AnimConfig;

    if-nez v5, :cond_5

    .line 1277
    new-instance v5, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v6, -0x2

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-virtual {v5, v6, v7}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v5

    iput-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 1279
    :cond_5
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mBottomMenuTransitionListener:Lmiuix/animation/listener/TransitionListener;

    const/4 v6, 0x1

    if-eqz v5, :cond_6

    .line 1280
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuAnimConfig:Lmiuix/animation/base/AnimConfig;

    new-array v8, v6, [Lmiuix/animation/listener/TransitionListener;

    aput-object v5, v8, v1

    invoke-virtual {v7, v8}, Lmiuix/animation/base/AnimConfig;->removeListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 1282
    :cond_6
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuAnimConfig:Lmiuix/animation/base/AnimConfig;

    new-array v7, v6, [Lmiuix/animation/listener/TransitionListener;

    new-instance v8, Lmiuix/appcompat/internal/app/widget/ActionBarView$12;

    invoke-direct {v8, p0, v2, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView$12;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;I)V

    iput-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mBottomMenuTransitionListener:Lmiuix/animation/listener/TransitionListener;

    aput-object v8, v7, v1

    invoke-virtual {v5, v7}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    int-to-float p1, p1

    .line 1306
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 1307
    new-instance p1, Lmiuix/animation/controller/AnimState;

    const-string v2, "menu_end_state"

    invoke-direct {p1, v2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    int-to-double v3, v4

    invoke-virtual {p1, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    new-array v2, v6, [Landroid/view/View;

    aput-object v0, v2, v1

    .line 1308
    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v2

    invoke-interface {v2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v2

    new-array v3, v6, [Lmiuix/animation/base/AnimConfig;

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuAnimConfig:Lmiuix/animation/base/AnimConfig;

    aput-object v4, v3, v1

    invoke-interface {v2, p1, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 1309
    instance-of p1, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    if-eqz p1, :cond_7

    .line 1310
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 1311
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsBottomMenuVisible:Z

    xor-int/2addr p0, v6

    invoke-virtual {v0, p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->setHidden(Z)V

    :cond_7
    return-void

    nop

    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3e800000    # 0.25f
    .end array-data
.end method

.method public onActionModeEnd(Z)V
    .locals 6

    const/4 v0, 0x0

    .line 4102
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    .line 4103
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInSearchMode:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4104
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 4105
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setVisibility(I)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 4106
    fill-array-data v1, :array_0

    const-string v3, "alpha"

    invoke-static {p0, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 4107
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x12c

    .line 4108
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4109
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 4111
    :cond_0
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInSearchMode:Z

    .line 4112
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 4113
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 4114
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    goto :goto_0

    .line 4115
    :cond_1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 4116
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 4117
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 4119
    :cond_2
    :goto_0
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v1, :cond_3

    .line 4120
    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 4122
    :cond_3
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 4123
    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 4125
    :cond_4
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 4126
    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 4128
    :cond_5
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    if-eqz v1, :cond_7

    .line 4129
    sget v5, Lmiuix/appcompat/R$id;->miuix_appcompat_navigator_switch_presenter:I

    .line 4130
    invoke-virtual {v1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;

    if-eqz v1, :cond_6

    .line 4132
    invoke-virtual {v1, v0, v2}, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->suppressAlpha(ZF)V

    goto :goto_1

    .line 4134
    :cond_6
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_7
    :goto_1
    if-eqz p1, :cond_8

    .line 4138
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAcceptAlphaChange(Z)V

    .line 4139
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAcceptAlphaChange(Z)V

    .line 4140
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->postRefreshTitleControllerStatus()V

    :cond_8
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onActionModeStart(ZZ)V
    .locals 3

    const/4 v0, 0x1

    .line 4067
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    .line 4068
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInSearchMode:Z

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 4070
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 4071
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 4072
    invoke-virtual {p0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setVisibility(I)V

    goto :goto_0

    .line 4074
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    .line 4075
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    .line 4077
    :goto_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 4078
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 4080
    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 4081
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 4083
    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 4084
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 4086
    :cond_3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    if-eqz p1, :cond_5

    .line 4087
    sget v2, Lmiuix/appcompat/R$id;->miuix_appcompat_navigator_switch_presenter:I

    .line 4088
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;

    if-eqz p1, :cond_4

    .line 4090
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->suppressAlpha(ZF)V

    goto :goto_1

    .line 4092
    :cond_4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    :goto_1
    if-eqz p2, :cond_6

    .line 4096
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAcceptAlphaChange(Z)V

    .line 4097
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAcceptAlphaChange(Z)V

    :cond_6
    return-void
.end method

.method protected onAnimatedExpandStateChanged(II)V
    .locals 7

    .line 3891
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStateChangeAnimStateStyle:Lmiuix/animation/IStateStyle;

    if-eqz v0, :cond_0

    .line 3892
    invoke-interface {v0}, Lmiuix/animation/ICancelableStyle;->cancel()V

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 3895
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableSecondaryTabHeight:I

    add-int/2addr p1, v2

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 3897
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 3899
    :cond_2
    :goto_0
    new-instance p1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v2, v0, [Lmiuix/animation/listener/TransitionListener;

    new-instance v3, Lmiuix/appcompat/internal/app/widget/ActionBarView$InnerTransitionListener;

    invoke-direct {v3, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$InnerTransitionListener;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    aput-object v3, v2, v1

    invoke-virtual {p1, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    if-ne p2, v0, :cond_3

    .line 3903
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableSecondaryTabHeight:I

    add-int/2addr v2, v3

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    if-ne p2, v0, :cond_4

    .line 3906
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    const/4 v3, 0x4

    invoke-virtual {p2, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    if-nez p2, :cond_5

    .line 3908
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p2, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    :cond_5
    :goto_2
    const-string p2, "actionbar_state_change"

    new-array v3, v1, [Ljava/lang/Object;

    .line 3911
    invoke-static {v3}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-interface {v3, v4, v5}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p2, v5, v1

    iget v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 3912
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-interface {v3, v5}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v3

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v1

    .line 3913
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, v0

    aput-object p1, v5, v4

    invoke-interface {v3, v5}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStateChangeAnimStateStyle:Lmiuix/animation/IStateStyle;

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 617
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 618
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->onAttachedToWindow()V

    .line 619
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->onAttachedToWindow()V

    .line 620
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateBackInvokedCallbackState()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    .line 502
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 505
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lmiuix/appcompat/R$styleable;->ActionBar:[I

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getActionBarStyle()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 506
    sget v0, Lmiuix/appcompat/R$styleable;->ActionBar_android_minHeight:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMinHeight:I

    .line 507
    sget v0, Lmiuix/appcompat/R$styleable;->ActionBar_android_maxHeight:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMaxHeight:I

    .line 508
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_large_font_max_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 509
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    sget v2, Lmiuix/appcompat/R$attr;->actionBarTitleAdaptLargeFont:I

    const/4 v4, 0x1

    invoke-static {v1, v2, v4}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v1

    .line 510
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lmiuix/core/util/MiuixUIUtils;->getFontLevel(Landroid/content/Context;)I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    goto :goto_1

    .line 511
    :cond_1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMaxHeight:I

    :goto_1
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMaxHeight:I

    .line 512
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 513
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 514
    iput-boolean v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitleShowable:Z

    .line 515
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateTightTitle()V

    .line 517
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 518
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v0, :cond_2

    .line 519
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 521
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-eqz v0, :cond_3

    .line 522
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 525
    :cond_3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 526
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDensity:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_4

    .line 527
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDensity:F

    .line 529
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_tab_horizontal_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapseTabPaddingH:I

    .line 530
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_top_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabTopPadding:I

    .line 531
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_bottom_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitlePaddingBottom:I

    .line 532
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_subtitle_bottom_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandSubtitlePaddingBottom:I

    .line 533
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_up_view_margin_start:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpViewMarginStart:I

    .line 535
    iput v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpViewMarginEnd:I

    .line 538
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_horizontal_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    .line 539
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitlePaddingBottom:I

    goto :goto_2

    :cond_5
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandSubtitlePaddingBottom:I

    .line 540
    :goto_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    .line 541
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_top_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    .line 540
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    .line 545
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_secondary_tab_vertical_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryTabVerticalPadding:I

    .line 546
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_6

    .line 548
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    .line 549
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    .line 550
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v2

    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryTabVerticalPadding:I

    .line 547
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    .line 553
    :cond_6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_7

    .line 555
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    .line 556
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    .line 557
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v2

    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryTabVerticalPadding:I

    .line 554
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    .line 562
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$attr;->actionBarPaddingStart:I

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result p1

    .line 563
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$attr;->actionBarPaddingEnd:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    .line 565
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 567
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTabsExit:Z

    if-eqz p1, :cond_8

    .line 568
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateTabsLayoutParams()V

    .line 571
    :cond_8
    new-instance p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$$ExternalSyntheticLambda6;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 625
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 626
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 627
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    .line 628
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideSubMenus()Z

    .line 630
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz v0, :cond_1

    .line 631
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    .line 632
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideSubMenus()Z

    .line 634
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->onDetachedFromWindow()V

    .line 635
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->onDetachedFromWindow()V

    .line 636
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateBackInvokedCallbackState()V

    return-void
.end method

.method protected onExpandStateChanged(II)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 3841
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 3842
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3843
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_0
    if-ne p2, v0, :cond_1

    .line 3847
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    if-eqz p1, :cond_1

    .line 3848
    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    if-ne p2, v1, :cond_4

    .line 3852
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    .line 3853
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    if-eqz v0, :cond_2

    const/16 v4, 0x14

    .line 3854
    invoke-virtual {v0, v3, v2, v4, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FIIZ)V

    .line 3856
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    if-eqz v0, :cond_3

    .line 3857
    invoke-virtual {v0, p1, v2, v2, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FIIZ)V

    .line 3860
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    if-eqz v0, :cond_4

    .line 3861
    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    :cond_4
    if-nez p2, :cond_6

    .line 3866
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    if-eqz v0, :cond_5

    iget-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    if-nez v3, :cond_5

    .line 3867
    invoke-virtual {v0, p1, v2, v2, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FIIZ)V

    .line 3868
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 3869
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->onShow()V

    .line 3871
    :cond_5
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    if-eqz p1, :cond_7

    const/16 v0, 0x8

    .line 3872
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    goto :goto_0

    .line 3875
    :cond_6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTotalHeight:I

    sub-int/2addr p1, v0

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseSecondaryTabHeight:I

    add-int/2addr p1, v0

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 3877
    :cond_7
    :goto_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionBarTransitionListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_b

    iget p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandStateBeforeResizing:I

    if-ne p1, p2, :cond_8

    iget p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandStateOnLayout:I

    if-eq p1, p2, :cond_b

    .line 3879
    :cond_8
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionBarTransitionListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/app/ActionBarTransitionListener;

    if-ne p2, v1, :cond_a

    .line 3881
    invoke-interface {p1, v1}, Lmiuix/appcompat/app/ActionBarTransitionListener;->onExpandStateChanged(I)V

    goto :goto_1

    :cond_a
    if-nez p2, :cond_9

    .line 3883
    invoke-interface {p1, v2}, Lmiuix/appcompat/app/ActionBarTransitionListener;->onExpandStateChanged(I)V

    goto :goto_1

    :cond_b
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 12

    move-object v8, p0

    .line 2662
    iget v0, v8, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMinHeight:I

    iget-object v1, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2663
    iget-object v1, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, v8, :cond_0

    .line 2664
    iget-object v1, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    move v5, v0

    .line 2666
    iget v6, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseSecondaryTabHeight:I

    .line 2667
    iget-object v0, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    .line 2668
    iget v7, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableSecondaryTabHeight:I

    .line 2670
    iget v1, v8, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 2671
    iget v1, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    add-int v1, v0, v7

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    sub-int v2, p5, p3

    sub-int v9, v2, v7

    sub-int v10, v9, v1

    add-int v2, v0, v7

    sub-int/2addr v2, v1

    int-to-float v1, v2

    int-to-float v2, v0

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    .line 2681
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 2682
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hasTitle()Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    move v11, v2

    goto :goto_1

    :cond_3
    move v11, v1

    :goto_1
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v4, p4

    .line 2686
    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->onLayoutCollapseViews(ZIIIII)V

    move v3, v10

    move v5, v9

    move v6, v7

    move v7, v11

    .line 2687
    invoke-virtual/range {v0 .. v7}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->onLayoutExpandViews(ZIIIIIF)V

    .line 2688
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->notifyMenuStateChange()V

    .line 2689
    iget-boolean v0, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    if-nez v0, :cond_4

    iget-boolean v0, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionModeAnimating:Z

    if-nez v0, :cond_4

    .line 2691
    invoke-direct {p0, v11}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->animateLayoutWithProcess(F)V

    .line 2693
    :cond_4
    iput v11, v8, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mLastProcess:F

    .line 2694
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateBadgeOnMenuItemViews()V

    return-void
.end method

.method protected onLayoutExpandViews(ZIIIIIF)V
    .locals 16

    move-object/from16 v6, p0

    move/from16 v7, p2

    move/from16 v8, p4

    move/from16 v9, p5

    .line 2983
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hasTitle()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2986
    :cond_0
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 2987
    iget-object v10, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    const/high16 v1, 0x40400000    # 3.0f

    mul-float v1, v1, p7

    const/high16 v2, 0x3f800000    # 1.0f

    .line 2989
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sub-float/2addr v2, v1

    const/4 v1, 0x0

    cmpg-float v1, v2, v1

    const/4 v11, 0x0

    if-gtz v1, :cond_1

    .line 2992
    iget v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseSecondaryTabHeight:I

    goto :goto_0

    :cond_1
    move v1, v11

    :goto_0
    if-eqz v0, :cond_2

    .line 2995
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 2996
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    move v12, v2

    goto :goto_1

    :cond_2
    move v12, v11

    .line 2998
    :goto_1
    iget v13, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableSecondaryTabHeight:I

    add-int v2, p3, v12

    add-int/2addr v2, v13

    sub-int/2addr v2, v9

    add-int v14, v2, v1

    const/4 v15, 0x0

    if-eqz v0, :cond_6

    .line 3001
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    iget v1, v6, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    if-eqz v1, :cond_6

    sub-int v1, v9, v12

    .line 3003
    invoke-virtual {v0, v7, v1, v8, v9}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 3005
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-direct {v6, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hasTabsInContainer(Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3006
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    goto :goto_2

    :cond_3
    move-object v0, v15

    :goto_2
    if-eqz v0, :cond_5

    .line 3009
    iget v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    .line 3010
    invoke-static/range {p0 .. p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3011
    iget v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    sub-int v1, v8, v1

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 3013
    :cond_4
    iget v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabTopPadding:I

    .line 3015
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    .line 3016
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getMeasuredHeight()I

    move-result v4

    iget v5, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabTopPadding:I

    add-int/2addr v4, v5

    .line 3013
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/HorizontalScrollView;->layout(IIII)V

    .line 3018
    :cond_5
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    add-int v5, v12, v13

    move-object/from16 v0, p0

    move/from16 v2, p2

    move v3, v14

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->clipViewBounds(Landroid/view/View;IIII)V

    :cond_6
    if-lez v13, :cond_a

    .line 3024
    iget v0, v6, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    if-eqz v0, :cond_a

    .line 3026
    iget v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapseTabPaddingH:I

    iget v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExtraPadding:I

    add-int/2addr v0, v1

    add-int v2, v7, v0

    add-int v5, v9, p6

    sub-int v3, v5, v13

    .line 3031
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    add-int v4, v2, v0

    move-object/from16 v0, p0

    move-object v1, v10

    .line 3028
    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 3033
    invoke-direct {v6, v10}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hasTabsInContainer(Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3034
    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    :cond_7
    if-eqz v15, :cond_9

    .line 3038
    invoke-virtual {v15}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v0

    .line 3039
    invoke-static/range {p0 .. p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3040
    iget v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapseTabPaddingH:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v8, v0

    invoke-virtual {v15}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 3041
    iget v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapseTabPaddingH:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v8, v1

    goto :goto_3

    :cond_8
    move v1, v0

    move v0, v11

    .line 3043
    :goto_3
    invoke-virtual {v15}, Landroid/widget/HorizontalScrollView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v15, v0, v11, v1, v2}, Landroid/widget/HorizontalScrollView;->layout(IIII)V

    :cond_9
    sub-int v0, v12, v13

    sub-int v3, v14, v0

    add-int v5, v12, v13

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, p2

    move/from16 v4, p4

    .line 3045
    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->clipViewBounds(Landroid/view/View;IIII)V

    :cond_a
    return-void
.end method

.method protected onMeasure(II)V
    .locals 22

    move-object/from16 v0, p0

    .line 2348
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/16 v5, 0x8

    if-ge v3, v1, :cond_2

    .line 2351
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2352
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v5, :cond_1

    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-ne v6, v5, :cond_0

    .line 2353
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-nez v4, :cond_3

    .line 2360
    invoke-virtual {v0, v2, v2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 2361
    iput-boolean v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsCollapsed:Z

    return-void

    .line 2365
    :cond_3
    iput-boolean v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsCollapsed:Z

    .line 2367
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 2368
    iget v4, v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMaxHeight:I

    .line 2369
    iget v6, v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMinHeight:I

    .line 2371
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    .line 2372
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v8

    .line 2373
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v9

    if-lez v4, :cond_4

    move v10, v4

    goto :goto_1

    .line 2375
    :cond_4
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    :goto_1
    sub-int/2addr v10, v7

    const/high16 v11, -0x80000000

    .line 2377
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    sub-int v13, v3, v8

    sub-int/2addr v13, v9

    .line 2381
    div-int/lit8 v14, v13, 0x2

    .line 2389
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hasTitle()Z

    move-result v15

    .line 2391
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v5, :cond_5

    .line 2392
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    invoke-virtual {v0, v1, v13, v12, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v13

    .line 2393
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v8, v1

    .line 2394
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v7

    goto :goto_2

    :cond_5
    move v1, v2

    .line 2396
    :goto_2
    iget-object v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz v11, :cond_6

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-eq v11, v5, :cond_6

    .line 2397
    iget-object v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    invoke-virtual {v0, v11, v13, v12, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v13

    .line 2398
    iget-object v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v9, v11

    .line 2399
    iget-object v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    .line 2400
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v7

    .line 2399
    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2403
    :cond_6
    iget-object v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    if-eqz v11, :cond_7

    .line 2404
    sget v5, Lmiuix/appcompat/R$id;->miuix_appcompat_navigator_switch_presenter:I

    .line 2405
    invoke-virtual {v11, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;

    .line 2407
    invoke-virtual {v5, v2, v2}, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->suppressVisibility(ZI)V

    .line 2408
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v11, 0x8

    if-eq v5, v11, :cond_7

    .line 2409
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    invoke-virtual {v0, v5, v13, v12, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v13

    .line 2410
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v8, v5

    .line 2411
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    .line 2412
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v7

    .line 2411
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2416
    :cond_7
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_8

    .line 2417
    iput-boolean v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHasStartView:Z

    .line 2419
    :cond_8
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_9

    .line 2420
    iput-boolean v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHasNavigatorSwitchView:Z

    .line 2423
    :cond_9
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v5, :cond_a

    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    goto :goto_3

    :cond_a
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 2425
    :goto_3
    iget-object v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz v11, :cond_b

    if-eqz v5, :cond_b

    const/16 v11, 0x8

    .line 2426
    invoke-virtual {v5, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_4

    :cond_b
    const/16 v11, 0x8

    :goto_4
    if-eqz v5, :cond_d

    .line 2429
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-eq v2, v11, :cond_d

    .line 2430
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 2432
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v2, :cond_c

    const/high16 v11, -0x80000000

    .line 2433
    invoke-static {v13, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_5

    :cond_c
    const/high16 v11, 0x40000000    # 2.0f

    .line 2435
    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 2437
    :goto_5
    invoke-virtual {v5, v2, v12}, Landroid/widget/FrameLayout;->measure(II)V

    .line 2438
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v5}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->getStartOffset()I

    move-result v11

    add-int/2addr v2, v11

    sub-int/2addr v13, v2

    const/4 v11, 0x0

    .line 2439
    invoke-static {v11, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    move/from16 v16, v10

    sub-int v10, v13, v2

    .line 2440
    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/2addr v8, v2

    .line 2443
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v7

    .line 2442
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_6

    :cond_d
    move/from16 v16, v10

    move v10, v14

    .line 2447
    :goto_6
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, v0, :cond_e

    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    const/16 v5, 0x8

    if-eq v2, v5, :cond_e

    .line 2448
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v13, v12, v5}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v13

    .line 2450
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v14, v2

    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 2451
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v9, v2

    .line 2452
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 2453
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v7

    .line 2452
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2456
    :cond_e
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const/4 v5, 0x2

    if-eqz v2, :cond_f

    .line 2457
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    const/16 v11, 0x8

    if-eq v2, v11, :cond_f

    .line 2458
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    iget v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressBarPadding:I

    mul-int/2addr v11, v5

    invoke-virtual {v0, v2, v13, v12, v11}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v13

    .line 2460
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 2461
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v14, v2

    iget v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressBarPadding:I

    mul-int/2addr v2, v5

    sub-int/2addr v14, v2

    const/4 v2, 0x0

    .line 2460
    invoke-static {v2, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 2462
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v9, v2

    .line 2463
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 2464
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v7

    .line 2463
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2467
    :cond_f
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isShowTitle()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2470
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateTitleCenter()V

    .line 2473
    :cond_10
    iget-object v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v11, :cond_16

    if-nez v2, :cond_11

    .line 2474
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    move-result v11

    and-int/lit8 v11, v11, 0x20

    if-eqz v11, :cond_16

    .line 2475
    :cond_11
    iget-object v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz v11, :cond_16

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_16

    .line 2476
    iget-object v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 2477
    iget-boolean v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHasStartView:Z

    if-nez v5, :cond_13

    iget-boolean v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHasNavigatorSwitchView:Z

    if-eqz v5, :cond_12

    goto :goto_7

    :cond_12
    move/from16 v17, v15

    const/4 v5, 0x0

    goto :goto_8

    :cond_13
    :goto_7
    iget v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpViewMarginStart:I

    move/from16 v17, v15

    iget v15, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpViewMarginEnd:I

    add-int/2addr v5, v15

    .line 2476
    :goto_8
    invoke-virtual {v0, v11, v13, v12, v5}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v13

    .line 2478
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget-boolean v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHasStartView:Z

    if-nez v11, :cond_15

    iget-boolean v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHasNavigatorSwitchView:Z

    if-eqz v11, :cond_14

    goto :goto_9

    :cond_14
    const/4 v11, 0x0

    goto :goto_a

    :cond_15
    :goto_9
    iget v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpViewMarginStart:I

    iget v15, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpViewMarginEnd:I

    add-int/2addr v11, v15

    :goto_a
    add-int/2addr v5, v11

    add-int/2addr v8, v5

    .line 2479
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v7

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    goto :goto_b

    :cond_16
    move/from16 v17, v15

    .line 2485
    :goto_b
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    const/4 v5, 0x0

    if-eqz v1, :cond_17

    goto :goto_c

    .line 2487
    :cond_17
    iget v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_18

    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_18

    goto :goto_c

    :cond_18
    move-object v1, v5

    .line 2492
    :goto_c
    iget-object v7, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-nez v7, :cond_19

    iget-object v7, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz v7, :cond_1a

    :cond_19
    if-eqz v1, :cond_1a

    const/16 v7, 0x8

    .line 2493
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d

    :cond_1a
    const/16 v7, 0x8

    :goto_d
    if-eqz v1, :cond_28

    .line 2497
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-eq v11, v7, :cond_28

    .line 2499
    iget-object v7, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz v7, :cond_1b

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/4 v11, 0x4

    if-ne v7, v11, :cond_1b

    .line 2500
    iget-object v7, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    const/4 v11, 0x0

    add-int/2addr v7, v11

    goto :goto_e

    :cond_1b
    const/4 v7, 0x0

    .line 2502
    :goto_e
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v11}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 2503
    instance-of v15, v11, Landroidx/appcompat/app/ActionBar$LayoutParams;

    if-eqz v15, :cond_1c

    .line 2504
    move-object v5, v11

    check-cast v5, Landroidx/appcompat/app/ActionBar$LayoutParams;

    :cond_1c
    if-eqz v5, :cond_1d

    .line 2509
    iget v15, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v18, v3

    iget v3, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v15

    .line 2510
    iget v15, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v19, v3

    iget v3, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v15

    goto :goto_f

    :cond_1d
    move/from16 v18, v3

    const/4 v3, 0x0

    const/16 v19, 0x0

    :goto_f
    if-gtz v4, :cond_1e

    move/from16 v20, v8

    const/high16 v15, -0x80000000

    goto :goto_11

    .line 2519
    :cond_1e
    iget v15, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v15, :cond_1f

    const/high16 v15, 0x40000000    # 2.0f

    goto :goto_10

    :cond_1f
    const/high16 v15, -0x80000000

    :goto_10
    move/from16 v20, v8

    .line 2522
    :goto_11
    iget v8, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v21, v9

    const/4 v9, -0x1

    if-ltz v8, :cond_20

    if-lez v4, :cond_22

    .line 2523
    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto :goto_12

    :cond_20
    if-ne v8, v9, :cond_21

    .line 2524
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v16, v4

    :cond_21
    sub-int v8, v16, v3

    .line 2525
    :cond_22
    :goto_12
    iget v3, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_23

    const/high16 v4, 0x40000000    # 2.0f

    goto :goto_13

    :cond_23
    const/high16 v4, -0x80000000

    :goto_13
    if-ltz v3, :cond_24

    add-int v9, v13, v7

    .line 2529
    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_14

    :cond_24
    add-int v3, v13, v7

    :goto_14
    sub-int v3, v3, v19

    const/4 v9, 0x0

    .line 2527
    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-eqz v5, :cond_25

    .line 2532
    iget v5, v5, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    goto :goto_15

    :cond_25
    const v5, 0x800013

    :goto_15
    const v9, 0x800007

    and-int/2addr v5, v9

    const/4 v9, 0x1

    if-ne v5, v9, :cond_26

    .line 2537
    iget v5, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v9, -0x1

    if-ne v5, v9, :cond_26

    .line 2538
    invoke-static {v10, v14}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v5, 0x2

    mul-int/2addr v3, v5

    .line 2540
    :cond_26
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    if-eqz v5, :cond_27

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_27

    int-to-float v3, v3

    .line 2541
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v9, 0x3f800000    # 1.0f

    iget-object v10, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getAlpha()F

    move-result v10

    sub-float/2addr v9, v10

    mul-float/2addr v5, v9

    iget v9, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpViewMarginStart:I

    int-to-float v9, v9

    iget-object v10, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    .line 2542
    invoke-virtual {v10}, Landroid/view/View;->getAlpha()F

    move-result v10

    mul-float/2addr v9, v10

    sub-float/2addr v5, v9

    add-float/2addr v3, v5

    float-to-int v3, v3

    .line 2545
    :cond_27
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 2546
    invoke-static {v8, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 2544
    invoke-virtual {v1, v3, v4}, Landroid/view/View;->measure(II)V

    .line 2547
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v19, v19, v3

    sub-int v19, v19, v7

    sub-int v13, v13, v19

    .line 2548
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_16

    :cond_28
    move/from16 v18, v3

    move/from16 v20, v8

    move/from16 v21, v9

    .line 2549
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v3, :cond_29

    const/4 v4, 0x0

    .line 2550
    invoke-virtual {v0, v3, v13, v12, v4}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    .line 2551
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getMeasuredHeight()I

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_16
    const/4 v11, 0x0

    goto :goto_17

    :cond_29
    if-eqz v1, :cond_2a

    .line 2552
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2a

    if-nez v2, :cond_2a

    move v1, v6

    const/4 v11, 0x1

    goto :goto_17

    :cond_2a
    move v1, v6

    goto :goto_16

    .line 2561
    :goto_17
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v3, :cond_2d

    if-eqz v2, :cond_2d

    .line 2563
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isTitleCenter()Z

    move-result v3

    if-eqz v3, :cond_2c

    move/from16 v8, v20

    move/from16 v9, v21

    if-le v8, v9, :cond_2b

    const/4 v3, 0x2

    mul-int/2addr v8, v3

    sub-int v3, v18, v8

    goto :goto_18

    :cond_2b
    move v3, v13

    .line 2567
    :goto_18
    iget-object v4, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    .line 2568
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/high16 v7, -0x80000000

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 2567
    invoke-virtual {v4, v3, v12}, Landroid/widget/FrameLayout;->measure(II)V

    .line 2571
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v13, v3

    goto :goto_19

    :cond_2c
    const/4 v5, 0x0

    .line 2573
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3, v13, v12, v5}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    move v13, v3

    .line 2576
    :goto_19
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_1a

    :cond_2d
    move v3, v6

    .line 2580
    :goto_1a
    iget-object v4, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    if-eqz v4, :cond_2f

    if-eqz v17, :cond_2e

    const/4 v4, 0x0

    goto :goto_1b

    :cond_2e
    const/high16 v4, 0x40000000    # 2.0f

    .line 2582
    :goto_1b
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    move/from16 v7, v18

    const/high16 v8, -0x80000000

    .line 2583
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    const/4 v8, 0x0

    .line 2584
    invoke-static {v8, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 2582
    invoke-virtual {v5, v9, v4}, Landroid/widget/FrameLayout;->measure(II)V

    goto :goto_1c

    :cond_2f
    move/from16 v7, v18

    const/4 v8, 0x0

    .line 2587
    :goto_1c
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->shouldMeasureCollapseTabContainer()Z

    move-result v4

    .line 2588
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->shouldMeasureMovableTabContainer()Z

    move-result v5

    .line 2590
    iput v8, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableSecondaryTabHeight:I

    .line 2591
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v8, v8

    const/high16 v9, 0x43200000    # 160.0f

    div-float/2addr v8, v9

    .line 2592
    iget-object v9, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    if-eqz v9, :cond_30

    invoke-virtual {v9}, Lmiuix/container/ExtraPaddingPolicy;->isEnable()Z

    move-result v9

    if-eqz v9, :cond_30

    .line 2593
    iget-object v9, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    invoke-virtual {v9}, Lmiuix/container/ExtraPaddingPolicy;->getExtraPaddingDp()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v8

    float-to-int v8, v9

    iput v8, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExtraPadding:I

    const/4 v8, 0x0

    goto :goto_1d

    :cond_30
    const/4 v8, 0x0

    .line 2595
    iput v8, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExtraPadding:I

    .line 2597
    :goto_1d
    iget v9, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapseTabPaddingH:I

    iget v10, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExtraPadding:I

    add-int/2addr v9, v10

    const/4 v10, 0x2

    mul-int/2addr v9, v10

    sub-int v9, v7, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 2598
    iget v14, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapseTabPaddingH:I

    iget v15, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExtraPadding:I

    add-int/2addr v14, v15

    mul-int/2addr v14, v10

    sub-int v10, v7, v14

    if-eqz v5, :cond_31

    .line 2600
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    const/high16 v14, 0x40000000    # 2.0f

    .line 2601
    invoke-static {v9, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 2602
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 2600
    invoke-virtual {v5, v9, v15}, Landroid/widget/FrameLayout;->measure(II)V

    .line 2603
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    .line 2604
    iput v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableSecondaryTabHeight:I

    goto :goto_1e

    :cond_31
    const/high16 v14, 0x40000000    # 2.0f

    move v5, v8

    .line 2608
    :goto_1e
    iput v8, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseSecondaryTabHeight:I

    if-eqz v4, :cond_32

    .line 2610
    iget-object v4, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    .line 2611
    invoke-static {v10, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 2612
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 2610
    invoke-virtual {v4, v9, v10}, Landroid/widget/FrameLayout;->measure(II)V

    .line 2613
    iget-object v4, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    .line 2614
    iput v4, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseSecondaryTabHeight:I

    goto :goto_1f

    :cond_32
    const/4 v4, 0x0

    .line 2617
    :goto_1f
    iget-object v8, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v8, :cond_35

    .line 2618
    iget v8, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_33

    goto :goto_21

    .line 2620
    :cond_33
    iget-object v8, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_35

    if-eqz v2, :cond_34

    .line 2621
    iget v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mItemPadding:I

    const/4 v8, 0x2

    mul-int/2addr v2, v8

    goto :goto_20

    :cond_34
    iget v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mItemPadding:I

    :goto_20
    sub-int/2addr v13, v2

    const/4 v2, 0x0

    .line 2622
    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2623
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    const/high16 v9, -0x80000000

    .line 2624
    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 2623
    invoke-virtual {v2, v8, v12}, Landroid/widget/LinearLayout;->measure(II)V

    :cond_35
    :goto_21
    if-eqz v17, :cond_36

    .line 2633
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    goto :goto_22

    :cond_36
    const/4 v2, 0x0

    :goto_22
    add-int v8, v3, v4

    .line 2634
    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTotalHeight:I

    .line 2635
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTotalHeight:I

    .line 2636
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v1, v5

    iput v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTotalHeight:I

    if-eqz v11, :cond_37

    const/4 v2, 0x0

    .line 2638
    invoke-virtual {v0, v7, v2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    const/4 v2, 0x1

    .line 2639
    iput-boolean v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsCollapsed:Z

    return-void

    :cond_37
    const/4 v2, 0x1

    .line 2642
    iget v3, v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_38

    .line 2643
    iget v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTotalHeight:I

    sub-int v2, v1, v4

    iget v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    add-int/2addr v2, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2645
    invoke-virtual {v0, v7, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    goto :goto_23

    :cond_38
    if-ne v3, v2, :cond_39

    .line 2648
    invoke-virtual {v0, v7, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    goto :goto_23

    .line 2650
    :cond_39
    iget v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTotalHeight:I

    invoke-virtual {v0, v7, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 2653
    :goto_23
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_3a

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3a

    .line 2654
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    iget v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressBarPadding:I

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    sub-int v3, v7, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 2656
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    const/high16 v3, -0x80000000

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2654
    invoke-virtual {v1, v2, v0}, Landroid/widget/ProgressBar;->measure(II)V

    :cond_3a
    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II[I)V
    .locals 0

    .line 4010
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->canConsumeScroll()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 4013
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    if-lez p3, :cond_2

    .line 4014
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTotalHeight:I

    if-le p1, p2, :cond_2

    sub-int/2addr p1, p3

    .line 4017
    iget p5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    if-lt p1, p2, :cond_1

    sub-int p1, p5, p3

    .line 4019
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 4021
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    :goto_0
    const/4 p1, 0x1

    .line 4026
    aget p2, p4, p1

    add-int/2addr p2, p3

    aput p2, p4, p1

    .line 4028
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    if-eq p2, p5, :cond_2

    .line 4029
    aput p3, p6, p1

    .line 4030
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_2
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I[I)V
    .locals 1

    .line 3919
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->canConsumeScroll()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 3922
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableSecondaryTabHeight:I

    add-int/2addr p1, p2

    .line 3923
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hasTitle()Z

    move-result p2

    if-nez p2, :cond_1

    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 p2, p2, 0x10

    if-eqz p2, :cond_1

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    .line 3926
    :cond_1
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTotalHeight:I

    iget p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseSecondaryTabHeight:I

    sub-int/2addr p2, p3

    add-int/2addr p2, p1

    .line 3927
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p3

    if-gez p5, :cond_3

    if-ge p3, p2, :cond_3

    .line 3930
    iget p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    sub-int p6, p3, p5

    const/4 v0, 0x1

    if-gt p6, p2, :cond_2

    sub-int p1, p4, p5

    .line 3933
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 3934
    aget p1, p7, v0

    add-int/2addr p1, p5

    aput p1, p7, v0

    goto :goto_0

    :cond_2
    sub-int/2addr p2, p3

    .line 3937
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 3938
    aget p1, p7, v0

    neg-int p2, p2

    add-int/2addr p1, p2

    aput p1, p7, v0

    .line 3941
    :goto_0
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    if-eq p1, p4, :cond_3

    .line 3942
    aput p5, p8, v0

    .line 3943
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_3
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    .line 3955
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->canConsumeScroll()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    if-nez p4, :cond_1

    .line 3959
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTouchScrolling:Z

    goto :goto_0

    .line 3961
    :cond_1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNonTouchScrolling:Z

    .line 3963
    :goto_0
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    move-result p2

    if-nez p2, :cond_2

    .line 3964
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p2, p1}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_2
    const/4 p1, 0x2

    .line 3967
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 3110
    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;

    .line 3112
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3114
    iget v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionsMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    .line 3116
    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3118
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 3121
    :cond_0
    iget-boolean v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    if-eqz v0, :cond_1

    .line 3122
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->postShowOverflowMenu()V

    .line 3124
    :cond_1
    iget-boolean v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->isEndOverflowOpen:Z

    if-eqz v0, :cond_2

    .line 3125
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->postShowEndOverflowMenu()V

    .line 3127
    :cond_2
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserExpandState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 3132
    iget-boolean v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->userSetExpandState:Z

    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserSetExpandState:Z

    .line 3133
    iget v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->userExpandState:I

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserExpandState:I

    .line 3134
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isUserSetExpandState()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserExpandState:I

    goto :goto_0

    :cond_3
    iget v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandState:I

    :goto_0
    const/4 v1, 0x0

    .line 3135
    invoke-virtual {p0, v0, v1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(IZZ)V

    .line 3137
    :cond_4
    iget-boolean p1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->applyBlur:Z

    if-eqz p1, :cond_5

    .line 3138
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mApplyBgBlur:Z

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setApplyBgBlur(Z)V

    :cond_5
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 3086
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 3087
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;

    invoke-direct {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3089
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 3090
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    iput v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    goto :goto_0

    .line 3092
    :cond_0
    iput v2, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    .line 3094
    :goto_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v0

    iput-boolean v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    .line 3095
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isEndOverflowMenuShowing()Z

    move-result v0

    iput-boolean v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->isEndOverflowOpen:Z

    .line 3096
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 3097
    iput v2, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandState:I

    goto :goto_1

    .line 3099
    :cond_1
    iput v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandState:I

    .line 3101
    :goto_1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserSetExpandState:Z

    iput-boolean v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->userSetExpandState:Z

    .line 3102
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserExpandState:I

    iput v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->userExpandState:I

    .line 3103
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mApplyBgBlur:Z

    iput-boolean p0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->applyBlur:Z

    return-object v1
.end method

.method public onStart(Z)V
    .locals 3

    const/4 v0, 0x1

    .line 4146
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionModeAnimating:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 4149
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDoContainerShowAnimInFinishActionMode:Z

    goto :goto_0

    .line 4152
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    move-result p1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 4153
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 4154
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    .line 4155
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    goto :goto_0

    .line 4156
    :cond_1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 4157
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 4158
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 4159
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p0, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 3950
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

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

.method public onStop(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 4175
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionModeAnimating:Z

    if-eqz p1, :cond_0

    .line 4177
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 4178
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    goto :goto_0

    .line 4180
    :cond_0
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDoContainerShowAnimInFinishActionMode:Z

    if-nez p1, :cond_1

    .line 4182
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->showContainerInFinishActionMode()V

    .line 4184
    :cond_1
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDoContainerShowAnimInFinishActionMode:Z

    :goto_0
    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 5

    .line 3973
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTouchScrolling:Z

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3974
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTouchScrolling:Z

    .line 3975
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNonTouchScrolling:Z

    if-nez p1, :cond_1

    goto :goto_0

    .line 3978
    :cond_0
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNonTouchScrolling:Z

    if-eqz p1, :cond_1

    .line 3979
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNonTouchScrolling:Z

    :goto_0
    move p1, p2

    goto :goto_1

    :cond_1
    move p1, v0

    .line 3982
    :goto_1
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->canConsumeScroll()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 3985
    :cond_2
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    .line 3986
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    if-eqz p1, :cond_6

    .line 3989
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    if-nez p1, :cond_3

    .line 3990
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    return-void

    .line 3992
    :cond_3
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableSecondaryTabHeight:I

    add-int v4, v1, v3

    if-lt p1, v4, :cond_4

    .line 3993
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    return-void

    .line 3997
    :cond_4
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTotalHeight:I

    add-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p1

    if-le v2, v3, :cond_5

    .line 3998
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    add-int/2addr p1, v1

    sub-int/2addr p1, v2

    invoke-virtual {p2, v0, v2, v0, p1}, Landroid/widget/Scroller;->startScroll(IIII)V

    goto :goto_2

    .line 4001
    :cond_5
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    sub-int/2addr p1, v2

    invoke-virtual {p2, v0, v2, v0, p1}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 4004
    :goto_2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_6
    return-void
.end method

.method public onUpdate(ZF)V
    .locals 1

    .line 4166
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDoContainerShowAnimInFinishActionMode:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    const p1, 0x3f4ccccd    # 0.8f

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 4168
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDoContainerShowAnimInFinishActionMode:Z

    .line 4169
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->showContainerInFinishActionMode()V

    :cond_0
    return-void
.end method

.method public postShowEndOverflowMenu()V
    .locals 1

    .line 1430
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$$ExternalSyntheticLambda1;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic postShowOverflowMenu()V
    .locals 0

    .line 100
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->postShowOverflowMenu()V

    return-void
.end method

.method public refreshBottomMenu()V
    .locals 1

    .line 1401
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBarEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 1402
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addSplitMenuView()V

    :cond_0
    return-void
.end method

.method public setApplyBgBlur(Z)V
    .locals 1

    .line 4255
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mApplyBgBlur:Z

    if-eq v0, p1, :cond_1

    .line 4256
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mApplyBgBlur:Z

    .line 4257
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    if-eqz v0, :cond_0

    .line 4258
    invoke-virtual {v0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->setParentApplyBlur(Z)V

    .line 4260
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    if-eqz p0, :cond_1

    .line 4261
    invoke-virtual {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->setParentApplyBlur(Z)V

    :cond_1
    return-void
.end method

.method public setBottomMenuCustomView(Landroid/view/View;)V
    .locals 0

    .line 1126
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz p0, :cond_0

    .line 1127
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setBottomMenuCustomView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setBottomMenuCustomViewTranslationYWithPx(I)V
    .locals 1

    .line 1150
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    instance-of v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    if-eqz v0, :cond_0

    .line 1151
    check-cast p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->setBottomMenuCustomViewTranslationYWithPx(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setBottomMenuMode(I)V
    .locals 0

    .line 100
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setBottomMenuMode(I)V

    return-void
.end method

.method public setCallback(Landroidx/appcompat/app/ActionBar$OnNavigationListener;)V
    .locals 0

    .line 1052
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCallback:Landroidx/appcompat/app/ActionBar$OnNavigationListener;

    return-void
.end method

.method public setCollapsable(Z)V
    .locals 0

    return-void
.end method

.method public setCustomNavigationView(Landroid/view/View;)V
    .locals 2

    .line 1561
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1562
    :goto_0
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1563
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1565
    :cond_1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 1567
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1568
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addCustomView()V

    goto :goto_1

    .line 1570
    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 10

    .line 1836
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    xor-int v1, p1, v0

    .line 1837
    :goto_0
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit16 v0, v1, 0x201f

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v0, :cond_1a

    and-int/lit8 v0, p1, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v5

    :goto_1
    const/16 v6, 0x8

    if-eqz v0, :cond_7

    .line 1843
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->initHomeLayout()V

    .line 1844
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v8, :cond_2

    move v8, v5

    goto :goto_2

    :cond_2
    move v8, v6

    :goto_2
    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    and-int/lit8 v7, v1, 0x4

    if-eqz v7, :cond_4

    and-int/lit8 v7, p1, 0x4

    if-eqz v7, :cond_3

    move v7, v4

    goto :goto_3

    :cond_3
    move v7, v5

    .line 1847
    :goto_3
    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    invoke-virtual {v8, v7}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setUp(Z)V

    if-eqz v7, :cond_4

    .line 1854
    invoke-virtual {p0, v4}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    :cond_4
    and-int/lit8 v7, v1, 0x1

    if-eqz v7, :cond_8

    .line 1859
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_5

    and-int/lit8 v8, p1, 0x1

    if-eqz v8, :cond_5

    move v8, v4

    goto :goto_4

    :cond_5
    move v8, v5

    .line 1861
    :goto_4
    iget-object v9, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v8, :cond_6

    goto :goto_5

    :cond_6
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    :goto_5
    invoke-virtual {v9, v7}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 1864
    :cond_7
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v7, :cond_8

    .line 1865
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_8
    :goto_6
    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_e

    and-int/lit8 v7, p1, 0x8

    const/4 v8, 0x2

    if-eqz v7, :cond_a

    .line 1871
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getNavigationMode()I

    move-result v7

    if-ne v7, v8, :cond_9

    .line 1872
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->freeMainContainerChildren()Z

    .line 1874
    :cond_9
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->initTitle()V

    goto :goto_7

    .line 1876
    :cond_a
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v7, :cond_b

    .line 1877
    iget-object v9, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getLayout()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1879
    :cond_b
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-eqz v7, :cond_c

    .line 1880
    iget-object v9, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->getLayout()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1882
    :cond_c
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 1883
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 1884
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    move-result v7

    and-int/lit8 v7, v7, 0x20

    if-nez v7, :cond_d

    .line 1885
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1886
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 1888
    :cond_d
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getNavigationMode()I

    move-result v7

    if-ne v7, v8, :cond_e

    .line 1889
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addTabsToMainContainers()V

    :cond_e
    :goto_7
    and-int/lit8 v7, v1, 0x6

    if-eqz v7, :cond_15

    .line 1896
    iget v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/2addr v7, v3

    if-eqz v7, :cond_f

    move v7, v4

    goto :goto_8

    :cond_f
    move v7, v5

    .line 1898
    :goto_8
    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v8, :cond_10

    invoke-virtual {v8}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getVisibility()I

    move-result v8

    if-nez v8, :cond_10

    move v8, v4

    goto :goto_9

    :cond_10
    move v8, v5

    .line 1901
    :goto_9
    iget-object v9, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-eqz v9, :cond_11

    invoke-virtual {v9}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->getVisibility()I

    move-result v9

    if-nez v9, :cond_11

    move v8, v4

    .line 1904
    :cond_11
    iget-object v9, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz v9, :cond_15

    if-nez v8, :cond_12

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    move-result v8

    and-int/lit8 v8, v8, 0x20

    if-eqz v8, :cond_15

    .line 1905
    :cond_12
    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-nez v0, :cond_14

    if-eqz v7, :cond_13

    move v6, v5

    goto :goto_a

    :cond_13
    move v6, v3

    :cond_14
    :goto_a
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_15
    and-int/lit8 v0, v1, 0x10

    if-eqz v0, :cond_17

    .line 1909
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v0, :cond_17

    and-int/lit8 v6, p1, 0x10

    if-eqz v6, :cond_16

    .line 1911
    invoke-direct {p0, p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 1912
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addCustomView()V

    goto :goto_b

    .line 1914
    :cond_16
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_17
    :goto_b
    and-int/lit16 v0, v1, 0x2000

    if-eqz v0, :cond_19

    and-int/lit16 v0, p1, 0x2000

    if-eqz v0, :cond_18

    .line 1920
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitchResId:I

    invoke-virtual {v0, v1, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    .line 1922
    sget v1, Lmiuix/appcompat/R$id;->miuix_appcompat_navigator_switch_presenter:I

    new-instance v6, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;

    invoke-direct {v6, v0}, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    new-array v0, v4, [Landroid/view/View;

    .line 1924
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    aput-object v1, v0, v5

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object v0

    const/high16 v1, 0x42700000    # 60.0f

    invoke-interface {v0, v1}, Lmiuix/animation/IHoverStyle;->setFeedbackRadius(F)V

    new-array v0, v4, [Landroid/view/View;

    .line 1925
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    aput-object v1, v0, v5

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object v0

    sget-object v1, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {v0, v1}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object v0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    new-array v4, v5, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v1, v4}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 1926
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_c

    .line 1928
    :cond_18
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1929
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigatorSwitch:Landroid/view/View;

    .line 1933
    :cond_19
    :goto_c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_d

    .line 1935
    :cond_1a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 1939
    :goto_d
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_1d

    .line 1940
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1941
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_e

    :cond_1b
    and-int/2addr p1, v3

    if-eqz p1, :cond_1c

    .line 1943
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lmiuix/appcompat/R$string;->abc_action_bar_up_description:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 1946
    :cond_1c
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lmiuix/appcompat/R$string;->abc_action_bar_home_description:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1d
    :goto_e
    return-void
.end method

.method public setDropdownAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 0

    .line 2052
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    .line 2053
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-eqz p0, :cond_0

    .line 2054
    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_0
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .locals 0

    .line 2063
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method public setEmbeddedTabView(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 804
    :goto_0
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTabsExit:Z

    if-eqz v0, :cond_1

    .line 807
    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setupTabView(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;)V

    .line 809
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 810
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addTabsContainer()V

    :cond_1
    return-void
.end method

.method public setEndActionMenuEnable(Z)V
    .locals 0

    .line 709
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mEndActionMenuEnable:Z

    return-void
.end method

.method public setEndActionMenuItemLimit(I)V
    .locals 0

    .line 2286
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuItemLimit:I

    .line 2287
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz p0, :cond_0

    .line 2288
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setItemLimit(I)V

    :cond_0
    return-void
.end method

.method public setEndView(Landroid/view/View;)V
    .locals 5

    .line 1617
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1618
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1620
    :cond_0
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 1622
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    .line 1623
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    new-array v4, v3, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v1, v2, v4}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v1

    const v2, 0x3f19999a    # 0.6f

    new-array v4, v3, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v1, v2, v4}, Lmiuix/animation/ITouchStyle;->setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v1

    new-array v2, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v1, p1, v2}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    new-array p1, v0, [Landroid/view/View;

    .line 1624
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    aput-object v1, p1, v3

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object p1

    const/high16 v1, 0x42700000    # 60.0f

    invoke-interface {p1, v1}, Lmiuix/animation/IHoverStyle;->setFeedbackRadius(F)V

    new-array p1, v0, [Landroid/view/View;

    .line 1625
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    aput-object v0, p1, v3

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object p1

    sget-object v0, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {p1, v0}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object p1

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    new-array v0, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p0, v0}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic setExpandState(I)V
    .locals 0

    .line 100
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setExpandState(I)V

    return-void
.end method

.method public setExpandState(IZZ)V
    .locals 0

    if-nez p2, :cond_0

    .line 2261
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->pendingCreateTitle()V

    .line 2263
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setExpandState(IZZ)V

    return-void
.end method

.method public setExtraPaddingPolicy(Lmiuix/container/ExtraPaddingPolicy;)V
    .locals 0

    .line 1549
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1

    .line 3152
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_0

    .line 3153
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setUpIndicator(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3155
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 3156
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorResId:I

    :goto_0
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 3143
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_0

    .line 3144
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setUpIndicator(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3146
    :cond_0
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 3147
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorResId:I

    :goto_0
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1

    .line 1819
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_2

    .line 1820
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1821
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    if-nez p1, :cond_0

    .line 1824
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1825
    :cond_0
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_1

    .line 1826
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lmiuix/appcompat/R$string;->abc_action_bar_up_description:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1829
    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lmiuix/appcompat/R$string;->abc_action_bar_home_description:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setHyperActionMenuEnable(Z)V
    .locals 0

    .line 713
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mHyperActionMenuEnable:Z

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .line 1988
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1974
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1975
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    if-eqz p1, :cond_1

    .line 1976
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1977
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1978
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_1

    .line 1979
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1982
    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 1983
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 1416
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    return-void
.end method

.method public setLogo(I)V
    .locals 1

    .line 2002
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1992
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 1993
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    if-eqz p1, :cond_0

    .line 1994
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1995
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz p0, :cond_0

    .line 1996
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V
    .locals 3

    .line 1057
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionsMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    .line 1058
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    .line 1059
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionsMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    .line 1062
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_1

    .line 1063
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    .line 1066
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->removeMenuViewFromOldParent(Landroid/view/View;)V

    .line 1067
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->removeMenuViewFromOldParent(Landroid/view/View;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 1069
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBarEnable:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mEndActionMenuEnable:Z

    if-nez v1, :cond_2

    goto/16 :goto_2

    .line 1076
    :cond_2
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mEndActionMenuEnable:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mHyperActionMenuEnable:Z

    if-eqz v1, :cond_3

    .line 1078
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->divideHyperMenuAndSplitMenu(Landroid/view/Menu;)Landroid/util/Pair;

    move-result-object p1

    .line 1079
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionsMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 1080
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    goto :goto_0

    .line 1082
    :cond_3
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->divideMenuByGroup(Landroid/view/Menu;)Landroid/util/Pair;

    move-result-object p1

    .line 1083
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionsMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 1084
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 1087
    :goto_0
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBarEnable:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    .line 1088
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-nez p1, :cond_4

    .line 1089
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->createActionMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 1090
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->createExpandedActionViewMenuPresenter()Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 1092
    :cond_4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionsMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-eqz p1, :cond_5

    .line 1093
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    .line 1094
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionsMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    .line 1095
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionsMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionalIconsVisible:Z

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setForceShowOptionalIcon(Z)V

    goto :goto_1

    .line 1097
    :cond_5
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 1098
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 1101
    :goto_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->updateMenuView(Z)V

    .line 1102
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    .line 1103
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addSplitMenuView()V

    .line 1106
    :cond_6
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mEndActionMenuEnable:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->size()I

    move-result p1

    if-lez p1, :cond_8

    .line 1107
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-nez p1, :cond_7

    .line 1108
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mHyperActionMenuEnable:Z

    invoke-virtual {p0, p2, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->createEndActionMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;Z)Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 1110
    :cond_7
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    .line 1111
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    iget-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionalIconsVisible:Z

    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setForceShowOptionalIcon(Z)V

    .line 1112
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->updateMenuView(Z)V

    .line 1113
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addEndMenuView()V

    .line 1115
    :cond_8
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateBadgeOnMenuItemViews()V

    .line 1118
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateBackInvokedCallbackState()V

    return-void

    .line 1070
    :cond_9
    :goto_2
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 1071
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 1072
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    return-void
.end method

.method public setNavigationMode(I)V
    .locals 2

    .line 2006
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    if-eq p1, v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2010
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 2011
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    goto :goto_1

    .line 2036
    :cond_2
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTabsExit:Z

    if-eqz v0, :cond_5

    .line 2037
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addTabsContainer()V

    goto :goto_1

    .line 2018
    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MIUIX Deleted"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2041
    :cond_4
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTabsExit:Z

    if-eqz v0, :cond_5

    .line 2042
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->removeTabsFromContainer()V

    .line 2046
    :cond_5
    :goto_1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    .line 2047
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_6
    return-void
.end method

.method public bridge synthetic setPendingInset(Landroid/graphics/Rect;)V
    .locals 0

    .line 100
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setPendingInset(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    add-int/lit8 p1, p1, 0x0

    .line 3652
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateProgressBars(I)V

    return-void
.end method

.method public setProgressBarIndeterminate(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, -0x3

    goto :goto_0

    :cond_0
    const/4 p1, -0x4

    .line 3647
    :goto_0
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateProgressBars(I)V

    return-void
.end method

.method public setProgressBarIndeterminateVisibility(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    .line 3642
    :goto_0
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateProgressBars(I)V

    return-void
.end method

.method public setProgressBarVisibility(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    .line 3637
    :goto_0
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateProgressBars(I)V

    return-void
.end method

.method public bridge synthetic setResizable(Z)V
    .locals 0

    .line 100
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setResizable(Z)V

    return-void
.end method

.method public setSplitActionBar(Z)V
    .locals 3

    .line 744
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBarEnable:Z

    if-eq v0, p1, :cond_7

    .line 745
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz v0, :cond_2

    .line 746
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->removeMenuViewFromOldParent(Landroid/view/View;)V

    if-eqz p1, :cond_1

    .line 748
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 749
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 751
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 753
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 754
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 756
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 758
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    move v2, v1

    goto :goto_1

    :cond_3
    const/16 v2, 0x8

    .line 759
    :goto_1
    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setVisibility(I)V

    .line 762
    :cond_4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz v0, :cond_6

    if-nez p1, :cond_5

    .line 765
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$bool;->abc_action_bar_expanded_action_views_exclusive:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 764
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    goto :goto_2

    .line 768
    :cond_5
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 770
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 771
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v2, 0x1

    .line 770
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 774
    :cond_6
    :goto_2
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setSplitActionBar(Z)V

    :cond_7
    return-void
.end method

.method public bridge synthetic setSplitView(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V
    .locals 0

    .line 100
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setSplitView(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V

    return-void
.end method

.method public bridge synthetic setSplitWhenNarrow(Z)V
    .locals 0

    .line 100
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setSplitWhenNarrow(Z)V

    return-void
.end method

.method public setStartView(Landroid/view/View;)V
    .locals 5

    .line 1600
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1601
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1603
    :cond_0
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 1605
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 1606
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    new-array v4, v2, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v1, v3, v4}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v1

    const v3, 0x3f19999a    # 0.6f

    new-array v4, v2, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v1, v3, v4}, Lmiuix/animation/ITouchStyle;->setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v1

    new-array v3, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v1, p1, v3}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    new-array p1, v0, [Landroid/view/View;

    .line 1607
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    aput-object v1, p1, v2

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object p1

    const/high16 v1, 0x42700000    # 60.0f

    invoke-interface {p1, v1}, Lmiuix/animation/IHoverStyle;->setFeedbackRadius(F)V

    new-array p1, v0, [Landroid/view/View;

    .line 1608
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    aput-object v0, p1, v2

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object p1

    sget-object v0, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {p1, v0}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object p1

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    new-array v0, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p0, v0}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    :cond_1
    return-void
.end method

.method public setSubTitleClickListener(Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 678
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setSubTitleClickListener(Landroid/view/View$OnClickListener;)V

    .line 679
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 680
    :goto_0
    invoke-virtual {v0, v3}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitleClickable(Z)V

    .line 682
    :cond_1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 683
    :goto_1
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setSubTitleClickable(Z)V

    :cond_3
    return-void
.end method

.method public setSubTitleDrawable(Lmiuix/appcompat/app/TextViewDrawableConfig;)V
    .locals 0

    .line 1813
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz p0, :cond_0

    .line 1814
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitleDrawable(Lmiuix/appcompat/app/TextViewDrawableConfig;)V

    :cond_0
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1792
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 1793
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v0, :cond_0

    .line 1794
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 1796
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-eqz v0, :cond_1

    .line 1797
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 1799
    :cond_1
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->shouldTitleVisible()Z

    move-result p1

    .line 1800
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleVisibility(Z)V

    .line 1803
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateTightTitle()V

    .line 1804
    new-instance p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$$ExternalSyntheticLambda2;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    .line 1644
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUserTitle:Z

    .line 1645
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleClickable(Z)V
    .locals 1

    .line 667
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setTitleClickable(Z)V

    .line 668
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v0, :cond_0

    .line 669
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setTitleClickable(Z)V

    .line 671
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-eqz p0, :cond_1

    .line 672
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setTitleClickable(Z)V

    :cond_1
    return-void
.end method

.method public setUserSetEndActionMenuItemLimit(Z)V
    .locals 0

    .line 2297
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUserSetEndActionMenuItemLimit:Z

    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .locals 0

    .line 100
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setVisibility(I)V

    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0

    .line 591
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mWindowCallback:Landroid/view/Window$Callback;

    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1655
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUserTitle:Z

    if-nez v0, :cond_0

    .line 1656
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public showEndOverflowMenu()Z
    .locals 3

    .line 1422
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1423
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 1426
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mEndActionMenuEnable:Z

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->showOverflowMenu()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public bridge synthetic showOverflowMenu()Z
    .locals 0

    .line 100
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->showOverflowMenu()Z

    move-result p0

    return p0
.end method

.method updateExpandStateOnLayout()Z
    .locals 6

    .line 725
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return v1

    .line 728
    :cond_0
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandStateOnLayout:I

    .line 729
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    const/4 v3, 0x1

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 731
    :cond_1
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableSecondaryTabHeight:I

    add-int/2addr v4, v5

    if-ne v2, v4, :cond_2

    move v0, v3

    .line 734
    :cond_2
    :goto_0
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandStateOnLayout:I

    if-eq v2, v0, :cond_3

    .line 735
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandStateOnLayout:I

    .line 736
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandStateBeforeResizing:I

    return v3

    :cond_3
    return v1
.end method
