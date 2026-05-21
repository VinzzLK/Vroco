.class public Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;
.super Landroid/widget/FrameLayout;
.source "MultiSelectModeMenu.java"

# interfaces
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;
.implements Lcom/miui/launcher/sosc/interfaces/SoscingView;


# static fields
.field public static final TOP_MENU_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field private mApplyContainer:Lcom/miui/home/launcher/multiselect/ApplyContainer;

.field private mCancelContainer:Lcom/miui/home/launcher/multiselect/CancelContainer;

.field private mFinishContainer:Lcom/miui/home/launcher/multiselect/FinishContainer;

.field private mGroupContainer:Lcom/miui/home/launcher/multiselect/GroupContainer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->TOP_MENU_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private setApplyContainerMargin()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mApplyContainer:Lcom/miui/home/launcher/multiselect/ApplyContainer;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 73
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getLayoutPreviewTopMenuMarginTop()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 74
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getLayoutPreviewTopMenuVerPadding()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 75
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getLayoutPreviewTopMenuHorPadding()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 76
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mApplyContainer:Lcom/miui/home/launcher/multiselect/ApplyContainer;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setCancelContainerMargin()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mCancelContainer:Lcom/miui/home/launcher/multiselect/CancelContainer;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 65
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getLayoutPreviewTopMenuMarginTop()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 66
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getLayoutPreviewTopMenuVerPadding()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 67
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getLayoutPreviewTopMenuHorPadding()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 68
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mCancelContainer:Lcom/miui/home/launcher/multiselect/CancelContainer;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setFinishContainerMargin()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mFinishContainer:Lcom/miui/home/launcher/multiselect/FinishContainer;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 57
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getEditModeTopMenuMarginTop()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 58
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getTopMenuVerPadding()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 59
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getTopMenuHorPadding()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 60
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mFinishContainer:Lcom/miui/home/launcher/multiselect/FinishContainer;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setGroupContainerMargin()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mGroupContainer:Lcom/miui/home/launcher/multiselect/GroupContainer;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 49
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getEditModeTopMenuMarginTop()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 50
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getTopMenuVerPadding()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 51
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getTopMenuHorPadding()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 52
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mGroupContainer:Lcom/miui/home/launcher/multiselect/GroupContainer;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public changeFinishContainerToGoneState(ZZZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 108
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mFinishContainer:Lcom/miui/home/launcher/multiselect/FinishContainer;

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->changeToMaskLayerState(Z)V

    goto :goto_0

    .line 110
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mFinishContainer:Lcom/miui/home/launcher/multiselect/FinishContainer;

    invoke-virtual {p0, p2, p3}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->changeToGoneState(ZZ)V

    :goto_0
    return-void
.end method

.method public changeFinishContainerToNormalState(ZZ)V
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mFinishContainer:Lcom/miui/home/launcher/multiselect/FinishContainer;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->changeToNormalState(ZZ)V

    return-void
.end method

.method public changeGroupContainerToGoneState(ZZ)V
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mGroupContainer:Lcom/miui/home/launcher/multiselect/GroupContainer;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->changeToGoneState(ZZ)V

    return-void
.end method

.method public changeGroupContainerToNormalState(ZZ)V
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mGroupContainer:Lcom/miui/home/launcher/multiselect/GroupContainer;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/multiselect/GroupContainer;->changeToNormalState(ZZ)V

    return-void
.end method

.method public changeLayoutPreviewToGoneState(Z)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mCancelContainer:Lcom/miui/home/launcher/multiselect/CancelContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->changeToGoneState(ZZ)V

    .line 121
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mApplyContainer:Lcom/miui/home/launcher/multiselect/ApplyContainer;

    invoke-virtual {p0, p1, v1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->changeToGoneState(ZZ)V

    return-void
.end method

.method public changeLayoutPreviewToNormalState(Z)V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mCancelContainer:Lcom/miui/home/launcher/multiselect/CancelContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->changeToNormalState(ZZ)V

    .line 116
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mApplyContainer:Lcom/miui/home/launcher/multiselect/ApplyContainer;

    invoke-virtual {p0, p1, v1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->changeToNormalState(ZZ)V

    return-void
.end method

.method public getFinishContainer()Lcom/miui/home/launcher/multiselect/FinishContainer;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mFinishContainer:Lcom/miui/home/launcher/multiselect/FinishContainer;

    return-object p0
.end method

.method public getGroupContainer()Landroid/view/View;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mGroupContainer:Lcom/miui/home/launcher/multiselect/GroupContainer;

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 32
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a016d

    .line 33
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/multiselect/GroupContainer;

    iput-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mGroupContainer:Lcom/miui/home/launcher/multiselect/GroupContainer;

    const v0, 0x7f0a0188

    .line 34
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/multiselect/FinishContainer;

    iput-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mFinishContainer:Lcom/miui/home/launcher/multiselect/FinishContainer;

    const v0, 0x7f0a00da

    .line 35
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/multiselect/CancelContainer;

    iput-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mCancelContainer:Lcom/miui/home/launcher/multiselect/CancelContainer;

    const v0, 0x7f0a0082

    .line 36
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/multiselect/ApplyContainer;

    iput-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mApplyContainer:Lcom/miui/home/launcher/multiselect/ApplyContainer;

    .line 37
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->setGroupContainerMargin()V

    .line 38
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->setFinishContainerMargin()V

    .line 39
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->setCancelContainerMargin()V

    .line 40
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->setApplyContainerMargin()V

    return-void
.end method

.method public onInterceptSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->setGroupContainerMargin()V

    .line 81
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->setFinishContainerMargin()V

    .line 82
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->setCancelContainerMargin()V

    .line 83
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->setApplyContainerMargin()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 126
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 127
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->setGroupContainerMargin()V

    .line 128
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->setFinishContainerMargin()V

    .line 129
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->setCancelContainerMargin()V

    .line 130
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->setApplyContainerMargin()V

    return-void
.end method

.method public onSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 0

    .line 143
    invoke-virtual {p2}, Lcom/miui/launcher/sosc/module/SoscEvent;->isSoscSplit()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->onMultiWindowModeChanged(Z)V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mGroupContainer:Lcom/miui/home/launcher/multiselect/GroupContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->onWallpaperColorChanged()V

    .line 89
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mFinishContainer:Lcom/miui/home/launcher/multiselect/FinishContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->onWallpaperColorChanged()V

    .line 90
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mCancelContainer:Lcom/miui/home/launcher/multiselect/CancelContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->onWallpaperColorChanged()V

    .line 91
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mApplyContainer:Lcom/miui/home/launcher/multiselect/ApplyContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->onWallpaperColorChanged()V

    return-void
.end method

.method public updateViewBlurMode(Z)V
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mGroupContainer:Lcom/miui/home/launcher/multiselect/GroupContainer;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/multiselect/GroupContainer;->updateViewBlurMode(Z)V

    return-void
.end method
