.class public Lmiuix/appcompat/widget/HyperPopupWindow;
.super Lmiuix/popupwidget/widget/PopupWindow;
.source "HyperPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;,
        Lmiuix/appcompat/widget/HyperPopupWindow$OnMenuItemClickListener;,
        Lmiuix/appcompat/widget/HyperPopupWindow$SecondaryPopupWindowStrategy;,
        Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;,
        Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;
    }
.end annotation


# instance fields
.field private mClipView:Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

.field private mContainer:Landroid/view/ViewGroup;

.field private final mCornerRadius:F

.field private mFocusedMainPopupItemView:Landroid/view/View;

.field private mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

.field private mMainPopupStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

.field private mMenuItemClickListener:Lmiuix/appcompat/widget/HyperPopupWindow$OnMenuItemClickListener;

.field private mRootBounds:Landroid/graphics/Rect;

.field private mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

.field private mSecondaryPopupStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;


# direct methods
.method public static synthetic $r8$lambda$Ebbh5Q8W876l2l27-7yzS-eYcOo(Lmiuix/appcompat/widget/HyperPopupWindow;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/widget/HyperPopupWindow;->lambda$collapseSecondaryMenu$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 81
    invoke-direct {p0, p1, p2}, Lmiuix/popupwidget/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const/4 p1, 0x1

    .line 82
    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->setAutoDismiss(Z)V

    const/4 p1, 0x0

    .line 83
    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->setHasShadow(Z)V

    .line 84
    new-instance p1, Lmiuix/popupwidget/internal/strategy/PopupWindowStrategy;

    invoke-direct {p1}, Lmiuix/popupwidget/internal/strategy/PopupWindowStrategy;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopupStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    .line 85
    new-instance p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, v0, p1}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;-><init>(Lmiuix/appcompat/widget/HyperPopupWindow;Landroid/content/Context;Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;)V

    iput-object p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    .line 86
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_drop_down_menu_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mCornerRadius:F

    return-void
.end method

