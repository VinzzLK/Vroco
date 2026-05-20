.class public Lcom/miui/home/launcher/allapps/search/ZeroMaskView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "ZeroMaskView.java"


# instance fields
.field private mCloseArea:Landroid/view/View;

.field private mCloseBtn:Landroid/widget/ImageView;

.field private mMaskAdapter:Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;

.field private mSpanCount:I

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public static synthetic $r8$lambda$J7mvyEbM7kHsJd-u41Cy-kN6g8s(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/allapps/search/ZeroMaskView;->lambda$setOnClickListener$0(Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MtJ7id_87UPmOrvjQAJRs669TRQ(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/allapps/search/ZeroMaskView;->lambda$setOnClickListener$1(Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gmqWg17vFzhx-EEhTquAfzLY9mA(Lcom/miui/home/launcher/AppInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/search/ZeroMaskView;->lambda$setFrequentUsedAppList$2(Lcom/miui/home/launcher/AppInfo;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static synthetic lambda$setFrequentUsedAppList$2(Lcom/miui/home/launcher/AppInfo;)Z
    .locals 0

    .line 143
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$setOnClickListener$0(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 58
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$setOnClickListener$1(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 63
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public initRecyclerview(Lcom/miui/home/launcher/Launcher;ZI)V
    .locals 1

    .line 119
    new-instance v0, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;

    invoke-direct {v0, p1, p2}, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;-><init>(Lcom/miui/home/launcher/Launcher;Z)V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskView;->mMaskAdapter:Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;

    .line 120
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_0

    .line 121
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 123
    :cond_0
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskView;->mMaskAdapter:Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 124
    new-instance p2, Lcom/miui/home/launcher/allapps/search/ZeroMaskView$1;

    invoke-direct {p2, p0, p1, p3}, Lcom/miui/home/launcher/allapps/search/ZeroMaskView$1;-><init>(Lcom/miui/home/launcher/allapps/search/ZeroMaskView;Landroid/content/Context;I)V

    .line 130
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskView;->mMaskAdapter:Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;

    if-eqz p0, :cond_0

    .line 97
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 47
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f0a0311

    .line 48
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0a022f

    .line 49
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskView;->mCloseBtn:Landroid/widget/ImageView;

    const v0, 0x7f0a0418

    .line 50
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskView;->mCloseArea:Landroid/view/View;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 70
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 73
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setFrequentUsedAppList(Ljava/util/List;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;ZZ)V"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskView;->mMaskAdapter:Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 138
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;->clearDataList()V

    return-void

    :cond_1
    if-eqz p1, :cond_4

    .line 141
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    if-eqz p3, :cond_2

    .line 143
    sget-object p2, Lcom/miui/home/launcher/allapps/search/ZeroMaskView$$ExternalSyntheticLambda2;->INSTANCE:Lcom/miui/home/launcher/allapps/search/ZeroMaskView$$ExternalSyntheticLambda2;

    invoke-interface {p1, p2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 145
    :cond_2
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskView;->mMaskAdapter:Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    iget v0, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskView;->mSpanCount:I

    mul-int/lit8 v0, v0, 0x2

    if-le p3, v0, :cond_3

    new-instance p3, Ljava/util/ArrayList;

    const/4 v0, 0x0

    iget p0, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskView;->mSpanCount:I

    mul-int/lit8 p0, p0, 0x2

    invoke-interface {p1, v0, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, p3

    :cond_3
    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;->setDataList(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 55
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskView;->mCloseBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/home/launcher/allapps/search/ZeroMaskView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/allapps/search/ZeroMaskView$$ExternalSyntheticLambda0;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskView;->mCloseArea:Landroid/view/View;

    new-instance v0, Lcom/miui/home/launcher/allapps/search/ZeroMaskView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/allapps/search/ZeroMaskView$$ExternalSyntheticLambda1;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updateBackground(Z)V
    .locals 4

    .line 77
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v0

    .line 78
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v1

    .line 79
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    .line 82
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 83
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 86
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskView;->mMaskAdapter:Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;

    if-eqz v2, :cond_1

    .line 87
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getZeroMaskContainerDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v2, 0x20

    .line 88
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 89
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 91
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskView;->mMaskAdapter:Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;->updateLightMode(Z)V

    :cond_1
    return-void
.end method

.method public updateSearchMaskViewContent(Lcom/miui/home/launcher/Launcher;ZZZI)V
    .locals 1

    .line 102
    iput p5, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskView;->mSpanCount:I

    if-eqz p2, :cond_0

    .line 105
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 106
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskView;->mCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 110
    :cond_0
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskView;->mCloseBtn:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p3, :cond_1

    .line 113
    invoke-virtual {p0, p1, p4, p5}, Lcom/miui/home/launcher/allapps/search/ZeroMaskView;->initRecyclerview(Lcom/miui/home/launcher/Launcher;ZI)V

    .line 115
    :cond_1
    invoke-virtual {p0, p4}, Lcom/miui/home/launcher/allapps/search/ZeroMaskView;->updateBackground(Z)V

    return-void
.end method
