.class public Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;
.super Lcom/miui/launcher/views/LauncherFrameLayout;
.source "AllAppsSearchBarHolderView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/miui/launcher/views/LauncherFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static getContainerHeight(Landroid/content/Context;)I
    .locals 2

    .line 50
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getSearchBarHolderVerticalPadding(Landroid/content/Context;)I

    move-result v0

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f07066d

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p0, v0

    return p0
.end method

.method private refreshPadding()V
    .locals 1

    .line 44
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getSearchBarHolderVerticalPadding(Landroid/content/Context;)I

    move-result v0

    .line 45
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingTop(Landroid/view/View;I)V

    .line 46
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingBottom(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    .line 35
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 36
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;->refreshPadding()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 29
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;->getContainerHeight(Landroid/content/Context;)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 30
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;->refreshPadding()V

    return-void
.end method
