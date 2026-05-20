.class public Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CategoryOrderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryOrderUpdateCallback;,
        Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryListener;,
        Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$TouchCallback;,
        Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCategoryList:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;

.field private final mCategoryListener:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryListener;

.field private mDifferList:Landroidx/recyclerview/widget/AsyncListDiffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/AsyncListDiffer<",
            "Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mToPosition:I

.field private mUpdateCallback:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryOrderUpdateCallback;


# direct methods
.method public static synthetic $r8$lambda$4cg2DBQtFghPJeUPQ8inYV5rI5k(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->lambda$onBindViewHolder$3(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Nhw8kpeONZM_3ZAayM930rsiURg(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->lambda$onBindViewHolder$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TWagmQ9z5Gf5648rR3gg7mq2iBU(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;Lcom/miui/home/launcher/allapps/category/CategoryInfo;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->lambda$onBindViewHolder$1(Lcom/miui/home/launcher/allapps/category/CategoryInfo;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iJzaB4iUft0clwnHkMeX-QIbqNE(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;Lcom/miui/home/launcher/allapps/category/CategoryInfo;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->lambda$onBindViewHolder$0(Lcom/miui/home/launcher/allapps/category/CategoryInfo;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sRH1nRr7-tByLC1ZLhmOLxcQTKU(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->lambda$onBindViewHolder$2(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryListener;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mToPosition:I

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 43
    iput-object p2, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mCategoryList:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;

    .line 44
    iput-object p3, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mCategoryListener:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryListener;

    .line 46
    new-instance p1, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryOrderUpdateCallback;

    invoke-direct {p1, p0, p0}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryOrderUpdateCallback;-><init>(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mUpdateCallback:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryOrderUpdateCallback;

    .line 47
    new-instance p1, Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object p3, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mUpdateCallback:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryOrderUpdateCallback;

    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->getDifferConfig()Landroidx/recyclerview/widget/AsyncDifferConfig;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Landroidx/recyclerview/widget/AsyncListDiffer;-><init>(Landroidx/recyclerview/widget/ListUpdateCallback;Landroidx/recyclerview/widget/AsyncDifferConfig;)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mDifferList:Landroidx/recyclerview/widget/AsyncListDiffer;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mToPosition:I

    return p0
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mToPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;)Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mCategoryList:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;

    return-object p0
.end method

.method private getItem(I)Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mDifferList:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;

    return-object p0
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/miui/home/launcher/allapps/category/CategoryInfo;Landroid/view/View;)V
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mCategoryListener:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryListener;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->getCategoryId()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryListener;->removeCategory(I)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Lcom/miui/home/launcher/allapps/category/CategoryInfo;Landroid/view/View;)V
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mCategoryListener:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryListener;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->getCategoryId()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryListener;->editCategory(I)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$2(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 86
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_0

    .line 87
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mUpdateCallback:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryOrderUpdateCallback;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryOrderUpdateCallback;->setAnimEnable(Z)V

    .line 88
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$onBindViewHolder$3(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 93
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 94
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$onBindViewHolder$4(Landroid/view/View;)V
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mCategoryListener:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryListener;

    invoke-interface {p0}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryListener;->addCategory()V

    return-void
.end method


# virtual methods
.method attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v1, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$TouchCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$TouchCallback;-><init>(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$1;)V

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 58
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public getItemCount()I
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mDifferList:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->getItem(I)Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;

    move-result-object p0

    iget p0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;->viewType:I

    return p0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 230
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 231
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mUpdateCallback:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryOrderUpdateCallback;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 28
    check-cast p1, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->onBindViewHolder(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;I)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 76
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 p2, 0x2

    if-eq v0, p2, :cond_0

    goto/16 :goto_0

    .line 100
    :cond_0
    iget-object p2, p1, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const v0, 0x7f100037

    .line 101
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 102
    invoke-virtual {p2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 103
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 104
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    const v1, 0x7f070057

    .line 105
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 106
    invoke-virtual {p2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v3

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    .line 105
    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    const v1, 0x7f0603f7

    .line 107
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f0801a3

    invoke-virtual {v0, v1}, Landroid/app/Application;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 109
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object p0, p1, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;->drag:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 111
    iget-object p0, p1, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 78
    :cond_1
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->getItem(I)Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;

    move-result-object p2

    iget-object p2, p2, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;->categoryInfo:Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    .line 79
    iget-object v0, p1, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->getCategoryName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p1, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v3, 0x7f0802c0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    iget-object v0, p1, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 82
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v3

    const v4, 0x7f10001c

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->getCategoryName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {v3, v4, v2}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p1, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;Lcom/miui/home/launcher/allapps/category/CategoryInfo;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;Lcom/miui/home/launcher/allapps/category/CategoryInfo;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object p2, p1, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;->drag:Landroid/view/View;

    new-instance v0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$$ExternalSyntheticLambda4;-><init>(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 92
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$$ExternalSyntheticLambda3;

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;
    .locals 2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected view type:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 67
    :cond_1
    :goto_0
    new-instance p2, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d008f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 236
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 237
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mUpdateCallback:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryOrderUpdateCallback;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->onDetachedFromRecyclerView()V

    return-void
.end method

.method public setAnimEnable(Z)V
    .locals 0

    .line 241
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mUpdateCallback:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryOrderUpdateCallback;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryOrderUpdateCallback;->setAnimEnable(Z)V

    return-void
.end method

.method submitList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;",
            ">;)V"
        }
    .end annotation

    .line 51
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mDifferList:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/AsyncListDiffer;->submitList(Ljava/util/List;)V

    return-void
.end method
