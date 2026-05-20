.class public abstract Lcom/miui/home/launcher/ButtonDropTarget;
.super Lcom/miui/home/launcher/multiselect/TopMenuContainer;
.source "ButtonDropTarget.java"

# interfaces
.implements Lcom/miui/home/launcher/DropTarget;
.implements Lcom/miui/launcher/sosc/interfaces/SoscingView;


# static fields
.field private static final DRAG_OVER_COLOR:Lcom/miui/home/launcher/multiselect/TopMenuColor;

.field private static final DRAG_OVER_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

.field protected static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field protected NOTCH_DELTA:I

.field private mActive:Z

.field private mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

.field protected mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mTranslationDelta:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    sget-object v0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->TOP_MENU_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    sput-object v0, Lcom/miui/home/launcher/ButtonDropTarget;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 36
    new-instance v0, Lcom/miui/home/launcher/multiselect/TopMenuColor;

    const v1, 0x7f0606b3

    const v2, 0x7f0606b2

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/multiselect/TopMenuColor;-><init>(II)V

    sput-object v0, Lcom/miui/home/launcher/ButtonDropTarget;->DRAG_OVER_COLOR:Lcom/miui/home/launcher/multiselect/TopMenuColor;

    .line 37
    new-instance v1, Lcom/miui/home/launcher/multiselect/TopMenuState;

    const-string v2, "drag_over"

    invoke-direct {v1, v0, v2}, Lcom/miui/home/launcher/multiselect/TopMenuState;-><init>(Lcom/miui/home/launcher/multiselect/TopMenuColor;Ljava/lang/String;)V

    sput-object v1, Lcom/miui/home/launcher/ButtonDropTarget;->DRAG_OVER_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->doLauncherHavePaddingTopForStatusBarAndNotch()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/miui/home/launcher/ButtonDropTarget;->NOTCH_DELTA:I

    .line 41
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/ButtonDropTarget;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 42
    invoke-virtual {p0}, Lcom/miui/home/launcher/ButtonDropTarget;->setMarginTop()V

    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public changeToDragOverState(Z)V
    .locals 2

    .line 103
    invoke-virtual {p0}, Lcom/miui/home/launcher/ButtonDropTarget;->getDragOverState()Lcom/miui/home/launcher/multiselect/TopMenuState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->updateContainer(Lcom/miui/home/launcher/multiselect/TopMenuState;ZZ)V

    return-void
.end method

.method protected getDragOverState()Lcom/miui/home/launcher/multiselect/TopMenuState;
    .locals 0

    .line 99
    sget-object p0, Lcom/miui/home/launcher/ButtonDropTarget;->DRAG_OVER_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

    return-object p0
.end method

.method protected getDropTargetBar()Lcom/miui/home/launcher/DropTargetBar;
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/miui/home/launcher/ButtonDropTarget;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    return-object p0
.end method

.method public getDropTargetDelegate(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/DropTarget;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getHitView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method protected getLauncher()Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/miui/home/launcher/ButtonDropTarget;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method public getOnDropAnnounce()Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public hideIfNeed()V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide uninstall drop target, isActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ButtonDropTarget;->isActive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/miui/home/launcher/ButtonDropTarget;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 166
    invoke-virtual {p0, v0, v0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->changeToGoneState(ZZ)V

    :cond_0
    return-void
.end method

.method public isActive()Z
    .locals 0

    .line 175
    iget-boolean p0, p0, Lcom/miui/home/launcher/ButtonDropTarget;->mActive:Z

    return p0
.end method

.method public isDragOverState()Z
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/miui/home/launcher/ButtonDropTarget;->getDragOverState()Lcom/miui/home/launcher/multiselect/TopMenuState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->isState(Lcom/miui/home/launcher/multiselect/TopMenuState;)Z

    move-result p0

    return p0
.end method

.method public isDropEnabled()Z
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->isNormalState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    invoke-virtual {p0}, Lcom/miui/home/launcher/ButtonDropTarget;->isDragOverState()Z

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

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 179
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 180
    invoke-virtual {p0}, Lcom/miui/home/launcher/ButtonDropTarget;->setMarginTop()V

    return-void
.end method

.method public onDragEnter(Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    .line 90
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->cancelAnnounce()V

    .line 91
    iget-object p1, p0, Lcom/miui/home/launcher/ButtonDropTarget;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isFolderOpened()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 92
    iget-object p1, p0, Lcom/miui/home/launcher/ButtonDropTarget;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DropTargetBar;->showIndicateBackground(Z)V

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ButtonDropTarget;->getDropTargetBar()Lcom/miui/home/launcher/DropTargetBar;

    move-result-object p1

    iget v1, p0, Lcom/miui/home/launcher/ButtonDropTarget;->mTranslationDelta:I

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/DropTargetBar;->animTargetContainer(I)V

    .line 95
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ButtonDropTarget;->changeToDragOverState(Z)V

    return-void
.end method

.method public onDragExit(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 117
    iget-object p1, p0, Lcom/miui/home/launcher/ButtonDropTarget;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DropTargetBar;->showIndicateBackground(Z)V

    .line 118
    invoke-virtual {p0}, Lcom/miui/home/launcher/ButtonDropTarget;->getDropTargetBar()Lcom/miui/home/launcher/DropTargetBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DropTargetBar;->animTargetContainer(I)V

    const/4 p1, 0x1

    .line 119
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->changeToNormalState(ZZ)V

    return-void
.end method

.method public onDragOver(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onDropCompleted()V
    .locals 0

    return-void
.end method

.method public onDropStart(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onInterceptSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 0

    .line 185
    invoke-virtual {p2}, Lcom/miui/launcher/sosc/module/SoscEvent;->isHalfSoscSplit()Z

    move-result p1

    if-nez p1, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/miui/home/launcher/ButtonDropTarget;->setMarginTop()V

    :cond_0
    return-void
.end method

.method public recalHitRect(Landroid/graphics/Rect;F[I)V
    .locals 3

    const/4 p0, 0x0

    .line 139
    aget v0, p3, p0

    aget v1, p3, p0

    int-to-float v1, v1

    .line 140
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x1

    aget p3, p3, v2

    int-to-float p3, p3

    .line 141
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr p3, v2

    float-to-int p2, p3

    .line 139
    invoke-virtual {p1, v0, p0, v1, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setActive(Z)V
    .locals 0

    .line 171
    iput-boolean p1, p0, Lcom/miui/home/launcher/ButtonDropTarget;->mActive:Z

    return-void
.end method

.method public setDropTargetBar(Lcom/miui/home/launcher/DropTargetBar;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/miui/home/launcher/ButtonDropTarget;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    return-void
.end method

.method public setMarginTop()V
    .locals 4

    .line 46
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getEditModeTopMenuMarginTop()I

    move-result v0

    .line 47
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 55
    :cond_0
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_1

    .line 56
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_0

    .line 57
    :cond_1
    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v1, v2

    .line 58
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getTopMenuVerPadding()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, v3, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 59
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    iget v1, p0, Lcom/miui/home/launcher/ButtonDropTarget;->NOTCH_DELTA:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/ButtonDropTarget;->mTranslationDelta:I

    return-void
.end method

.method public showIfNeed()V
    .locals 2

    .line 158
    invoke-virtual {p0}, Lcom/miui/home/launcher/ButtonDropTarget;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 159
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->changeToNormalState(ZZ)V

    :cond_0
    return-void
.end method