.method static synthetic access$100(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;
    .locals 0

    .line 62
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    return-object p0
.end method

.method static synthetic access$2200(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;
    .locals 0

    .line 62
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mClipView:Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    return-object p0
.end method

.method static synthetic access$2202(Lmiuix/appcompat/widget/HyperPopupWindow;Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;)Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;
    .locals 0

    .line 62
    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mClipView:Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    return-object p1
.end method

.method static synthetic access$2800(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;II)[[I
    .locals 0

    .line 62
    invoke-static {p0, p1, p2, p3, p4}, Lmiuix/appcompat/widget/HyperPopupWindow;->getItemViewBounds(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;II)[[I

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2900(Lmiuix/appcompat/widget/HyperPopupWindow;Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;IIII)V
    .locals 0

    .line 62
    invoke-direct/range {p0 .. p5}, Lmiuix/appcompat/widget/HyperPopupWindow;->offsetRootBounds(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;IIII)V

    return-void
.end method

.method static synthetic access$300(Lmiuix/appcompat/widget/HyperPopupWindow;Ljava/lang/Object;I)Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/widget/HyperPopupWindow;->getTextItem(Ljava/lang/Object;I)Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3000(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 62
    invoke-static {p0, p1}, Lmiuix/appcompat/widget/HyperPopupWindow;->getUnionBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3100(Lmiuix/appcompat/widget/HyperPopupWindow;)F
    .locals 0

    .line 62
    iget p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mCornerRadius:F

    return p0
.end method

.method static synthetic access$400(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;
    .locals 0

    .line 62
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    return-object p0
.end method

.method static synthetic access$502(Lmiuix/appcompat/widget/HyperPopupWindow;Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;)Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;
    .locals 0

    .line 62
    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryPopupStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    return-object p1
.end method

.method static synthetic access$600(Lmiuix/appcompat/widget/HyperPopupWindow;Landroid/view/View;Landroid/widget/ListAdapter;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/widget/HyperPopupWindow;->expandSecondaryMenu(Landroid/view/View;Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic access$700(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$OnMenuItemClickListener;
    .locals 0

    .line 62
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mMenuItemClickListener:Lmiuix/appcompat/widget/HyperPopupWindow$OnMenuItemClickListener;

    return-object p0
.end method

.method static synthetic access$800(Lmiuix/appcompat/widget/HyperPopupWindow;)Landroid/view/ViewGroup;
    .locals 0

    .line 62
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$900(Lmiuix/appcompat/widget/HyperPopupWindow;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lmiuix/appcompat/widget/HyperPopupWindow;->collapseSecondaryMenu()V

    return-void
.end method

.method private announceForSecondaryMenu(Ljava/lang/String;)V
    .locals 1

    .line 267
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1100(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/smooth/SmoothFrameLayout2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 268
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-static {p0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1100(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/smooth/SmoothFrameLayout2;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private collapseSecondaryMenu()V
    .locals 2

    .line 236
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    if-nez v0, :cond_0

    return-void

    .line 239
    :cond_0
    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1100(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/smooth/SmoothFrameLayout2;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$id;->mask:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 240
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 241
    invoke-direct {p0}, Lmiuix/appcompat/widget/HyperPopupWindow;->toFrontAnim()V

    .line 242
    invoke-virtual {p0}, Lmiuix/appcompat/widget/HyperPopupWindow;->doCollapseAnimation()V

    const/4 v0, 0x0

    .line 243
    iput-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    .line 244
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1100(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/smooth/SmoothFrameLayout2;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lmiuix/appcompat/widget/HyperPopupWindow;->enableAccessibility(Landroid/view/View;Z)V

    .line 245
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mFocusedMainPopupItemView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 246
    new-instance v1, Lmiuix/appcompat/widget/HyperPopupWindow$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lmiuix/appcompat/widget/HyperPopupWindow$$ExternalSyntheticLambda0;-><init>(Lmiuix/appcompat/widget/HyperPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 249
    :cond_1
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$string;->miuix_appcompat_accessibility_collapse_state:I

    .line 250
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-direct {p0, v0}, Lmiuix/appcompat/widget/HyperPopupWindow;->announceForSecondaryMenu(Ljava/lang/String;)V

    return-void
.end method

.method private enableAccessibility(Landroid/view/View;Z)V
    .locals 3

    if-nez p2, :cond_0

    .line 254
    invoke-virtual {p1}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mFocusedMainPopupItemView:Landroid/view/View;

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 257
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 258
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 259
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 261
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lmiuix/appcompat/widget/HyperPopupWindow;->enableAccessibility(Landroid/view/View;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private expandSecondaryMenu(Landroid/view/View;Landroid/widget/ListAdapter;)V
    .locals 0

    .line 228
    invoke-direct {p0}, Lmiuix/appcompat/widget/HyperPopupWindow;->toBackAnim()V

    .line 229
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/widget/HyperPopupWindow;->doExpandAnimation(Landroid/view/View;Landroid/widget/ListAdapter;)V

    .line 230
    iget-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-static {p1}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1100(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/smooth/SmoothFrameLayout2;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/widget/HyperPopupWindow;->enableAccessibility(Landroid/view/View;Z)V

    .line 231
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/appcompat/R$string;->miuix_appcompat_accessibility_expand_state:I

    .line 232
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 231
    invoke-direct {p0, p1}, Lmiuix/appcompat/widget/HyperPopupWindow;->announceForSecondaryMenu(Ljava/lang/String;)V

    return-void
.end method

.method private static getItemViewBounds(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;II)[[I
    .locals 9

    const/high16 v0, -0x80000000

    .line 275
    invoke-static {p3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    const/4 v0, 0x0

    .line 277
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 278
    invoke-interface {p0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x1

    aput v3, v4, v5

    aput v2, v4, v0

    .line 279
    const-class v3, I

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    const/4 v4, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v2, :cond_2

    if-nez p1, :cond_0

    .line 282
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 284
    :cond_0
    invoke-interface {p0, v6, v4, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 285
    invoke-virtual {v4, p3, v1}, Landroid/view/View;->measure(II)V

    .line 286
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    const/4 v8, -0x1

    if-eq p4, v8, :cond_1

    .line 288
    invoke-static {v7, p4}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 290
    :cond_1
    aget-object v8, v3, v6

    aput v7, v8, v0

    .line 291
    aget-object v7, v3, v6

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    aput v8, v7, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method private getRootBounds()Landroid/graphics/Rect;
    .locals 6

    .line 300
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 301
    iget-object p0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    invoke-virtual {p0}, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->clone()Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    move-result-object p0

    .line 302
    iget-object v1, p0, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mDecorViewBounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget-object p0, p0, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mSafeInsets:Landroid/graphics/Rect;

    iget v3, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    .line 303
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    .line 304
    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    .line 305
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, p0

    .line 306
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-object v0
.end method

.method private getTextItem(Ljava/lang/Object;I)Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;
    .locals 1

    .line 216
    instance-of p0, p1, Lmiuix/appcompat/view/menu/HyperBaseAdapter;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 217
    check-cast p1, Lmiuix/appcompat/view/menu/HyperBaseAdapter;

    invoke-virtual {p1, p2}, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->getHyperMenuItem(I)Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    .line 220
    :goto_0
    instance-of p1, p0, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;

    if-eqz p1, :cond_1

    .line 222
    move-object v0, p0

    check-cast v0, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;

    :cond_1
    return-object v0
.end method

.method private static getUnionBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3

    .line 416
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 417
    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 418
    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 419
    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 420
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method private synthetic lambda$collapseSecondaryMenu$0()V
    .locals 1

    .line 246
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mFocusedMainPopupItemView:Landroid/view/View;

    const/16 v0, 0x8

    .line 247
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method private offsetRootBounds(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;IIII)V
    .locals 2

    .line 697
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mRootBounds:Landroid/graphics/Rect;

    .line 698
    iget p5, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMaxWidth:I

    .line 699
    iget v0, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMaxHeight:I

    add-int/2addr v0, p3

    .line 700
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_0

    sub-int/2addr v1, v0

    add-int/2addr p3, v1

    .line 702
    iput p3, p0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 704
    :cond_0
    iput p3, p0, Landroid/graphics/Rect;->top:I

    .line 705
    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 707
    :goto_0
    iget p3, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mGravity:I

    iget p1, p1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->layoutDirection:I

    invoke-static {p3, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    const/4 p3, 0x1

    if-eq p1, p3, :cond_2

    const/4 p3, 0x5

    if-eq p1, p3, :cond_1

    .line 716
    iput p2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, p5

    .line 717
    iget p1, p0, Landroid/graphics/Rect;->right:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_1
    add-int/2addr p4, p2

    .line 712
    iput p4, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, p5

    .line 713
    iget p1, p0, Landroid/graphics/Rect;->left:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->left:I

    :cond_2
    :goto_1
    return-void
.end method

.method private showAtLocation(Landroid/view/View;IIILandroid/graphics/Rect;)V
    .locals 6

    .line 173
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 174
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 175
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    .line 176
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v2

    if-nez p5, :cond_0

    .line 179
    new-instance p5, Landroid/graphics/Rect;

    invoke-direct {p5}, Landroid/graphics/Rect;-><init>()V

    add-int/2addr v1, p3

    add-int/2addr v2, p4

    .line 180
    invoke-virtual {p5, p3, p4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 185
    :cond_0
    iget v1, p5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    if-le v1, v2, :cond_1

    const/16 v1, 0x30

    goto :goto_0

    .line 187
    :cond_1
    iget v1, p5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    if-gt v1, v2, :cond_2

    const/16 v1, 0x50

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 190
    :goto_0
    iget v2, p5, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    if-lt v2, v3, :cond_3

    iget v4, p5, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    if-le v4, v5, :cond_3

    or-int/lit8 v1, v1, 0x3

    goto :goto_1

    .line 192
    :cond_3
    iget v4, p5, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    if-gt v4, v5, :cond_4

    if-ge v2, v3, :cond_4

    or-int/lit8 v1, v1, 0x5

    :cond_4
    :goto_1
    if-nez v1, :cond_5

    .line 195
    invoke-virtual {v0, p5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p5

    if-eqz p5, :cond_5

    const/16 v1, 0x11

    .line 198
    :cond_5
    invoke-virtual {p0, v1}, Lmiuix/popupwidget/widget/PopupWindow;->setAnimationStyleByGravity(I)V

    .line 200
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p5

    if-nez p5, :cond_6

    .line 201
    iget-object p5, p0, Lmiuix/popupwidget/widget/PopupWindow;->mRootView:Landroid/widget/FrameLayout;

    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_SMALL:I

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_NORMAL:I

    invoke-static {p5, v0, v1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;II)Z

    .line 203
    :cond_6
    invoke-super {p0, p1, p2, p3, p4}, Lmiuix/popupwidget/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 204
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    iget p2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mElevation:I

    iget p3, p0, Lmiuix/popupwidget/widget/PopupWindow;->mElevationExtra:I

    add-int/2addr p2, p3

    invoke-virtual {p0, p1, p2}, Lmiuix/popupwidget/widget/PopupWindow;->prepareWindowElevation(Landroid/view/View;I)V

    .line 205
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mRootView:Landroid/widget/FrameLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 206
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->changeWindowBackground(Landroid/view/View;)V

    .line 207
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lmiuix/popupwidget/internal/util/SinglePopControl;->showPop(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method private toBackAnim()V
    .locals 8

    .line 723
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-static {p0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1100(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/smooth/SmoothFrameLayout2;

    move-result-object p0

    .line 724
    sget v0, Lmiuix/appcompat/R$id;->mask:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/view/View;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 725
    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v4, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    aput-object v4, v2, v3

    const v4, 0x3f733333    # 0.95f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v1

    sget-object v5, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    const/4 v6, 0x2

    aput-object v5, v2, v6

    const/4 v5, 0x3

    aput-object v4, v2, v5

    invoke-static {}, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->access$3200()Lmiuix/animation/base/AnimConfig;

    move-result-object v4

    const/4 v7, 0x4

    aput-object v4, v2, v7

    invoke-interface {p0, v2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    new-array p0, v1, [Landroid/view/View;

    aput-object v0, p0, v3

    .line 726
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    new-array v0, v5, [Ljava/lang/Object;

    sget-object v2, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    aput-object v2, v0, v3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {}, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->access$3200()Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-interface {p0, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method private toFrontAnim()V
    .locals 8

    .line 730
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-static {p0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1100(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/smooth/SmoothFrameLayout2;

    move-result-object p0

    .line 731
    sget v0, Lmiuix/appcompat/R$id;->mask:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/view/View;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 732
    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v4, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    aput-object v4, v2, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v1

    sget-object v5, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    const/4 v6, 0x2

    aput-object v5, v2, v6

    const/4 v5, 0x3

    aput-object v4, v2, v5

    invoke-static {}, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->access$2400()Lmiuix/animation/base/AnimConfig;

    move-result-object v4

    const/4 v7, 0x4

    aput-object v4, v2, v7

    invoke-interface {p0, v2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    new-array p0, v1, [Landroid/view/View;

    aput-object v0, p0, v3

    .line 733
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    new-array v0, v5, [Ljava/lang/Object;

    sget-object v2, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    aput-object v2, v0, v3

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {}, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->access$2400()Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-interface {p0, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void
.end method


# virtual methods
.method protected doCollapseAnimation()V
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    .line 327
    iget-object v2, v0, Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-static {v2}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$000(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    move-result-object v2

    .line 328
    iget-object v3, v0, Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-static {v3}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1100(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/smooth/SmoothFrameLayout2;

    move-result-object v4

    move-object/from16 v26, v4

    .line 329
    iget-object v3, v0, Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-static {v3}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1200(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;

    move-result-object v15

    move-object/from16 v25, v15

    .line 330
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    invoke-virtual {v15, v3}, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->setMeasureWidth(I)V

    .line 331
    iget-object v2, v2, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mAnchorViewBounds:Landroid/graphics/Rect;

    .line 332
    iget-object v3, v0, Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-static {v3}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1000(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Landroid/graphics/Rect;

    move-result-object v9

    .line 333
    iget-object v3, v0, Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-static {v3}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1000(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Landroid/graphics/Rect;

    move-result-object v3

    .line 334
    invoke-static {v9, v3}, Lmiuix/appcompat/widget/HyperPopupWindow;->getUnionBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v13

    .line 337
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 338
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 339
    iget v3, v9, Landroid/graphics/Rect;->left:I

    iget v5, v13, Landroid/graphics/Rect;->left:I

    sub-int v7, v3, v5

    move v3, v7

    .line 340
    iget v5, v9, Landroid/graphics/Rect;->top:I

    iget v10, v13, Landroid/graphics/Rect;->top:I

    sub-int v10, v5, v10

    move v5, v10

    .line 341
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v11

    add-int/2addr v7, v11

    .line 342
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v9, v10

    .line 343
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v10

    .line 344
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTop()I

    move-result v12

    .line 345
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getRight()I

    move-result v14

    .line 346
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v16

    .line 347
    iget v11, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v27, v4

    iget v4, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v4

    move-object/from16 v17, v15

    .line 348
    iget v15, v2, Landroid/graphics/Rect;->top:I

    iget v13, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v15, v13

    move/from16 v18, v13

    move v13, v15

    .line 349
    iget v15, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v15, v4

    move-object/from16 v28, v17

    .line 350
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v17, v2, v18

    .line 352
    iget-object v2, v0, Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-static {v2}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1300(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Landroid/view/ViewGroup;

    .line 353
    iget-object v2, v0, Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-static {v2}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1400(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)I

    move-result v22

    .line 354
    iget-object v2, v0, Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-static {v2}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1500(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)I

    move-result v23

    .line 355
    iget-object v2, v0, Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-static {v2}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1600(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)I

    move-result v18

    .line 356
    iget-object v2, v0, Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-static {v2}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1700(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)I

    move-result v19

    .line 357
    iget-object v2, v0, Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-static {v2}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1800(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)I

    move-result v20

    .line 358
    iget-object v2, v0, Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-static {v2}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1900(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)I

    move-result v21

    .line 359
    iget-object v2, v0, Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-static {v2}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$2000(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Landroid/widget/ListView;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 360
    iget-object v0, v0, Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$2102(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;Z)Z

    .line 361
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v4, v2, [Lmiuix/animation/listener/TransitionListener;

    new-instance v29, Lmiuix/appcompat/widget/HyperPopupWindow$2;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    const/16 v31, 0x0

    move/from16 v2, v31

    move-object/from16 v33, v4

    move-object/from16 v32, v27

    const/16 v27, 0x0

    move/from16 v4, v31

    invoke-direct/range {v0 .. v26}, Lmiuix/appcompat/widget/HyperPopupWindow$2;-><init>(Lmiuix/appcompat/widget/HyperPopupWindow;IIIIIIIIIIIIIIIIIIIIIILandroid/view/ViewGroup;Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;Lmiuix/smooth/SmoothFrameLayout2;)V

    move-object/from16 v0, v33

    aput-object v29, v0, v27

    move-object/from16 v1, v30

    .line 362
    invoke-virtual {v1, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 403
    fill-array-data v2, :array_0

    const/4 v3, -0x2

    invoke-virtual {v0, v3, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v28, v3, v27

    .line 404
    invoke-static {v3}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "fraction"

    aput-object v5, v4, v27

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-interface {v3, v4}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v3

    const/4 v4, 0x3

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v5, v7, v27

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v7, v2

    aput-object v0, v7, v1

    invoke-interface {v3, v7}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 406
    invoke-virtual/range {v28 .. v28}, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->getCornerRadius()F

    move-result v0

    move-object/from16 v3, v32

    .line 408
    invoke-virtual {v3, v0}, Lmiuix/smooth/SmoothFrameLayout2;->setCornerRadius(F)V

    new-array v0, v2, [Ljava/lang/Object;

    aput-object v28, v0, v27

    .line 409
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    .line 410
    invoke-static/range {v28 .. v28}, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->access$2300(Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;)Lmiuix/animation/property/FloatProperty;

    move-result-object v5

    aput-object v5, v3, v27

    aput-object v6, v3, v2

    invoke-static {}, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->access$2400()Lmiuix/animation/base/AnimConfig;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-interface {v0, v3}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object v28, v0, v27

    .line 412
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static/range {v28 .. v28}, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->access$2500(Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;)Lmiuix/animation/property/FloatProperty;

    move-result-object v4

    aput-object v4, v3, v27

    aput-object v6, v3, v2

    invoke-static/range {v28 .. v28}, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->access$2600(Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-interface {v0, v3}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method protected doExpandAnimation(Landroid/view/View;Landroid/widget/ListAdapter;)V
    .locals 7

    .line 311
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    invoke-virtual {v0}, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->clone()Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    move-result-object v6

    .line 312
    iget-object v0, v6, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mAnchorViewBounds:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Lmiuix/internal/util/ViewUtils;->getBoundsInWindow(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 313
    iget-object v0, v6, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mAnchorViewBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mRootBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 314
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 315
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v4

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 316
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v4

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 317
    iget-object v0, v6, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mDecorViewBounds:Landroid/graphics/Rect;

    iget v1, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 318
    new-instance v0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    iget-object v3, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryPopupStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;-><init>(Lmiuix/appcompat/widget/HyperPopupWindow;Landroid/content/Context;Landroid/widget/ListAdapter;Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)V

    iput-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    .line 319
    invoke-virtual {v0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->inflate()V

    .line 321
    iget-object p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-static {p2}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1100(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/smooth/SmoothFrameLayout2;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    .line 322
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-virtual {v0, p2}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->setMinWidth(I)V

    .line 323
    iget-object p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mContainer:Landroid/view/ViewGroup;

    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mRootBounds:Landroid/graphics/Rect;

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v0, p0, v1}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->show(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Rect;Z)Z

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 91
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setOnMenuItemClickListener(Lmiuix/appcompat/widget/HyperPopupWindow$OnMenuItemClickListener;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mMenuItemClickListener:Lmiuix/appcompat/widget/HyperPopupWindow$OnMenuItemClickListener;

    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 8

    .line 95
    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 96
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/PopupWindow;->updatePopupWindowSpec(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)V

    .line 97
    invoke-direct {p0}, Lmiuix/appcompat/widget/HyperPopupWindow;->getRootBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mRootBounds:Landroid/graphics/Rect;

    .line 98
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lmiuix/smooth/SmoothFrameLayout2;

    iget-object v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lmiuix/smooth/SmoothFrameLayout2;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mContainer:Landroid/view/ViewGroup;

    .line 100
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 102
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 103
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 104
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 105
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 106
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 108
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    iget-object v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    invoke-static {v0, v2}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$002(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    .line 109
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-virtual {v0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->inflate()V

    .line 110
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    iget-object v2, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v2, v3, v1}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->show(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Rect;Z)Z

    .line 111
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    new-instance v1, Lmiuix/appcompat/widget/HyperPopupWindow$1;

    invoke-direct {v1, p0}, Lmiuix/appcompat/widget/HyperPopupWindow$1;-><init>(Lmiuix/appcompat/widget/HyperPopupWindow;)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->setItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 164
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 165
    iget-object v1, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 166
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 167
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 v4, 0x0

    .line 168
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mRootBounds:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1000(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Landroid/graphics/Rect;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lmiuix/appcompat/widget/HyperPopupWindow;->showAtLocation(Landroid/view/View;IIILandroid/graphics/Rect;)V

    return-void
.end method
