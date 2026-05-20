.class public Lcom/miui/home/launcher/ThumbnailContainer;
.super Landroid/widget/ImageView;
.source "ThumbnailContainer.java"

# interfaces
.implements Lcom/miui/home/launcher/DropTarget;
.implements Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;


# instance fields
.field private mCellLayout:Lcom/miui/home/launcher/CellLayout;

.field private mCellScreen:Lcom/miui/home/launcher/CellScreen;

.field private mForceRebuildCache:Z

.field private mIsDropFromOtherScreen:Z

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mLoc:[F

.field private mPreBgType:Lcom/miui/home/launcher/anim/BackgroundType;

.field private mScaleX:F

.field private mScaleY:F

.field private mSnapWorkspace:Ljava/lang/Runnable;

.field private mThumbnailContainerBorder:Lcom/miui/home/launcher/ThumbnailContainerBorder;

.field private mTranslateX:F

.field private mTranslateY:F

.field private mValidContentHeight:F

.field private mValidContentWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mForceRebuildCache:Z

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 40
    iput-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mLoc:[F

    .line 327
    new-instance p1, Lcom/miui/home/launcher/ThumbnailContainer$3;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/ThumbnailContainer$3;-><init>(Lcom/miui/home/launcher/ThumbnailContainer;)V

    iput-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mSnapWorkspace:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/ThumbnailContainer;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/ThumbnailContainer;)Lcom/miui/home/launcher/CellScreen;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellScreen:Lcom/miui/home/launcher/CellScreen;

    return-object p0
.end method

.method private checkIsDropFromOtherScreen(Lcom/miui/home/launcher/DragObject;)V
    .locals 6

    const/4 v0, 0x0

    .line 146
    iput-boolean v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mIsDropFromOtherScreen:Z

    .line 147
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDraggingSize()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 148
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragObject;->getDragInfo(I)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    .line 149
    iget-object v2, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v2}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const-wide/16 v2, -0x64

    iget-wide v4, v1, Lcom/miui/home/launcher/ItemInfo;->container:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x1

    .line 151
    iput-boolean p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mIsDropFromOtherScreen:Z

    :cond_2
    return-void
.end method

