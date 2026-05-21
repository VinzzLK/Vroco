.class public Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;
.super Lcom/miui/home/launcher/ScreenView;
.source "HotSeatsScreenViewContent.java"

# interfaces
.implements Lcom/miui/home/launcher/hotseats/HotSeatsContent;
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private mCellBackground:Lcom/miui/home/launcher/CellBackground;

.field private mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

.field private mGridCell:Lcom/miui/home/launcher/GridCell;

.field private mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

.field private mInsertPos:I

.field private mLastCellBackgroundX:F

.field private mLastPlaceHolder:I

.field private mLastReplacedPos:I

.field private final mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mReplacedPos:I


# direct methods
.method public static synthetic $r8$lambda$Ye3k95zLYtMKah2mpO7CdYrH8z8(Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->lambda$keepDataConsistent$0(Lcom/miui/home/launcher/ItemInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dLhjDcMDqq0NfTeVBdp2ALoJsuM(Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->lambda$keepDataConsistent$2(Lcom/miui/home/launcher/ItemInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jxh1BDM1fSytQUQexZvV1KIYlpI(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->lambda$keepDataConsistent$1(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 58
    iput p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLastPlaceHolder:I

    .line 59
    iput p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLastReplacedPos:I

    .line 296
    iput p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mInsertPos:I

    .line 297
    iput p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mReplacedPos:I

    .line 73
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/16 p1, 0xa

    .line 74
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setScreenTransitionType(I)I

    const/4 p1, 0x3

    .line 75
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setScreenLayoutMode(I)V

    const/16 p1, 0x2a30

    .line 76
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setMaximumSnapVelocity(I)V

    const/4 p1, 0x0

    .line 77
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    return-void
.end method

.method private addDesktopIcon(Landroid/view/View;IZ)V
    .locals 3

    .line 528
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 529
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    .line 530
    instance-of v1, p1, Lcom/miui/home/launcher/FolderIcon;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 531
    move-object v1, p1

    check-cast v1, Lcom/miui/home/launcher/DropTarget;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragController;->addDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    .line 533
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    :goto_0
    move p2, v1

    goto :goto_2

    :cond_1
    if-eqz p3, :cond_3

    :goto_1
    if-ge v1, v0, :cond_3

    .line 538
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 539
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v2, :cond_2

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/home/launcher/ItemInfo;

    iget p3, p3, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    if-lt p3, p2, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 545
    :cond_3
    :goto_2
    instance-of p3, p1, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    const/4 v0, 0x1

    if-eqz p3, :cond_4

    .line 546
    move-object p3, p1

    check-cast p3, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    invoke-virtual {v1}, Lcom/miui/home/launcher/hotseats/HotSeats;->isLoading()Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-interface {p3, v1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setEnableAutoLayoutAnimation(Z)V

    .line 548
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    if-nez p3, :cond_5

    .line 549
    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/WallpaperUtils;->onAddViewToGroup(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 550
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_5
    return-void
.end method

.method private compensationInvalidate()V
    .locals 2

    .line 678
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLastCellBackgroundX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLastCellBackgroundX:F

    .line 680
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method private disableNextAutoLayoutAnimation()V
    .locals 4

    .line 164
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 165
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v2

    .line 166
    instance-of v3, v2, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    if-eqz v3, :cond_0

    .line 167
    check-cast v2, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    invoke-interface {v2, v1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setSkipNextAutoLayoutAnimation(Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getSeatPosByX(II)I
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 441
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->getScreenLayoutX(I)I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getUniformLayoutModeCurrentGap()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    .line 442
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getVisibleScreenCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getSeatWidth(I)I

    move-result p0

    div-int/2addr p1, p0

    add-int/lit8 p2, p2, -0x1

    .line 441
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private getSeatWidth(I)I
    .locals 3

    .line 430
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    div-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getChildScreenMeasureWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 431
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 432
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getUniformLayoutModeMaxGap()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    if-nez p1, :cond_1

    .line 434
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p0

    sub-int/2addr p1, p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getChildScreenMeasureWidth()I

    move-result p0

    add-int p1, p0, v0

    :goto_0
    return p1
.end method

.method private getVisibleScreenCount()I
    .locals 2

    .line 387
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    .line 388
    iget p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLastPlaceHolder:I

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method private isDropAllowed(ILcom/miui/home/launcher/ItemInfo;)Z
    .locals 2

    .line 377
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getSeatPosByX(II)I

    move-result p1

    .line 378
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 379
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/miui/home/launcher/FolderInfo;

    if-eqz p0, :cond_0

    iget-wide p0, p2, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private isDropAllowed(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->isSeatsFull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    invoke-interface {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->acceptItem(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 373
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderAnimating()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$keepDataConsistent$0(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 2

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HotSeats ScreenView addItem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.ScreenHotSeats"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->addDesktopIcon(Lcom/miui/home/launcher/ItemInfo;IZ)Landroid/view/View;

    return-void
.end method

.method private static synthetic lambda$keepDataConsistent$1(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 0

    .line 565
    instance-of p0, p0, Lcom/miui/home/launcher/FolderInfo;

    return p0
.end method

.method private synthetic lambda$keepDataConsistent$2(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    .line 566
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    check-cast p1, Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->updateFolderMessage(Lcom/miui/home/launcher/FolderInfo;)V

    return-void
.end method

.method private layoutImmediately()V
    .locals 0

    .line 524
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->performLayoutNow(Landroid/view/View;)V

    return-void
.end method

.method private pushDragItem(Lcom/miui/home/launcher/DragObject;)I
    .locals 4

    .line 481
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getVisibleScreenCount()I

    move-result v0

    const/4 v1, -0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 483
    iput v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mInsertPos:I

    goto :goto_2

    .line 485
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotseatMaxCount()I

    move-result v3

    if-ne v0, v3, :cond_3

    .line 486
    iget v1, p1, Lcom/miui/home/launcher/DragObject;->x:I

    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getSeatPosByX(II)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mReplacedPos:I

    .line 487
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    iget p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mReplacedPos:I

    .line 488
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object p0

    instance-of p0, p0, Lcom/miui/home/launcher/FolderIcon;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_2

    :cond_2
    :goto_0
    const/4 v1, -0x3

    goto :goto_2

    .line 492
    :cond_3
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getSeatWidth(I)I

    move-result v0

    .line 493
    iget p1, p1, Lcom/miui/home/launcher/DragObject;->x:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_1
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/ScreenView;->getScreenLayoutX(I)I

    move-result v3

    sub-int/2addr p1, v3

    .line 494
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getUniformLayoutModeCurrentGap()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr p1, v3

    div-int/2addr p1, v0

    iput p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mInsertPos:I

    .line 495
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mInsertPos:I

    .line 496
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 497
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iget v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mInsertPos:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mInsertPos:I

    :cond_5
    :goto_2
    return v1
.end method

.method private removeCellBackground()V
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->removeView(Landroid/view/View;)V

    const/4 v0, -0x1

    .line 460
    iput v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLastPlaceHolder:I

    return-void
.end method

.method private setChildVisible(II)V
    .locals 1

    .line 471
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private setReplacedViewVisible()V
    .locals 3

    .line 464
    iget v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLastReplacedPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x0

    .line 465
    invoke-direct {p0, v0, v2}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setChildVisible(II)V

    .line 466
    iput v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLastReplacedPos:I

    :cond_0
    return-void
.end method

.method private setupCellBackground()V
    .locals 5

    .line 446
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 447
    new-instance v0, Lcom/miui/home/launcher/CellBackground;

    iget-object v2, p0, Lcom/miui/launcher/views/LauncherViewGroup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/miui/home/launcher/CellBackground;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    .line 448
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellBackground;->setInDock(Z)V

    .line 449
    iget-object v0, p0, Lcom/miui/launcher/views/LauncherViewGroup;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/miui/home/launcher/GridCell;->create(Landroid/content/Context;Z)Lcom/miui/home/launcher/GridCell;

    move-result-object v0

    .line 450
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result v3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconHeight()I

    move-result v4

    invoke-virtual {v0, v2, v2, v3, v4}, Lcom/miui/home/launcher/GridCell;->setCellBounds(IIII)V

    .line 451
    iget-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 452
    iget-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 453
    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mGridCell:Lcom/miui/home/launcher/GridCell;

    .line 455
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/CellBackground;->setSkipNextAutoLayoutAnimation(Z)V

    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 0

    .line 366
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->isDropAllowed(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method public addDesktopIcon(Lcom/miui/home/launcher/ItemInfo;I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x1

    .line 505
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->addDesktopIcon(Lcom/miui/home/launcher/ItemInfo;IZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public addDesktopIcon(Lcom/miui/home/launcher/ItemInfo;IZ)Landroid/view/View;
    .locals 2

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    .line 511
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lcom/miui/home/launcher/Launcher;->createDesktopIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;Z)Landroid/view/View;

    move-result-object p1

    .line 512
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->addDesktopIcon(Landroid/view/View;IZ)V

    return-object p1

    .line 515
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->layoutImmediately()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 630
    instance-of v0, p1, Lcom/miui/home/launcher/DesktopIcon;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isHotseatsAppTitleHided()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/DesktopIcon;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/DesktopIcon;->setIsHideTitle(Z)V

    .line 633
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/ScreenView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public buildDrawingCache(Z)V
    .locals 0

    return-void
.end method

.method public finishLoading()V
    .locals 4

    .line 179
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 180
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v2

    .line 181
    instance-of v3, v2, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    if-eqz v3, :cond_0

    .line 182
    check-cast v2, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    invoke-interface {v2, v1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setSkipNextAutoLayoutAnimation(Z)V

    .line 183
    invoke-interface {v2, v1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setEnableAutoLayoutAnimation(Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreenList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->saveSeats(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic getContainerId()J
    .locals 2

    invoke-super {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->getContainerId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentShowShortcutIcons()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/IShortcutIcon;",
            ">;"
        }
    .end annotation

    .line 638
    invoke-static {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawableUtils;->getAllShortcutIconsFromParent(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getHitView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getItemMoveDescription(I)Ljava/lang/String;
    .locals 2

    .line 476
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    add-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, v1, v0

    const p1, 0x7f100083

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOnDropAnnounce()Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;
    .locals 0

    .line 401
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    return-object p0
.end method

.method public getRebindTargetView(Landroid/view/View;)Landroid/view/View;
    .locals 0

    return-object p1
.end method

.method public getScreenList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;"
        }
    .end annotation

    .line 190
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    .line 191
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 193
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 194
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v4, :cond_0

    .line 195
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ItemInfo;

    .line 196
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getUserPresentAnimationChildList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 612
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 613
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 614
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public isSeatsFull()Z
    .locals 1

    .line 204
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getVisibleScreenCount()I

    move-result p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotseatMaxCount()I

    move-result v0

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public keepDataConsistent(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 555
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreenList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Launcher.ScreenHotSeats"

    const-string v1, "HotSeatsScreenViewContent not updateItemInfo OnScreenChanged"

    .line 556
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-interface {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->rebindItemInfo(Ljava/util/List;)V

    return-void

    .line 560
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeAllDesktopIcons()V

    .line 561
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 565
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent$$ExternalSyntheticLambda2;->INSTANCE:Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent$$ExternalSyntheticLambda2;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onDarkModeChanged()V
    .locals 3

    const/4 v0, 0x0

    .line 136
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 137
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 138
    instance-of v2, v1, Lcom/miui/home/launcher/FolderIcon;

    if-eqz v2, :cond_0

    .line 139
    check-cast v1, Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderIcon;->setBlur()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 686
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    .line 687
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    if-ne p2, p1, :cond_0

    .line 688
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method public onDragCompleted(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    .line 355
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeCellBackground()V

    .line 356
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setReplacedViewVisible()V

    .line 357
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreenList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/hotseats/HotSeats;->saveSeats(Ljava/util/List;)V

    :cond_0
    const/4 v0, 0x0

    .line 360
    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    .line 361
    invoke-interface {p0, p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->updateFolderMessageWhenDrag(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method public onDragEnter(Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    .line 283
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->isDropAllowed(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 286
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setupCellBackground()V

    .line 287
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeCellBackground()V

    .line 288
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 289
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 290
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotSeatsCellWidth()I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 291
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotSeatsCellHeight()I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 292
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    iput v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLastPlaceHolder:I

    return-void
.end method

.method public onDragExit(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mGridCell:Lcom/miui/home/launcher/GridCell;

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {v0}, Lcom/miui/home/launcher/GridCell;->setHide()V

    .line 346
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->isDropAllowed(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 349
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeCellBackground()V

    .line 350
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setReplacedViewVisible()V

    return-void
.end method

.method public onDragOver(Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    .line 301
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->isDropAllowed(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 304
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->pushDragItem(Lcom/miui/home/launcher/DragObject;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 306
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeCellBackground()V

    .line 307
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setReplacedViewVisible()V

    return-void

    :cond_1
    const/4 v1, -0x2

    if-ne v0, v1, :cond_4

    .line 312
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setReplacedViewVisible()V

    .line 313
    iget v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLastPlaceHolder:I

    iget v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mInsertPos:I

    if-eq v0, v1, :cond_3

    .line 314
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeCellBackground()V

    .line 315
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    iget v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mInsertPos:I

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 316
    iget v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mInsertPos:I

    iput v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLastPlaceHolder:I

    .line 317
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 318
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performEnterHotSeat(Landroid/view/View;)V

    .line 320
    :cond_2
    iget v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mInsertPos:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getItemMoveDescription(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragObject;->announce(Ljava/lang/CharSequence;)V

    .line 322
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->compensationInvalidate()V

    goto :goto_0

    .line 325
    :cond_4
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeCellBackground()V

    .line 326
    iget v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLastReplacedPos:I

    iget v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mReplacedPos:I

    if-eq v0, v1, :cond_5

    .line 327
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setReplacedViewVisible()V

    .line 328
    iget v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mReplacedPos:I

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setChildVisible(II)V

    .line 329
    iget v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mReplacedPos:I

    iput v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLastReplacedPos:I

    .line 330
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getItemMoveDescription(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragObject;->announce(Ljava/lang/CharSequence;)V

    .line 333
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mGridCell:Lcom/miui/home/launcher/GridCell;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/miui/home/launcher/GridCell;->isHovered()Z

    move-result p1

    if-nez p1, :cond_6

    .line 334
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mGridCell:Lcom/miui/home/launcher/GridCell;

    invoke-virtual {p1}, Lcom/miui/home/launcher/GridCell;->setHovered()V

    .line 335
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_6
    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 223
    iget v2, v1, Lcom/miui/home/launcher/DragObject;->x:I

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->isDropAllowed(ILcom/miui/home/launcher/ItemInfo;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 226
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    .line 227
    invoke-direct/range {p0 .. p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->pushDragItem(Lcom/miui/home/launcher/DragObject;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    return v3

    .line 231
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeCellBackground()V

    .line 232
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setReplacedViewVisible()V

    .line 233
    iget-wide v5, v2, Lcom/miui/home/launcher/ItemInfo;->id:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    iget-wide v5, v2, Lcom/miui/home/launcher/ItemInfo;->container:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    instance-of v5, v2, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v5, :cond_2

    .line 235
    move-object v5, v2

    check-cast v5, Lcom/miui/home/launcher/ShortcutInfo;

    .line 237
    invoke-virtual {v5}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "dock"

    .line 235
    invoke-static {v6, v5}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsDrag(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_2
    instance-of v5, v2, Lcom/miui/home/launcher/ShortcutInfo;

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    .line 240
    move-object v7, v2

    check-cast v7, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v7, v6, v6}, Lcom/miui/home/launcher/ShortcutInfo;->setBuddyIconView(Lcom/miui/home/launcher/IShortcutIcon;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 241
    :cond_3
    instance-of v7, v2, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v7, :cond_4

    .line 242
    move-object v7, v2

    check-cast v7, Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v7, v6}, Lcom/miui/home/launcher/FolderInfo;->setBuddyIconView(Lcom/miui/home/launcher/FolderIcon;)V

    :cond_4
    :goto_0
    const/4 v7, -0x2

    const/4 v8, 0x1

    if-ne v4, v7, :cond_5

    .line 245
    iget v4, v0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mInsertPos:I

    invoke-virtual {v0, v2, v4, v3}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->addDesktopIcon(Lcom/miui/home/launcher/ItemInfo;IZ)Landroid/view/View;

    move-result-object v3

    goto :goto_3

    .line 247
    :cond_5
    iget v4, v0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mReplacedPos:I

    invoke-virtual {v0, v4}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v4

    .line 248
    invoke-virtual {v0, v4}, Lcom/miui/home/launcher/ScreenView;->removeView(Landroid/view/View;)V

    if-eqz v4, :cond_7

    .line 251
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v7, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    :cond_6
    move-object v7, v6

    :goto_1
    check-cast v7, Lcom/miui/home/launcher/ItemInfo;

    move-object v10, v7

    goto :goto_2

    :cond_7
    move-object v10, v6

    :goto_2
    if-eqz v10, :cond_9

    .line 254
    iget-wide v11, v10, Lcom/miui/home/launcher/ItemInfo;->container:J

    iget-wide v13, v2, Lcom/miui/home/launcher/ItemInfo;->container:J

    cmp-long v7, v11, v13

    if-eqz v7, :cond_8

    .line 255
    check-cast v4, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    invoke-interface {v4, v8}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setSkipNextAutoLayoutAnimation(Z)V

    .line 257
    :cond_8
    iget-wide v11, v2, Lcom/miui/home/launcher/ItemInfo;->container:J

    iput-wide v11, v10, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 258
    iget-wide v11, v2, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iput-wide v11, v10, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 259
    iget v4, v2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iput v4, v10, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 260
    iget v4, v2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iput v4, v10, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 261
    iget-object v4, v0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4, v10, v3}, Lcom/miui/home/launcher/Launcher;->addItem(Lcom/miui/home/launcher/ItemInfo;Z)Landroid/view/View;

    .line 262
    iget-object v9, v0, Lcom/miui/launcher/views/LauncherViewGroup;->mContext:Landroid/content/Context;

    iget-wide v11, v10, Lcom/miui/home/launcher/ItemInfo;->container:J

    iget-wide v13, v10, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iget v15, v10, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v3, v10, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    move/from16 v16, v3

    invoke-static/range {v9 .. v16}, Lcom/miui/home/launcher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJII)V

    .line 266
    :cond_9
    iget v3, v0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mReplacedPos:I

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->addDesktopIcon(Lcom/miui/home/launcher/ItemInfo;I)Landroid/view/View;

    move-result-object v3

    .line 268
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    .line 269
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    if-eqz v3, :cond_a

    .line 270
    iget-object v3, v0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/Launcher;->insertNewShortcutFromAllApps(Lcom/miui/home/launcher/DragObject;)V

    .line 272
    :cond_a
    iget-object v1, v0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreenList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/hotseats/HotSeats;->saveSeats(Ljava/util/List;)V

    .line 273
    iput-object v6, v0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    .line 274
    invoke-virtual {v2}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    if-eqz v5, :cond_b

    .line 276
    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v2}, Lcom/miui/home/launcher/hybrid/HybridController;->trackMoveOutsideFolder(Lcom/miui/home/launcher/ShortcutInfo;)V

    :cond_b
    return v8
.end method

.method public onDropBack(Lcom/miui/home/launcher/DragObject;)V
    .locals 3

    .line 214
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeCellBackground()V

    .line 215
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    iget v1, v1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->addDesktopIcon(Lcom/miui/home/launcher/ItemInfo;IZ)Landroid/view/View;

    .line 216
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/miui/home/launcher/Launcher;->createDesktopIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;Z)Landroid/view/View;

    move-result-object v0

    .line 217
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 218
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 87
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 88
    iget-object v0, p0, Lcom/miui/launcher/views/LauncherViewGroup;->mContext:Landroid/content/Context;

    const v1, 0x7f08027b

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/Utilities;->loadThemeCompatibleDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getCellWidthGap()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setUniformLayoutModeMaxGap(I)Z

    .line 151
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/miui/home/launcher/ScreenView;->onLayout(ZIIII)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 406
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    invoke-interface {p0, p1, v0, v2}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->isNeedBlockLongPress(Landroid/view/View;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/hotseats/HotSeats;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Launcher.ScreenHotSeats"

    const-string p1, "onLongClick: isNeedBlockLongPress for ScreenHotSeats"

    .line 410
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 413
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    if-nez v0, :cond_2

    return v1

    .line 417
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDragDisable()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->canShowShortcutMenu(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 418
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->showDragDisableToast(Landroid/content/Context;)V

    .line 419
    iput-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    return v3

    .line 422
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 423
    invoke-virtual {v0, p1, v3, p0, v1}, Lcom/miui/home/launcher/DragController;->startDrag(Landroid/view/View;ZLcom/miui/home/launcher/DragSource;I)Z

    move-result p1

    if-nez p1, :cond_4

    .line 424
    iput-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    :cond_4
    return v3
.end method

.method public onResume()V
    .locals 0

    .line 663
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->onResumeMamlDrawable()V

    return-void
.end method

.method public onResumeMamlDrawable()V
    .locals 3

    const/4 v0, 0x0

    .line 667
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 668
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 669
    instance-of v2, v1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v2, :cond_0

    .line 670
    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 671
    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/graphics/drawable/MamlCompat;->onResume(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onVerticalFling(IFF)V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p0, p3

    invoke-virtual {v0, p1, v1, p0}, Lcom/miui/home/launcher/Workspace;->onVerticalFling(IFF)V

    return-void
.end method

.method protected onVerticalGesture(ILandroid/view/MotionEvent;)Z
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->onVerticalGesture(ILandroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 1

    .line 97
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 98
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarWidth()V

    .line 101
    :cond_0
    instance-of p0, p1, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz p0, :cond_1

    .line 102
    check-cast p1, Lcom/miui/home/launcher/ShortcutIcon;

    const/4 p0, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, p0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_1
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0

    .line 108
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ScreenView;->onViewRemoved(Landroid/view/View;)V

    .line 109
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 110
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarWidth()V

    :cond_0
    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    .line 131
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->varyViewGroupByWallpaper(Landroid/view/ViewGroup;)V

    .line 132
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->resetShortcutIconShadowColor(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public refreshSearchIcon()V
    .locals 0

    return-void
.end method

.method public removeAllDesktopIcons()V
    .locals 0

    .line 209
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->removeAllScreens()V

    return-void
.end method

.method public removeIcon(Landroid/view/View;)V
    .locals 0

    .line 582
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->removeView(Landroid/view/View;)V

    .line 583
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->layoutImmediately()V

    .line 584
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreenList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->saveSeats(Ljava/util/List;)V

    return-void
.end method

.method public removeRecentCache(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    return-void
.end method

.method public removeShortcuts(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 590
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 591
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_0

    .line 592
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 594
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ItemInfo;

    .line 595
    instance-of v4, v3, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v4, :cond_1

    .line 596
    iget-wide v3, v3, Lcom/miui/home/launcher/ItemInfo;->id:J

    iget-wide v5, v0, Lcom/miui/home/launcher/ItemInfo;->id:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 597
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/ScreenView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 600
    :cond_1
    instance-of v2, v3, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v2, :cond_2

    .line 601
    move-object v2, v3

    check-cast v2, Lcom/miui/home/launcher/FolderInfo;

    iget-wide v3, v3, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-virtual {v2, v3, v4}, Lcom/miui/home/launcher/FolderInfo;->remove(J)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected scrolledFarEnough(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsContent;->setDragController(Lcom/miui/home/launcher/DragController;)V

    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 0

    .line 156
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/launcher/views/LauncherViewGroup;->setFrame(IIII)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->disableNextAutoLayoutAnimation()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setupViews(Lcom/miui/home/launcher/hotseats/HotSeats;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    return-void
.end method

.method public startLoading()V
    .locals 0

    .line 174
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public updateHotSeatsListIconSize()V
    .locals 0

    return-void
.end method

.method public updateIconSize()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 642
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 643
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 644
    instance-of v3, v2, Lcom/miui/home/launcher/UpdateIconSize;

    if-eqz v3, :cond_0

    .line 645
    check-cast v2, Lcom/miui/home/launcher/UpdateIconSize;

    invoke-interface {v2}, Lcom/miui/home/launcher/UpdateIconSize;->updateSizeOnIconSizeChanged()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 648
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    if-eqz p0, :cond_2

    .line 649
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 650
    instance-of v1, p0, Lcom/miui/home/launcher/GridCell;

    if-eqz v1, :cond_2

    .line 651
    check-cast p0, Lcom/miui/home/launcher/GridCell;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconHeight()I

    move-result v2

    invoke-virtual {p0, v0, v0, v1, v2}, Lcom/miui/home/launcher/GridCell;->setCellBounds(IIII)V

    :cond_2
    return-void
.end method
