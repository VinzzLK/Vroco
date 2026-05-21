.class public Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;
.super Lmiuix/internal/widget/ListPopup;
.source "ContextMenuPopupWindowImpl.java"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindow;


# instance fields
.field private mAdapter:Lmiuix/appcompat/internal/view/menu/context/ContextMenuAdapter;

.field private mLastAnchor:Landroid/view/View;

.field private mLastParent:Landroid/view/ViewGroup;

.field private mMarginScreen:I

.field private mMaxWidth:I

.field private mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field private mPopupContentView:Landroid/widget/LinearLayout;

.field private mSeparateItemMenuView:Landroid/view/View;

.field private mSeparateMenuItem:Landroid/view/MenuItem;

.field private mSeparateMenuView:Landroid/view/View;

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/widget/PopupWindow$OnDismissListener;Landroid/view/View;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p4}, Lmiuix/internal/widget/ListPopup;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 51
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 52
    new-instance p2, Lmiuix/appcompat/internal/view/menu/context/ContextMenuAdapter;

    iget-object p4, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-direct {p2, p1, p4}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuAdapter;-><init>(Landroid/content/Context;Landroid/view/Menu;)V

    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mAdapter:Lmiuix/appcompat/internal/view/menu/context/ContextMenuAdapter;

    .line 53
    invoke-virtual {p2}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuAdapter;->getLastCategorySystemOrderMenuItem()Landroid/view/MenuItem;

    move-result-object p2

    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuItem:Landroid/view/MenuItem;

    .line 54
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->prepareMultipleChoiceMenu(Landroid/content/Context;)V

    .line 55
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mAdapter:Lmiuix/appcompat/internal/view/menu/context/ContextMenuAdapter;

    invoke-virtual {p0, p2}, Lmiuix/internal/widget/ListPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 56
    new-instance p2, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl$1;

    invoke-direct {p2, p0}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl$1;-><init>(Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;)V

    invoke-virtual {p0, p2}, Lmiuix/internal/widget/ListPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    if-eqz p3, :cond_0

    .line 76
    invoke-virtual {p0, p3}, Lmiuix/internal/widget/ListPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 78
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_context_menu_window_margin_screen:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mMarginScreen:I

    return-void
.end method

.method static synthetic access$000(Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;)Lmiuix/appcompat/internal/view/menu/context/ContextMenuAdapter;
    .locals 0

    .line 28
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mAdapter:Lmiuix/appcompat/internal/view/menu/context/ContextMenuAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    .locals 0

    .line 28
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;)Landroid/view/View;
    .locals 0

    .line 28
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mLastAnchor:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;)F
    .locals 0

    .line 28
    iget p0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mX:F

    return p0
.end method

.method static synthetic access$400(Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;)F
    .locals 0

    .line 28
    iget p0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mY:F

    return p0
.end method

.method static synthetic access$500(Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;Landroid/view/View;FF)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->fastShowAsContextMenu(Landroid/view/View;FF)V

    return-void
.end method

.method static synthetic access$600(Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;)Landroid/view/MenuItem;
    .locals 0

    .line 28
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuItem:Landroid/view/MenuItem;

    return-object p0
.end method

