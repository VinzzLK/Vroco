.class public Lcom/miui/home/launcher/allapps/category/CategoryNavigator;
.super Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;
.source "CategoryNavigator.java"


# instance fields
.field private mContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

.field private mObserver:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance p1, Lcom/miui/home/launcher/allapps/category/CategoryNavigator$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/allapps/category/CategoryNavigator$1;-><init>(Lcom/miui/home/launcher/allapps/category/CategoryNavigator;)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/CategoryNavigator;->mObserver:Landroid/database/DataSetObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/allapps/category/CategoryNavigator;Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/category/CategoryNavigator;->updateAdjustMode(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;)V

    return-void
.end method

.method private getIndicatorWidth()I
    .locals 3

    .line 73
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 74
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 75
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f070078

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 76
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v2

    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    sub-int/2addr v2, p0

    return v2
.end method

.method private updateAdjustMode(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 55
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/CategoryNavigator;->getIndicatorWidth()I

    move-result v0

    .line 57
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 58
    invoke-virtual {p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_2

    .line 59
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p1, v6, v4}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;->getTitleView(Landroid/content/Context;I)Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;

    move-result-object v6

    .line 60
    instance-of v7, v6, Landroid/view/View;

    if-eqz v7, :cond_1

    .line 61
    move-object v7, v6

    check-cast v7, Landroid/view/View;

    .line 62
    invoke-virtual {v7, v3, v3}, Landroid/view/View;->measure(II)V

    .line 63
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v5, v8

    .line 64
    invoke-virtual {v1, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    iget-object v6, p0, Lcom/miui/home/launcher/allapps/category/CategoryNavigator;->mContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->setTabHeight(I)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    if-lez v5, :cond_3

    .line 68
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-le v1, p1, :cond_3

    invoke-virtual {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->getLeftPadding()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->getRightPadding()I

    move-result v1

    sub-int/2addr v0, v1

    if-ge v5, v0, :cond_3

    move v3, p1

    :cond_3
    invoke-virtual {p0, v3}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->setAdjustMode(Z)V

    return-void
.end method


# virtual methods
.method public setAdapter(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;)V
    .locals 2

    .line 37
    invoke-virtual {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->getAdapter()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->getAdapter()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/CategoryNavigator;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 40
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/category/CategoryNavigator;->updateAdjustMode(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;)V

    .line 41
    invoke-super {p0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->setAdapter(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;)V

    if-eqz p1, :cond_1

    .line 43
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/CategoryNavigator;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    return-void
.end method

.method public setContainer(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/CategoryNavigator;->mContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    return-void
.end method
