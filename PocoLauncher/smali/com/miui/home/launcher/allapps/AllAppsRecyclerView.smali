.class public Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;
.super Lcom/miui/home/launcher/BaseRecyclerView;
.source "AllAppsRecyclerView.java"

# interfaces
.implements Lcom/miui/launcher/sosc/interfaces/SoscingView;


# instance fields
.field private mAnimItemIndex:I

.field private mAnimReady:Z

.field private mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

.field private mCachedScrollPositions:Landroid/util/SparseIntArray;

.field private mFastScrollHelper:Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;

.field private mIsReverse:Z

.field private final mNumAppsPerRow:I

.field private mSplitLineCount:I

.field private mViewHeights:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->mViewHeights:Landroid/util/SparseIntArray;

    .line 62
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->mCachedScrollPositions:Landroid/util/SparseIntArray;

    .line 67
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXDrawerMode()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->mNumAppsPerRow:I

    .line 68
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->updatePadding()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;)Landroid/util/SparseIntArray;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->mCachedScrollPositions:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method private calculateAnim(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;ILandroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 5

    .line 477
    iget-object v0, p3, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .line 479
    check-cast p5, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p5}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p5

    if-nez v0, :cond_0

    .line 481
    new-instance v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    invoke-direct {v0}, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;-><init>()V

    .line 482
    iput-object v0, p3, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    :cond_0
    if-nez p2, :cond_1

    .line 485
    iput p2, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->mAnimItemIndex:I

    .line 488
    :cond_1
    iput p4, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->count:I

    .line 489
    iput p5, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    .line 490
    iget p3, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->mSplitLineCount:I

    sub-int v1, p4, p3

    div-int/2addr v1, p5

    add-int/2addr v1, p3

    sub-int p3, p4, p3

    .line 491
    rem-int/2addr p3, p5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez p3, :cond_2

    move p3, v3

    goto :goto_0

    :cond_2
    move p3, v2

    :goto_0
    add-int/2addr v1, p3

    iput v1, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    .line 492
    iget p3, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->mAnimItemIndex:I

    rem-int v4, p3, p5

    iput v4, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 493
    div-int v4, p3, p5

    iput v4, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    .line 495
    instance-of p1, p1, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz p1, :cond_4

    .line 496
    iget-boolean p1, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->mIsReverse:Z

    if-eqz p1, :cond_3

    .line 497
    iput p2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->index:I

    goto :goto_1

    :cond_3
    sub-int/2addr p4, v3

    sub-int/2addr p4, p2

    .line 499
    iput p4, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->index:I

    sub-int/2addr v1, v4

    sub-int/2addr v1, v3

    .line 500
    iput v1, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    :goto_1
    add-int/2addr p3, v3

    .line 502
    iput p3, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->mAnimItemIndex:I

    goto :goto_2

    :cond_4
    sub-int/2addr p4, v3

    sub-int/2addr p4, p2

    .line 505
    iput p4, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->index:I

    sub-int/2addr v1, v4

    sub-int/2addr v1, v3

    .line 506
    iput v1, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    .line 507
    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    add-int/2addr p3, p5

    .line 508
    iput p3, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->mAnimItemIndex:I

    :goto_2
    return-void
.end method

.method private isFoundSection(Ljava/lang/String;Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;)Z
    .locals 0

    .line 201
    iget-object p0, p2, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, p2, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    .line 202
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, p2, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    const-string/jumbo p2, "\u2026"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "#"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

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

.method private updatePadding()V
    .locals 4

    .line 553
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInHalfSoscSplitMode()Z

    move-result v0

    .line 554
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070062

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const v3, 0x7f07005f

    :goto_0
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 555
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const v2, 0x7f070060

    :goto_1
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 556
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v1, v2, v0, v3}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    return-void
.end method


