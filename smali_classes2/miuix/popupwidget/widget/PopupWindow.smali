.class public Lmiuix/popupwidget/widget/PopupWindow;
.super Landroid/widget/PopupWindow;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/popupwidget/widget/PopupWindow$ContentSize;,
        Lmiuix/popupwidget/widget/PopupWindow$ContainerView;
    }
.end annotation


# instance fields
.field protected mAdapter:Landroid/widget/ListAdapter;

.field mAnchorGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mAnchorView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationStyle:I

.field private mAutoDismiss:Z

.field private mContentSize:Lmiuix/popupwidget/widget/PopupWindow$ContentSize;

.field protected mContentView:Landroid/view/View;

.field protected final mContext:Landroid/content/Context;

.field private mDensityDpi:I

.field private mDetachAnchorLayoutFlag:Z

.field private mDifferDensityCompat:Z

.field private mDimAmount:F

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

.field private mHideSoftInputEnabled:Z

.field protected mIgnoreAnchorVisibility:Z

.field private mListView:Landroid/widget/ListView;

.field private mMaxAllowedHeight:I

.field private mMaxAllowedWidth:I

.field private mMinAllowedWidth:I

.field private mMinSafeInsetDimen:I

.field private final mObserver:Landroid/database/DataSetObserver;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field public mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

.field protected mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

.field protected mRootView:Landroid/widget/FrameLayout;

.field private mShadowColor:I

.field private mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

.field private mUserAnimationGravity:I

.field private mWindowManagerFlags:I


