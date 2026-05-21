.class public Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;
.super Landroid/widget/RelativeLayout;
.source "AllAppsNormalContainerView.java"


# instance fields
.field private mAdapter:Lcom/miui/home/launcher/allapps/hideapps/HideAppsGridAdapter;

.field private mAllAppsRecyclerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsRecyclerView;

.field private mFocusedItemDecorator:Lcom/miui/home/launcher/keyboard/FocusedItemDecorator;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field private final mTouchFeedbackView:Lcom/miui/home/launcher/allapps/hideapps/ClickShadowView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 74
    new-instance p2, Lcom/miui/home/launcher/allapps/hideapps/ClickShadowView;

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/allapps/hideapps/ClickShadowView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;->mTouchFeedbackView:Lcom/miui/home/launcher/allapps/hideapps/ClickShadowView;

    .line 78
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result p1

    .line 79
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result p3

    .line 80
    invoke-virtual {p0, p2, p1, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    return-void
.end method

.method private setUp(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;ZZ)V
    .locals 3

    .line 103
    new-instance p5, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGridAdapter;

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/allapps/AllAppsSheet;->COLOR_MODE:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    const/16 v2, 0xff

    invoke-direct {p5, v0, p1, v1, v2}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGridAdapter;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V

    iput-object p5, p0, Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;->mAdapter:Lcom/miui/home/launcher/allapps/hideapps/HideAppsGridAdapter;

    if-eqz p4, :cond_0

    .line 105
    invoke-virtual {p5, p4}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGridAdapter;->setDefaultCheckBoxShow(Z)V

    .line 107
    :cond_0
    iget-object p4, p0, Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;->mAdapter:Lcom/miui/home/launcher/allapps/hideapps/HideAppsGridAdapter;

    invoke-virtual {p4, p2}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->setIconClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;->mAdapter:Lcom/miui/home/launcher/allapps/hideapps/HideAppsGridAdapter;

    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->setIconLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 109
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;->mAdapter:Lcom/miui/home/launcher/allapps/hideapps/HideAppsGridAdapter;

    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->getLayoutManager()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 111
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;->mAllAppsRecyclerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsRecyclerView;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->setApps(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;)V

    .line 112
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;->mAllAppsRecyclerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsRecyclerView;

    iget-object p3, p0, Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 113
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;->mAllAppsRecyclerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsRecyclerView;

    iget-object p3, p0, Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;->mAdapter:Lcom/miui/home/launcher/allapps/hideapps/HideAppsGridAdapter;

    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 114
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;->mAllAppsRecyclerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsRecyclerView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 115
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;->mAllAppsRecyclerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsRecyclerView;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 117
    new-instance p2, Lcom/miui/home/launcher/keyboard/FocusedItemDecorator;

    iget-object p3, p0, Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;->mAllAppsRecyclerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsRecyclerView;

    iget-object p4, p0, Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;->mAdapter:Lcom/miui/home/launcher/allapps/hideapps/HideAppsGridAdapter;

    invoke-direct {p2, p3, p4}, Lcom/miui/home/launcher/keyboard/FocusedItemDecorator;-><init>(Landroid/view/View;Lcom/miui/home/launcher/allapps/ItemPaddingSetter;)V

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;->mFocusedItemDecorator:Lcom/miui/home/launcher/keyboard/FocusedItemDecorator;

    .line 118
    iget-object p3, p0, Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;->mAllAppsRecyclerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsRecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 120
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;->mAdapter:Lcom/miui/home/launcher/allapps/hideapps/HideAppsGridAdapter;

    iget-object p3, p0, Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;->mFocusedItemDecorator:Lcom/miui/home/launcher/keyboard/FocusedItemDecorator;

    invoke-virtual {p3}, Lcom/miui/home/launcher/keyboard/FocusedItemDecorator;->getFocusListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->setIconFocusListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 121
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;->mAdapter:Lcom/miui/home/launcher/allapps/hideapps/HideAppsGridAdapter;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->refreshSpanCount(I)Z

    .line 122
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;->mAdapter:Lcom/miui/home/launcher/allapps/hideapps/HideAppsGridAdapter;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->setAdapter(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;)V

    return-void
.end method


# virtual methods
.method public getCurrentRecyclerView()Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;->mAllAppsRecyclerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsRecyclerView;

    return-object p0
.end method

.method public getCurrentScrollableView()Lcom/miui/home/launcher/allapps/hideapps/ScrollableView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 85
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a0085

    .line 86
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsRecyclerView;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;->mAllAppsRecyclerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsRecyclerView;

    return-void
.end method

.method public setUp(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;Lcom/miui/home/launcher/allapps/AllAppsContainerView;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;ZZ)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    .line 128
    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;->setUp(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;ZZ)V

    return-void
.end method

.method public updateColorForUiMode()V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;->mAdapter:Lcom/miui/home/launcher/allapps/hideapps/HideAppsGridAdapter;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->updateStyle(Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V

    .line 153
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;->mAllAppsRecyclerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsRecyclerView;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/BaseRecyclerView;->onColorModeChange(Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V

    return-void
.end method
