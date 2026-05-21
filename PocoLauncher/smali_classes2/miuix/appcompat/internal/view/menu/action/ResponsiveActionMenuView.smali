.class public Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;
.super Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
.source "ResponsiveActionMenuView.java"


# instance fields
.field private mAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private mApplyBlur:Z

.field private mAttrs:Landroid/util/AttributeSet;

.field private mBackgroundInBlur:Landroid/graphics/drawable/Drawable;

.field private final mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

.field private mBottomMenuBackground:Landroid/graphics/drawable/Drawable;

.field private mBottomMenuItemHeight:I

.field private final mContext:Landroid/content/Context;

.field private mCustomView:Landroid/view/View;

.field private mCustomViewClipBounds:Landroid/graphics/Rect;

.field private mDensityDpi:I

.field private mHasOnlyCustomView:Z

.field private mIsCustomViewHidden:Z

.field private mIsEmpty:Z

.field mIsFloatingWindow:Z

.field private mIsHidden:Z

.field private mItemNormalPaddingTop:I

.field private mItemSmallPaddingTop:I

.field private mLargeFontAdaptionEnabled:Z

.field private mMenuItemGap:I

.field private mMenuItemHeight:I

.field private mMenuItemWidth:I

.field private mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

.field private mOffSet:I

.field private mOriginViewParentClipState:[Z

.field private mParentLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mSuspendEnabled:Z

.field private mSuspendItemCenterExtraUp:I

.field private mSuspendMenuBackground:Landroid/graphics/drawable/Drawable;

.field private mSuspendMenuBackgroundRadius:I

.field private mSuspendMenuMiShadowColor:I

.field private mSuspendMenuMiShadowRadius:F

.field private mSuspendMenuMiShadowRadiusOffsetX:F

.field private mSuspendMenuMiShadowRadiusOffsetY:F

.field private mSuspendMenuMinMargin:I

.field private mSuspendMenuMinWidth:I

.field private mViewOutlineInSuspend:Landroid/view/ViewOutlineProvider;


# direct methods
.method public static synthetic $r8$lambda$TGJ7HeHSOHd7TRxmcBX9QLVX4HM(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->lambda$onAttachedToWindow$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 119
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    .line 59
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mHasOnlyCustomView:Z

    .line 60
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsEmpty:Z

    const/4 v1, 0x0

    .line 82
    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    .line 83
    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mParentLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 87
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOffSet:I

    .line 89
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsHidden:Z

    .line 92
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsCustomViewHidden:Z

    .line 93
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mApplyBlur:Z

    .line 94
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mLargeFontAdaptionEnabled:Z

    .line 97
    new-instance v1, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$1;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$1;-><init>(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mViewOutlineInSuspend:Landroid/view/ViewOutlineProvider;

    .line 104
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const/4 v4, -0x2

    .line 105
    invoke-virtual {v1, v4, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    const/4 v3, 0x1

    new-array v4, v3, [Lmiuix/animation/listener/TransitionListener;

    new-instance v5, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$2;

    invoke-direct {v5, p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$2;-><init>(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)V

    aput-object v5, v4, v0

    .line 106
    invoke-virtual {v1, v4}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 120
    sget v1, Lmiuix/appcompat/R$attr;->largeFontAdaptationEnabled:I

    invoke-static {p1, v1, v3}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lmiuix/core/util/MiuixUIUtils;->getFontLevel(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mLargeFontAdaptionEnabled:Z

    const/high16 v2, 0x41800000    # 16.0f

    if-eqz v1, :cond_1

    .line 121
    invoke-static {p1, v2}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    goto :goto_1

    :cond_1
    const/high16 v1, 0x41300000    # 11.0f

    invoke-static {p1, v1}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    :goto_1
    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemGap:I

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 123
    sget v4, Lmiuix/appcompat/R$dimen;->miuix_appcompat_bottom_menu_height:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 124
    sget v5, Lmiuix/appcompat/R$dimen;->miuix_appcompat_bottom_menu_height_in_large_font:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 125
    iget-boolean v5, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mLargeFontAdaptionEnabled:Z

    if-eqz v5, :cond_2

    move v4, v1

    :cond_2
    iput v4, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBottomMenuItemHeight:I

    .line 126
    invoke-static {p1, v2}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMinMargin:I

    const/high16 v1, 0x43440000    # 196.0f

    .line 127
    invoke-static {p1, v1}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMinWidth:I

    const/high16 v1, 0x41000000    # 8.0f

    .line 128
    invoke-static {p1, v1}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mItemNormalPaddingTop:I

    const/high16 v1, 0x40a00000    # 5.0f

    .line 129
    invoke-static {p1, v1}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mItemSmallPaddingTop:I

    const/high16 v1, 0x40000000    # 2.0f

    .line 130
    invoke-static {p1, v1}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendItemCenterExtraUp:I

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_suspend_menu_bg_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackgroundRadius:I

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$color;->miuix_appcompat_suspend_menu_mi_shadow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowColor:I

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_suspend_menu_mi_shadow_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowRadius:F

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_suspend_menu_mi_shadow_radius_offset_x:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowRadiusOffsetX:F

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_suspend_menu_mi_shadow_radius_offset_y:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowRadiusOffsetY:F

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mDensityDpi:I

    .line 137
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    .line 138
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mAttrs:Landroid/util/AttributeSet;

    .line 139
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 140
    invoke-direct {p0, p2}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->refreshMenuBackgroundDrawables(Landroid/util/AttributeSet;)V

    .line 141
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 142
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 143
    invoke-static {p0, v3}, Lmiuix/smooth/SmoothCornerHelper;->setViewSmoothCornerEnable(Landroid/view/View;Z)V

    .line 144
    new-instance p2, Lmiuix/view/MiuiBlurUiHelper;

    new-instance v1, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$3;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$3;-><init>(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)V

    invoke-direct {p2, p1, p0, v0, v1}, Lmiuix/view/MiuiBlurUiHelper;-><init>(Landroid/content/Context;Landroid/view/View;ZLmiuix/view/MiuiBlurUiHelper$BlurStateCallback;)V

    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    return-void

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e800000    # 0.25f
    .end array-data
.end method

.method static synthetic access$000(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)I
    .locals 0

    .line 46
    iget p0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackgroundRadius:I

    return p0
.end method

.method static synthetic access$102(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;I)I
    .locals 0

    .line 46
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOffSet:I

    return p1
.end method

.method static synthetic access$200(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    return p0
.end method

.method static synthetic access$300(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 46
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$400(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 46
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBottomMenuBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$502(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mApplyBlur:Z

    return p1
.end method

.method static synthetic access$600(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->updateBackground()V

    return-void
.end method

.method private getActionMenuItemCount()I
    .locals 2

    .line 452
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 453
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method private getChildrenHeight(Landroid/widget/LinearLayout;)I
    .locals 3

    .line 613
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 616
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private getCustomViewClipBounds()Landroid/graphics/Rect;
    .locals 4

    .line 636
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomViewClipBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 637
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomViewClipBounds:Landroid/graphics/Rect;

    .line 639
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomViewClipBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOffSet:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 640
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomViewClipBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method private getMaxChildrenTotalHeight()I
    .locals 5

    .line 595
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    .line 597
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 598
    invoke-direct {p0, v3}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->isNotActionMenuItemChild(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 601
    :cond_0
    instance-of v4, v3, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    .line 602
    check-cast v3, Landroid/widget/LinearLayout;

    .line 603
    invoke-direct {p0, v3}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->getChildrenHeight(Landroid/widget/LinearLayout;)I

    move-result v3

    if-ge v2, v3, :cond_1

    move v2, v3

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private isNotActionMenuItemChild(Landroid/view/View;)Z
    .locals 0

    .line 590
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private keepHidden()V
    .locals 1

    .line 558
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsHidden:Z

    if-eqz v0, :cond_0

    .line 559
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->getMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onAttachedToWindow$0(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 213
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    if-eqz p1, :cond_0

    .line 214
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result p4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result p0

    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method private measureActionMenuItem(IIZ)V
    .locals 6

    .line 564
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    .line 566
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 567
    invoke-direct {p0, v3}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->isNotActionMenuItemChild(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_3

    .line 570
    :cond_0
    instance-of v4, v3, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    .line 571
    move-object v4, v3

    check-cast v4, Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    .line 572
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_1
    if-eqz p3, :cond_2

    .line 575
    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    .line 578
    :cond_2
    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->isLayoutHideNavigation(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lmiuix/core/util/MiuixUIUtils;->isFullScreenGestureMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lmiuix/core/util/MiuixUIUtils;->isShowNavigationHandle(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 579
    :cond_3
    iget v4, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mItemNormalPaddingTop:I

    goto :goto_1

    .line 581
    :cond_4
    iget v4, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mItemSmallPaddingTop:I

    .line 583
    :goto_1
    invoke-virtual {v3, v1, v4, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 585
    :goto_2
    invoke-virtual {v3, p1, p2}, Landroid/view/View;->measure(II)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private refreshBackground()V
    .locals 1

    .line 304
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mAttrs:Landroid/util/AttributeSet;

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->refreshMenuBackgroundDrawables(Landroid/util/AttributeSet;)V

    .line 305
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->updateBackground()V

    return-void
.end method

.method private refreshMenuBackgroundDrawables(Landroid/util/AttributeSet;)V
    .locals 5

    .line 172
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 177
    :try_start_0
    invoke-static {v0}, Lmiuix/core/util/ContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->isFloatingWindow(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsFloatingWindow:Z

    .line 178
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    sget-object v2, Lmiuix/appcompat/R$styleable;->ResponsiveActionMenuView:[I

    sget v3, Lmiuix/appcompat/R$attr;->responsiveActionMenuViewStyle:I

    const/4 v4, 0x0

    invoke-virtual {v0, p1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 179
    iget-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsFloatingWindow:Z

    if-eqz p1, :cond_1

    sget p1, Lmiuix/appcompat/R$styleable;->ResponsiveActionMenuView_floatingWindowBottomMenuBackground:I

    goto :goto_0

    .line 180
    :cond_1
    sget p1, Lmiuix/appcompat/R$styleable;->ResponsiveActionMenuView_bottomMenuBackground:I

    .line 179
    :goto_0
    invoke-virtual {v1, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBottomMenuBackground:Landroid/graphics/drawable/Drawable;

    .line 181
    iget-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsFloatingWindow:Z

    if-eqz p1, :cond_2

    sget p1, Lmiuix/appcompat/R$styleable;->ResponsiveActionMenuView_floatingWindowSuspendMenuBackground:I

    goto :goto_1

    .line 182
    :cond_2
    sget p1, Lmiuix/appcompat/R$styleable;->ResponsiveActionMenuView_suspendMenuBackground:I

    .line 181
    :goto_1
    invoke-virtual {v1, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackground:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 188
    invoke-static {}, Lmiuix/core/util/MiuiBlurUtils;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 189
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBackgroundInBlur:Landroid/graphics/drawable/Drawable;

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_4

    .line 185
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 187
    :cond_4
    throw p0
.end method

.method private resetActionMenuItemPaddingTop(I)V
    .locals 5

    .line 622
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 624
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 625
    invoke-direct {p0, v3}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->isNotActionMenuItemChild(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 628
    :cond_0
    instance-of v4, v3, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    .line 629
    check-cast v3, Landroid/widget/LinearLayout;

    .line 630
    invoke-virtual {v3, v1, p1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private restoreParentClipState(Landroid/view/View;)V
    .locals 4

    .line 736
    sget-boolean v0, Lmiuix/core/util/MiShadowUtils;->SUPPORT_MI_SHADOW:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOriginViewParentClipState:[Z

    if-eqz v0, :cond_1

    .line 738
    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 740
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 741
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 742
    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    .line 743
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOriginViewParentClipState:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 744
    check-cast p1, Landroid/view/View;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 749
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOriginViewParentClipState:[Z

    :cond_1
    return-void
.end method

.method private updateBackground()V
    .locals 2

    .line 309
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mViewOutlineInSuspend:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 311
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mApplyBlur:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBackgroundInBlur:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackground:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 313
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 314
    iget-boolean v1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mBackgroundViewApplyBlur:Z

    if-eqz v1, :cond_2

    .line 315
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 318
    :cond_2
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mApplyBlur:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBackgroundInBlur:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBottomMenuBackground:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public addCustomView(Landroid/view/View;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 378
    :cond_0
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 379
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public applyBlur(Z)V
    .locals 0

    .line 366
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    invoke-virtual {p0, p1}, Lmiuix/view/MiuiBlurUiHelper;->applyBlur(Z)V

    return-void
.end method

.method protected clearBackground()V
    .locals 1

    const/4 v0, 0x0

    .line 336
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public clipParent(Landroid/view/View;)V
    .locals 6

    .line 718
    sget-boolean v0, Lmiuix/core/util/MiShadowUtils;->SUPPORT_MI_SHADOW:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOriginViewParentClipState:[Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v1, v0, [Z

    .line 720
    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOriginViewParentClipState:[Z

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 722
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 723
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 724
    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    .line 725
    iget-object v4, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOriginViewParentClipState:[Z

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v5

    aput-boolean v5, v4, v2

    .line 726
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 727
    check-cast p1, Landroid/view/View;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public filterLeftoverView(I)Z
    .locals 3

    .line 420
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 421
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->isNotActionMenuItemChild(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 424
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 425
    iget-boolean v0, v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    .line 426
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->filterLeftoverView(I)Z

    move-result p0

    if-eqz p0, :cond_3

    move v2, v1

    :cond_3
    return v2
.end method

.method public getBottomMenuCustomViewOffset()I
    .locals 0

    .line 414
    iget p0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOffSet:I

    return p0
.end method

.method public getCollapsedHeight()I
    .locals 2

    .line 431
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsEmpty:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 434
    :cond_0
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->getMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result v0

    .line 436
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_1

    .line 438
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    if-gtz p0, :cond_2

    return v1

    .line 443
    :cond_2
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public hasOnlyCustomView()Z
    .locals 0

    .line 461
    iget-boolean p0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mHasOnlyCustomView:Z

    return p0
.end method

.method public isEnableBlur()Z
    .locals 0

    .line 361
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    invoke-virtual {p0}, Lmiuix/view/MiuiBlurUiHelper;->isEnableBlur()Z

    move-result p0

    return p0
.end method

.method public isSuspend()Z
    .locals 0

    .line 332
    iget-boolean p0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 195
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 196
    sget-boolean v0, Lmiuix/core/util/MiShadowUtils;->SUPPORT_MI_SHADOW:Z

    if-eqz v0, :cond_1

    .line 197
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->isSuspend()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0, p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->clipParent(Landroid/view/View;)V

    .line 199
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowColor:I

    iget v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowRadiusOffsetX:F

    iget v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowRadiusOffsetY:F

    iget v3, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackgroundRadius:I

    int-to-float v3, v3

    invoke-static {p0, v0, v1, v2, v3}, Lmiuix/core/util/MiShadowUtils;->setMiShadow(Landroid/view/View;IFFF)V

    goto :goto_0

    .line 201
    :cond_0
    invoke-direct {p0, p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->restoreParentClipState(Landroid/view/View;)V

    .line 202
    invoke-static {p0}, Lmiuix/core/util/MiShadowUtils;->clearMiShadow(Landroid/view/View;)V

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->isSuspend()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    if-nez v0, :cond_3

    .line 207
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 208
    new-instance v1, Lmiuix/appcompat/internal/view/OutDropShadowView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiuix/appcompat/internal/view/OutDropShadowView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    .line 209
    iget v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackgroundRadius:I

    invoke-virtual {v1, v2}, Lmiuix/appcompat/internal/view/OutDropShadowView;->setShadowHostViewRadius(I)V

    .line 210
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 211
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$$ExternalSyntheticLambda0;-><init>(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mParentLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0

    .line 218
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    if-eqz v0, :cond_3

    .line 219
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/OutDropShadowView;->onWillRemoved()V

    .line 220
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 221
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mParentLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 222
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 223
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    :cond_3
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 264
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 265
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {v0}, Lmiuix/view/MiuiBlurUiHelper;->onConfigChanged()V

    .line 268
    :cond_0
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 269
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mDensityDpi:I

    if-eq p1, v0, :cond_5

    .line 270
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mDensityDpi:I

    .line 271
    iget-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mLargeFontAdaptionEnabled:Z

    const/high16 v0, 0x41800000    # 16.0f

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    const/high16 v1, 0x41300000    # 11.0f

    invoke-static {p1, v1}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    :goto_0
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemGap:I

    .line 272
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMinMargin:I

    .line 273
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    const/high16 v0, 0x43440000    # 196.0f

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMinWidth:I

    .line 274
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mItemNormalPaddingTop:I

    .line 275
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mItemSmallPaddingTop:I

    .line 276
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendItemCenterExtraUp:I

    .line 277
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 278
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 279
    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_bottom_menu_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 280
    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_bottom_menu_height_in_large_font:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 281
    iget-boolean v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mLargeFontAdaptionEnabled:Z

    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBottomMenuItemHeight:I

    .line 282
    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_suspend_menu_bg_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackgroundRadius:I

    .line 283
    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_suspend_menu_mi_shadow_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowRadius:F

    .line 284
    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_suspend_menu_mi_shadow_radius_offset_x:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowRadiusOffsetX:F

    .line 285
    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_suspend_menu_mi_shadow_radius_offset_y:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowRadiusOffsetY:F

    .line 286
    sget-boolean p1, Lmiuix/core/util/MiShadowUtils;->SUPPORT_MI_SHADOW:Z

    if-eqz p1, :cond_4

    .line 287
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->isSuspend()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 288
    iget p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowColor:I

    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowRadiusOffsetX:F

    iget v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowRadiusOffsetY:F

    iget v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowRadius:F

    invoke-static {p0, p1, v0, v1, v2}, Lmiuix/core/util/MiShadowUtils;->setMiShadow(Landroid/view/View;IFFF)V

    goto :goto_1

    .line 290
    :cond_3
    invoke-static {p0}, Lmiuix/core/util/MiShadowUtils;->clearMiShadow(Landroid/view/View;)V

    .line 293
    :cond_4
    :goto_1
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->refreshBackground()V

    .line 294
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    if-eqz p1, :cond_6

    .line 295
    iget p0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackgroundRadius:I

    invoke-virtual {p1, p0}, Lmiuix/appcompat/internal/view/OutDropShadowView;->setShadowHostViewRadius(I)V

    goto :goto_2

    .line 297
    :cond_5
    iget-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsFloatingWindow:Z

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/core/util/ContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->isFloatingWindow(Landroid/content/Context;)Z

    move-result v0

    if-eq p1, v0, :cond_6

    .line 298
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->isFloatingWindow(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsFloatingWindow:Z

    .line 299
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->refreshBackground()V

    :cond_6
    :goto_2
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    .line 250
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->applyBlur(Z)V

    .line 251
    invoke-super {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    .line 646
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    .line 647
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p2

    .line 652
    iget-boolean p3, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mHasOnlyCustomView:Z

    const/16 p4, 0x8

    const/4 p5, 0x0

    if-eqz p3, :cond_1

    .line 653
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eq p1, p4, :cond_0

    .line 654
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/lit8 v4, p1, 0x0

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/lit8 v5, p1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    :cond_0
    return-void

    .line 659
    :cond_1
    iget-object p3, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-eq p3, p4, :cond_2

    .line 660
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/lit8 v4, p3, 0x0

    iget-object p3, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    add-int/lit8 v5, p3, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 661
    iget-object p3, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p3, p5

    .line 662
    iget p4, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOffSet:I

    sub-int/2addr p3, p4

    if-gez p3, :cond_3

    :cond_2
    move p3, p5

    .line 669
    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p4

    .line 670
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->getActionMenuItemCount()I

    move-result v0

    .line 671
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v2

    sub-int/2addr v1, v2

    .line 672
    iget v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemWidth:I

    mul-int/2addr v2, v0

    const/4 v6, 0x1

    sub-int/2addr v0, v6

    iget v3, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemGap:I

    mul-int/2addr v0, v3

    add-int/2addr v2, v0

    .line 673
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v0

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    move v8, p5

    move v7, v0

    :goto_0
    if-ge v8, p4, :cond_5

    .line 675
    invoke-virtual {p0, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 676
    invoke-direct {p0, v9}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->isNotActionMenuItemChild(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 679
    :cond_4
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v4, v7, v0

    move-object v0, p0

    move-object v1, v9

    move v2, v7

    move v3, p3

    move v5, p2

    .line 680
    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 681
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemGap:I

    add-int/2addr v0, v1

    add-int/2addr v7, v0

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 683
    :cond_5
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->isEnableBlur()Z

    move-result p3

    if-eqz p3, :cond_6

    if-lez p1, :cond_6

    if-lez p2, :cond_6

    move p5, v6

    :cond_6
    invoke-virtual {p0, p5}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->applyBlur(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v2, 0x0

    .line 466
    iput-boolean v2, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mHasOnlyCustomView:Z

    .line 467
    iput-boolean v2, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsEmpty:Z

    .line 468
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v3

    .line 469
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v3

    .line 470
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    .line 474
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    .line 475
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->getActionMenuItemCount()I

    move-result v7

    .line 476
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    const/4 v10, 0x1

    const/high16 v11, 0x40000000    # 2.0f

    if-eqz v6, :cond_5

    if-nez v7, :cond_0

    goto/16 :goto_1

    .line 509
    :cond_0
    iget-boolean v6, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    if-eqz v6, :cond_2

    .line 510
    iget-object v6, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    const/high16 v12, 0x42e60000    # 115.0f

    invoke-static {v6, v12}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemWidth:I

    .line 511
    iget-object v6, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    const/high16 v12, 0x42a00000    # 80.0f

    invoke-static {v6, v12}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v6

    const/high16 v12, -0x80000000

    .line 512
    invoke-static {v6, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    add-int/lit8 v13, v7, -0x1

    .line 514
    iget v14, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemGap:I

    mul-int/2addr v13, v14

    .line 515
    iget v14, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemWidth:I

    mul-int/2addr v14, v7

    add-int/2addr v14, v13

    .line 516
    iget v15, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMinMargin:I

    mul-int/lit8 v16, v15, 0x2

    sub-int v9, v8, v16

    if-lt v14, v9, :cond_1

    sub-int/2addr v8, v5

    mul-int/lit8 v15, v15, 0x2

    sub-int/2addr v8, v15

    sub-int/2addr v8, v13

    .line 517
    div-int/2addr v8, v7

    iput v8, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemWidth:I

    .line 519
    :cond_1
    iget v8, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemWidth:I

    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 520
    invoke-direct {v0, v8, v12, v10}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->measureActionMenuItem(IIZ)V

    .line 521
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->getMaxChildrenTotalHeight()I

    move-result v8

    iget v9, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendItemCenterExtraUp:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    sub-int v8, v6, v8

    .line 522
    div-int/lit8 v8, v8, 0x2

    .line 523
    invoke-direct {v0, v8}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->resetActionMenuItemPaddingTop(I)V

    .line 524
    iput v6, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemHeight:I

    .line 525
    iget v6, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemWidth:I

    mul-int/2addr v6, v7

    add-int/2addr v6, v5

    add-int/2addr v6, v13

    .line 526
    iget v5, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMinWidth:I

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_0

    :cond_2
    sub-int v5, v8, v5

    add-int/lit8 v6, v7, -0x1

    .line 529
    iget v9, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemGap:I

    mul-int/2addr v6, v9

    sub-int/2addr v5, v6

    div-int/2addr v5, v7

    iput v5, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemWidth:I

    .line 530
    iget v6, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBottomMenuItemHeight:I

    add-int/2addr v6, v3

    .line 531
    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 532
    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 533
    iget-boolean v9, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    invoke-direct {v0, v5, v7, v9}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->measureActionMenuItem(IIZ)V

    .line 534
    iput v6, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemHeight:I

    .line 537
    :goto_0
    iget v5, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemHeight:I

    add-int/2addr v2, v5

    add-int/2addr v2, v4

    .line 539
    iget-boolean v5, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    if-nez v5, :cond_3

    sub-int/2addr v2, v3

    .line 542
    :cond_3
    iget-object v3, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_4

    .line 543
    iget-object v3, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    .line 544
    iget-object v5, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 545
    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 546
    invoke-static {v1, v4, v3}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result v1

    .line 544
    invoke-virtual {v5, v6, v1}, Landroid/view/View;->measure(II)V

    .line 548
    iget-object v1, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->getCustomViewClipBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 549
    iget-object v1, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v2, v1

    .line 550
    iget v1, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOffSet:I

    sub-int/2addr v2, v1

    .line 552
    :cond_4
    invoke-virtual {v0, v8, v2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 553
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->keepHidden()V

    return-void

    .line 478
    :cond_5
    :goto_1
    iput v2, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemHeight:I

    .line 479
    iget-object v3, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-ne v3, v5, :cond_6

    goto :goto_4

    .line 483
    :cond_6
    iput-boolean v10, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mHasOnlyCustomView:Z

    .line 484
    iget-object v3, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    .line 485
    iget-boolean v5, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    if-eqz v5, :cond_7

    .line 486
    iget-object v5, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    iget v6, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMinMargin:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v8, v6

    .line 487
    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 488
    invoke-static {v1, v4, v3}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result v1

    .line 486
    invoke-virtual {v5, v6, v1}, Landroid/view/View;->measure(II)V

    goto :goto_2

    .line 491
    :cond_7
    iget-object v5, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    .line 492
    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 493
    invoke-static {v1, v4, v3}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result v1

    .line 491
    invoke-virtual {v5, v6, v1}, Landroid/view/View;->measure(II)V

    .line 496
    :goto_2
    iget-object v1, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->getCustomViewClipBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 497
    iget-object v1, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 498
    iget-object v3, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v3, v4

    .line 500
    iget v4, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOffSet:I

    sub-int/2addr v3, v4

    if-gez v3, :cond_8

    goto :goto_3

    :cond_8
    move v2, v3

    .line 504
    :goto_3
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    goto :goto_5

    .line 480
    :cond_9
    :goto_4
    iput-boolean v10, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsEmpty:Z

    .line 481
    invoke-virtual {v0, v2, v2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 506
    :goto_5
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->keepHidden()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    .line 230
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    .line 231
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->applyBlur(Z)V

    return-void
.end method

.method public onWillRemoved()V
    .locals 2

    .line 236
    invoke-super {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->onWillRemoved()V

    const/4 v0, 0x0

    .line 237
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->applyBlur(Z)V

    .line 238
    invoke-direct {p0, p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->restoreParentClipState(Landroid/view/View;)V

    .line 239
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/OutDropShadowView;->onWillRemoved()V

    .line 241
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 242
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 243
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mParentLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 v0, 0x0

    .line 244
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    :cond_0
    return-void
.end method

.method protected resetBackground()V
    .locals 0

    .line 340
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->updateBackground()V

    return-void
.end method

.method public setBottomMenuCustomViewTranslationYWithPx(I)V
    .locals 1

    .line 406
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 409
    :cond_0
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOffSet:I

    .line 410
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setEnableBlur(Z)V
    .locals 1

    .line 355
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    invoke-virtual {v0, p1}, Lmiuix/view/MiuiBlurUiHelper;->setEnableBlur(Z)V

    if-eqz p1, :cond_0

    .line 356
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->applyBlur(Z)V

    return-void
.end method

.method public setHidden(Z)V
    .locals 0

    .line 712
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsHidden:Z

    return-void
.end method

.method public setSupportBlur(Z)V
    .locals 0

    .line 345
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    invoke-virtual {p0, p1}, Lmiuix/view/MiuiBlurUiHelper;->setSupportBlur(Z)V

    return-void
.end method

.method public setSuspendEnabled(Z)V
    .locals 1

    .line 323
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    if-eq v0, p1, :cond_0

    .line 324
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    .line 325
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    invoke-virtual {p1}, Lmiuix/view/MiuiBlurUiHelper;->resetBlurParams()V

    .line 326
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBlurHelper:Lmiuix/view/MiuiBlurUiHelper;

    invoke-virtual {p1}, Lmiuix/view/MiuiBlurUiHelper;->refreshBlur()V

    .line 328
    :cond_0
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->updateBackground()V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 256
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 257
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    if-eqz p0, :cond_0

    .line 258
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method