.method private getDropTargetLoc(IILcom/miui/home/launcher/ItemInfo;)[F
    .locals 7

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 161
    :cond_0
    new-instance v6, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    invoke-direct {v6}, Lcom/miui/home/launcher/CellLayout$LayoutParams;-><init>()V

    .line 162
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    const/4 v4, 0x0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/CellLayout;->setupLayoutParam(IILcom/miui/home/launcher/ItemInfo;ZLcom/miui/home/launcher/CellLayout$LayoutParams;)V

    .line 163
    iget-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 164
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mLoc:[F

    const/4 p3, 0x1

    .line 163
    invoke-static {p0, p1, p2, p3, p3}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 167
    iget p2, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mScaleX:F

    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v0

    mul-float/2addr p2, v0

    .line 168
    iget v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mScaleY:F

    iget-object v1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScaleY()F

    move-result v1

    mul-float/2addr v0, v1

    .line 169
    iget-object v1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mLoc:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget v3, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mTranslateX:F

    add-float/2addr v1, v3

    iget v3, v6, Lcom/miui/home/launcher/CellLayout$LayoutParams;->x:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v1, v3

    iget-object p2, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    .line 170
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getScaleX()F

    move-result p2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float p2, v3, p2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr p2, v4

    iget v5, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mScaleX:F

    mul-float/2addr p2, v5

    iget-object v5, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellScreen:Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr p2, v5

    add-float/2addr v1, p2

    aput v1, p1, v2

    .line 171
    iget-object p2, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mLoc:[F

    aget p2, p2, p3

    iget v1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mTranslateY:F

    add-float/2addr p2, v1

    iget v1, v6, Lcom/miui/home/launcher/CellLayout$LayoutParams;->y:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr p2, v1

    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    .line 172
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScaleY()F

    move-result v0

    sub-float/2addr v3, v0

    iget v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mValidContentHeight:F

    div-float/2addr v0, v4

    iget-object v1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellScreen:Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v3, v0

    iget v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mScaleY:F

    mul-float/2addr v3, v0

    iget-object p0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellScreen:Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v3, p0

    add-float/2addr p2, v3

    aput p2, p1, p3

    return-object p1
.end method


# virtual methods
.method public acceptDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public buildDrawingCache(Z)V
    .locals 1

    .line 366
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailContainer;->disableBuildCache()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mForceRebuildCache:Z

    if-nez v0, :cond_0

    return-void

    .line 369
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->buildDrawingCache(Z)V

    const/4 p1, 0x0

    .line 370
    iput-boolean p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mForceRebuildCache:Z

    return-void
.end method

.method public disableBuildCache()Z
    .locals 0

    .line 374
    iget-object p0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result p0

    return p0
.end method

.method public getContent()Lcom/miui/home/launcher/CellScreen;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellScreen:Lcom/miui/home/launcher/CellScreen;

    return-object p0
.end method

.method public getDropAnnounceForAccessibility(Lcom/miui/home/launcher/DragObject;)Ljava/lang/String;
    .locals 0

    .line 383
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getDropAnnounceForAccessibility(Lcom/miui/home/launcher/DragObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

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

.method public getOnDropAnnounce()Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;
    .locals 0

    return-object p0
.end method

.method public isDropEnabled()Z
    .locals 1

    .line 136
    iget-object p0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onDragEnter(Lcom/miui/home/launcher/DragObject;)V
    .locals 3

    const/4 v0, 0x1

    .line 294
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ThumbnailContainer;->setOnDragOverScreen(Z)V

    .line 295
    iget-object v1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/CellLayout;->isSpaceEnough(Lcom/miui/home/launcher/DragObject;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    .line 296
    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/CellLayout;->findDropTargetPosition(Lcom/miui/home/launcher/DragObject;)[I

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderOpened()Z

    move-result v0

    if-nez v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mSnapWorkspace:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/CellLayout;->showNoSpaceToast(Lcom/miui/home/launcher/DragObject;Z)V

    goto :goto_1

    .line 297
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v1, p1, v0}, Lcom/miui/home/launcher/CellLayout;->showNoSpaceToast(Lcom/miui/home/launcher/DragObject;Z)V

    .line 305
    :goto_1
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->clearOthersToasted()V

    .line 306
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 308
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    .line 309
    new-instance v1, Lcom/miui/home/launcher/ThumbnailContainer$2;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/ThumbnailContainer$2;-><init>(Lcom/miui/home/launcher/ThumbnailContainer;I)V

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(Ljava/util/function/Supplier;)V

    .line 316
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->isSpaceEnough(Lcom/miui/home/launcher/DragObject;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 317
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performEnough()V

    goto :goto_2

    .line 319
    :cond_4
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performHold(Landroid/view/View;)V

    :goto_2
    return-void
.end method

.method public onDragExit(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    const/4 p1, 0x0

    .line 339
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ThumbnailContainer;->setOnDragOverScreen(Z)V

    .line 340
    iget-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mSnapWorkspace:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 341
    iget-object p0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->clearCellBackground()V

    return-void
.end method

.method public onDragOver(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 93
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 94
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellScreen:Lcom/miui/home/launcher/CellScreen;

    if-eqz v0, :cond_0

    .line 95
    iget v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mTranslateX:F

    iget v1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mTranslateY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 96
    iget v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mScaleX:F

    iget v1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mScaleY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 97
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->setIsDrawingInThumbnailView(Z)V

    .line 98
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPivotX()F

    move-result v0

    .line 99
    iget-object v1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPivotY()F

    move-result v1

    .line 100
    iget-object v2, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    iget v3, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mValidContentWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 101
    iget-object v2, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    iget v3, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mValidContentHeight:F

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 102
    iget-object v2, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellScreen:Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 103
    iget-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 104
    iget-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 105
    iget-object p0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->setIsDrawingInThumbnailView(Z)V

    :cond_0
    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 12

    .line 178
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getEmptyCellsNum()I

    move-result v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getRemainedDraggingSize()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_1

    .line 180
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getRemainedDraggingSize()I

    move-result p1

    if-le p1, v2, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p0, :cond_0

    .line 181
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Launcher;->closeFolder(Z)Z

    :cond_0
    return v3

    .line 186
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->isFirstObject()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ThumbnailContainer;->checkIsDropFromOtherScreen(Lcom/miui/home/launcher/DragObject;)V

    .line 190
    :cond_2
    iget-boolean v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mIsDropFromOtherScreen:Z

    if-nez v0, :cond_3

    return v3

    .line 194
    :cond_3
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v0

    .line 195
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    .line 196
    iput v3, p1, Lcom/miui/home/launcher/DragObject;->dropAction:I

    .line 197
    iget-object v4, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v4, p1}, Lcom/miui/home/launcher/CellLayout;->findDropTargetPosition(Lcom/miui/home/launcher/DragObject;)[I

    move-result-object v4

    if-nez v4, :cond_4

    return v3

    .line 201
    :cond_4
    aget v5, v4, v3

    iput v5, v1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 202
    aget v5, v4, v2

    iput v5, v1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 203
    iget-object v5, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v5}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 204
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    .line 205
    invoke-virtual {v0}, Lcom/miui/home/launcher/DragView;->setFakeTargetMode()V

    .line 206
    iget v5, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mScaleX:F

    iget-object v6, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {v0, v5}, Lcom/miui/home/launcher/DragView;->setTargetScale(F)V

    .line 207
    invoke-virtual {v0, v3, v3}, Lcom/miui/home/launcher/DragView;->setDragVisualizeOffset(II)V

    const/4 v5, 0x0

    .line 208
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 209
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 210
    aget v5, v4, v3

    aget v4, v4, v2

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v6

    invoke-direct {p0, v5, v4, v6}, Lcom/miui/home/launcher/ThumbnailContainer;->getDropTargetLoc(IILcom/miui/home/launcher/ItemInfo;)[F

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/miui/home/launcher/DragView;->updateAnimateTarget([F)V

    .line 212
    iget v4, v1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/16 v7, 0x8

    if-eqz v4, :cond_5

    const/16 v8, 0x12

    if-eq v4, v8, :cond_5

    if-eq v4, v2, :cond_5

    const/16 v8, 0xe

    if-eq v4, v8, :cond_5

    const/16 v8, 0xb

    if-eq v4, v8, :cond_5

    if-eq v4, v6, :cond_5

    if-eq v4, v5, :cond_5

    const/4 v8, 0x6

    if-eq v4, v8, :cond_5

    const/16 v8, 0x13

    if-eq v4, v8, :cond_5

    const/16 v8, 0x17

    if-eq v4, v8, :cond_5

    if-eq v4, v7, :cond_5

    const/16 v8, 0x14

    if-eq v4, v8, :cond_5

    const/4 v8, 0x2

    if-ne v4, v8, :cond_14

    iget-wide v8, v1, Lcom/miui/home/launcher/ItemInfo;->id:J

    const-wide/16 v10, -0x1

    cmp-long v4, v8, v10

    if-eqz v4, :cond_14

    .line 226
    :cond_5
    instance-of v4, v1, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;

    if-eqz v4, :cond_6

    .line 227
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    check-cast v1, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 229
    iget-object p0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/Launcher;->onDropShortcut(Lcom/miui/home/launcher/DragObject;Landroid/content/Intent;)V

    return v2

    .line 232
    :cond_6
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/DragView;->getContent()Landroid/view/View;

    move-result-object v4

    .line 233
    instance-of v8, v1, Lcom/miui/home/launcher/ShortcutInfo;

    const/4 v9, 0x0

    if-eqz v8, :cond_a

    .line 234
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v8

    check-cast v8, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v8, v9, v9}, Lcom/miui/home/launcher/ShortcutInfo;->setBuddyIconView(Lcom/miui/home/launcher/IShortcutIcon;Landroid/view/ViewGroup;)V

    .line 235
    instance-of v8, v1, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;

    if-eqz v8, :cond_9

    iget v8, v1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-ne v8, v7, :cond_9

    .line 236
    move-object v7, v1

    check-cast v7, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;

    .line 237
    iget v8, v7, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;->addType:I

    if-ne v8, v6, :cond_7

    .line 238
    iget-object v4, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4, p1}, Lcom/miui/home/launcher/Launcher;->onDropToggleShortcut(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;

    move-result-object v4

    goto/16 :goto_0

    :cond_7
    if-ne v8, v5, :cond_8

    .line 240
    iget-object v4, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4, p1}, Lcom/miui/home/launcher/Launcher;->onDropSettingShortcut(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;

    move-result-object v4

    goto/16 :goto_0

    .line 242
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown addType: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v7, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;->addType:I

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v5, "ThumbnailContainer"

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 245
    :cond_9
    iget-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v4, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p1, v4, v1}, Lcom/miui/home/launcher/Launcher;->createDesktopIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Landroid/view/View;

    move-result-object v4

    goto/16 :goto_0

    .line 247
    :cond_a
    instance-of v5, v1, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v5, :cond_b

    .line 248
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p1, v9}, Lcom/miui/home/launcher/FolderInfo;->setBuddyIconView(Lcom/miui/home/launcher/FolderIcon;)V

    .line 249
    iget-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v4, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p1, v4, v1}, Lcom/miui/home/launcher/Launcher;->createDesktopIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Landroid/view/View;

    move-result-object v4

    goto/16 :goto_0

    .line 250
    :cond_b
    instance-of v5, v1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    if-eqz v5, :cond_c

    .line 251
    move-object p1, v1

    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    .line 252
    new-instance v4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->getAppWidgetId()I

    move-result v5

    invoke-direct {v4, v5, p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;-><init>(ILcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)V

    .line 253
    iget-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v5, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellScreen:Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {p1, v4, v5}, Lcom/miui/home/launcher/Launcher;->addAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;Lcom/miui/home/launcher/CellScreen;)I

    .line 254
    iget-object v4, v4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Lcom/miui/home/launcher/LauncherWidgetView;

    goto/16 :goto_0

    .line 255
    :cond_c
    instance-of v5, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz v5, :cond_e

    .line 256
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object p1

    iget-object v4, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v4

    if-eq p1, v4, :cond_d

    .line 257
    iget-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    move-object v4, v1

    check-cast v4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    iget-object v5, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellScreen:Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {p1, v4, v5}, Lcom/miui/home/launcher/Launcher;->addAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;Lcom/miui/home/launcher/CellScreen;)I

    .line 259
    :cond_d
    move-object p1, v1

    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    iget-object v4, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Lcom/miui/home/launcher/LauncherWidgetView;

    goto :goto_0

    .line 260
    :cond_e
    instance-of v5, v1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz v5, :cond_10

    .line 261
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object p1

    iget-object v4, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v4

    if-eq p1, v4, :cond_f

    .line 262
    iget-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    move-object v4, v1

    check-cast v4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    invoke-virtual {p1, v4, v2, v9}, Lcom/miui/home/launcher/Launcher;->addMaMl(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;ZLjava/util/function/Predicate;)Landroid/view/View;

    .line 264
    :cond_f
    move-object p1, v1

    check-cast p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    iget-object v4, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->hostView:Lcom/miui/home/launcher/maml/MaMlWidgetView;

    goto :goto_0

    .line 265
    :cond_10
    instance-of v5, v1, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;

    if-eqz v5, :cond_12

    .line 266
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object p1

    iget-object v4, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v4

    if-eq p1, v4, :cond_11

    .line 267
    iget-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v1, v2}, Lcom/miui/home/launcher/Launcher;->addServiceDelivery(Lcom/miui/home/launcher/ItemInfo;Z)Landroid/view/View;

    .line 269
    :cond_11
    move-object p1, v1

    check-cast p1, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;

    iget-object v4, p1, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;->hostView:Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;

    goto :goto_0

    .line 270
    :cond_12
    instance-of v5, v1, Lcom/miui/home/launcher/gadget/GadgetInfo;

    if-eqz v5, :cond_13

    .line 271
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object p1

    iget-object v5, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v5}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v5

    if-eq p1, v5, :cond_13

    .line 272
    iget-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    move-object v4, v1

    check-cast v4, Lcom/miui/home/launcher/gadget/GadgetInfo;

    invoke-virtual {p1, v4, v2, v9}, Lcom/miui/home/launcher/Launcher;->addGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;ZLjava/util/function/Predicate;)Landroid/view/View;

    move-result-object v4

    .line 275
    :cond_13
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p1, v4}, Lcom/miui/home/launcher/CellLayout;->onDropFormThumbnail(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 276
    new-instance p1, Lcom/miui/home/launcher/ThumbnailContainer$1;

    invoke-direct {p1, p0, v1}, Lcom/miui/home/launcher/ThumbnailContainer$1;-><init>(Lcom/miui/home/launcher/ThumbnailContainer;Lcom/miui/home/launcher/ItemInfo;)V

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragView;->setOnRemoveCallback(Ljava/lang/Runnable;)V

    return v2

    :cond_14
    return v3
.end method

.method public onDropCompleted()V
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->onDropCompleted()V

    return-void
.end method

.method public onDropStart(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->onDropStart(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 60
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    invoke-virtual {p0, v0, v1}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public setAlpha(Z)V
    .locals 3

    .line 391
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->getCurrentDragObject()Lcom/miui/home/launcher/DragObject;

    move-result-object v0

    const-wide/16 v1, 0xc8

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {v0}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object p1

    instance-of p1, p1, Lcom/miui/home/launcher/Workspace;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellLayout;->isSpaceEnough(Lcom/miui/home/launcher/DragObject;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 393
    invoke-virtual {p0}, Landroid/widget/ImageView;->getAlpha()F

    move-result p1

    const v0, 0x3e99999a    # 0.3f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_1

    .line 394
    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 397
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getAlpha()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_1

    .line 398
    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCellLayoutThumbnail(Lcom/miui/home/launcher/CellScreen;IILandroid/view/View;)V
    .locals 8

    .line 65
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mValidContentWidth:F

    .line 66
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceCellPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mValidContentHeight:F

    int-to-float p2, p2

    .line 67
    iget v1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mValidContentWidth:F

    div-float v1, p2, v1

    int-to-float p3, p3

    div-float v0, p3, v0

    .line 69
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v4

    cmpl-float v0, v4, v0

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 73
    iget p3, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mValidContentWidth:F

    mul-float/2addr p3, v4

    sub-float/2addr p2, p3

    div-float/2addr p2, v1

    move v5, p2

    move v6, v2

    goto :goto_0

    .line 75
    :cond_0
    iget p2, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mValidContentHeight:F

    mul-float/2addr p2, v4

    sub-float/2addr p3, p2

    div-float/2addr p3, v1

    move v6, p3

    move v5, v2

    .line 77
    :goto_0
    move-object v7, p4

    check-cast v7, Lcom/miui/home/launcher/ThumbnailContainerBorder;

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/miui/home/launcher/ThumbnailContainer;->setContent(Lcom/miui/home/launcher/CellScreen;FFFLcom/miui/home/launcher/ThumbnailContainerBorder;)V

    return-void
.end method

.method public setContent(Lcom/miui/home/launcher/CellScreen;FFFLcom/miui/home/launcher/ThumbnailContainerBorder;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellScreen:Lcom/miui/home/launcher/CellScreen;

    .line 82
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    .line 83
    iput p2, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mScaleX:F

    .line 84
    iput p2, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mScaleY:F

    .line 85
    iput p3, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mTranslateX:F

    .line 86
    iput p4, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mTranslateY:F

    .line 87
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 88
    iput-object p5, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mThumbnailContainerBorder:Lcom/miui/home/launcher/ThumbnailContainerBorder;

    return-void
.end method

.method public setForceRebuildCache(Z)V
    .locals 0

    .line 378
    iput-boolean p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mForceRebuildCache:Z

    return-void
.end method

.method public setIsCurrentScreen(Lcom/miui/home/launcher/anim/BackgroundType;)V
    .locals 1

    const/4 v0, 0x1

    .line 118
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/ThumbnailContainer;->setIsCurrentScreen(Lcom/miui/home/launcher/anim/BackgroundType;Z)V

    return-void
.end method

.method public setIsCurrentScreen(Lcom/miui/home/launcher/anim/BackgroundType;Z)V
    .locals 0

    .line 122
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/ThumbnailContainer;->updateBackgroundType(Lcom/miui/home/launcher/anim/BackgroundType;Z)V

    return-void
.end method

.method public setIsDraging(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 114
    sget-object p1, Lcom/miui/home/launcher/anim/BackgroundType;->DRAGGING:Lcom/miui/home/launcher/anim/BackgroundType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/miui/home/launcher/anim/BackgroundType;->NOT_DRAGGING:Lcom/miui/home/launcher/anim/BackgroundType;

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/ThumbnailContainer;->updateBackgroundType(Lcom/miui/home/launcher/anim/BackgroundType;Z)V

    return-void
.end method

.method public setOnDragOverScreen(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 126
    sget-object p1, Lcom/miui/home/launcher/anim/BackgroundType;->DRAGGING_IN:Lcom/miui/home/launcher/anim/BackgroundType;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mPreBgType:Lcom/miui/home/launcher/anim/BackgroundType;

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/ThumbnailContainer;->updateBackgroundType(Lcom/miui/home/launcher/anim/BackgroundType;Z)V

    return-void
.end method

.method public updateBackgroundType(Lcom/miui/home/launcher/anim/BackgroundType;Z)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mThumbnailContainerBorder:Lcom/miui/home/launcher/ThumbnailContainerBorder;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->updateBackgroundType(Lcom/miui/home/launcher/anim/BackgroundType;Z)V

    .line 131
    sget-object p2, Lcom/miui/home/launcher/anim/BackgroundType;->DRAGGING_IN:Lcom/miui/home/launcher/anim/BackgroundType;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mPreBgType:Lcom/miui/home/launcher/anim/BackgroundType;

    :cond_0
    iput-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mPreBgType:Lcom/miui/home/launcher/anim/BackgroundType;

    return-void
.end method