# virtual methods
.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 6

    .line 446
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v5

    .line 447
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v0, v5, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 449
    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->mAnimReady:Z

    if-eqz v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p2

    move v4, p4

    .line 450
    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->calculateAnim(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;ILandroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 453
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getApps()Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    return-object p0
.end method

.method protected getAvailableScrollHeight()I
    .locals 3

    .line 394
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getCurrentScrollY(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 395
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getCurrentScrollY()I
    .locals 4

    .line 329
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    .line 330
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->mNumAppsPerRow:I

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 335
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 336
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v2

    if-ne v2, v1, :cond_1

    return v1

    .line 340
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    .line 341
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getCurrentScrollY(II)I

    move-result p0

    add-int/2addr v1, p0

    :cond_2
    :goto_0
    return v1
.end method

.method public getCurrentScrollY(II)I
    .locals 8

    .line 345
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    .line 346
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 347
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 348
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->mCachedScrollPositions:Landroid/util/SparseIntArray;

    const/4 v3, -0x1

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-gez v2, :cond_7

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_1
    if-ge v4, p1, :cond_6

    .line 351
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 352
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    .line 353
    iget v6, v5, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-static {v6}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->isIconViewType(I)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v1, :cond_1

    .line 355
    iget v6, v1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    iget v7, v5, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    if-ne v6, v7, :cond_1

    iget v6, v1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->rowIndex:I

    iget v7, v5, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->rowIndex:I

    if-ne v6, v7, :cond_1

    goto :goto_4

    .line 361
    :cond_1
    iget v6, v5, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->rowAppIndex:I

    if-nez v6, :cond_5

    .line 362
    iget-object v6, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->mViewHeights:Landroid/util/SparseIntArray;

    iget v5, v5, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-virtual {v6, v5, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_3

    .line 366
    :cond_2
    iget-object v6, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->mViewHeights:Landroid/util/SparseIntArray;

    iget v7, v5, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    if-nez v6, :cond_4

    .line 368
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v6

    if-nez v6, :cond_3

    .line 370
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v6

    iget v5, v5, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-virtual {v6, p0, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    .line 371
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v6

    invoke-virtual {v6, v5, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 372
    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6, v2, v2}, Landroid/view/View;->measure(II)V

    .line 373
    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 375
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->putRecycledView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_2

    .line 377
    :cond_3
    iget-object v5, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    :cond_4
    :goto_2
    add-int/2addr v3, v6

    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 383
    :cond_6
    :goto_4
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->mCachedScrollPositions:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v3}, Landroid/util/SparseIntArray;->put(II)V

    move v2, v3

    :cond_7
    sub-int/2addr v2, p2

    return v2
.end method

.method public getSectionFromFraction(F)Ljava/lang/String;
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->getNumAppRows()I

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 152
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    .line 153
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->getFastScrollerSections()Ljava/util/List;

    move-result-object p0

    .line 154
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x0

    .line 155
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    const/4 v1, 0x1

    .line 156
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 157
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    .line 158
    iget v3, v2, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    cmpl-float v3, v3, p1

    if-lez v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    move-object v0, v2

    goto :goto_0

    .line 163
    :cond_3
    :goto_1
    iget-object p0, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    return-object p0
.end method

.method protected getTopPaddingOffset()I
    .locals 0

    .line 244
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p0

    neg-int p0, p0

    return p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 405
    invoke-super {p0}, Lcom/miui/home/launcher/BaseRecyclerView;->onAttachedToWindow()V

    .line 406
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 560
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 561
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->updatePadding()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 413
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onDetachedFromWindow()V

    .line 414
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onFastScrollCompleted()V
    .locals 0

    .line 207
    invoke-super {p0}, Lcom/miui/home/launcher/BaseRecyclerView;->onFastScrollCompleted()V

    .line 208
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->mFastScrollHelper:Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->onFastScrollCompleted()V

    return-void
.end method

.method public onInterceptSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 459
    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/RecyclerView;->onLayout(ZIIII)V

    .line 460
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    .line 461
    iput p2, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->mSplitLineCount:I

    :goto_0
    if-ge p2, p1, :cond_1

    .line 463
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    instance-of p3, p3, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz p3, :cond_0

    goto :goto_1

    .line 466
    :cond_0
    iget p3, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->mSplitLineCount:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->mSplitLineCount:I

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/CellCountChangeMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 432
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 433
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/IconSizeChangeMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 439
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 440
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/BaseRecyclerView;->onSizeChanged(IIII)V

    .line 111
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->updateHeightCache()V

    return-void
.end method

.method public onSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 0

    .line 541
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    instance-of p1, p1, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    if-eqz p1, :cond_0

    .line 542
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsCellHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->setCellHeight(I)V

    .line 544
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->updateHeightCache()V

    .line 545
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->updatePadding()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 421
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 422
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->endDragViewContainerBlurAnim()V

    .line 427
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onUpdateScrollbar(I)V
    .locals 6

    .line 252
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    if-nez v0, :cond_0

    return-void

    .line 255
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    .line 258
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    iget v0, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->mNumAppsPerRow:I

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 264
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getCurrentScrollY()I

    move-result v0

    if-gez v0, :cond_2

    .line 266
    iget-object p0, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->setThumbOffsetY(I)V

    return-void

    .line 271
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseRecyclerView;->getAvailableScrollBarHeight()I

    move-result v2

    .line 272
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getAvailableScrollHeight()I

    move-result v3

    if-gtz v3, :cond_3

    .line 274
    iget-object p0, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->setThumbOffsetY(I)V

    return-void

    .line 278
    :cond_3
    iget-object v1, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    invoke-virtual {v1}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->isThumbDetached()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 279
    iget-object v1, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    invoke-virtual {v1}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->isDraggingThumb()Z

    move-result v1

    if-nez v1, :cond_7

    int-to-float v0, v0

    int-to-float v1, v3

    div-float/2addr v0, v1

    int-to-float v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 286
    iget-object v1, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    invoke-virtual {v1}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->getThumbOffsetY()I

    move-result v1

    sub-int v3, v0, v1

    mul-int v4, v3, p1

    int-to-float v4, v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    if-gez p1, :cond_4

    mul-int/2addr p1, v1

    int-to-float p1, p1

    int-to-float v4, v0

    div-float/2addr p1, v4

    float-to-int p1, p1

    .line 296
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_4
    sub-int v4, v2, v1

    mul-int/2addr p1, v4

    int-to-float p1, p1

    sub-int v4, v2, v0

    int-to-float v4, v4

    div-float/2addr p1, v4

    float-to-int p1, p1

    .line 300
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    add-int/2addr v1, p1

    const/4 p1, 0x0

    .line 302
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 303
    iget-object v1, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->setThumbOffsetY(I)V

    if-ne v0, p1, :cond_7

    .line 305
    iget-object p0, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    invoke-virtual {p0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->reattachThumbToScroll()V

    goto :goto_1

    .line 311
    :cond_5
    iget-object p0, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->setThumbOffsetY(I)V

    goto :goto_1

    .line 315
    :cond_6
    invoke-virtual {p0, v0, v3}, Lcom/miui/home/launcher/BaseRecyclerView;->synchronizeScrollBarThumbOffsetToViewScroll(II)V

    :cond_7
    :goto_1
    return-void

    .line 259
    :cond_8
    :goto_2
    iget-object p0, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->setThumbOffsetY(I)V

    return-void
.end method

.method public scrollToPositionAtProgress(F)Ljava/lang/String;
    .locals 5

    .line 119
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->getNumAppRows()I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 125
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 128
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    .line 129
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->getFastScrollerSections()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 130
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    const/4 v2, 0x1

    .line 131
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 132
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    .line 133
    iget v4, v3, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    cmpl-float v4, v4, p1

    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move-object v1, v3

    goto :goto_0

    .line 140
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getCurrentScrollY()I

    move-result p1

    .line 141
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getAvailableScrollHeight()I

    move-result v0

    .line 142
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->mFastScrollHelper:Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->smoothScrollToSection(IILcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;)Z

    .line 143
    iget-object p0, v1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    return-object p0
.end method

.method public scrollToPositionAtSection(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 168
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->getNumAppRows()I

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 174
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 177
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->getFastScrollerSections()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    .line 178
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    const/4 v4, 0x1

    .line 179
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 180
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    .line 181
    invoke-direct {p0, p1, v3}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->isFoundSection(Ljava/lang/String;Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    move-object v3, v5

    goto :goto_0

    .line 188
    :cond_2
    :goto_1
    invoke-direct {p0, p1, v3}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->isFoundSection(Ljava/lang/String;Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 189
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->mFastScrollHelper:Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->setAllTrackedViewsFastScrollFocusState(Z)V

    return-object v1

    .line 194
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getCurrentScrollY()I

    move-result p1

    .line 195
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getAvailableScrollHeight()I

    move-result v0

    .line 196
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->mFastScrollHelper:Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;

    invoke-virtual {p0, p1, v0, v3}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->smoothScrollToSection(IILcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;)Z

    .line 197
    iget-object p0, v3, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    return-object p0
.end method

.method public scrollToTop()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->reattachThumbToScroll()V

    :cond_0
    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    .line 213
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 214
    new-instance v0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView$1;-><init>(Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 234
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->mFastScrollHelper:Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;

    check-cast p1, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->onSetAdapter(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;)V

    return-void
.end method

.method public setAnimation()V
    .locals 2

    .line 513
    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->mAnimReady:Z

    if-nez v0, :cond_0

    .line 514
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010041

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    :cond_0
    const/4 v0, 0x1

    .line 517
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->mAnimReady:Z

    return-void
.end method

.method public setApps(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;)V
    .locals 1

    .line 75
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    .line 76
    new-instance v0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;-><init>(Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;)V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->mFastScrollHelper:Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;

    return-void
.end method

.method public showScrollbar(Z)V
    .locals 2

    .line 521
    iget-object v0, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ne p1, v0, :cond_1

    return-void

    .line 525
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 527
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->setThumbOffsetY(I)V

    .line 528
    iget-object p0, p0, Lcom/miui/home/launcher/BaseRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const/4 p0, 0x4

    .line 530
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public updateHeightCache()V
    .locals 4

    .line 84
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    if-nez v0, :cond_0

    return-void

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->mViewHeights:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 89
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->mViewHeights:Landroid/util/SparseIntArray;

    .line 90
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->getViewHolderHeight(Landroid/content/Context;I)I

    move-result v2

    .line 89
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 91
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->mViewHeights:Landroid/util/SparseIntArray;

    .line 92
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->getViewHolderHeight(Landroid/content/Context;I)I

    move-result v2

    .line 91
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 93
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->mViewHeights:Landroid/util/SparseIntArray;

    .line 94
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 v2, 0x10

    invoke-virtual {v0, p0, v2}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->getViewHolderHeight(Landroid/content/Context;I)I

    move-result p0

    .line 93
    invoke-virtual {v1, v2, p0}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method