# direct methods
.method public static synthetic $r8$lambda$6xpLRrOuoE5PS3b7YfsnFGA-KfQ(Lmiuix/popupwidget/widget/PopupWindow;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lmiuix/popupwidget/widget/PopupWindow;->lambda$prepareShow$2(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$SaP1ESzkZ2NUjz4TiTYD2Tjg2Uw(Lmiuix/popupwidget/widget/PopupWindow;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$amdKnST_7BkF_CZS-ltSdPnaxDc(Lmiuix/popupwidget/widget/PopupWindow;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/popupwidget/widget/PopupWindow;->lambda$new$1()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0, p1, p2, v0}, Lmiuix/popupwidget/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/view/View;Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;)V
    .locals 5

    .line 130
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 83
    iput v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mUserAnimationGravity:I

    .line 84
    iput v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAnimationStyle:I

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mHasShadow:Z

    const/4 v1, 0x0

    .line 87
    iput v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mShadowColor:I

    .line 89
    iput-boolean v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mHideSoftInputEnabled:Z

    .line 91
    iput-boolean v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mDifferDensityCompat:Z

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 92
    iput v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mDimAmount:F

    const/4 v3, 0x2

    .line 93
    iput v3, p0, Lmiuix/popupwidget/widget/PopupWindow;->mWindowManagerFlags:I

    .line 94
    iput-boolean v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAutoDismiss:Z

    .line 95
    iput-boolean v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mIgnoreAnchorVisibility:Z

    .line 97
    new-instance v3, Lmiuix/popupwidget/widget/PopupWindow$1;

    invoke-direct {v3, p0}, Lmiuix/popupwidget/widget/PopupWindow$1;-><init>(Lmiuix/popupwidget/widget/PopupWindow;)V

    iput-object v3, p0, Lmiuix/popupwidget/widget/PopupWindow;->mObserver:Landroid/database/DataSetObserver;

    .line 190
    iput-boolean v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mDetachAnchorLayoutFlag:Z

    .line 192
    new-instance v3, Lmiuix/popupwidget/widget/PopupWindow$2;

    invoke-direct {v3, p0}, Lmiuix/popupwidget/widget/PopupWindow$2;-><init>(Lmiuix/popupwidget/widget/PopupWindow;)V

    iput-object v3, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAnchorGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 131
    iput-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    iput v3, p0, Lmiuix/popupwidget/widget/PopupWindow;->mDensityDpi:I

    const/4 v3, 0x0

    .line 133
    invoke-virtual {p0, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    invoke-direct {p0, p2}, Lmiuix/popupwidget/widget/PopupWindow;->updateDisplayConfig(Landroid/view/View;)V

    .line 135
    new-instance v4, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    invoke-direct {v4}, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;-><init>()V

    iput-object v4, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    .line 136
    iput-object p3, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    if-nez p3, :cond_0

    .line 138
    new-instance p3, Lmiuix/popupwidget/internal/strategy/PopupWindowStrategy;

    invoke-direct {p3}, Lmiuix/popupwidget/internal/strategy/PopupWindowStrategy;-><init>()V

    iput-object p3, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    :cond_0
    if-eqz p2, :cond_1

    .line 141
    invoke-virtual {p0, p2}, Lmiuix/popupwidget/widget/PopupWindow;->setDecorView(Landroid/view/View;)V

    .line 143
    :cond_1
    new-instance p2, Lmiuix/popupwidget/widget/PopupWindow$ContentSize;

    invoke-direct {p2, v3}, Lmiuix/popupwidget/widget/PopupWindow$ContentSize;-><init>(Lmiuix/popupwidget/widget/PopupWindow$1;)V

    iput-object p2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentSize:Lmiuix/popupwidget/widget/PopupWindow$ContentSize;

    .line 145
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 146
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 148
    new-instance p2, Lmiuix/popupwidget/widget/PopupWindow$ContainerView;

    invoke-direct {p2, p0, p1}, Lmiuix/popupwidget/widget/PopupWindow$ContainerView;-><init>(Lmiuix/popupwidget/widget/PopupWindow;Landroid/content/Context;)V

    iput-object p2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mRootView:Landroid/widget/FrameLayout;

    .line 149
    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 150
    iget-object p2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 151
    iget-object p2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mRootView:Landroid/widget/FrameLayout;

    new-instance p3, Lmiuix/popupwidget/widget/PopupWindow$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lmiuix/popupwidget/widget/PopupWindow$$ExternalSyntheticLambda0;-><init>(Lmiuix/popupwidget/widget/PopupWindow;)V

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/PopupWindow;->prepareContentView()V

    .line 153
    new-instance p2, Lmiuix/popupwidget/widget/PopupWindow$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lmiuix/popupwidget/widget/PopupWindow$$ExternalSyntheticLambda2;-><init>(Lmiuix/popupwidget/widget/PopupWindow;)V

    invoke-super {p0, p2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lmiuix/popupwidget/R$color;->miuix_appcompat_drop_down_menu_spot_shadow_color:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lmiuix/popupwidget/widget/PopupWindow;->mShadowColor:I

    .line 161
    sget-boolean p3, Lmiuix/core/util/MiShadowUtils;->SUPPORT_MI_SHADOW:Z

    if-eqz p3, :cond_2

    const/high16 p3, 0x42000000    # 32.0f

    mul-float/2addr p2, p3

    float-to-int p2, p2

    .line 162
    iput p2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mElevation:I

    goto :goto_0

    .line 164
    :cond_2
    sget p2, Lmiuix/popupwidget/R$attr;->popupWindowElevation:I

    invoke-static {p1, p2}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mElevation:I

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_menu_popup_extra_elevation:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mElevationExtra:I

    .line 168
    :goto_0
    sget p2, Lmiuix/popupwidget/R$attr;->popupWindowDimAmount:I

    invoke-static {p1, p2, v2}, Lmiuix/internal/util/AttributeResolver;->resolveFloat(Landroid/content/Context;IF)F

    move-result p1

    iput p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mDimAmount:F

    return-void
.end method

.method static synthetic access$000(Lmiuix/popupwidget/widget/PopupWindow;)Lmiuix/popupwidget/widget/PopupWindow$ContentSize;
    .locals 0

    .line 56
    iget-object p0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentSize:Lmiuix/popupwidget/widget/PopupWindow$ContentSize;

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/popupwidget/widget/PopupWindow;)Landroid/widget/ListView;
    .locals 0

    .line 56
    iget-object p0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$300(Lmiuix/popupwidget/widget/PopupWindow;)Lmiuix/springback/view/SpringBackLayout;
    .locals 0

    .line 56
    iget-object p0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    return-object p0
.end method

.method static synthetic access$400(Lmiuix/popupwidget/widget/PopupWindow;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lmiuix/popupwidget/widget/PopupWindow;->detachAnchorView()V

    return-void
.end method

.method static synthetic access$500(Lmiuix/popupwidget/widget/PopupWindow;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAutoDismiss:Z

    return p0
.end method

.method static synthetic access$600(Lmiuix/popupwidget/widget/PopupWindow;Landroid/content/res/Configuration;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->configurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private configurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 201
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/PopupWindow;->getAnchor()Landroid/view/View;

    move-result-object v0

    .line 202
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mDifferDensityCompat:Z

    if-eqz v1, :cond_0

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mDensityDpi:I

    if-eq p1, v1, :cond_0

    .line 203
    iput p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mDensityDpi:I

    const/4 p1, 0x0

    .line 204
    invoke-direct {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->updateDisplayConfig(Landroid/view/View;)V

    .line 205
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiuix/popupwidget/widget/PopupWindow;->getBaseActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 206
    invoke-static {v1}, Lmiuix/popupwidget/widget/PopupWindow;->isActivityRunning(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    invoke-direct {p0}, Lmiuix/popupwidget/widget/PopupWindow;->dismissWithNoNotify()V

    .line 208
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 209
    iput-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 210
    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/PopupWindow;->prepareShow(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 211
    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 217
    iget-boolean p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mDetachAnchorLayoutFlag:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 218
    iput-boolean p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mDetachAnchorLayoutFlag:Z

    .line 219
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAnchorGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 222
    :cond_1
    iget-object p0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentSize:Lmiuix/popupwidget/widget/PopupWindow$ContentSize;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiuix/popupwidget/widget/PopupWindow$ContentSize;->mHasContentWidth:Z

    return-void
.end method

.method private detachAnchorView()V
    .locals 2

    .line 292
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mDetachAnchorLayoutFlag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAnchorView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 293
    iput-boolean v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mDetachAnchorLayoutFlag:Z

    .line 294
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 295
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAnchorGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method private dismissWithNoNotify()V
    .locals 2

    .line 230
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    const/4 v1, 0x0

    .line 231
    iput-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 232
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/PopupWindow;->dismiss()V

    .line 233
    iput-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method private static getBaseActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    .line 928
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 929
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 930
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 932
    :cond_0
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static isActivityRunning(Landroid/app/Activity;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 938
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 151
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 0

    .line 154
    iget-object p0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz p0, :cond_0

    .line 155
    invoke-interface {p0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$prepareShow$2(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    .line 496
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v4, p3, v0

    .line 497
    iget-object p3, p0, Lmiuix/popupwidget/widget/PopupWindow;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz p3, :cond_0

    if-ltz v4, :cond_0

    iget-object p3, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p3}, Landroid/widget/ListAdapter;->getCount()I

    move-result p3

    if-ge v4, p3, :cond_0

    .line 498
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v2, p1

    move-object v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method

.method private shouldSetElevation()Z
    .locals 2

    .line 797
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    .line 798
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 799
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    .line 800
    :cond_0
    iget-boolean p0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mHasShadow:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateDisplayConfig(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    .line 861
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/PopupWindow;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 863
    :cond_0
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 864
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 866
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    :goto_0
    if-eqz p1, :cond_2

    .line 867
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    goto :goto_1

    :cond_2
    iget-object p1, v1, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 868
    :goto_1
    sget v1, Lmiuix/popupwidget/R$dimen;->miuix_popup_window_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mMaxAllowedWidth:I

    .line 869
    sget v1, Lmiuix/popupwidget/R$dimen;->miuix_popup_window_min_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mMinAllowedWidth:I

    .line 870
    sget v1, Lmiuix/popupwidget/R$dimen;->miuix_popup_window_max_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mMaxAllowedHeight:I

    .line 871
    sget p1, Lmiuix/popupwidget/R$dimen;->miuix_popup_window_safe_margin:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mMinSafeInsetDimen:I

    return-void
.end method

.method private static updateSafeInsetsByDecor(Landroid/content/Context;Landroid/view/View;I)Landroid/graphics/Rect;
    .locals 6

    .line 876
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    .line 877
    invoke-virtual {v0, p2, v1, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 878
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 879
    invoke-static {p1, v2}, Lmiuix/internal/util/ViewUtils;->getBoundsInWindow(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 886
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 889
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {p1, v3}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    .line 890
    iget v3, p1, Landroid/graphics/Insets;->left:I

    iget v4, p1, Landroid/graphics/Insets;->top:I

    iget v5, p1, Landroid/graphics/Insets;->right:I

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v0, v3, v4, v5, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 918
    :cond_0
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object p0

    .line 920
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v3

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 921
    iget p1, v0, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr p1, v3

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 922
    iget p1, v0, Landroid/graphics/Rect;->top:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v3

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 923
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object p0, p0, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v2

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sub-int/2addr p1, p0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method


# virtual methods
.method public changeWindowBackground(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 548
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1

    return-void

    .line 552
    :cond_1
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mWindowManagerFlags:I

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 553
    iget p0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mDimAmount:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v1, p0, v1

    if-nez v1, :cond_3

    .line 555
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isNightMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget p0, Lmiuix/theme/token/DimToken;->DIM_DARK:F

    goto :goto_0

    :cond_2
    sget p0, Lmiuix/theme/token/DimToken;->DIM_LIGHT:F

    .line 557
    :cond_3
    :goto_0
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 559
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 560
    invoke-interface {p0, p1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected checkMaxHeight(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1

    .line 784
    iget p0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mMaxAllowedHeight:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget v0, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v0

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method protected checkMaxWidth(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1

    .line 788
    iget p0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mMaxAllowedWidth:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget v0, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v0

    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method protected checkMinWidth(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1

    .line 792
    iget p0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mMinAllowedWidth:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget v0, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v0

    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method protected computePopupContentSize()V
    .locals 4

    const-string v0, "PopupWindow"

    const-string v1, "computePopupContentSize"

    .line 734
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 736
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    const/4 v2, 0x0

    iget-object v3, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v2, v3}, Lmiuix/popupwidget/widget/PopupWindow;->getItemViewBounds(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;)[[I

    move-result-object v0

    iput-object v0, v1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mItemViewBounds:[[I

    goto :goto_0

    .line 738
    :cond_0
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/PopupWindow;->getContentViewBounds(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)V

    .line 740
    :goto_0
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    iget-object p0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    invoke-interface {v0, p0}, Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;->measureContentSize(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)V

    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 305
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 306
    invoke-direct {p0}, Lmiuix/popupwidget/widget/PopupWindow;->detachAnchorView()V

    .line 307
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lmiuix/popupwidget/internal/util/SinglePopControl;->hidePop(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method public getAnchor()Landroid/view/View;
    .locals 0

    .line 300
    iget-object p0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAnchorView:Ljava/lang/ref/WeakReference;

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

.method protected getContentViewBounds(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)V
    .locals 2

    .line 770
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mContentViewBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 772
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 773
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 774
    iget-object p0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    .line 775
    iget-object p1, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mContentViewBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v1, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    return-void
.end method

.method protected getDecorView()Landroid/view/View;
    .locals 1

    .line 825
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mFenceDecor:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 828
    :cond_0
    iget-object p0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mFenceDecor:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    .line 826
    :cond_1
    :goto_0
    iget-object p0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAnchorView:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public getHorizontalOffset()I
    .locals 0

    .line 730
    iget-object p0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    iget p0, p0, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mUserOffsetX:I

    return p0
.end method

.method protected getItemViewBounds(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;)[[I
    .locals 11

    .line 746
    iget-object p0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    iget p0, p0, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMaxWidth:I

    const/high16 v0, -0x80000000

    .line 747
    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    const/4 v0, 0x0

    .line 749
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 750
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x1

    aput v3, v4, v5

    aput v2, v4, v0

    .line 751
    const-class v3, I

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    const/4 v4, 0x0

    move v6, v0

    move v7, v6

    move-object v8, v4

    :goto_0
    if-ge v6, v2, :cond_2

    .line 753
    invoke-interface {p1, v6}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v9

    if-eq v9, v7, :cond_0

    move-object v8, v4

    move v7, v9

    :cond_0
    if-nez p2, :cond_1

    .line 759
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 761
    :cond_1
    invoke-interface {p1, v6, v8, p2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 762
    invoke-virtual {v8, p0, v1}, Landroid/view/View;->measure(II)V

    .line 763
    aget-object v9, v3, v6

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    aput v10, v9, v0

    .line 764
    aget-object v9, v3, v6

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    aput v10, v9, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 0

    .line 712
    iget-object p0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method public getVerticalOffset()I
    .locals 0

    .line 726
    iget-object p0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    iget p0, p0, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mUserOffsetY:I

    return p0
.end method

.method public getWindowManagerFlags()I
    .locals 0

    .line 374
    iget p0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mWindowManagerFlags:I

    return p0
.end method

.method protected prepareContentView()V
    .locals 1

    .line 172
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mRootView:Landroid/widget/FrameLayout;

    invoke-super {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public prepareShow(Landroid/view/View;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "PopupWindow"

    const-string p1, "show: anchor is null"

    .line 397
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 400
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 401
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 404
    iget-boolean v3, p0, Lmiuix/popupwidget/widget/PopupWindow;->mIgnoreAnchorVisibility:Z

    if-nez v3, :cond_1

    if-eqz v1, :cond_1

    return v0

    .line 407
    :cond_1
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAnchorView:Ljava/lang/ref/WeakReference;

    .line 408
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    invoke-virtual {p0, v1}, Lmiuix/popupwidget/widget/PopupWindow;->updatePopupWindowSpec(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)V

    .line 409
    invoke-direct {p0}, Lmiuix/popupwidget/widget/PopupWindow;->shouldSetElevation()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 412
    iget v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mElevation:I

    iget v3, p0, Lmiuix/popupwidget/widget/PopupWindow;->mElevationExtra:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    .line 413
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 415
    :cond_2
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_4

    .line 416
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lmiuix/popupwidget/R$layout;->miuix_appcompat_drop_down_popup_list:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 417
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    sget v3, Lmiuix/popupwidget/R$attr;->immersionWindowBackground:I

    invoke-static {v1, v3}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 419
    iget-object v3, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 421
    :cond_3
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    sget v3, Lmiuix/popupwidget/R$id;->spring_back:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/springback/view/SpringBackLayout;

    iput-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 422
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    new-instance v3, Lmiuix/popupwidget/widget/PopupWindow$4;

    invoke-direct {v3, p0}, Lmiuix/popupwidget/widget/PopupWindow$4;-><init>(Lmiuix/popupwidget/widget/PopupWindow;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 436
    :cond_4
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eq v1, v3, :cond_6

    .line 437
    :cond_5
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 438
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mRootView:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 439
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    .line 440
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v3, -0x2

    .line 441
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v3, 0x10

    .line 442
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 445
    :cond_6
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    const v3, 0x102000a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_7

    .line 447
    new-instance v3, Lmiuix/popupwidget/widget/PopupWindow$5;

    invoke-direct {v3, p0}, Lmiuix/popupwidget/widget/PopupWindow$5;-><init>(Lmiuix/popupwidget/widget/PopupWindow;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 495
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mListView:Landroid/widget/ListView;

    new-instance v3, Lmiuix/popupwidget/widget/PopupWindow$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lmiuix/popupwidget/widget/PopupWindow$$ExternalSyntheticLambda1;-><init>(Lmiuix/popupwidget/widget/PopupWindow;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 501
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 504
    :cond_7
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/PopupWindow;->computePopupContentSize()V

    .line 505
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    iget v1, v1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupWidth:I

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 507
    iget-boolean v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mHideSoftInputEnabled:Z

    if-eqz v1, :cond_8

    .line 509
    iget-object p0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 510
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 511
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_8
    return v2
.end method

.method protected prepareWindowElevation(Landroid/view/View;I)V
    .locals 3

    .line 378
    invoke-direct {p0}, Lmiuix/popupwidget/widget/PopupWindow;->shouldSetElevation()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 381
    :cond_0
    sget-boolean v0, Lmiuix/core/util/MiShadowUtils;->SUPPORT_MI_SHADOW:Z

    if-eqz v0, :cond_1

    .line 382
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    .line 383
    iget v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mShadowColor:I

    const/4 v1, 0x0

    mul-float/2addr v1, p2

    const/high16 v2, 0x41d00000    # 26.0f

    mul-float/2addr p2, v2

    iget p0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mElevation:I

    int-to-float p0, p0

    invoke-static {p1, v0, v1, p2, p0}, Lmiuix/core/util/MiShadowUtils;->setMiShadow(Landroid/view/View;IFFF)V

    goto :goto_0

    :cond_1
    int-to-float p2, p2

    .line 389
    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    .line 390
    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->setPopupShadowAlpha(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 257
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 258
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 260
    :cond_0
    iput-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_1

    .line 262
    iget-object p0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, p0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 1

    .line 284
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/PopupWindow;->getAnchor()Landroid/view/View;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 285
    invoke-direct {p0}, Lmiuix/popupwidget/widget/PopupWindow;->detachAnchorView()V

    .line 287
    :cond_0
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    iget-object v0, v0, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mAnchorViewBounds:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Lmiuix/internal/util/ViewUtils;->getBoundsInWindow(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 288
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAnchorView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 0

    .line 312
    iput p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAnimationStyle:I

    .line 313
    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void
.end method

.method protected setAnimationStyleByGravity(I)V
    .locals 2

    .line 804
    sget v0, Lmiuix/popupwidget/R$style;->Animation_PopupWindow_ImmersionMenu:I

    const/16 v1, 0x33

    if-ne p1, v1, :cond_0

    .line 806
    sget v0, Lmiuix/popupwidget/R$style;->Animation_PopupWindow_ImmersionMenu_LeftTop:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x53

    if-ne p1, v1, :cond_1

    .line 808
    sget v0, Lmiuix/popupwidget/R$style;->Animation_PopupWindow_ImmersionMenu_LeftBottom:I

    goto :goto_0

    :cond_1
    const/16 v1, 0x35

    if-ne p1, v1, :cond_2

    .line 810
    sget v0, Lmiuix/popupwidget/R$style;->Animation_PopupWindow_ImmersionMenu_RightTop:I

    goto :goto_0

    :cond_2
    const/16 v1, 0x55

    if-ne p1, v1, :cond_3

    .line 812
    sget v0, Lmiuix/popupwidget/R$style;->Animation_PopupWindow_ImmersionMenu_RightBottom:I

    goto :goto_0

    :cond_3
    const/16 v1, 0x30

    if-ne p1, v1, :cond_4

    .line 814
    sget v0, Lmiuix/popupwidget/R$style;->Animation_PopupWindow_ImmersionMenu_Top:I

    goto :goto_0

    :cond_4
    const/16 v1, 0x50

    if-ne p1, v1, :cond_5

    .line 816
    sget v0, Lmiuix/popupwidget/R$style;->Animation_PopupWindow_ImmersionMenu_Bottom:I

    goto :goto_0

    :cond_5
    const/16 v1, 0x11

    if-ne p1, v1, :cond_6

    .line 818
    sget v0, Lmiuix/popupwidget/R$style;->Animation_PopupWindow_ImmersionMenu_Center:I

    .line 820
    :cond_6
    :goto_0
    invoke-super {p0, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void
.end method

.method public setAutoDismiss(Z)V
    .locals 0

    .line 267
    iput-boolean p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAutoDismiss:Z

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3

    .line 176
    instance-of v0, p1, Lmiuix/smooth/SmoothFrameLayout2;

    if-eqz v0, :cond_0

    .line 177
    iput-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    goto :goto_0

    .line 179
    :cond_0
    new-instance v0, Lmiuix/smooth/SmoothFrameLayout2;

    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/smooth/SmoothFrameLayout2;-><init>(Landroid/content/Context;)V

    .line 180
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_drop_down_menu_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 181
    invoke-virtual {v0, v1}, Lmiuix/smooth/SmoothFrameLayout2;->setCornerRadius(F)V

    .line 182
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 183
    iput-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 185
    :goto_0
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 186
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mRootView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 187
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mRootView:Landroid/widget/FrameLayout;

    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setDecorView(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 328
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mFenceDecor:Ljava/lang/ref/WeakReference;

    .line 329
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->updatePopupWindowSpec(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)V

    goto :goto_0

    .line 332
    :cond_1
    new-instance v0, Lmiuix/popupwidget/widget/PopupWindow$3;

    invoke-direct {v0, p0, p1}, Lmiuix/popupwidget/widget/PopupWindow$3;-><init>(Lmiuix/popupwidget/widget/PopupWindow;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_0
    return-void
.end method

.method public setDimAmount(F)V
    .locals 0

    .line 362
    iput p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mDimAmount:F

    return-void
.end method

.method public setDropDownGravity(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 349
    iget-object p0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    iput p1, p0, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mGravity:I

    :cond_0
    return-void
.end method

.method public setHasShadow(Z)V
    .locals 0

    .line 708
    iput-boolean p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mHasShadow:Z

    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 1

    .line 721
    iget-object p0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mOffsetXSet:Z

    .line 722
    iput p1, p0, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mUserOffsetX:I

    return-void
.end method

.method public setMaxAllowedHeight(I)V
    .locals 0

    .line 780
    iput p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mMaxAllowedHeight:I

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method protected setPopupShadowAlpha(Landroid/view/View;)V
    .locals 1

    .line 518
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/core/util/EnvStateManager;->isFreeFormMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 519
    invoke-virtual {p1, p0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto :goto_0

    .line 521
    :cond_0
    new-instance v0, Lmiuix/popupwidget/widget/PopupWindow$6;

    invoke-direct {v0, p0}, Lmiuix/popupwidget/widget/PopupWindow$6;-><init>(Lmiuix/popupwidget/widget/PopupWindow;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 538
    iget-object p0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    sget v0, Lmiuix/popupwidget/R$color;->miuix_appcompat_drop_down_menu_spot_shadow_color:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setOutlineSpotShadowColor(I)V

    :goto_0
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1

    .line 716
    iget-object p0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mOffsetYSet:Z

    .line 717
    iput p1, p0, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mUserOffsetY:I

    return-void
.end method

.method public setWindowManagerFlags(I)V
    .locals 0

    .line 370
    iput p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mWindowManagerFlags:I

    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 574
    :cond_0
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/PopupWindow;->getAnchor()Landroid/view/View;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 575
    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 577
    :cond_1
    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->prepareShow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 578
    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public show(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1

    .line 564
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/PopupWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eq v0, p2, :cond_0

    .line 565
    invoke-virtual {p0, p2}, Lmiuix/popupwidget/widget/PopupWindow;->setDecorView(Landroid/view/View;)V

    .line 567
    :cond_0
    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->show(Landroid/view/View;)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 11

    const/4 v0, 0x1

    .line 589
    iput-boolean v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mDifferDensityCompat:Z

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showAsDropDown popupwindowspec:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PopupWindow"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    iget-object v2, v0, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mAnchorViewBounds:Landroid/graphics/Rect;

    .line 592
    iget-object v3, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    invoke-interface {v3, v0}, Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;->getXInWindow(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I

    move-result v0

    .line 593
    iget-object v3, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    iget-object v4, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    invoke-interface {v3, v4}, Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;->getYInWindow(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I

    move-result v3

    .line 594
    iget-object v4, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    iget v5, v4, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupWidth:I

    .line 595
    iget v4, v4, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupHeight:I

    .line 596
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    const/4 v7, 0x0

    .line 597
    invoke-virtual {v6, v7, v7, v5, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 598
    invoke-virtual {p0, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 599
    invoke-virtual {p0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 600
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "showWithAnchor getWidth "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " getHeight "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    iget v1, v1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mGravity:I

    .line 603
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    invoke-static {v1, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    and-int/lit8 v1, v1, 0x70

    .line 605
    invoke-virtual {v6, v0, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 607
    iget v4, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAnimationStyle:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_6

    .line 608
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    sub-int/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v8, 0x30

    const/16 v9, 0xa

    const/16 v10, 0x50

    if-le v4, v9, :cond_0

    .line 609
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    if-le v1, v4, :cond_1

    goto :goto_0

    :cond_0
    if-ne v1, v10, :cond_2

    :cond_1
    move v8, v10

    .line 621
    :cond_2
    :goto_0
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v9, :cond_4

    .line 622
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    if-le v1, v2, :cond_3

    or-int/lit8 v8, v8, 0x3

    goto :goto_1

    :cond_3
    or-int/lit8 v8, v8, 0x5

    .line 628
    :cond_4
    :goto_1
    iget v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mUserAnimationGravity:I

    if-eq v1, v5, :cond_5

    .line 629
    invoke-virtual {p0, v1}, Lmiuix/popupwidget/widget/PopupWindow;->setAnimationStyleByGravity(I)V

    goto :goto_2

    .line 631
    :cond_5
    invoke-virtual {p0, v8}, Lmiuix/popupwidget/widget/PopupWindow;->setAnimationStyleByGravity(I)V

    .line 635
    :cond_6
    :goto_2
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_7

    .line 636
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_SMALL:I

    sget v2, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_NORMAL:I

    invoke-static {p1, v1, v2}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;II)Z

    .line 638
    :cond_7
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/PopupWindow;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1, v7, v0, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 639
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    iget v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mElevation:I

    iget v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mElevationExtra:I

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lmiuix/popupwidget/widget/PopupWindow;->prepareWindowElevation(Landroid/view/View;I)V

    .line 640
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mRootView:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 641
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->changeWindowBackground(Landroid/view/View;)V

    .line 642
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lmiuix/popupwidget/internal/util/SinglePopControl;->showPop(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;I)V
    .locals 0

    .line 646
    invoke-virtual {p0, p2}, Lmiuix/popupwidget/widget/PopupWindow;->setDropDownGravity(I)V

    .line 647
    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 0

    .line 652
    invoke-virtual {p0, p2}, Lmiuix/popupwidget/widget/PopupWindow;->setHorizontalOffset(I)V

    .line 653
    invoke-virtual {p0, p3}, Lmiuix/popupwidget/widget/PopupWindow;->setVerticalOffset(I)V

    .line 654
    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 0

    .line 659
    invoke-virtual {p0, p2}, Lmiuix/popupwidget/widget/PopupWindow;->setHorizontalOffset(I)V

    .line 660
    invoke-virtual {p0, p3}, Lmiuix/popupwidget/widget/PopupWindow;->setVerticalOffset(I)V

    .line 661
    invoke-virtual {p0, p4}, Lmiuix/popupwidget/widget/PopupWindow;->setDropDownGravity(I)V

    .line 662
    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 8

    const/4 v0, 0x0

    .line 667
    iput-boolean v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mDifferDensityCompat:Z

    .line 669
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 670
    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 671
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentSize:Lmiuix/popupwidget/widget/PopupWindow$ContentSize;

    iget v2, v2, Lmiuix/popupwidget/widget/PopupWindow$ContentSize;->mWidth:I

    .line 672
    :goto_0
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v3

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentSize:Lmiuix/popupwidget/widget/PopupWindow$ContentSize;

    iget v3, v3, Lmiuix/popupwidget/widget/PopupWindow$ContentSize;->mHeight:I

    .line 673
    :goto_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    add-int/2addr v2, p3

    add-int/2addr v3, p4

    .line 674
    invoke-virtual {v4, p3, p4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 676
    iget v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mAnimationStyle:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_8

    .line 677
    iget v2, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    if-le v2, v5, :cond_2

    const/16 v0, 0x30

    goto :goto_2

    .line 679
    :cond_2
    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    if-gt v2, v5, :cond_3

    const/16 v0, 0x50

    .line 682
    :cond_3
    :goto_2
    iget v2, v4, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->left:I

    if-lt v2, v5, :cond_4

    iget v6, v4, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    if-le v6, v7, :cond_4

    or-int/lit8 v0, v0, 0x3

    goto :goto_3

    .line 684
    :cond_4
    iget v6, v4, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    if-gt v6, v7, :cond_5

    if-ge v2, v5, :cond_5

    or-int/lit8 v0, v0, 0x5

    :cond_5
    :goto_3
    if-nez v0, :cond_6

    .line 687
    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v0, 0x11

    .line 690
    :cond_6
    iget v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mUserAnimationGravity:I

    if-eq v1, v3, :cond_7

    .line 691
    invoke-virtual {p0, v1}, Lmiuix/popupwidget/widget/PopupWindow;->setAnimationStyleByGravity(I)V

    goto :goto_4

    .line 693
    :cond_7
    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/PopupWindow;->setAnimationStyleByGravity(I)V

    .line 697
    :cond_8
    :goto_4
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_9

    .line 698
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mRootView:Landroid/widget/FrameLayout;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_SMALL:I

    sget v2, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_NORMAL:I

    invoke-static {v0, v1, v2}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;II)Z

    .line 700
    :cond_9
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 701
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    iget p2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mElevation:I

    iget p3, p0, Lmiuix/popupwidget/widget/PopupWindow;->mElevationExtra:I

    add-int/2addr p2, p3

    invoke-virtual {p0, p1, p2}, Lmiuix/popupwidget/widget/PopupWindow;->prepareWindowElevation(Landroid/view/View;I)V

    .line 702
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mRootView:Landroid/widget/FrameLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 703
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->changeWindowBackground(Landroid/view/View;)V

    .line 704
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lmiuix/popupwidget/internal/util/SinglePopControl;->showPop(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method protected updateLocation(Landroid/view/View;)V
    .locals 3

    .line 241
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/PopupWindow;->computePopupContentSize()V

    .line 243
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    iget-object v0, v0, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mAnchorViewBounds:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Lmiuix/internal/util/ViewUtils;->getBoundsInWindow(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 244
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    invoke-interface {p1, v0}, Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;->getXInWindow(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I

    move-result p1

    .line 245
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    invoke-interface {v0, v1}, Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;->getYInWindow(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I

    move-result v0

    .line 246
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    iget v1, v1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupWidth:I

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 247
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    iget v1, v1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupHeight:I

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 248
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    iget v2, v1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupWidth:I

    iget v1, v1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupHeight:I

    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/widget/PopupWindow;->update(IIII)V

    :cond_0
    return-void
.end method

.method public updatePopupWindowSpec(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)V
    .locals 8

    .line 834
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/PopupWindow;->getAnchor()Landroid/view/View;

    move-result-object v0

    .line 835
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/PopupWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 839
    :cond_0
    invoke-virtual {p0, v1}, Lmiuix/popupwidget/widget/PopupWindow;->updateSafeInsets(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 840
    iget-object v3, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mDecorViewBounds:Landroid/graphics/Rect;

    invoke-static {v1, v3}, Lmiuix/internal/util/ViewUtils;->getBoundsInWindow(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 841
    iget-object v3, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mAnchorViewBounds:Landroid/graphics/Rect;

    invoke-static {v0, v3}, Lmiuix/internal/util/ViewUtils;->getBoundsInWindow(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 842
    iget-object v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mDecorViewBounds:Landroid/graphics/Rect;

    .line 843
    iget-object v3, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lmiuix/core/util/EnvStateManager;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v3

    .line 844
    iget v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v6, v0, Landroid/graphics/Rect;->top:I

    .line 845
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v6, v3, Landroid/graphics/Point;->x:I

    iget v7, v0, Landroid/graphics/Rect;->right:I

    .line 846
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    .line 847
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 844
    invoke-virtual {v0, v4, v5, v6, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 848
    invoke-virtual {p0, v0, v2}, Lmiuix/popupwidget/widget/PopupWindow;->checkMaxWidth(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    .line 849
    invoke-virtual {p0, v0, v2}, Lmiuix/popupwidget/widget/PopupWindow;->checkMinWidth(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v4

    .line 850
    invoke-virtual {p0, v0, v2}, Lmiuix/popupwidget/widget/PopupWindow;->checkMaxHeight(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p0

    .line 852
    iput-object v2, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mSafeInsets:Landroid/graphics/Rect;

    .line 853
    iput v3, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMaxWidth:I

    .line 854
    iput v4, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMinWidth:I

    .line 855
    iput p0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMaxHeight:I

    .line 856
    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    iput p0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->layoutDirection:I

    :cond_1
    :goto_0
    return-void
.end method

.method protected updateSafeInsets(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1

    .line 237
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    iget p0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mMinSafeInsetDimen:I

    invoke-static {v0, p1, p0}, Lmiuix/popupwidget/widget/PopupWindow;->updateSafeInsetsByDecor(Landroid/content/Context;Landroid/view/View;I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method