.method private fastShowAsContextMenu(Landroid/view/View;FF)V
    .locals 3

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 108
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 109
    invoke-static {v0, v1}, Lmiuix/internal/util/ViewUtils;->getBoundsInWindow(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 110
    invoke-virtual {p0, v1}, Lmiuix/internal/widget/ListPopup;->checkMaxWidth(Landroid/graphics/Rect;)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mMaxWidth:I

    .line 111
    invoke-virtual {p0, v1}, Lmiuix/internal/widget/ListPopup;->computePopupContentWidth(Landroid/graphics/Rect;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 v0, -0x2

    .line 112
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 113
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 114
    invoke-direct {p0, p1, p2, p3, v1}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->showWithAnchor(Landroid/view/View;FFLandroid/graphics/Rect;)V

    .line 115
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    return-void
.end method

.method private getListViewHeight()I
    .locals 8

    .line 187
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    move v3, v1

    move v4, v3

    .line 190
    :goto_0
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v3, v5, :cond_1

    const/4 v5, 0x0

    .line 191
    invoke-interface {v2, v3, v5, v0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 192
    iget v6, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mMaxWidth:I

    const/high16 v7, -0x80000000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 193
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 192
    invoke-virtual {v5, v6, v7}, Landroid/view/View;->measure(II)V

    .line 194
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 198
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 197
    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    .line 199
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/lit8 v4, p0, 0x0

    :cond_1
    return v4
.end method

.method private getMultipleChoiceViewHeight()I
    .locals 6

    .line 206
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 207
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 212
    :goto_0
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateItemMenuView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 213
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateItemMenuView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {v2, v3, v1, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 215
    :cond_1
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    iget v3, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mMaxWidth:I

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 216
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 215
    invoke-virtual {v2, v3, v5}, Landroid/view/View;->measure(II)V

    .line 217
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateItemMenuView:Landroid/view/View;

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    .line 218
    invoke-static {v2, v1, v3}, Lmiuix/internal/util/TaggingDrawableUtil;->updateItemBackground(Landroid/view/View;II)V

    .line 219
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    iget v3, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mMaxWidth:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 220
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 219
    invoke-virtual {v2, v3, v1}, Landroid/view/View;->measure(II)V

    .line 222
    :cond_2
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int v1, v0, p0

    :cond_3
    return v1
.end method

.method private prepareMultipleChoiceMenu(Landroid/content/Context;)V
    .locals 1

    .line 82
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuItem:Landroid/view/MenuItem;

    if-nez p1, :cond_0

    .line 83
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 85
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 86
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    new-instance v0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl$2;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl$2;-><init>(Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    invoke-static {p0}, Lmiuix/internal/util/AnimHelper;->addItemPressEffect(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private showWithAnchor(Landroid/view/View;FFLandroid/graphics/Rect;)V
    .locals 8

    .line 151
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 152
    invoke-static {p1, v0}, Lmiuix/internal/util/ViewUtils;->getBoundsInWindow(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 153
    iget v1, v0, Landroid/graphics/Rect;->left:I

    float-to-int p2, p2

    add-int/2addr v1, p2

    .line 154
    iget p2, v0, Landroid/graphics/Rect;->top:I

    float-to-int p3, p3

    add-int/2addr p2, p3

    .line 155
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result p3

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-gt v1, p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    move p3, v2

    .line 156
    :goto_0
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt v1, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 157
    :goto_1
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->getListViewHeight()I

    move-result v3

    .line 158
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->getListViewHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr p2, v4

    int-to-float p2, p2

    .line 159
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3dcccccd    # 0.1f

    mul-float/2addr v4, v5

    cmpg-float v4, p2, v4

    if-gez v4, :cond_2

    .line 160
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, v5

    .line 162
    :cond_2
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->getMultipleChoiceViewHeight()I

    move-result v4

    add-int/2addr v3, v4

    .line 163
    invoke-virtual {p0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 164
    invoke-virtual {p0, v3}, Lmiuix/internal/widget/ListPopup;->setContentHeight(I)V

    int-to-float v3, v3

    add-float v4, p2, v3

    .line 165
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3f666666    # 0.9f

    mul-float/2addr v6, v7

    cmpl-float v4, v4, v6

    if-lez v4, :cond_3

    .line 166
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, v7

    sub-float/2addr p2, v3

    .line 168
    :cond_3
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    cmpg-float v3, p2, v3

    if-gez v3, :cond_4

    .line 169
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, v5

    .line 170
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f4ccccc    # 0.79999995f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 171
    invoke-virtual {p0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    :cond_4
    if-eqz p3, :cond_5

    .line 175
    iget v1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mMarginScreen:I

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    .line 177
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p3

    iget p4, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mMarginScreen:I

    sub-int/2addr p3, p4

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result p4

    sub-int v1, p3, p4

    :cond_6
    :goto_2
    float-to-int p2, p2

    .line 181
    invoke-virtual {p0, p1, v2, v1, p2}, Lmiuix/internal/widget/ListPopup;->showAtLocation(Landroid/view/View;III)V

    .line 182
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lmiuix/internal/widget/ListPopup;->changeWindowBackground(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected prepareContentView(Landroid/content/Context;)V
    .locals 7

    .line 229
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mPopupContentView:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    .line 230
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 231
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mPopupContentView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 232
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mPopupContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 233
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lmiuix/appcompat/R$layout;->miuix_appcompat_popup_menu_item_context_separate:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    .line 234
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 235
    sget v2, Lmiuix/appcompat/R$id;->separate_item_menu:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateItemMenuView:Landroid/view/View;

    .line 237
    :cond_0
    sget v0, Lmiuix/appcompat/R$attr;->immersionWindowBackground:I

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 239
    iget-object v2, p0, Lmiuix/internal/widget/ListPopup;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 240
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 241
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    iget v2, p0, Lmiuix/internal/widget/ListPopup;->mElevation:I

    iget v4, p0, Lmiuix/internal/widget/ListPopup;->mElevationExtra:I

    add-int/2addr v2, v4

    invoke-virtual {p0, v0, v2}, Lmiuix/internal/widget/ListPopup;->prepareWindowElevation(Landroid/view/View;I)V

    .line 243
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v4, -0x1

    invoke-direct {v0, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 245
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_context_menu_separate_item_margin_top:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 246
    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 247
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mPopupContentView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v4, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mPopupContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    invoke-virtual {p0, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 250
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mPopupContentView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lmiuix/internal/widget/ListPopup;->setPopupWindowContentView(Landroid/view/View;)V

    return-void
.end method

.method public show(Landroid/view/View;Landroid/view/ViewGroup;FF)V
    .locals 2

    .line 120
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mLastAnchor:Landroid/view/View;

    .line 121
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mLastParent:Landroid/view/ViewGroup;

    .line 122
    iput p3, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mX:F

    .line 123
    iput p4, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mY:F

    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 125
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 126
    invoke-static {v0, v1}, Lmiuix/internal/util/ViewUtils;->getBoundsInWindow(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 127
    invoke-virtual {p0, v1}, Lmiuix/internal/widget/ListPopup;->checkMaxWidth(Landroid/graphics/Rect;)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mMaxWidth:I

    .line 128
    invoke-virtual {p0, p1, p2, v1}, Lmiuix/internal/widget/ListPopup;->prepareShow(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Rect;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 129
    invoke-direct {p0, p1, p3, p4, v1}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->showWithAnchor(Landroid/view/View;FFLandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public update(Landroid/view/Menu;)V
    .locals 0

    .line 103
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mAdapter:Lmiuix/appcompat/internal/view/menu/context/ContextMenuAdapter;

    invoke-virtual {p0, p1}, Lmiuix/internal/widget/PopupMenuAdapter;->update(Landroid/view/Menu;)V

    return-void
.end method

.method public updatePopupWindow(Landroid/view/View;Landroid/view/ViewGroup;FF)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mLastAnchor:Landroid/view/View;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-eqz p2, :cond_2

    goto :goto_1

    .line 144
    :cond_2
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mLastParent:Landroid/view/ViewGroup;

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    move-object p2, v0

    .line 147
    :goto_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->show(Landroid/view/View;Landroid/view/ViewGroup;FF)V

    return-void
.end method
