.class public Lcom/miui/home/launcher/GridConfig;
.super Ljava/lang/Object;
.source "GridConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/GridConfig$OnGridConfigChangeListener;,
        Lcom/miui/home/launcher/GridConfig$FolderConfig;,
        Lcom/miui/home/launcher/GridConfig$IconConfig;,
        Lcom/miui/home/launcher/GridConfig$Builder;,
        Lcom/miui/home/launcher/GridConfig$ViewPosition;
    }
.end annotation


# static fields
.field private static sCellCountXDef:I = -0x1

.field private static sCellCountXMax:I = -0x1

.field private static sCellCountXMin:I = -0x1

.field private static sCellCountYDef:I = -0x1


# instance fields
.field private mCellWorkingHeight:I

.field private mCellWorkingWidth:I

.field private mCountCellX:I

.field private mCountCellY:I

.field private mDeviceMaxSize:I

.field private mDeviceMinSize:I

.field private final mFolderConfig:Lcom/miui/home/launcher/GridConfig$FolderConfig;

.field private final mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

.field private mHotSeatsCellContentHeight:I

.field private final mHotSeatsListCellWidth:I

.field private final mIconConfig:Lcom/miui/home/launcher/GridConfig$IconConfig;

.field private mRealScreenHeight:I

.field private mScreenHeight:I

.field private mScreenLongSize:I

.field private mScreenShortSize:I

.field private mScreenWidth:I

.field private mStatusBarHeight:I

.field private final mTextSizeConfig:Lcom/miui/home/launcher/TextSizeConfig;

