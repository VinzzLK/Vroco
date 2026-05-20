.class public Lmiuix/internal/widget/ListPopup;
.super Landroid/widget/PopupWindow;
.source "ListPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/internal/widget/ListPopup$ContentSize;,
        Lmiuix/internal/widget/ListPopup$ContainerView;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected final mBackgroundPadding:Landroid/graphics/Rect;

.field private mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

.field protected mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field protected mElevation:I

.field protected mElevationExtra:I

.field private mFenceDecor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHasShadow:Z

.field private mIsCustomContent:Z

.field private mListView:Landroid/widget/ListView;

.field protected mMaxAllowedHeight:I

.field private mMaxAllowedWidth:I

.field private mMinAllowedWidth:I

.field private mMinSafeInset:I

.field private mObserver:Landroid/database/DataSetObserver;

.field private mOffsetFromStatusBar:I

.field private mOffsetX:I

.field private mOffsetXSet:Z

.field private mOffsetY:I

.field private mOffsetYSet:Z

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mPositionSafeInsets:Landroid/graphics/Rect;

.field protected mRootView:Landroid/widget/FrameLayout;

.field private mShadowColor:I

.field private mUserAnimationGravity:I


# direct methods
.method public static synthetic $r8$lambda$fD363gYrMQVlqCb_U4vkWcd3_vU(Lmiuix/internal/widget/ListPopup;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/internal/widget/ListPopup;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qLrhNAJs7u2dGrJyJbIUHMT-Dos(Lmiuix/internal/widget/ListPopup;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lmiuix/internal/widget/ListPopup;->lambda$prepareShow$2(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$xGOcwZNYHUirn7ou2rIjYX698cs(Lmiuix/internal/widget/ListPopup;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/internal/widget/ListPopup;->lambda$new$1()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 10

    .line 132
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    const v0, 0x800035

    .line 77
    iput v0, p0, Lmiuix/internal/widget/ListPopup;->mDropDownGravity:I

    const/4 v0, -0x1

    .line 78
    iput v0, p0, Lmiuix/internal/widget/ListPopup;->mUserAnimationGravity:I

    const/4 v0, 0x0

    .line 87
    iput v0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetFromStatusBar:I

    const/4 v1, 0x1

    .line 98
    iput-boolean v1, p0, Lmiuix/internal/widget/ListPopup;->mHasShadow:Z

    .line 99
    iput v0, p0, Lmiuix/internal/widget/ListPopup;->mShadowColor:I

    .line 101
    iput-boolean v0, p0, Lmiuix/internal/widget/ListPopup;->mIsCustomContent:Z

    .line 103
    new-instance v2, Lmiuix/internal/widget/ListPopup$1;

    invoke-direct {v2, p0}, Lmiuix/internal/widget/ListPopup$1;-><init>(Lmiuix/internal/widget/ListPopup;)V

    iput-object v2, p0, Lmiuix/internal/widget/ListPopup;->mObserver:Landroid/database/DataSetObserver;

    .line 133
    iput-object p1, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    .line 134
    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, -0x2

    .line 135
    invoke-virtual {p0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 136
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lmiuix/internal/widget/ListPopup;->mFenceDecor:Ljava/lang/ref/WeakReference;

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 139
    iget-object v4, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object v4

    .line 140
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new windowInfo w "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " h "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ListPopup"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lmiuix/appcompat/R$dimen;->miuix_appcompat_context_menu_window_margin_screen:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lmiuix/internal/widget/ListPopup;->mMinSafeInset:I

    .line 144
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lmiuix/internal/widget/ListPopup;->mPositionSafeInsets:Landroid/graphics/Rect;

    .line 145
    iget v6, p0, Lmiuix/internal/widget/ListPopup;->mMinSafeInset:I

    invoke-virtual {v5, v6, v6, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p2, :cond_0

    .line 147
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 148
    invoke-static {p2, v5}, Lmiuix/internal/util/ViewUtils;->getBoundsInWindow(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 149
    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, v4, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget v8, v7, Landroid/graphics/Point;->x:I

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-direct {v6, v0, v0, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    iget-object v8, v4, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget v9, v8, Landroid/graphics/Point;->x:I

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-direct {v7, v0, v0, v9, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, p2, v5, v6, v7}, Lmiuix/internal/widget/ListPopup;->updateSafeInsetsByDecor(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 153
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    goto :goto_0

    :cond_1
    iget-object v5, v4, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    :goto_0
    if-eqz p2, :cond_2

    .line 154
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    goto :goto_1

    :cond_2
    iget-object p2, v4, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    .line 155
    :goto_1
    sget v4, Lmiuix/appcompat/R$dimen;->miuix_appcompat_popup_menu_max_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lmiuix/internal/widget/ListPopup;->mMaxAllowedWidth:I

    .line 156
    sget v4, Lmiuix/appcompat/R$dimen;->miuix_appcompat_popup_menu_min_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lmiuix/internal/widget/ListPopup;->mMinAllowedWidth:I

    .line 157
    sget v4, Lmiuix/appcompat/R$dimen;->miuix_appcompat_popup_menu_max_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lmiuix/internal/widget/ListPopup;->mMaxAllowedHeight:I

    .line 159
    iget-object p2, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41000000    # 8.0f

    mul-float/2addr v3, p2

    float-to-int v3, v3

    .line 160
    iput v3, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    .line 161
    iput v3, p0, Lmiuix/internal/widget/ListPopup;->mOffsetY:I

    .line 162
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lmiuix/internal/widget/ListPopup;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 163
    new-instance v3, Lmiuix/internal/widget/ListPopup$ContentSize;

    invoke-direct {v3, v2}, Lmiuix/internal/widget/ListPopup$ContentSize;-><init>(Lmiuix/internal/widget/ListPopup$1;)V

    iput-object v3, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    .line 165
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 166
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 168
    new-instance v1, Lmiuix/internal/widget/ListPopup$ContainerView;

    invoke-direct {v1, p0, p1}, Lmiuix/internal/widget/ListPopup$ContainerView;-><init>(Lmiuix/internal/widget/ListPopup;Landroid/content/Context;)V

    iput-object v1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    .line 169
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 170
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 171
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    new-instance v1, Lmiuix/internal/widget/ListPopup$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lmiuix/internal/widget/ListPopup$$ExternalSyntheticLambda0;-><init>(Lmiuix/internal/widget/ListPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    invoke-virtual {p0, p1}, Lmiuix/internal/widget/ListPopup;->prepareContentView(Landroid/content/Context;)V

    .line 173
    sget v0, Lmiuix/appcompat/R$style;->Animation_PopupWindow_ImmersionMenu:I

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 174
    new-instance v0, Lmiuix/internal/widget/ListPopup$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lmiuix/internal/widget/ListPopup$$ExternalSyntheticLambda2;-><init>(Lmiuix/internal/widget/ListPopup;)V

    invoke-super {p0, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_context_menu_window_margin_statusbar:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetFromStatusBar:I

    .line 181
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$color;->miuix_appcompat_drop_down_menu_spot_shadow_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lmiuix/internal/widget/ListPopup;->mShadowColor:I

    .line 182
    sget-boolean v0, Lmiuix/core/util/MiShadowUtils;->SUPPORT_MI_SHADOW:Z

    if-eqz v0, :cond_3

    const/high16 p1, 0x42000000    # 32.0f

    mul-float/2addr p2, p1

    float-to-int p1, p2

    .line 183
    iput p1, p0, Lmiuix/internal/widget/ListPopup;->mElevation:I

    goto :goto_2

    .line 185
    :cond_3
    iget-object p2, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    sget v0, Lmiuix/appcompat/R$attr;->popupWindowElevation:I

    invoke-static {p2, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lmiuix/internal/widget/ListPopup;->mElevation:I

    .line 186
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_menu_popup_extra_elevation:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiuix/internal/widget/ListPopup;->mElevationExtra:I

    :goto_2
    return-void
.end method

.method static synthetic access$000(Lmiuix/internal/widget/ListPopup;)Lmiuix/internal/widget/ListPopup$ContentSize;
    .locals 0

    .line 55
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/internal/widget/ListPopup;)Landroid/view/View;
    .locals 0

    .line 55
    invoke-direct {p0}, Lmiuix/internal/widget/ListPopup;->getAnchor()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/internal/widget/ListPopup;Landroid/view/View;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lmiuix/internal/widget/ListPopup;->updatePosition(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lmiuix/internal/widget/ListPopup;Landroid/content/res/Configuration;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lmiuix/internal/widget/ListPopup;->configurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static synthetic access$500(Lmiuix/internal/widget/ListPopup;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 55
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mAnchor:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$600(Lmiuix/internal/widget/ListPopup;)Landroid/widget/ListView;
    .locals 0

    .line 55
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$700(Lmiuix/internal/widget/ListPopup;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lmiuix/internal/widget/ListPopup;->getDecorView(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lmiuix/internal/widget/ListPopup;)Landroid/content/Context;
    .locals 0

    .line 55
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private calculateXoffset(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1

    .line 796
    iget v0, p0, Lmiuix/internal/widget/ListPopup;->mDropDownGravity:I

    invoke-static {v0, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 802
    invoke-direct {p0, p2, p3}, Lmiuix/internal/widget/ListPopup;->calculateXoffsetAlignLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p0

    return p0

    .line 800
    :cond_0
    invoke-direct {p0, p2, p3}, Lmiuix/internal/widget/ListPopup;->calculateXoffsetAlignRight(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p0

    return p0

    .line 798
    :cond_1
    invoke-direct {p0, p2, p3}, Lmiuix/internal/widget/ListPopup;->calculateXoffsetAlignCenterHorizontal(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p0

    return p0
.end method

.method private calculateXoffsetAlignCenterHorizontal(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 8

    .line 854
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 858
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 859
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iget v1, v1, Lmiuix/internal/widget/ListPopup$ContentSize;->mWidth:I

    add-int v2, p1, v1

    .line 860
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    .line 861
    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mPositionSafeInsets:Landroid/graphics/Rect;

    iget v4, p0, Landroid/graphics/Rect;->right:I

    sub-int v5, v3, v4

    const/4 v6, 0x0

    if-le v2, v5, :cond_0

    sub-int/2addr v3, v4

    sub-int v6, v3, v2

    const/4 v2, 0x1

    move v7, v6

    move v6, v2

    move v2, v7

    goto :goto_0

    :cond_0
    move v2, v6

    :goto_0
    if-nez v6, :cond_1

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    .line 867
    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget p0, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, p0

    if-lt p1, p2, :cond_1

    move v2, v0

    :cond_1
    return v2
.end method

.method private calculateXoffsetAlignLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 7

    .line 809
    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget-boolean v0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetXSet:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    add-int/2addr v2, p1

    .line 810
    iget-object v3, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iget v3, v3, Lmiuix/internal/widget/ListPopup$ContentSize;->mWidth:I

    add-int/2addr v2, v3

    .line 811
    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lmiuix/internal/widget/ListPopup;->mPositionSafeInsets:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->right:I

    sub-int v6, v3, v5

    if-le v2, v6, :cond_1

    sub-int/2addr v3, v5

    sub-int/2addr v3, v2

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v1

    move v3, v2

    :goto_1
    if-nez v2, :cond_4

    if-eqz v0, :cond_2

    .line 816
    iget v1, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    :cond_2
    add-int/2addr p1, v1

    .line 818
    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget v0, v4, Landroid/graphics/Rect;->left:I

    add-int v2, p2, v0

    if-ge p1, v2, :cond_3

    add-int/2addr p2, v0

    sub-int/2addr p2, p1

    move v3, p2

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    if-eqz v3, :cond_4

    .line 823
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mBackgroundPadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, p0

    :cond_4
    return v3
.end method

.method private calculateXoffsetAlignRight(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 7

    .line 832
    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget-boolean v0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetXSet:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    add-int/2addr v2, p1

    .line 833
    iget-object v3, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iget v3, v3, Lmiuix/internal/widget/ListPopup$ContentSize;->mWidth:I

    sub-int/2addr v2, v3

    .line 834
    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lmiuix/internal/widget/ListPopup;->mPositionSafeInsets:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int v6, v3, v5

    if-ge v2, v6, :cond_1

    add-int/2addr v3, v5

    sub-int/2addr v3, v2

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v1

    move v3, v2

    :goto_1
    if-nez v2, :cond_4

    if-eqz v0, :cond_2

    .line 839
    iget v1, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    :cond_2
    add-int/2addr p1, v1

    .line 841
    iget p2, p2, Landroid/graphics/Rect;->right:I

    iget v0, v4, Landroid/graphics/Rect;->right:I

    sub-int v2, p2, v0

    if-le p1, v2, :cond_3

    sub-int/2addr p2, v0

    sub-int/2addr p2, p1

    move v3, p2

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    if-eqz v3, :cond_4

    .line 846
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mBackgroundPadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, p0

    :cond_4
    return v3
.end method

.method private calculateYoffset(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 5

    .line 764
    iget-boolean v0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetYSet:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetY:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    .line 765
    :goto_0
    invoke-virtual {p0, p2}, Lmiuix/internal/widget/ListPopup;->checkMaxHeight(Landroid/graphics/Rect;)I

    move-result v1

    if-lez v1, :cond_1

    .line 767
    iget-object v2, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iget v2, v2, Lmiuix/internal/widget/ListPopup$ContentSize;->mHeight:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iget v1, v1, Lmiuix/internal/widget/ListPopup$ContentSize;->mHeight:I

    .line 768
    :goto_1
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lmiuix/internal/widget/ListPopup;->mPositionSafeInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v4

    .line 769
    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v3

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v3

    add-int v3, v1, v0

    if-le v3, v2, :cond_5

    const/4 v3, 0x0

    if-lt v2, v4, :cond_2

    .line 772
    iget-boolean v2, p0, Lmiuix/internal/widget/ListPopup;->mOffsetYSet:Z

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    goto :goto_2

    .line 774
    :cond_2
    iget-boolean v2, p0, Lmiuix/internal/widget/ListPopup;->mOffsetYSet:Z

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    :cond_3
    add-int/2addr v3, v1

    :cond_4
    :goto_2
    sub-int/2addr v0, v3

    .line 777
    :cond_5
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v0

    .line 779
    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lmiuix/internal/widget/ListPopup;->mPositionSafeInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int v4, v2, v3

    if-ge p1, v4, :cond_6

    add-int/2addr v2, v3

    sub-int/2addr v2, p1

    sub-int v3, v1, v2

    .line 781
    invoke-virtual {p0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    add-int/2addr v0, v2

    :cond_6
    add-int/2addr p1, v1

    .line 787
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lmiuix/internal/widget/ListPopup;->mPositionSafeInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v3, p2, v2

    if-le p1, v3, :cond_7

    sub-int/2addr p2, v2

    sub-int/2addr p1, p2

    sub-int/2addr v1, p1

    .line 789
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    :cond_7
    return v0
.end method

.method public static changeWindowBackground(Landroid/view/View;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 973
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1

    return-void

    .line 977
    :cond_1
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 978
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmiuix/internal/util/ViewUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lmiuix/theme/token/DimToken;->DIM_DARK:F

    goto :goto_0

    :cond_2
    sget v1, Lmiuix/theme/token/DimToken;->DIM_LIGHT:F

    :goto_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 980
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 981
    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private configurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 227
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    new-instance v0, Lmiuix/internal/widget/ListPopup$2;

    invoke-direct {v0, p0}, Lmiuix/internal/widget/ListPopup$2;-><init>(Lmiuix/internal/widget/ListPopup;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getAnchor()Landroid/view/View;
    .locals 0

    .line 740
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getDecorView(Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 616
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mFenceDecor:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_0

    return-object p0

    .line 620
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private getWindowDecorVisibleBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1

    .line 601
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 602
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    .line 604
    :cond_0
    invoke-virtual {p1, p0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 171
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 0

    .line 175
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz p0, :cond_0

    .line 176
    invoke-interface {p0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$prepareShow$2(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    .line 481
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v4, p3, v0

    .line 482
    iget-object p3, p0, Lmiuix/internal/widget/ListPopup;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz p3, :cond_0

    if-ltz v4, :cond_0

    iget-object p3, p0, Lmiuix/internal/widget/ListPopup;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p3}, Landroid/widget/ListAdapter;->getCount()I

    move-result p3

    if-ge v4, p3, :cond_0

    .line 483
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v2, p1

    move-object v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method

.method private measureContentSize(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)V
    .locals 10

    const/4 v0, 0x0

    .line 909
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 911
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 912
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x0

    move v5, v0

    move v6, v5

    move v7, v6

    move-object v8, v4

    :goto_0
    if-ge v0, v3, :cond_5

    .line 914
    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v9

    if-eq v9, v5, :cond_0

    move-object v8, v4

    move v5, v9

    :cond_0
    if-nez p2, :cond_1

    .line 920
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 922
    :cond_1
    invoke-interface {p1, v0, v8, p2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 923
    invoke-virtual {v8, v1, v2}, Landroid/view/View;->measure(II)V

    .line 924
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v7, v9

    .line 925
    iget-object v9, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iget-boolean v9, v9, Lmiuix/internal/widget/ListPopup$ContentSize;->mHasContentWidth:Z

    if-eqz v9, :cond_2

    goto :goto_1

    .line 928
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    if-lt v9, p4, :cond_3

    .line 930
    iget-object v9, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    invoke-virtual {v9, p4}, Lmiuix/internal/widget/ListPopup$ContentSize;->updateWidth(I)V

    goto :goto_1

    :cond_3
    if-le v9, v6, :cond_4

    move v6, v9

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 935
    :cond_5
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iget-boolean p2, p1, Lmiuix/internal/widget/ListPopup$ContentSize;->mHasContentWidth:Z

    if-nez p2, :cond_6

    .line 936
    invoke-virtual {p1, v6}, Lmiuix/internal/widget/ListPopup$ContentSize;->updateWidth(I)V

    .line 938
    :cond_6
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iput v7, p0, Lmiuix/internal/widget/ListPopup$ContentSize;->mHeight:I

    return-void
.end method

.method private setAnimationStyleByGravity(I)V
    .locals 2

    .line 744
    sget v0, Lmiuix/appcompat/R$style;->Animation_PopupWindow_ImmersionMenu:I

    const/16 v1, 0x33

    if-ne p1, v1, :cond_0

    .line 746
    sget v0, Lmiuix/appcompat/R$style;->Animation_PopupWindow_ImmersionMenu_LeftTop:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x53

    if-ne p1, v1, :cond_1

    .line 748
    sget v0, Lmiuix/appcompat/R$style;->Animation_PopupWindow_ImmersionMenu_LeftBottom:I

    goto :goto_0

    :cond_1
    const/16 v1, 0x35

    if-ne p1, v1, :cond_2

    .line 750
    sget v0, Lmiuix/appcompat/R$style;->Animation_PopupWindow_ImmersionMenu_RightTop:I

    goto :goto_0

    :cond_2
    const/16 v1, 0x55

    if-ne p1, v1, :cond_3

    .line 752
    sget v0, Lmiuix/appcompat/R$style;->Animation_PopupWindow_ImmersionMenu_RightBottom:I

    goto :goto_0

    :cond_3
    const/16 v1, 0x30

    if-ne p1, v1, :cond_4

    .line 754
    sget v0, Lmiuix/appcompat/R$style;->Animation_PopupWindow_ImmersionMenu_Top:I

    goto :goto_0

    :cond_4
    const/16 v1, 0x50

    if-ne p1, v1, :cond_5

    .line 756
    sget v0, Lmiuix/appcompat/R$style;->Animation_PopupWindow_ImmersionMenu_Bottom:I

    goto :goto_0

    :cond_5
    const/16 v1, 0x11

    if-ne p1, v1, :cond_6

    .line 758
    sget v0, Lmiuix/appcompat/R$style;->Animation_PopupWindow_ImmersionMenu_Center:I

    .line 760
    :cond_6
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void
.end method

.method private shouldSetElevation()Z
    .locals 0

    .line 528
    iget-boolean p0, p0, Lmiuix/internal/widget/ListPopup;->mHasShadow:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updatePosition(Landroid/view/View;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 507
    :cond_0
    invoke-direct {p0, p1}, Lmiuix/internal/widget/ListPopup;->getDecorView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 508
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 509
    invoke-static {v0, v1}, Lmiuix/internal/util/ViewUtils;->getBoundsInWindow(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 510
    invoke-direct {p0, p1}, Lmiuix/internal/widget/ListPopup;->getWindowDecorVisibleBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 511
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->getWindowDecorActualBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 512
    invoke-direct {p0, v0, v1, v3, v2}, Lmiuix/internal/widget/ListPopup;->updateSafeInsetsByDecor(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 513
    invoke-virtual {p0, v1}, Lmiuix/internal/widget/ListPopup;->checkMaxHeight(Landroid/graphics/Rect;)I

    move-result v0

    .line 514
    invoke-virtual {p0, v1}, Lmiuix/internal/widget/ListPopup;->computePopupContentWidth(Landroid/graphics/Rect;)I

    move-result v6

    .line 515
    iget-object v2, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iget v2, v2, Lmiuix/internal/widget/ListPopup$ContentSize;->mHeight:I

    if-lez v0, :cond_1

    if-le v2, v0, :cond_1

    move v7, v0

    goto :goto_0

    :cond_1
    move v7, v2

    .line 519
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 520
    invoke-static {p1, v0}, Lmiuix/internal/util/ViewUtils;->getBoundsInWindow(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 521
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    invoke-direct {p0, v2, v0, v1}, Lmiuix/internal/widget/ListPopup;->calculateXoffset(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v4

    .line 522
    invoke-direct {p0, v0, v1}, Lmiuix/internal/widget/ListPopup;->calculateYoffset(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v5

    move-object v2, p0

    move-object v3, p1

    .line 523
    invoke-virtual/range {v2 .. v7}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    return-void
.end method

.method private updateSafeInsetsByDecor(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    .line 281
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 285
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    .line 286
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mPositionSafeInsets:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Insets;->left:I

    iget v2, p1, Landroid/graphics/Insets;->top:I

    iget v3, p1, Landroid/graphics/Insets;->right:I

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 318
    :cond_0
    iget p1, p4, Landroid/graphics/Rect;->left:I

    iget v0, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v0

    .line 319
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    .line 320
    iget v1, p4, Landroid/graphics/Rect;->top:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 321
    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p3, v2

    .line 323
    iget-object v2, p0, Lmiuix/internal/widget/ListPopup;->mPositionSafeInsets:Landroid/graphics/Rect;

    iget v3, p0, Lmiuix/internal/widget/ListPopup;->mMinSafeInset:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v2, Landroid/graphics/Rect;->left:I

    .line 324
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mPositionSafeInsets:Landroid/graphics/Rect;

    iget v2, p0, Lmiuix/internal/widget/ListPopup;->mMinSafeInset:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v5, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 325
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mPositionSafeInsets:Landroid/graphics/Rect;

    iget v0, p0, Lmiuix/internal/widget/ListPopup;->mMinSafeInset:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 326
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mPositionSafeInsets:Landroid/graphics/Rect;

    iget p0, p0, Lmiuix/internal/widget/ListPopup;->mMinSafeInset:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p4, p2

    invoke-static {v5, p4}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int/2addr v0, p2

    sub-int/2addr v0, p3

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method


# virtual methods
.method protected checkMaxHeight(Landroid/graphics/Rect;)I
    .locals 2

    .line 989
    iget v0, p0, Lmiuix/internal/widget/ListPopup;->mMaxAllowedHeight:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mPositionSafeInsets:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v1

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method protected checkMaxWidth(Landroid/graphics/Rect;)I
    .locals 2

    .line 993
    iget v0, p0, Lmiuix/internal/widget/ListPopup;->mMaxAllowedWidth:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mPositionSafeInsets:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v1

    iget p0, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method protected checkMinWidth(Landroid/graphics/Rect;)I
    .locals 2

    .line 997
    iget v0, p0, Lmiuix/internal/widget/ListPopup;->mMinAllowedWidth:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mPositionSafeInsets:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v1

    iget p0, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method protected computePopupContentWidth(Landroid/graphics/Rect;)I
    .locals 4

    .line 591
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iget-boolean v0, v0, Lmiuix/internal/widget/ListPopup$ContentSize;->mHasContentWidth:Z

    if-nez v0, :cond_0

    .line 592
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    iget-object v2, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lmiuix/internal/widget/ListPopup;->checkMaxWidth(Landroid/graphics/Rect;)I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lmiuix/internal/widget/ListPopup;->measureContentSize(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)V

    .line 594
    :cond_0
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iget v0, v0, Lmiuix/internal/widget/ListPopup$ContentSize;->mWidth:I

    invoke-virtual {p0, p1}, Lmiuix/internal/widget/ListPopup;->checkMinWidth(Landroid/graphics/Rect;)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, v0

    .line 595
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    invoke-virtual {p0, p1}, Lmiuix/internal/widget/ListPopup$ContentSize;->updateWidth(I)V

    return p1
.end method

.method public dismiss()V
    .locals 1

    .line 735
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 736
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lmiuix/popupwidget/internal/util/SinglePopControl;->hidePop(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method protected getWindowDecorActualBounds()Landroid/graphics/Rect;
    .locals 2

    .line 609
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 610
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiuix/core/util/WindowUtils;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v1

    .line 611
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    invoke-static {v1, p0, v0}, Lmiuix/core/util/WindowUtils;->getWindowBounds(Landroid/view/WindowManager;Landroid/content/Context;Landroid/graphics/Rect;)V

    return-object v0
.end method

.method protected isNeedScroll(ILandroid/graphics/Rect;)Z
    .locals 0

    .line 344
    invoke-virtual {p0, p2}, Lmiuix/internal/widget/ListPopup;->checkMaxHeight(Landroid/graphics/Rect;)I

    move-result p2

    .line 345
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iget p0, p0, Lmiuix/internal/widget/ListPopup$ContentSize;->mHeight:I

    if-gt p0, p1, :cond_1

    if-le p0, p2, :cond_0

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

.method protected prepareContentView(Landroid/content/Context;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method protected prepareShow(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Rect;)Z
    .locals 5

    const-string p2, "ListPopupWindow"

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "show: anchor is null"

    .line 369
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const-string v1, "ListPopup"

    const-string v2, "prepareShow"

    .line 372
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-direct {p0}, Lmiuix/internal/widget/ListPopup;->shouldSetElevation()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 376
    iget v1, p0, Lmiuix/internal/widget/ListPopup;->mElevation:I

    iget v2, p0, Lmiuix/internal/widget/ListPopup;->mElevationExtra:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 377
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 380
    :cond_1
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    if-nez v1, :cond_3

    .line 381
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$layout;->miuix_appcompat_list_popup_list:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    .line 382
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    sget v2, Lmiuix/appcompat/R$attr;->immersionWindowBackground:I

    invoke-static {v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 384
    iget-object v2, p0, Lmiuix/internal/widget/ListPopup;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 385
    iget-object v2, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 387
    :cond_2
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    new-instance v2, Lmiuix/internal/widget/ListPopup$3;

    invoke-direct {v2, p0}, Lmiuix/internal/widget/ListPopup$3;-><init>(Lmiuix/internal/widget/ListPopup;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 414
    iput-boolean v0, p0, Lmiuix/internal/widget/ListPopup;->mIsCustomContent:Z

    .line 417
    :cond_3
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    const/4 v2, -0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    if-eq v1, v4, :cond_5

    .line 418
    :cond_4
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 419
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 420
    iget-boolean v1, p0, Lmiuix/internal/widget/ListPopup;->mIsCustomContent:Z

    if-eqz v1, :cond_5

    .line 421
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    .line 422
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 423
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v4, 0x10

    .line 424
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 428
    :cond_5
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    const v4, 0x102000a

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lmiuix/internal/widget/ListPopup;->mListView:Landroid/widget/ListView;

    if-nez v1, :cond_6

    const-string p0, "list not found"

    .line 430
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 433
    :cond_6
    new-instance p2, Lmiuix/internal/widget/ListPopup$4;

    invoke-direct {p2, p0}, Lmiuix/internal/widget/ListPopup$4;-><init>(Lmiuix/internal/widget/ListPopup;)V

    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 480
    iget-object p2, p0, Lmiuix/internal/widget/ListPopup;->mListView:Landroid/widget/ListView;

    new-instance v1, Lmiuix/internal/widget/ListPopup$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lmiuix/internal/widget/ListPopup$$ExternalSyntheticLambda1;-><init>(Lmiuix/internal/widget/ListPopup;)V

    invoke-virtual {p2, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 486
    iget-object p2, p0, Lmiuix/internal/widget/ListPopup;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 487
    invoke-virtual {p0, p3}, Lmiuix/internal/widget/ListPopup;->computePopupContentWidth(Landroid/graphics/Rect;)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 489
    invoke-virtual {p0, p3}, Lmiuix/internal/widget/ListPopup;->checkMaxHeight(Landroid/graphics/Rect;)I

    move-result p2

    if-lez p2, :cond_7

    .line 491
    iget-object p3, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iget p3, p3, Lmiuix/internal/widget/ListPopup$ContentSize;->mHeight:I

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 493
    :cond_7
    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 497
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    .line 498
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p2, "input_method"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 499
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return v3
.end method

.method protected prepareWindowElevation(Landroid/view/View;I)V
    .locals 3

    .line 350
    invoke-direct {p0}, Lmiuix/internal/widget/ListPopup;->shouldSetElevation()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 353
    :cond_0
    sget-boolean v0, Lmiuix/core/util/MiShadowUtils;->SUPPORT_MI_SHADOW:Z

    if-eqz v0, :cond_1

    .line 354
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    .line 355
    iget v0, p0, Lmiuix/internal/widget/ListPopup;->mShadowColor:I

    const/4 v1, 0x0

    mul-float/2addr v1, p2

    const/high16 v2, 0x41d00000    # 26.0f

    mul-float/2addr p2, v2

    iget p0, p0, Lmiuix/internal/widget/ListPopup;->mElevation:I

    int-to-float p0, p0

    invoke-static {p1, v0, v1, p2, p0}, Lmiuix/core/util/MiShadowUtils;->setMiShadow(Landroid/view/View;IFFF)V

    goto :goto_0

    :cond_1
    int-to-float p2, p2

    .line 361
    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    .line 362
    invoke-virtual {p0, p1}, Lmiuix/internal/widget/ListPopup;->setPopupShadowAlpha(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 244
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 245
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 247
    :cond_0
    iput-object p1, p0, Lmiuix/internal/widget/ListPopup;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_1

    .line 249
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, p0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    return-void
.end method

.method public setContentHeight(I)V
    .locals 0

    .line 540
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iput p1, p0, Lmiuix/internal/widget/ListPopup$ContentSize;->mHeight:I

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lmiuix/internal/widget/ListPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lmiuix/internal/widget/ListPopup;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method protected setPopupShadowAlpha(Landroid/view/View;)V
    .locals 1

    .line 943
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/core/util/EnvStateManager;->isFreeFormMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 944
    invoke-virtual {p1, p0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto :goto_0

    .line 946
    :cond_0
    new-instance v0, Lmiuix/internal/widget/ListPopup$5;

    invoke-direct {v0, p0}, Lmiuix/internal/widget/ListPopup$5;-><init>(Lmiuix/internal/widget/ListPopup;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 963
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    sget v0, Lmiuix/appcompat/R$color;->miuix_appcompat_drop_down_menu_spot_shadow_color:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setOutlineSpotShadowColor(I)V

    :goto_0
    return-void
.end method

.method protected setPopupWindowContentView(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 196
    iput-boolean v0, p0, Lmiuix/internal/widget/ListPopup;->mIsCustomContent:Z

    .line 197
    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 0

    .line 688
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 689
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lmiuix/internal/widget/ListPopup;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 690
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lmiuix/popupwidget/internal/util/SinglePopControl;->showPop(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 7

    .line 696
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 697
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 698
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iget v1, v1, Lmiuix/internal/widget/ListPopup$ContentSize;->mWidth:I

    .line 699
    :goto_0
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iget v2, v2, Lmiuix/internal/widget/ListPopup$ContentSize;->mHeight:I

    .line 700
    :goto_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    add-int/2addr v1, p3

    add-int/2addr v2, p4

    .line 701
    invoke-virtual {v3, p3, p4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showAtLocation getWidth "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " getHeight "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ListPopup"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iget v1, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    if-le v1, v2, :cond_2

    const/16 v1, 0x30

    goto :goto_2

    .line 707
    :cond_2
    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    if-gt v1, v2, :cond_3

    const/16 v1, 0x50

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 711
    :goto_2
    iget v2, v3, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-lt v2, v4, :cond_4

    iget v5, v3, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    if-le v5, v6, :cond_4

    or-int/lit8 v1, v1, 0x3

    goto :goto_3

    .line 714
    :cond_4
    iget v5, v3, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    if-gt v5, v6, :cond_5

    if-ge v2, v4, :cond_5

    or-int/lit8 v1, v1, 0x5

    :cond_5
    :goto_3
    if-nez v1, :cond_6

    .line 718
    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v1, 0x11

    .line 722
    :cond_6
    iget v0, p0, Lmiuix/internal/widget/ListPopup;->mUserAnimationGravity:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    .line 723
    invoke-direct {p0, v0}, Lmiuix/internal/widget/ListPopup;->setAnimationStyleByGravity(I)V

    goto :goto_4

    .line 725
    :cond_7
    invoke-direct {p0, v1}, Lmiuix/internal/widget/ListPopup;->setAnimationStyleByGravity(I)V

    .line 727
    :goto_4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 728
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    iget p2, p0, Lmiuix/internal/widget/ListPopup;->mElevation:I

    iget p3, p0, Lmiuix/internal/widget/ListPopup;->mElevationExtra:I

    add-int/2addr p2, p3

    invoke-virtual {p0, p1, p2}, Lmiuix/internal/widget/ListPopup;->prepareWindowElevation(Landroid/view/View;I)V

    .line 729
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 730
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lmiuix/popupwidget/internal/util/SinglePopControl;->showPop(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method public update(IIIIZ)V
    .locals 4

    .line 331
    invoke-direct {p0}, Lmiuix/internal/widget/ListPopup;->getAnchor()Landroid/view/View;

    move-result-object v0

    .line 332
    instance-of v1, v0, Lmiuix/animation/ViewHoverListener;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lmiuix/animation/ViewHoverListener;

    invoke-interface {v1}, Lmiuix/animation/ViewHoverListener;->isHover()Z

    move-result v1

    if-eqz v1, :cond_0

    new-array p0, v3, [Ljava/lang/Object;

    aput-object v0, p0, v2

    const-string p1, "popupWindow update return"

    .line 333
    invoke-static {p1, p0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "popupWindow update execute"

    .line 336
    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    invoke-super/range {p0 .. p5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    return-void
.end method
