.class public Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;
.super Ljava/lang/Object;
.source "HyperPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/widget/HyperPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PopupContentHolder"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAnchorHeight:I

.field private mAnchorPaddingBottom:I

.field private mAnchorPaddingTop:I

.field private final mBoundsRect:Landroid/graphics/Rect;

.field private mContentView:Lmiuix/smooth/SmoothFrameLayout2;

.field private mContext:Landroid/content/Context;

.field private mHeaderView:Landroid/view/View;

.field private mHeaderViewHeight:I

.field private mHeaderViewPaddingBottom:I

.field private mHeaderViewPaddingTop:I

.field private mIsInAnimation:Z

.field private mListView:Landroid/widget/ListView;

.field private mMinWidth:I

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

.field private mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

.field private mViewBounds:Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;

.field final synthetic this$0:Lmiuix/appcompat/widget/HyperPopupWindow;


# direct methods
.method public static synthetic $r8$lambda$E_asO7sGwyxFmdxDo53Jyt3t6i8(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->lambda$inflate$0(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public constructor <init>(Lmiuix/appcompat/widget/HyperPopupWindow;Landroid/content/Context;Landroid/widget/ListAdapter;Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 432
    iput p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mMinWidth:I

    .line 434
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mBoundsRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 442
    iput-boolean p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mIsInAnimation:Z

    .line 450
    iput-object p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContext:Landroid/content/Context;

    .line 451
    iput-object p3, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mAdapter:Landroid/widget/ListAdapter;

    .line 452
    iput-object p4, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    .line 453
    iput-object p5, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    return-void
.end method

.method public constructor <init>(Lmiuix/appcompat/widget/HyperPopupWindow;Landroid/content/Context;Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;)V
    .locals 0

    .line 444
    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 432
    iput p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mMinWidth:I

    .line 434
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mBoundsRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 442
    iput-boolean p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mIsInAnimation:Z

    .line 445
    iput-object p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContext:Landroid/content/Context;

    .line 446
    iput-object p3, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    return-void
.end method

.method static synthetic access$000(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;
    .locals 0

    .line 424
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    return-object p0
.end method

.method static synthetic access$002(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;
    .locals 0

    .line 424
    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    return-object p1
.end method

.method static synthetic access$1000(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Landroid/graphics/Rect;
    .locals 0

    .line 424
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mBoundsRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$1100(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/smooth/SmoothFrameLayout2;
    .locals 0

    .line 424
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;

    return-object p0
.end method

.method static synthetic access$1200(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;
    .locals 0

    .line 424
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mViewBounds:Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;

    return-object p0
.end method

.method static synthetic access$1300(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Landroid/view/View;
    .locals 0

    .line 424
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mHeaderView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1302(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 424
    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mHeaderView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1400(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)I
    .locals 0

    .line 424
    iget p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mHeaderViewHeight:I

    return p0
.end method

.method static synthetic access$1402(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;I)I
    .locals 0

    .line 424
    iput p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mHeaderViewHeight:I

    return p1
.end method

.method static synthetic access$1500(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)I
    .locals 0

    .line 424
    iget p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mAnchorHeight:I

    return p0
.end method

.method static synthetic access$1502(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;I)I
    .locals 0

    .line 424
    iput p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mAnchorHeight:I

    return p1
.end method

.method static synthetic access$1600(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)I
    .locals 0

    .line 424
    iget p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mHeaderViewPaddingTop:I

    return p0
.end method

.method static synthetic access$1602(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;I)I
    .locals 0

    .line 424
    iput p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mHeaderViewPaddingTop:I

    return p1
.end method

.method static synthetic access$1700(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)I
    .locals 0

    .line 424
    iget p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mAnchorPaddingTop:I

    return p0
.end method

.method static synthetic access$1702(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;I)I
    .locals 0

    .line 424
    iput p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mAnchorPaddingTop:I

    return p1
.end method

.method static synthetic access$1800(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)I
    .locals 0

    .line 424
    iget p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mHeaderViewPaddingBottom:I

    return p0
.end method

.method static synthetic access$1802(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;I)I
    .locals 0

    .line 424
    iput p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mHeaderViewPaddingBottom:I

    return p1
.end method

.method static synthetic access$1900(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)I
    .locals 0

    .line 424
    iget p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mAnchorPaddingBottom:I

    return p0
.end method

.method static synthetic access$1902(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;I)I
    .locals 0

    .line 424
    iput p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mAnchorPaddingBottom:I

    return p1
.end method

.method static synthetic access$200(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Landroid/widget/ListAdapter;
    .locals 0

    .line 424
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mAdapter:Landroid/widget/ListAdapter;

    return-object p0
.end method

.method static synthetic access$2000(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Landroid/widget/ListView;
    .locals 0

    .line 424
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$2100(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Z
    .locals 0

    .line 424
    iget-boolean p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mIsInAnimation:Z

    return p0
.end method

.method static synthetic access$2102(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;Z)Z
    .locals 0

    .line 424
    iput-boolean p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mIsInAnimation:Z

    return p1
.end method

.method static synthetic access$2700(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;
    .locals 0

    .line 424
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    return-object p0
.end method

.method private synthetic lambda$inflate$0(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    .line 536
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v4, p3, v0

    .line 537
    iget-object p3, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz p3, :cond_0

    if-ltz v4, :cond_0

    iget-object p3, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p3}, Landroid/widget/ListAdapter;->getCount()I

    move-result p3

    if-ge v4, p3, :cond_0

    .line 538
    iget-object v1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v2, p1

    move-object v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method


# virtual methods
.method inflate()V
    .locals 3

    .line 465
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;

    if-nez v0, :cond_1

    .line 466
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_hyper_popup_list:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/smooth/SmoothFrameLayout2;

    iput-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;

    .line 467
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContext:Landroid/content/Context;

    sget v1, Lmiuix/appcompat/R$attr;->immersionWindowBackground:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 471
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;

    sget v1, Lmiuix/appcompat/R$id;->spring_back:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 472
    iget-object v1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;

    new-instance v2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$1;

    invoke-direct {v2, p0, v0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$1;-><init>(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 485
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 487
    new-instance v1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$2;

    invoke-direct {v1, p0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$2;-><init>(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 535
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mListView:Landroid/widget/ListView;

    new-instance v1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$$ExternalSyntheticLambda0;-><init>(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 541
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mListView:Landroid/widget/ListView;

    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_2
    return-void
.end method

.method setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 457
    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mAdapter:Landroid/widget/ListAdapter;

    return-void
.end method

.method setItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method protected setMinWidth(I)V
    .locals 0

    .line 692
    iput p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mMinWidth:I

    return-void
.end method

.method show(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Rect;Z)Z
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    .line 546
    iget-object v4, v1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    .line 547
    iget-object v15, v4, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mAnchorViewBounds:Landroid/graphics/Rect;

    .line 548
    iget-object v3, v1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v5, v1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mListView:Landroid/widget/ListView;

    iget-object v6, v1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContext:Landroid/content/Context;

    iget v7, v4, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMaxWidth:I

    iget v8, v1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mMinWidth:I

    invoke-static {v3, v5, v6, v7, v8}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$2800(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;II)[[I

    move-result-object v3

    iput-object v3, v4, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mItemViewBounds:[[I

    .line 549
    iget-object v3, v1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    invoke-interface {v3, v4}, Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;->measureContentSize(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)V

    .line 550
    iget-object v3, v1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    invoke-interface {v3, v4}, Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;->getXInWindow(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I

    move-result v13

    .line 551
    iget-object v3, v1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    invoke-interface {v3, v4}, Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;->getYInWindow(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I

    move-result v14

    .line 552
    iget v12, v4, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupWidth:I

    .line 553
    iget v9, v4, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupHeight:I

    .line 554
    iget-object v3, v1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mBoundsRect:Landroid/graphics/Rect;

    add-int v11, v13, v12

    add-int v10, v14, v9

    invoke-virtual {v3, v13, v14, v11, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 555
    iget-object v3, v1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    move v5, v13

    move v6, v14

    move v7, v12

    move v8, v9

    invoke-static/range {v3 .. v8}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$2900(Lmiuix/appcompat/widget/HyperPopupWindow;Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;IIII)V

    if-nez p4, :cond_2

    .line 558
    iget-object v4, v1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;

    div-int/lit8 v11, v11, 0x2

    invoke-virtual {v15}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    const/4 v6, 0x0

    if-le v11, v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    int-to-float v5, v12

    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 559
    iget-object v4, v1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;

    iget v5, v15, Landroid/graphics/Rect;->top:I

    if-le v14, v5, :cond_1

    goto :goto_1

    :cond_1
    int-to-float v6, v9

    :goto_1
    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 561
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v12, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 562
    iget v5, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v5

    iput v13, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 563
    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v2

    iput v14, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 564
    iget-object v2, v1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 565
    iget-object v1, v1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/16 v20, 0x1

    goto/16 :goto_2

    .line 568
    :cond_2
    iget-object v4, v1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {v4}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$100(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    move-result-object v4

    iget-object v5, v4, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mBoundsRect:Landroid/graphics/Rect;

    .line 569
    iget-object v4, v1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mBoundsRect:Landroid/graphics/Rect;

    invoke-static {v5, v4}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$3000(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v9

    .line 570
    iget-object v4, v1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    new-instance v6, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    iget-object v7, v1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    iget-object v8, v1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v8}, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;-><init>(Lmiuix/appcompat/widget/HyperPopupWindow;Landroid/content/Context;)V

    invoke-static {v4, v6}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$2202(Lmiuix/appcompat/widget/HyperPopupWindow;Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;)Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    .line 571
    iget-object v4, v1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {v4}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$2200(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 572
    iget-object v4, v1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {v4}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$2200(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    move-result-object v4

    iget-object v6, v1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {v6}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$3100(Lmiuix/appcompat/widget/HyperPopupWindow;)F

    move-result v6

    invoke-virtual {v4, v6}, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->setRadius(F)V

    .line 574
    iget v4, v5, Landroid/graphics/Rect;->left:I

    iget v6, v9, Landroid/graphics/Rect;->left:I

    sub-int v7, v4, v6

    move v4, v7

    .line 575
    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v8, v9, Landroid/graphics/Rect;->top:I

    sub-int v8, v6, v8

    move v6, v8

    .line 576
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v16

    add-int v3, v7, v16

    move/from16 p4, v7

    move v7, v8

    move v8, v3

    .line 577
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v5, v7

    move/from16 v19, v10

    move v10, v5

    const/16 v16, 0x0

    move/from16 v21, v5

    move/from16 v5, v16

    move/from16 v5, p4

    move/from16 v17, v12

    move v12, v7

    move/from16 v7, v16

    .line 580
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v16

    move-object/from16 p4, v9

    move/from16 v9, v16

    .line 581
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v16

    move/from16 v22, v11

    move/from16 v11, v16

    .line 583
    iget-object v7, v1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {v7}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$2200(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    move-result-object v7

    move/from16 v16, v14

    move/from16 v14, v21

    invoke-virtual {v7, v5, v12, v3, v14}, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->setClipBounds(IIII)V

    .line 584
    iget-object v3, v1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {v3}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$2200(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    move-result-object v3

    invoke-virtual {v3}, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->refreshClipPath()V

    .line 585
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-direct {v3, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v5, p4

    .line 586
    iget v7, v5, Landroid/graphics/Rect;->left:I

    iget v12, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v12

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 587
    iget v7, v5, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v2

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 588
    iget-object v2, v1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {v2}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$2200(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 589
    iget-object v2, v1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {v2}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$2200(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 590
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 591
    iget v2, v15, Landroid/graphics/Rect;->left:I

    iget v3, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 592
    iget v2, v15, Landroid/graphics/Rect;->top:I

    iget v3, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 593
    iget-object v2, v1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 594
    iget-object v0, v1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$2200(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    move-result-object v0

    iget-object v2, v1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 595
    iget v0, v15, Landroid/graphics/Rect;->left:I

    iget v2, v5, Landroid/graphics/Rect;->left:I

    sub-int v12, v0, v2

    move/from16 v0, v17

    .line 596
    iget v3, v15, Landroid/graphics/Rect;->top:I

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int v14, v3, v5

    move/from16 v3, v16

    .line 597
    iget v7, v15, Landroid/graphics/Rect;->right:I

    sub-int v16, v7, v2

    .line 598
    iget v7, v15, Landroid/graphics/Rect;->bottom:I

    sub-int v18, v7, v5

    sub-int/2addr v13, v2

    sub-int/2addr v3, v5

    move-object v7, v15

    move v15, v3

    sub-int v17, v22, v2

    sub-int v19, v19, v5

    .line 604
    new-instance v2, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;

    iget-object v3, v1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;

    invoke-direct {v2, v3}, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;-><init>(Landroid/view/View;)V

    iput-object v2, v1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mViewBounds:Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;

    .line 605
    invoke-virtual {v2, v0}, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->setMeasureWidth(I)V

    .line 606
    iget-object v0, v1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$100(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    move-result-object v0

    const/4 v3, 0x1

    iput-boolean v3, v0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mIsInAnimation:Z

    .line 607
    iget-object v0, v1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$400(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    move-result-object v0

    iput-boolean v3, v0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mIsInAnimation:Z

    .line 608
    iget-object v0, v1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mContentView:Lmiuix/smooth/SmoothFrameLayout2;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    new-instance v2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;

    move-object v0, v2

    move-object/from16 v1, p0

    move-object/from16 v23, v2

    move-object v2, v7

    move/from16 v20, v3

    move-object/from16 v3, p1

    move-object/from16 v24, v5

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v19}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;-><init>(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;Landroid/graphics/Rect;Landroid/view/View;IIIIIIIIIIIIIIII)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :goto_2
    return v20
.end method