.field private final mWorkspacePaddingTopMulti:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIIZ)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lcom/miui/home/launcher/GridConfig;->mDeviceMaxSize:I

    .line 46
    iput v0, p0, Lcom/miui/home/launcher/GridConfig;->mDeviceMinSize:I

    .line 47
    iput v0, p0, Lcom/miui/home/launcher/GridConfig;->mScreenWidth:I

    .line 48
    iput v0, p0, Lcom/miui/home/launcher/GridConfig;->mScreenHeight:I

    .line 49
    iput v0, p0, Lcom/miui/home/launcher/GridConfig;->mRealScreenHeight:I

    .line 50
    iput v0, p0, Lcom/miui/home/launcher/GridConfig;->mScreenLongSize:I

    .line 51
    iput v0, p0, Lcom/miui/home/launcher/GridConfig;->mScreenShortSize:I

    .line 57
    iput v0, p0, Lcom/miui/home/launcher/GridConfig;->mCellWorkingHeight:I

    .line 58
    iput v0, p0, Lcom/miui/home/launcher/GridConfig;->mCellWorkingWidth:I

    .line 69
    iput v0, p0, Lcom/miui/home/launcher/GridConfig;->mHotSeatsCellContentHeight:I

    .line 72
    invoke-static {p4, p5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/GridConfig;->mDeviceMaxSize:I

    .line 73
    invoke-static {p4, p5}, Ljava/lang/Math;->min(II)I

    move-result p4

    iput p4, p0, Lcom/miui/home/launcher/GridConfig;->mDeviceMinSize:I

    .line 74
    invoke-direct {p0, p2, p3}, Lcom/miui/home/launcher/GridConfig;->initScreenSize(II)V

    .line 75
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/GridConfig;->loadCellConfigFromController(Landroid/content/Context;)V

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    iget p5, p0, Lcom/miui/home/launcher/GridConfig;->mCountCellX:I

    const-string v0, "miui_home_screen_columns_size"

    invoke-static {p4, v0, p5}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putIntToSystem(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 77
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result p4

    if-eqz p4, :cond_0

    new-instance p4, Lcom/miui/home/launcher/compat/FoldDeviceRules;

    invoke-direct {p4, p1, p2, p3, p6}, Lcom/miui/home/launcher/compat/FoldDeviceRules;-><init>(Landroid/content/Context;IIZ)V

    goto :goto_0

    .line 78
    :cond_0
    new-instance p4, Lcom/miui/home/launcher/compat/PhoneDeviceRules;

    invoke-direct {p4, p1, p2, p3, p6}, Lcom/miui/home/launcher/compat/PhoneDeviceRules;-><init>(Landroid/content/Context;IIZ)V

    :goto_0
    iput-object p4, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    .line 79
    new-instance p2, Lcom/miui/home/launcher/GridConfig$IconConfig;

    iget p3, p0, Lcom/miui/home/launcher/GridConfig;->mCountCellX:I

    invoke-direct {p2, p1, p0, p3}, Lcom/miui/home/launcher/GridConfig$IconConfig;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/GridConfig;I)V

    iput-object p2, p0, Lcom/miui/home/launcher/GridConfig;->mIconConfig:Lcom/miui/home/launcher/GridConfig$IconConfig;

    .line 80
    new-instance p2, Lcom/miui/home/launcher/GridConfig$FolderConfig;

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/GridConfig$FolderConfig;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/home/launcher/GridConfig;->mFolderConfig:Lcom/miui/home/launcher/GridConfig$FolderConfig;

    .line 81
    new-instance p2, Lcom/miui/home/launcher/TextSizeConfig;

    iget p3, p0, Lcom/miui/home/launcher/GridConfig;->mCountCellX:I

    invoke-direct {p2, p1, p3}, Lcom/miui/home/launcher/TextSizeConfig;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/miui/home/launcher/GridConfig;->mTextSizeConfig:Lcom/miui/home/launcher/TextSizeConfig;

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07075d

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/GridConfig;->mWorkspacePaddingTopMulti:I

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07026e

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/GridConfig;->mHotSeatsListCellWidth:I

    .line 84
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/GridConfig;->mStatusBarHeight:I

    return-void
.end method

.method private calCenterLocWithItemInfo(Landroid/view/View;)[I
    .locals 11

    const/4 v0, 0x2

    if-nez p1, :cond_0

    new-array p0, v0, [I

    .line 431
    fill-array-data p0, :array_0

    return-object p0

    .line 434
    :cond_0
    instance-of v1, p1, Lcom/miui/home/launcher/IItemInfo;

    if-nez v1, :cond_1

    .line 435
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/GridConfig;->getCenterLocationInWindow(Landroid/view/View;)[I

    move-result-object p0

    return-object p0

    .line 438
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/miui/home/launcher/IItemInfo;

    .line 440
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    .line 441
    invoke-interface {v1}, Lcom/miui/home/launcher/IItemInfo;->getItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v3

    if-eqz v3, :cond_9

    if-nez v2, :cond_2

    goto/16 :goto_4

    .line 445
    :cond_2
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v3

    if-nez v3, :cond_3

    .line 447
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/GridConfig;->getCenterLocationInWindow(Landroid/view/View;)[I

    move-result-object p0

    return-object p0

    .line 451
    :cond_3
    invoke-interface {v1}, Lcom/miui/home/launcher/IItemInfo;->getScreenId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p1

    .line 452
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v4

    .line 453
    invoke-interface {v1}, Lcom/miui/home/launcher/IItemInfo;->isInHotseat()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_4

    .line 455
    invoke-virtual {v3}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result v3

    sub-int/2addr p1, v3

    goto :goto_0

    :cond_4
    move p1, v6

    :goto_0
    if-eqz v4, :cond_5

    .line 457
    invoke-static {v2}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldLargeScreenWithoutSplit(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    rsub-int/lit8 p1, p1, 0x1

    .line 460
    :cond_5
    invoke-static {v2}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v2

    div-int/2addr v2, v0

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v2

    :goto_1
    const/4 v3, 0x1

    if-eqz v5, :cond_7

    if-eqz v4, :cond_7

    .line 461
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v1}, Lcom/miui/home/launcher/IItemInfo;->getViewCellX()I

    move-result v7

    sub-int/2addr v4, v7

    goto :goto_2

    :cond_7
    invoke-interface {v1}, Lcom/miui/home/launcher/IItemInfo;->getViewCellX()I

    move-result v4

    .line 462
    :goto_2
    invoke-interface {v1}, Lcom/miui/home/launcher/IItemInfo;->getViewCellY()I

    move-result v7

    .line 463
    invoke-interface {v1}, Lcom/miui/home/launcher/IItemInfo;->getViewSpanX()I

    move-result v8

    .line 464
    invoke-interface {v1}, Lcom/miui/home/launcher/IItemInfo;->getViewSpanY()I

    move-result v1

    .line 466
    iget-object v9, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    invoke-virtual {v9}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getWorkspaceCellSide()I

    move-result v9

    iget-object v10, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    .line 467
    invoke-virtual {v10}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getCellSize()I

    move-result v10

    mul-int/2addr v4, v10

    add-int/2addr v9, v4

    iget-object v4, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    .line 468
    invoke-virtual {v4}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getCellSize()I

    move-result v4

    mul-int/2addr v4, v8

    div-int/2addr v4, v0

    add-int/2addr v9, v4

    mul-int/2addr v2, p1

    add-int/2addr v9, v2

    if-eqz v5, :cond_8

    .line 470
    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig;->getScreenHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig;->getHotseatMarginBottom()I

    move-result v1

    iget-object p0, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getHotseatHeight()I

    move-result p0

    div-int/2addr p0, v0

    add-int/2addr v1, p0

    sub-int/2addr p1, v1

    goto :goto_3

    .line 471
    :cond_8
    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig;->getWorkspacePaddingTop()I

    move-result p1

    iget-object v2, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    invoke-virtual {v2}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getCellSize()I

    move-result v2

    mul-int/2addr v7, v2

    add-int/2addr p1, v7

    iget-object p0, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getCellSize()I

    move-result p0

    mul-int/2addr p0, v1

    div-int/2addr p0, v0

    add-int/2addr p1, p0

    :goto_3
    new-array p0, v0, [I

    aput v9, p0, v6

    aput p1, p0, v3

    return-object p0

    .line 442
    :cond_9
    :goto_4
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/GridConfig;->getCenterLocationInWindow(Landroid/view/View;)[I

    move-result-object p0

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private calculateViewLocation(Lcom/miui/home/launcher/GridConfig$ViewPosition;IIIIII)[I
    .locals 3

    .line 536
    sget-object v0, Lcom/miui/home/launcher/GridConfig$1;->$SwitchMap$com$miui$home$launcher$GridConfig$ViewPosition:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq p1, v0, :cond_3

    if-eq p1, v2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    move p0, v1

    move p1, p0

    goto :goto_1

    .line 550
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig;->getScreenWidth()I

    move-result p1

    div-int/2addr p1, v2

    .line 551
    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig;->getScreenHeight()I

    move-result p0

    sub-int/2addr p0, p7

    div-int/2addr p3, v2

    sub-int/2addr p0, p3

    goto :goto_1

    .line 546
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig;->getScreenWidth()I

    move-result p0

    div-int/lit8 p1, p0, 0x2

    .line 547
    div-int/2addr p3, v2

    goto :goto_0

    .line 542
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig;->getScreenWidth()I

    move-result p0

    sub-int/2addr p0, p6

    div-int/2addr p2, v2

    sub-int p1, p0, p2

    .line 543
    div-int/2addr p3, v2

    goto :goto_0

    .line 538
    :cond_3
    div-int/2addr p2, v2

    add-int p1, p4, p2

    .line 539
    div-int/2addr p3, v2

    :goto_0
    add-int p0, p5, p3

    :goto_1
    new-array p2, v2, [I

    aput p1, p2, v1

    aput p0, p2, v0

    return-object p2
.end method

.method private getCenterLocationInWindow(Landroid/view/View;)[I
    .locals 5

    const/4 p0, 0x2

    new-array v0, p0, [I

    if-nez p1, :cond_0

    return-object v0

    .line 416
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    new-array v1, p0, [I

    const/4 v2, 0x0

    aget v3, v0, v2

    .line 417
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/2addr v4, p0

    add-int/2addr v3, v4

    aput v3, v1, v2

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/2addr p1, p0

    add-int/2addr v0, p1

    aput v0, v1, v2

    return-object v1
.end method

.method private getEditEntryThumbnailCenterLocation()[I
    .locals 8

    .line 506
    sget-object v1, Lcom/miui/home/launcher/GridConfig$ViewPosition;->BOTTOM_CENTER:Lcom/miui/home/launcher/GridConfig$ViewPosition;

    invoke-direct {p0}, Lcom/miui/home/launcher/GridConfig;->getEditEntryThumbnailViewHeight()I

    move-result v3

    invoke-direct {p0}, Lcom/miui/home/launcher/GridConfig;->getEditEntryThumbnailViewMarginBottom()I

    move-result v7

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/GridConfig;->calculateViewLocation(Lcom/miui/home/launcher/GridConfig$ViewPosition;IIIIII)[I

    move-result-object p0

    return-object p0
.end method

.method private getEditEntryThumbnailViewHeight()I
    .locals 0

    .line 498
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getBottomEntryHeight()I

    move-result p0

    return p0
.end method

.method private getEditEntryThumbnailViewMarginBottom()I
    .locals 0

    .line 502
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getBottomEntryMarginBottom()I

    move-result p0

    return p0
.end method

.method private getEditFinishContainerCenterLocation()[I
    .locals 8

    .line 521
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getEditModeTopMenuMarginTop()I

    move-result v5

    .line 522
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getTopMenuHorPadding()I

    move-result v6

    .line 523
    sget-object v1, Lcom/miui/home/launcher/GridConfig$ViewPosition;->TOP_RIGHT:Lcom/miui/home/launcher/GridConfig$ViewPosition;

    invoke-direct {p0}, Lcom/miui/home/launcher/GridConfig;->getEditPreviewTopMenuHeight()I

    move-result v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/GridConfig;->calculateViewLocation(Lcom/miui/home/launcher/GridConfig$ViewPosition;IIIIII)[I

    move-result-object p0

    return-object p0
.end method

.method private getEditGroupContainerCenterLocation()[I
    .locals 8

    .line 510
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getTopMenuHorPadding()I

    move-result v4

    .line 511
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getEditModeTopMenuMarginTop()I

    move-result v5

    .line 512
    sget-object v1, Lcom/miui/home/launcher/GridConfig$ViewPosition;->TOP_LEFT:Lcom/miui/home/launcher/GridConfig$ViewPosition;

    invoke-direct {p0}, Lcom/miui/home/launcher/GridConfig;->getEditPreviewTopMenuWidth()I

    move-result v2

    invoke-direct {p0}, Lcom/miui/home/launcher/GridConfig;->getEditPreviewTopMenuHeight()I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/GridConfig;->calculateViewLocation(Lcom/miui/home/launcher/GridConfig$ViewPosition;IIIIII)[I

    move-result-object p0

    return-object p0
.end method

.method private getEditPreviewTopMenuHeight()I
    .locals 0

    .line 494
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getEditPreviewTopMenuHeight()I

    move-result p0

    return p0
.end method

.method private getEditPreviewTopMenuWidth()I
    .locals 0

    .line 490
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getEditPreviewTopMenuWidth()I

    move-result p0

    return p0
.end method

.method private getEditUninstallDropTargetCenterLocation()[I
    .locals 8

    .line 516
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getEditModeTopMenuMarginTop()I

    move-result v5

    .line 517
    sget-object v1, Lcom/miui/home/launcher/GridConfig$ViewPosition;->TOP_CENTER:Lcom/miui/home/launcher/GridConfig$ViewPosition;

    invoke-direct {p0}, Lcom/miui/home/launcher/GridConfig;->getEditPreviewTopMenuHeight()I

    move-result v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/GridConfig;->calculateViewLocation(Lcom/miui/home/launcher/GridConfig$ViewPosition;IIIIII)[I

    move-result-object p0

    return-object p0
.end method

.method private getHotseatCenterLocation()[I
    .locals 8

    .line 480
    sget-object v1, Lcom/miui/home/launcher/GridConfig$ViewPosition;->BOTTOM_CENTER:Lcom/miui/home/launcher/GridConfig$ViewPosition;

    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig;->getHotSeatsCellHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig;->getHotseatMarginBottom()I

    move-result v7

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/GridConfig;->calculateViewLocation(Lcom/miui/home/launcher/GridConfig$ViewPosition;IIIIII)[I

    move-result-object p0

    return-object p0
.end method

.method private getScreenMarginBottom(Landroid/content/Context;)I
    .locals 1

    .line 645
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInHalfSoscSplitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    invoke-static {p1}, Lcom/miui/home/launcher/util/SoscUtils;->isTopLayout(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 650
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getNavScreenMarginBottom()I

    move-result p0

    return p0
.end method

.method private getSearchBarCenterLocation()[I
    .locals 8

    .line 476
    sget-object v1, Lcom/miui/home/launcher/GridConfig$ViewPosition;->BOTTOM_CENTER:Lcom/miui/home/launcher/GridConfig$ViewPosition;

    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig;->getSearchBarHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig;->getSearchBarMarginBottom()I

    move-result v7

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/GridConfig;->calculateViewLocation(Lcom/miui/home/launcher/GridConfig$ViewPosition;IIIIII)[I

    move-result-object p0

    return-object p0
.end method

.method private getSeekBarCenterLocation()[I
    .locals 4

    .line 484
    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig;->getScreenWidth()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 485
    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig;->getScreenHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig;->getWorkspaceIndicatorMarginBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig;->getIndicatorHeight()I

    move-result p0

    div-int/2addr p0, v1

    sub-int/2addr v2, p0

    new-array p0, v1, [I

    const/4 v1, 0x0

    aput v0, p0, v1

    const/4 v0, 0x1

    aput v2, p0, v0

    return-object p0
.end method

.method private initScreenSize(II)V
    .locals 1

    .line 88
    iput p1, p0, Lcom/miui/home/launcher/GridConfig;->mScreenWidth:I

    .line 89
    iput p2, p0, Lcom/miui/home/launcher/GridConfig;->mScreenHeight:I

    .line 90
    iput p2, p0, Lcom/miui/home/launcher/GridConfig;->mRealScreenHeight:I

    .line 91
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/GridConfig;->mScreenLongSize:I

    .line 92
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/GridConfig;->mScreenShortSize:I

    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "initScreenSize: mScreenWidth "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/miui/home/launcher/GridConfig;->mScreenWidth:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mScreenHeight = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/miui/home/launcher/GridConfig;->mScreenHeight:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",mDeviceMaxSize = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/miui/home/launcher/GridConfig;->mDeviceMaxSize:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",mDeviceMinSize = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/launcher/GridConfig;->mDeviceMinSize:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GridConfig"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loadCellConfigFromController(Landroid/content/Context;)V
    .locals 4

    .line 115
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherCellCountInstance()Lcom/miui/home/launcher/compat/LauncherCellCount;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Lcom/miui/home/launcher/compat/LauncherCellCount;->getCellCountXDef()I

    move-result v2

    sput v2, Lcom/miui/home/launcher/GridConfig;->sCellCountXDef:I

    .line 118
    invoke-virtual {v1}, Lcom/miui/home/launcher/compat/LauncherCellCount;->getCellCountXMin()I

    move-result v2

    sput v2, Lcom/miui/home/launcher/GridConfig;->sCellCountXMin:I

    .line 119
    invoke-virtual {v1}, Lcom/miui/home/launcher/compat/LauncherCellCount;->getCellCountXMax()I

    move-result v2

    sput v2, Lcom/miui/home/launcher/GridConfig;->sCellCountXMax:I

    .line 120
    invoke-virtual {v1}, Lcom/miui/home/launcher/compat/LauncherCellCount;->getCellCountYDef()I

    move-result v1

    sput v1, Lcom/miui/home/launcher/GridConfig;->sCellCountYDef:I

    .line 121
    invoke-static {v0}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    sget v0, Lcom/miui/home/launcher/GridConfig;->sCellCountXDef:I

    const-string v1, "pref_key_cell_x"

    invoke-static {p1, v1, v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 125
    sget v2, Lcom/miui/home/launcher/GridConfig;->sCellCountXMax:I

    sget v3, Lcom/miui/home/launcher/GridConfig;->sCellCountXMin:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/miui/home/launcher/GridConfig;->mCountCellX:I

    if-eq v0, v2, :cond_2

    .line 127
    invoke-static {p1, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    .line 122
    :cond_1
    :goto_0
    sget p1, Lcom/miui/home/launcher/GridConfig;->sCellCountXDef:I

    iput p1, p0, Lcom/miui/home/launcher/GridConfig;->mCountCellX:I

    .line 130
    :cond_2
    :goto_1
    sget p1, Lcom/miui/home/launcher/GridConfig;->sCellCountYDef:I

    iput p1, p0, Lcom/miui/home/launcher/GridConfig;->mCountCellY:I

    return-void
.end method


# virtual methods
.method public calGridSize(Landroid/content/Context;ILjava/lang/Object;)Z
    .locals 5

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calGridSize reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",args="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GridConfig"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/GridConfig;->mStatusBarHeight:I

    .line 560
    iget-object v0, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->updateUsingFsGesture(Z)V

    .line 561
    iget-object v0, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowGestureLine()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->updateShowGestureLine(Z)V

    .line 562
    iget-object v0, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig;->getScreenMarginTop()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->setScreenMarginTop(I)Z

    move-result v0

    .line 563
    iget-object v2, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    invoke-static {p1}, Lcom/miui/home/launcher/util/SoscUtils;->isTopLayout(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->updateCalGridUsingNav(Z)V

    .line 564
    iget-object v2, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/GridConfig;->getScreenMarginBottom(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->setScreenMarginBottom(I)Z

    move-result v2

    or-int/2addr v0, v2

    .line 565
    iget-object v2, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowSearchBar()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->updateShowSearchBar(Z)V

    const/4 v2, 0x0

    if-eq p2, v4, :cond_3

    const/4 v3, 0x2

    if-eq p2, v3, :cond_4

    const/4 v3, 0x3

    if-eq p2, v3, :cond_2

    const/4 v3, 0x4

    if-eq p2, v3, :cond_0

    packed-switch p2, :pswitch_data_0

    .line 601
    iget-object p2, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    iget p3, p0, Lcom/miui/home/launcher/GridConfig;->mCountCellX:I

    iget v2, p0, Lcom/miui/home/launcher/GridConfig;->mCountCellY:I

    invoke-virtual {p2, p1, p3, v2, v4}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->calGridSize(Landroid/content/Context;IIZ)Z

    move-result p2

    goto :goto_0

    .line 582
    :pswitch_0
    instance-of p2, p3, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    if-eqz p2, :cond_4

    .line 583
    check-cast p3, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    iget p2, p3, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->x:I

    .line 584
    iget v2, p3, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->y:I

    .line 585
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getLauncherLayoutType()Lcom/miui/home/launcher/compat/LauncherLayoutType;

    move-result-object v3

    iget p3, p3, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->type:I

    invoke-virtual {v3, p3}, Lcom/miui/home/launcher/compat/LauncherLayoutType;->updateType(I)V

    .line 586
    iget-object p3, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    invoke-virtual {p3, p1, p2, v2, v4}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->calGridSize(Landroid/content/Context;IIZ)Z

    move-result p3

    or-int/2addr v0, p3

    .line 587
    iput p2, p0, Lcom/miui/home/launcher/GridConfig;->mCountCellX:I

    .line 588
    iput v2, p0, Lcom/miui/home/launcher/GridConfig;->mCountCellY:I

    goto :goto_1

    .line 574
    :cond_0
    instance-of p2, p3, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    if-eqz p2, :cond_1

    .line 575
    check-cast p3, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    .line 576
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getLauncherLayoutType()Lcom/miui/home/launcher/compat/LauncherLayoutType;

    move-result-object p2

    iget v1, p3, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->type:I

    invoke-virtual {p2, v1}, Lcom/miui/home/launcher/compat/LauncherLayoutType;->updateType(I)V

    .line 577
    iget-object p2, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    iget v1, p3, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->x:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig;->getCellCountYDef()I

    move-result v3

    invoke-virtual {p2, p1, v1, v3, v2}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->calGridSize(Landroid/content/Context;IIZ)Z

    move-result p1

    or-int/2addr v0, p1

    .line 578
    iget-object p0, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getCellCountY()I

    move-result p0

    iput p0, p3, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->y:I

    :cond_1
    return v0

    .line 570
    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/GridConfig;->loadCellConfigFromController(Landroid/content/Context;)V

    .line 571
    iget-object p2, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    iget p3, p0, Lcom/miui/home/launcher/GridConfig;->mCountCellX:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig;->getCellCountYDef()I

    move-result v3

    invoke-virtual {p2, p1, p3, v3, v2}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->calGridSize(Landroid/content/Context;IIZ)Z

    move-result p2

    goto :goto_0

    .line 594
    :cond_3
    :pswitch_1
    iget-object p2, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    iget p3, p0, Lcom/miui/home/launcher/GridConfig;->mCountCellX:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig;->getCellCountYDef()I

    move-result v3

    invoke-virtual {p2, p1, p3, v3, v2}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->calGridSize(Landroid/content/Context;IIZ)Z

    move-result p2

    :goto_0
    or-int/2addr v0, p2

    .line 604
    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/miui/home/launcher/GridConfig;->mIconConfig:Lcom/miui/home/launcher/GridConfig$IconConfig;

    iget p3, p0, Lcom/miui/home/launcher/GridConfig;->mCountCellX:I

    iget-object v2, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    invoke-virtual {v2}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getCellSize()I

    move-result v2

    invoke-virtual {p2, p3, v2}, Lcom/miui/home/launcher/GridConfig$IconConfig;->updateCellSize(II)V

    .line 605
    iget-object p2, p0, Lcom/miui/home/launcher/GridConfig;->mTextSizeConfig:Lcom/miui/home/launcher/TextSizeConfig;

    iget p3, p0, Lcom/miui/home/launcher/GridConfig;->mCountCellX:I

    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/TextSizeConfig;->setCurrentColumn(I)V

    .line 606
    iget-object p2, p0, Lcom/miui/home/launcher/GridConfig;->mTextSizeConfig:Lcom/miui/home/launcher/TextSizeConfig;

    iget-object p3, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    invoke-virtual {p3}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getCellSize()I

    move-result p3

    iget-object v2, p0, Lcom/miui/home/launcher/GridConfig;->mIconConfig:Lcom/miui/home/launcher/GridConfig$IconConfig;

    invoke-virtual {v2}, Lcom/miui/home/launcher/GridConfig$IconConfig;->getScale()F

    move-result v2

    invoke-virtual {p2, p3, v2}, Lcom/miui/home/launcher/TextSizeConfig;->setFittingTextSize(IF)V

    .line 607
    iget-object p2, p0, Lcom/miui/home/launcher/GridConfig;->mIconConfig:Lcom/miui/home/launcher/GridConfig$IconConfig;

    invoke-static {p2}, Lcom/miui/home/launcher/GridConfig$IconConfig;->access$100(Lcom/miui/home/launcher/GridConfig$IconConfig;)V

    .line 608
    iget p2, p0, Lcom/miui/home/launcher/GridConfig;->mCountCellX:I

    iget-object p3, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    invoke-virtual {p3}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getCellSize()I

    move-result p3

    mul-int/2addr p2, p3

    iput p2, p0, Lcom/miui/home/launcher/GridConfig;->mCellWorkingWidth:I

    .line 609
    iget-object p2, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    invoke-virtual {p2}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getCellCountY()I

    move-result p2

    iget-object p3, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    invoke-virtual {p3}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getCellSize()I

    move-result p3

    mul-int/2addr p2, p3

    iput p2, p0, Lcom/miui/home/launcher/GridConfig;->mCellWorkingHeight:I

    .line 610
    iget-object p2, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    invoke-virtual {p2}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getHotseatHeight()I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/GridConfig;->mHotSeatsCellContentHeight:I

    .line 611
    iget p2, p0, Lcom/miui/home/launcher/GridConfig;->mRealScreenHeight:I

    iget-object p3, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    invoke-virtual {p3}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getRealScreenMarginBottom()I

    move-result p3

    sub-int/2addr p2, p3

    iput p2, p0, Lcom/miui/home/launcher/GridConfig;->mScreenHeight:I

    .line 612
    iget-object p2, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    invoke-virtual {p2}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getCellCountY()I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/GridConfig;->mCountCellY:I

    .line 613
    iget-object p2, p0, Lcom/miui/home/launcher/GridConfig;->mFolderConfig:Lcom/miui/home/launcher/GridConfig$FolderConfig;

    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig;->getCellWorkingHeight()I

    move-result p3

    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig;->getIndicatorHeight()I

    move-result v2

    iget v3, p0, Lcom/miui/home/launcher/GridConfig;->mCountCellY:I

    invoke-virtual {p2, p3, v2, v3}, Lcom/miui/home/launcher/GridConfig$FolderConfig;->updateFolderConfig(III)V

    .line 614
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "calGridSize result  mCountCellX = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/miui/home/launcher/GridConfig;->mCountCellX:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mCountCellY = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/miui/home/launcher/GridConfig;->mCountCellY:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",workspaceCellSide = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    .line 615
    invoke-virtual {p3}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getWorkspaceCellSide()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",screenMarginTop = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig;->getScreenMarginTop()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",workspaceTopPadding="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    .line 617
    invoke-virtual {p3}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getWorkspacePaddingTop()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",workspaceCellPaddingTop="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    .line 618
    invoke-virtual {p3}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getWorkspaceCellPaddingTop()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",cellSize="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    .line 619
    invoke-virtual {p3}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getCellSize()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",iconSize="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig;->getIconSize()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",indicatorHeight="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    .line 621
    invoke-virtual {p3}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getIndicatorHeight()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",indicatorMarginBottom="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    .line 622
    invoke-virtual {p3}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getWorkspaceIndicatorMarginBottom()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",hotseatHeight="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    .line 623
    invoke-virtual {p3}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getHotseatHeight()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",hotseatMarginBottom="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    .line 624
    invoke-virtual {p3}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getHotseatMarginBottom()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",searchBarMarginBottom="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    .line 625
    invoke-virtual {p3}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getSearchBarMarginBottom()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",searchBarHeight="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    .line 626
    invoke-virtual {p3}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getSearchBarHeight()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",screenWidth="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/miui/home/launcher/GridConfig;->mScreenWidth:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",screenHeight="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/launcher/GridConfig;->mScreenHeight:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",density="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 614
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getApplicationIconContainerHeight()I
    .locals 1

    .line 304
    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig;->getIconSize()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig;->getIconTopPadding()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getCellCountXDef()I
    .locals 0

    .line 142
    sget p0, Lcom/miui/home/launcher/GridConfig;->sCellCountXDef:I

    return p0
.end method

.method public getCellCountXMin()I
    .locals 0

    .line 134
    sget p0, Lcom/miui/home/launcher/GridConfig;->sCellCountXMin:I

    return p0
.end method

.method public getCellCountYDef()I
    .locals 0

    .line 146
    sget p0, Lcom/miui/home/launcher/GridConfig;->sCellCountYDef:I

    return p0
.end method

.method public getCellHeight()I
    .locals 0

    .line 257
    iget-object p0, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getCellSize()I

    move-result p0

    return p0
.end method

.method public getCellHorizontalSpacing()I
    .locals 0

    .line 245
    iget-object p0, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getCellHorizontalSpacing()I

    move-result p0

    return p0
.end method

.method public getCellVerticalSpacing()I
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getCellVerticalSpacing()I

    move-result p0

    return p0
.end method

.method public getCellWidth()I
    .locals 0

    .line 253
    iget-object p0, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getCellSize()I

    move-result p0

    return p0
.end method

.method public getCellWorkingHeight()I
    .locals 0

    .line 233
    iget p0, p0, Lcom/miui/home/launcher/GridConfig;->mCellWorkingHeight:I

    return p0
.end method

.method public getCenterLocation(Landroid/view/View;)[I
    .locals 1

    .line 392
    instance-of v0, p1, Lcom/miui/home/launcher/IItemInfo;

    if-eqz v0, :cond_0

    .line 393
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/GridConfig;->calCenterLocWithItemInfo(Landroid/view/View;)[I

    move-result-object p0

    return-object p0

    .line 394
    :cond_0
    instance-of v0, p1, Lcom/miui/home/launcher/SearchBar;

    if-eqz v0, :cond_1

    .line 395
    invoke-direct {p0}, Lcom/miui/home/launcher/GridConfig;->getSearchBarCenterLocation()[I

    move-result-object p0

    return-object p0

    .line 396
    :cond_1
    instance-of v0, p1, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    if-eqz v0, :cond_2

    .line 397
    invoke-direct {p0}, Lcom/miui/home/launcher/GridConfig;->getSeekBarCenterLocation()[I

    move-result-object p0

    return-object p0

    .line 398
    :cond_2
    instance-of v0, p1, Lcom/miui/home/launcher/hotseats/HotSeats;

    if-eqz v0, :cond_3

    .line 399
    invoke-direct {p0}, Lcom/miui/home/launcher/GridConfig;->getHotseatCenterLocation()[I

    move-result-object p0

    return-object p0

    .line 400
    :cond_3
    instance-of v0, p1, Lcom/miui/home/launcher/EditModeThumbnailView;

    if-eqz v0, :cond_4

    .line 401
    invoke-direct {p0}, Lcom/miui/home/launcher/GridConfig;->getEditEntryThumbnailCenterLocation()[I

    move-result-object p0

    return-object p0

    .line 402
    :cond_4
    instance-of v0, p1, Lcom/miui/home/launcher/multiselect/GroupContainer;

    if-eqz v0, :cond_5

    .line 403
    invoke-direct {p0}, Lcom/miui/home/launcher/GridConfig;->getEditGroupContainerCenterLocation()[I

    move-result-object p0

    return-object p0

    .line 404
    :cond_5
    instance-of v0, p1, Lcom/miui/home/launcher/UninstallDropTarget;

    if-eqz v0, :cond_6

    .line 405
    invoke-direct {p0}, Lcom/miui/home/launcher/GridConfig;->getEditUninstallDropTargetCenterLocation()[I

    move-result-object p0

    return-object p0

    .line 406
    :cond_6
    instance-of v0, p1, Lcom/miui/home/launcher/multiselect/FinishContainer;

    if-eqz v0, :cond_7

    .line 407
    invoke-direct {p0}, Lcom/miui/home/launcher/GridConfig;->getEditFinishContainerCenterLocation()[I

    move-result-object p0

    return-object p0

    .line 409
    :cond_7
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/GridConfig;->getCenterLocationInWindow(Landroid/view/View;)[I

    move-result-object p0

    return-object p0
.end method

.method public getCountCellX()I
    .locals 0

    .line 237
    iget p0, p0, Lcom/miui/home/launcher/GridConfig;->mCountCellX:I

    return p0
.end method

.method public getCountCellY()I
    .locals 0

    .line 241
    iget p0, p0, Lcom/miui/home/launcher/GridConfig;->mCountCellY:I

    return p0
.end method

.method public getDefaultScale()F
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/miui/home/launcher/GridConfig;->mIconConfig:Lcom/miui/home/launcher/GridConfig$IconConfig;

    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig$IconConfig;->getDefaultScale()F

    move-result p0

    return p0
.end method

.method public getDeviceHeight()I
    .locals 1

    .line 175
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget p0, p0, Lcom/miui/home/launcher/GridConfig;->mDeviceMinSize:I

    return p0

    .line 178
    :cond_0
    iget p0, p0, Lcom/miui/home/launcher/GridConfig;->mDeviceMaxSize:I

    return p0
.end method

.method public getDeviceHeight(Landroid/content/Context;)I
    .locals 1

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 185
    iget p0, p0, Lcom/miui/home/launcher/GridConfig;->mDeviceMinSize:I

    return p0

    .line 187
    :cond_1
    iget p0, p0, Lcom/miui/home/launcher/GridConfig;->mDeviceMaxSize:I

    return p0
.end method

.method public getDeviceMaxSize()I
    .locals 0

    .line 167
    iget p0, p0, Lcom/miui/home/launcher/GridConfig;->mDeviceMaxSize:I

    return p0
.end method

.method public getDeviceMinSize()I
    .locals 0

    .line 171
    iget p0, p0, Lcom/miui/home/launcher/GridConfig;->mDeviceMinSize:I

    return p0
.end method

.method public getDeviceWidth()I
    .locals 1

    .line 150
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget p0, p0, Lcom/miui/home/launcher/GridConfig;->mDeviceMaxSize:I

    return p0

    .line 153
    :cond_0
    iget p0, p0, Lcom/miui/home/launcher/GridConfig;->mDeviceMinSize:I

    return p0
.end method

.method public getDeviceWidth(Landroid/content/Context;)I
    .locals 1

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 160
    iget p0, p0, Lcom/miui/home/launcher/GridConfig;->mDeviceMaxSize:I

    return p0

    .line 162
    :cond_1
    iget p0, p0, Lcom/miui/home/launcher/GridConfig;->mDeviceMinSize:I

    return p0
.end method

.method public getFolderCellHeight()I
    .locals 0

    .line 320
    iget-object p0, p0, Lcom/miui/home/launcher/GridConfig;->mFolderConfig:Lcom/miui/home/launcher/GridConfig$FolderConfig;

    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig$FolderConfig;->getFolderCellHeight()I

    move-result p0

    return p0
.end method

.method public getFolderCellWidth()I
    .locals 0

    .line 324
    iget-object p0, p0, Lcom/miui/home/launcher/GridConfig;->mFolderConfig:Lcom/miui/home/launcher/GridConfig$FolderConfig;

    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig$FolderConfig;->getFolderCellWidth()I

    move-result p0

    return p0
.end method

.method public getFolderPreviewHeight()I
    .locals 0

    .line 312
    iget-object p0, p0, Lcom/miui/home/launcher/GridConfig;->mFolderConfig:Lcom/miui/home/launcher/GridConfig$FolderConfig;

    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig$FolderConfig;->getFolderPreviewHeight()I

    move-result p0

    return p0
.end method

.method public getFolderPreviewItemPadding()I
    .locals 0

    .line 316
    iget-object p0, p0, Lcom/miui/home/launcher/GridConfig;->mFolderConfig:Lcom/miui/home/launcher/GridConfig$FolderConfig;

    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig$FolderConfig;->getFolderPreviewItemPadding()I

    move-result p0

    return p0
.end method

.method public getFolderPreviewWidth()I
    .locals 0

    .line 308
    iget-object p0, p0, Lcom/miui/home/launcher/GridConfig;->mFolderConfig:Lcom/miui/home/launcher/GridConfig$FolderConfig;

    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig$FolderConfig;->getFolderPreviewWidth()I

    move-result p0

    return p0
.end method

.method public getHotSeatsCellContentHeight()I
    .locals 0

    .line 368
    iget p0, p0, Lcom/miui/home/launcher/GridConfig;->mHotSeatsCellContentHeight:I

    return p0
.end method

.method public getHotSeatsCellHeight()I
    .locals 0

    .line 376
    iget-object p0, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getHotseatHeight()I

    move-result p0

    return p0
.end method

.method public getHotSeatsCellListWidth()I
    .locals 0

    .line 364
    iget p0, p0, Lcom/miui/home/launcher/GridConfig;->mHotSeatsListCellWidth:I

    return p0
.end method

.method public getHotSeatsCellWidth()I
    .locals 0

    .line 372
    iget-object p0, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getHotseatWidth()I

    move-result p0

    return p0
.end method

.method public getHotseatMarginBottom()I
    .locals 0

    .line 380
    iget-object p0, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getHotseatMarginBottom()I

    move-result p0

    return p0
.end method

.method public getIconScale()F
    .locals 0

    .line 278
    iget-object p0, p0, Lcom/miui/home/launcher/GridConfig;->mIconConfig:Lcom/miui/home/launcher/GridConfig$IconConfig;

    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig$IconConfig;->getScale()F

    move-result p0

    return p0
.end method

.method public getIconSize()I
    .locals 0

    .line 265
    iget-object p0, p0, Lcom/miui/home/launcher/GridConfig;->mIconConfig:Lcom/miui/home/launcher/GridConfig$IconConfig;

    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig$IconConfig;->getIconSize()I

    move-result p0

    return p0
.end method

.method public getIconTopPadding()I
    .locals 0

    .line 261
    iget-object p0, p0, Lcom/miui/home/launcher/GridConfig;->mIconConfig:Lcom/miui/home/launcher/GridConfig$IconConfig;

    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig$IconConfig;->getIconTopPadding()I

    move-result p0

    return p0
.end method

.method public getIndicatorDrawableMargin()I
    .locals 0

    .line 300
    iget-object p0, p0, Lcom/miui/home/launcher/GridConfig;->mIconConfig:Lcom/miui/home/launcher/GridConfig$IconConfig;

    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig$IconConfig;->getIndicatorDrawableMargin()I

    move-result p0

    return p0
.end method

.method public getIndicatorHeight()I
    .locals 0

    .line 356
    iget-object p0, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getIndicatorHeight()I

    move-result p0

    return p0
.end method

.method public getLayoutPreviewButtonNameTextSize()F
    .locals 0

    .line 344
    iget-object p0, p0, Lcom/miui/home/launcher/GridConfig;->mTextSizeConfig:Lcom/miui/home/launcher/TextSizeConfig;

    invoke-virtual {p0}, Lcom/miui/home/launcher/TextSizeConfig;->getLayoutPreviewButtonNameTextSize()F

    move-result p0

    return p0
.end method

.method public getMaxIconScale()F
    .locals 0

    .line 288
    iget-object p0, p0, Lcom/miui/home/launcher/GridConfig;->mIconConfig:Lcom/miui/home/launcher/GridConfig$IconConfig;

    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig$IconConfig;->getMaxIconScale()F

    move-result p0

    return p0
.end method

.method public getMinIconScale()F
    .locals 0

    .line 292
    iget-object p0, p0, Lcom/miui/home/launcher/GridConfig;->mIconConfig:Lcom/miui/home/launcher/GridConfig$IconConfig;

    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig$IconConfig;->getMinIconScale()F

    move-result p0

    return p0
.end method

.method public getRealScreenHeight()I
    .locals 0

    .line 201
    iget p0, p0, Lcom/miui/home/launcher/GridConfig;->mRealScreenHeight:I

    return p0
.end method

.method public getScreenHeight()I
    .locals 0

    .line 197
    iget p0, p0, Lcom/miui/home/launcher/GridConfig;->mScreenHeight:I

    return p0
.end method

.method public getScreenLongSize()I
    .locals 0

    .line 205
    iget p0, p0, Lcom/miui/home/launcher/GridConfig;->mScreenLongSize:I

    return p0
.end method

.method public getScreenMarginTop()I
    .locals 1

    .line 633
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    iget v0, p0, Lcom/miui/home/launcher/GridConfig;->mStatusBarHeight:I

    iget p0, p0, Lcom/miui/home/launcher/GridConfig;->mWorkspacePaddingTopMulti:I

    add-int/2addr v0, p0

    return v0

    .line 636
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInHalfSoscSplitMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 637
    invoke-static {}, Lcom/miui/home/launcher/util/SoscUtils;->isBottomLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 641
    :cond_1
    iget p0, p0, Lcom/miui/home/launcher/GridConfig;->mStatusBarHeight:I

    return p0
.end method

.method public getScreenShortSize()I
    .locals 0

    .line 209
    iget p0, p0, Lcom/miui/home/launcher/GridConfig;->mScreenShortSize:I

    return p0
.end method

.method public getScreenWidth()I
    .locals 0

    .line 193
    iget p0, p0, Lcom/miui/home/launcher/GridConfig;->mScreenWidth:I

    return p0
.end method

.method public getSearchBarHeight()I
    .locals 0

    .line 384
    iget-object p0, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getSearchBarHeight()I

    move-result p0

    return p0
.end method

.method public getSearchBarMarginBottom()I
    .locals 0

    .line 388
    iget-object p0, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getSearchBarMarginBottom()I

    move-result p0

    return p0
.end method

.method public getStatusBarHeight()I
    .locals 0

    .line 213
    iget p0, p0, Lcom/miui/home/launcher/GridConfig;->mStatusBarHeight:I

    return p0
.end method

.method public getTextHeight()I
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/miui/home/launcher/GridConfig;->mTextSizeConfig:Lcom/miui/home/launcher/TextSizeConfig;

    invoke-virtual {p0}, Lcom/miui/home/launcher/TextSizeConfig;->getTitleHeight()I

    move-result p0

    return p0
.end method

.method public getTitleLines()I
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/miui/home/launcher/GridConfig;->mIconConfig:Lcom/miui/home/launcher/GridConfig$IconConfig;

    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig$IconConfig;->getTitleLines()I

    move-result p0

    return p0
.end method

.method public getTitleMarginTop()I
    .locals 0

    .line 328
    iget-object p0, p0, Lcom/miui/home/launcher/GridConfig;->mTextSizeConfig:Lcom/miui/home/launcher/TextSizeConfig;

    invoke-virtual {p0}, Lcom/miui/home/launcher/TextSizeConfig;->getTitleMarginTop()I

    move-result p0

    return p0
.end method

.method public getTitlePaddingSide()I
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/miui/home/launcher/GridConfig;->mTextSizeConfig:Lcom/miui/home/launcher/TextSizeConfig;

    invoke-virtual {p0}, Lcom/miui/home/launcher/TextSizeConfig;->getTitlePaddingSide()I

    move-result p0

    return p0
.end method

.method public getTitleTextSize()F
    .locals 0

    .line 336
    iget-object p0, p0, Lcom/miui/home/launcher/GridConfig;->mTextSizeConfig:Lcom/miui/home/launcher/TextSizeConfig;

    invoke-virtual {p0}, Lcom/miui/home/launcher/TextSizeConfig;->getTitleTextSize()F

    move-result p0

    return p0
.end method

.method public getWorkspaceCellPaddingBottom()I
    .locals 0

    .line 352
    iget-object p0, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getWorkspaceCellPaddingBottom()I

    move-result p0

    return p0
.end method

.method public getWorkspaceCellPaddingTop()I
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getWorkspaceCellPaddingTop()I

    move-result p0

    return p0
.end method

.method public getWorkspaceCellSide()I
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getWorkspaceCellSide()I

    move-result p0

    return p0
.end method

.method public getWorkspaceIndicatorMarginBottom()I
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getWorkspaceIndicatorMarginBottom()I

    move-result p0

    return p0
.end method

.method public getWorkspacePaddingTop()I
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->getWorkspacePaddingTop()I

    move-result p0

    return p0
.end method

.method public resetFoldGridConfigIconScale(F)V
    .locals 1

    .line 846
    sget-object p0, Lcom/miui/home/launcher/DeviceConfig;->INSTANCE:Lcom/miui/home/launcher/util/MainThreadInitializedObject;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/DeviceConfig;

    if-nez p0, :cond_0

    return-void

    .line 848
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/DeviceConfig;->portraitGridConfig:Lcom/miui/home/launcher/GridConfig;

    .line 849
    iget-object p0, p0, Lcom/miui/home/launcher/DeviceConfig;->landscapeGridConfig:Lcom/miui/home/launcher/GridConfig;

    if-eqz v0, :cond_2

    if-nez p0, :cond_1

    goto :goto_0

    .line 851
    :cond_1
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/GridConfig;->setIconScale(F)V

    .line 852
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/GridConfig;->setIconScale(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setIconScale(F)V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/miui/home/launcher/GridConfig;->mIconConfig:Lcom/miui/home/launcher/GridConfig$IconConfig;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/GridConfig$IconConfig;->setScale(F)V

    .line 274
    iget-object p0, p0, Lcom/miui/home/launcher/GridConfig;->mFolderConfig:Lcom/miui/home/launcher/GridConfig$FolderConfig;

    invoke-static {p0}, Lcom/miui/home/launcher/GridConfig$FolderConfig;->access$000(Lcom/miui/home/launcher/GridConfig$FolderConfig;)V

    return-void
.end method

.method public updateDeviceSize(II)V
    .locals 1

    .line 100
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/GridConfig;->mDeviceMaxSize:I

    .line 101
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/GridConfig;->mDeviceMinSize:I

    .line 102
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "update device size, mDeviceMaxSize = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/miui/home/launcher/GridConfig;->mDeviceMaxSize:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mDeviceMinSize = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/launcher/GridConfig;->mDeviceMinSize:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GridConfig"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateIconScaleForDBUpgrade()V
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/miui/home/launcher/GridConfig;->mIconConfig:Lcom/miui/home/launcher/GridConfig$IconConfig;

    invoke-virtual {p0}, Lcom/miui/home/launcher/GridConfig$IconConfig;->updateIconScaleForDBUpgrade()V

    return-void
.end method

.method public updateScreenSize(Landroid/content/Context;II)Z
    .locals 1

    .line 106
    iget v0, p0, Lcom/miui/home/launcher/GridConfig;->mScreenWidth:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Lcom/miui/home/launcher/GridConfig;->mRealScreenHeight:I

    if-eq v0, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 107
    :cond_1
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/miui/home/launcher/GridConfig;->initScreenSize(II)V

    .line 108
    iget-object p2, p0, Lcom/miui/home/launcher/GridConfig;->mGridSizeCalRules:Lcom/miui/home/launcher/compat/GridSizeCalRules;

    iget p3, p0, Lcom/miui/home/launcher/GridConfig;->mScreenWidth:I

    iget p0, p0, Lcom/miui/home/launcher/GridConfig;->mScreenHeight:I

    invoke-virtual {p2, p1, p3, p0}, Lcom/miui/home/launcher/compat/GridSizeCalRules;->updateScreenSize(Landroid/content/Context;II)V

    const/4 p0, 0x1

    return p0
.end method
