.class public Lcom/miui/home/launcher/shortcuts/ShortcutMenu;
.super Landroid/widget/LinearLayout;
.source "ShortcutMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/shortcuts/ShortcutMenu$RemoveProgressIconHideHandler;,
        Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;
    }
.end annotation


# instance fields
.field private mAddWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

.field private mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

.field private mAppSystemTransparentSpace:Landroid/view/View;

.field private mArrowCenterToMenuNearestLeftOrRightBorder:I

.field private mBindedItemInfo:Lcom/miui/home/launcher/ItemInfo;

.field private mBlurCoverView:Lcom/miui/home/launcher/shortcuts/ShortcutMenuBlurView;

.field private mDragIconToArrowGap:I

.field private mFolderShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

.field private mIsWithoutAnimNextHide:Z

.field private mMenuVisualWidth:I

.field private mProgressIconHideHandler:Lcom/miui/home/launcher/shortcuts/ShortcutMenu$RemoveProgressIconHideHandler;

.field private mScale:F

.field private mShadowPadding:I

.field private mShortcutMenuBlurAnimationHelper:Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;

.field private mShortcutMenuItemNormalColor:I

.field private mShowOrHideAnimator:Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;

.field private mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

.field private mWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/WidgetShortcutMenu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 65
    iput p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mScale:F

    const/4 p1, 0x0

    .line 68
    iput-boolean p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mIsWithoutAnimNextHide:Z

    .line 761
    new-instance p1, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$RemoveProgressIconHideHandler;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$RemoveProgressIconHideHandler;-><init>(Lcom/miui/home/launcher/shortcuts/ShortcutMenu;Lcom/miui/home/launcher/shortcuts/ShortcutMenu$1;)V

    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mProgressIconHideHandler:Lcom/miui/home/launcher/shortcuts/ShortcutMenu$RemoveProgressIconHideHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/shortcuts/ShortcutMenu;F)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setChildViewAlpha(F)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/shortcuts/ShortcutMenu;Landroid/view/View;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->hideShortcut(Landroid/view/View;)V

    return-void
.end method

.method private addViewAndAdjustOrder(Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;)V
    .locals 0

    .line 307
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 308
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->shouldBeShown()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 309
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 311
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppSystemTransparentSpace:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 312
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppSystemTransparentSpace:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 314
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAddWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->shouldBeShown()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 315
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAddWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 317
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->shouldBeShown()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 318
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 320
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/WidgetShortcutMenu;

    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->shouldBeShown()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 321
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/WidgetShortcutMenu;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 323
    :cond_4
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mFolderShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->shouldBeShown()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 324
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mFolderShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 326
    :cond_5
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->updateAddWidgetShortcutMenuPadding()V

    .line 328
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->showPreInflateViews()V

    .line 329
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAddWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->showPreInflateViews()V

    .line 330
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->showPreInflateViews()V

    .line 331
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/WidgetShortcutMenu;

    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->showPreInflateViews()V

    .line 332
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mFolderShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->showPreInflateViews()V

    return-void
.end method

.method private adjustMenuMaxSize()V
    .locals 3

    .line 104
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->calculateScale()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mScale:F

    .line 105
    new-instance v1, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;-><init>(Lcom/miui/home/launcher/shortcuts/ShortcutMenu;FF)V

    iput-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mShowOrHideAnimator:Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;

    return-void
.end method

.method private calcPositionInfo([FZ[II)Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;
    .locals 8

    .line 349
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mBindedItemInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->isOccupiedCell1x1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    invoke-direct {p0, p1, p2, p4}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->calcShortcutMenuPositionNearIconImageBorder([FZI)Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;

    move-result-object p0

    return-object p0

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mBindedItemInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v4, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 353
    iget v5, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    .line 354
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->isApplicatoin()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move v6, p4

    move v7, p2

    .line 355
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->calcShortcutMenuPositionNearIconImageMiddleOrBorder([I[FIIIZ)Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p2, 0x2

    if-gt v5, p2, :cond_3

    if-ne v5, p2, :cond_2

    if-le v4, p2, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move v6, p4

    .line 362
    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->calcShortcutMenuPositionNearDragViewBorder([I[FIII)Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;

    move-result-object p0

    return-object p0

    .line 360
    :cond_3
    :goto_0
    invoke-direct {p0, p3}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->calcShortcutMenuPositionAtPoint([I)Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;

    move-result-object p0

    return-object p0
.end method

.method private calcShortcutMenuPositionAtPoint([I)Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;
    .locals 5

    .line 368
    new-instance v0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;-><init>()V

    .line 370
    iget v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mArrowCenterToMenuNearestLeftOrRightBorder:I

    iget v2, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mDragIconToArrowGap:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    .line 372
    aget v3, p1, v2

    .line 373
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-static {v3, v1, v4}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(III)I

    move-result v1

    aput v1, p1, v2

    .line 375
    aget v1, p1, v2

    iget v3, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mArrowCenterToMenuNearestLeftOrRightBorder:I

    sub-int/2addr v1, v3

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getMenuVisualWidth()I

    move-result v3

    add-int/2addr v1, v3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_0

    .line 376
    aget v1, p1, v2

    iget v2, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mArrowCenterToMenuNearestLeftOrRightBorder:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransX(I)V

    .line 377
    invoke-virtual {v0, v4}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setDragViewRelativeToMenuPosition(I)V

    goto :goto_0

    .line 379
    :cond_0
    aget v1, p1, v2

    iget v2, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mArrowCenterToMenuNearestLeftOrRightBorder:I

    add-int/2addr v1, v2

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getMenuVisualWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransX(I)V

    const/4 v1, 0x4

    .line 380
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setDragViewRelativeToMenuPosition(I)V

    .line 383
    :goto_0
    aget v1, p1, v4

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getVisualHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->canMenuShowCompleteWhenMenuAboveIcon(F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 384
    aget p1, p1, v4

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getVisualHeight()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShadowPadding()I

    move-result p0

    sub-int/2addr p1, p0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransY(I)V

    const/16 p0, 0x8

    .line 385
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setDragViewRelativeToMenuPosition(I)V

    goto :goto_1

    .line 387
    :cond_1
    aget p1, p1, v4

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShadowPadding()I

    move-result p0

    add-int/2addr p1, p0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransY(I)V

    const/4 p0, 0x2

    .line 388
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setDragViewRelativeToMenuPosition(I)V

    :goto_1
    return-object v0
.end method

.method private calcShortcutMenuPositionNearDragViewBorder([I[FIII)Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;
    .locals 4

    .line 395
    new-instance v0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;-><init>()V

    mul-int/2addr p5, p3

    .line 398
    iget v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mMenuVisualWidth:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le p5, v1, :cond_1

    .line 399
    aget p1, p1, v3

    int-to-float p1, p1

    aget v1, p2, v3

    sub-float/2addr p1, v1

    div-int/lit8 v1, p5, 0x2

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_0

    :goto_0
    move p1, v2

    goto :goto_1

    :cond_0
    move p1, v3

    goto :goto_1

    .line 401
    :cond_1
    aget p1, p2, v3

    int-to-float v1, v1

    add-float/2addr p1, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_0

    goto :goto_0

    :goto_1
    if-eqz p1, :cond_2

    .line 404
    aget p1, p2, v3

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransX(I)V

    .line 405
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setDragViewRelativeToMenuPosition(I)V

    goto :goto_2

    .line 407
    :cond_2
    aget p1, p2, v3

    float-to-int p1, p1

    add-int/2addr p1, p5

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getIntrinsicWidth()I

    move-result p5

    sub-int/2addr p1, p5

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransX(I)V

    const/4 p1, 0x4

    .line 408
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setDragViewRelativeToMenuPosition(I)V

    .line 410
    :goto_2
    aget p1, p2, v2

    invoke-direct {p0, p1, v3}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShortcutMenuVisualTopYWhenMenuAboveIcon(FZ)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->canMenuShowCompleteWhenMenuAboveIcon(F)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 411
    aget p1, p2, v2

    float-to-int p1, p1

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getVisualHeight()I

    move-result p2

    sub-int/2addr p1, p2

    iget p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mDragIconToArrowGap:I

    sub-int/2addr p1, p0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransY(I)V

    const/16 p0, 0x8

    .line 412
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setDragViewRelativeToMenuPosition(I)V

    goto :goto_4

    .line 414
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mBindedItemInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->isFolder()Z

    move-result p1

    const/4 p5, 0x2

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mBindedItemInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v1, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    if-lt v1, p5, :cond_4

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-lt p1, p5, :cond_4

    .line 415
    aget p1, p2, v2

    float-to-int p1, p1

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShadowPadding()I

    move-result p2

    add-int/2addr p1, p2

    sget-object p2, Lcom/miui/home/launcher/folder/BigFolderConfig;->Companion:Lcom/miui/home/launcher/folder/BigFolderConfig$Companion;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p2, p0, p3, p4}, Lcom/miui/home/launcher/folder/BigFolderConfig$Companion;->bigFolderIconHeight(Landroid/content/Context;II)I

    move-result p0

    add-int/2addr p1, p0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransY(I)V

    goto :goto_3

    .line 417
    :cond_4
    aget p1, p2, v2

    float-to-int p1, p1

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShadowPadding()I

    move-result p2

    sub-int/2addr p1, p2

    iget p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mDragIconToArrowGap:I

    add-int/2addr p1, p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result p0

    mul-int/2addr p0, p4

    add-int/2addr p1, p0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransY(I)V

    .line 419
    :goto_3
    invoke-virtual {v0, p5}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setDragViewRelativeToMenuPosition(I)V

    :goto_4
    return-object v0
.end method

.method private calcShortcutMenuPositionNearIconImageBorder([FZI)Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;
    .locals 5

    .line 503
    new-instance v0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;-><init>()V

    const/4 v1, 0x0

    .line 504
    aget v2, p1, v1

    invoke-direct {p0, v2, v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->isIconCenterMoreThanScreenHalfWidth(FZ)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 505
    aget v1, p1, v1

    float-to-int v1, v1

    div-int/2addr p3, v3

    add-int/2addr v1, p3

    iget p3, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mArrowCenterToMenuNearestLeftOrRightBorder:I

    add-int/2addr v1, p3

    .line 507
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getIntrinsicWidth()I

    move-result p3

    sub-int/2addr v1, p3

    .line 505
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransX(I)V

    const/4 p3, 0x4

    .line 508
    invoke-virtual {v0, p3}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setDragViewRelativeToMenuPosition(I)V

    goto :goto_0

    .line 510
    :cond_0
    aget v1, p1, v1

    float-to-int v1, v1

    div-int/2addr p3, v3

    add-int/2addr v1, p3

    iget p3, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mArrowCenterToMenuNearestLeftOrRightBorder:I

    sub-int/2addr v1, p3

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransX(I)V

    .line 512
    invoke-virtual {v0, v4}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setDragViewRelativeToMenuPosition(I)V

    .line 514
    :goto_0
    aget p3, p1, v4

    invoke-direct {p0, p3, p2}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShortcutMenuVisualTopYWhenMenuAboveIcon(FZ)F

    move-result p3

    invoke-direct {p0, p3}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->canMenuShowCompleteWhenMenuAboveIcon(F)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 515
    aget p1, p1, v4

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShortcutMenuTopYWhenMenuAboveIcon(FZ)F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShadowPadding()I

    move-result p0

    sub-int/2addr p1, p0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransY(I)V

    const/16 p0, 0x8

    .line 516
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setDragViewRelativeToMenuPosition(I)V

    goto :goto_1

    .line 518
    :cond_1
    aget p1, p1, v4

    float-to-int p1, p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getApplicationIconContainerHeight()I

    move-result p2

    add-int/2addr p1, p2

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShadowPadding()I

    move-result p0

    add-int/2addr p1, p0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransY(I)V

    .line 519
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setDragViewRelativeToMenuPosition(I)V

    :goto_1
    return-object v0
.end method

.method private calcShortcutMenuPositionNearIconImageMiddleOrBorder([I[FIIIZ)Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;
    .locals 8

    .line 427
    new-instance v7, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;

    invoke-direct {v7}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;-><init>()V

    const/4 v0, 0x0

    .line 428
    aget v1, p2, v0

    aget v2, p1, v0

    move-object v0, p0

    move v3, p5

    move v4, p3

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setShortcutMenuXPosition(FIIILcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;)V

    const/4 p1, 0x1

    .line 430
    aget v1, p2, p1

    move v2, p5

    move v3, p3

    move v4, p4

    move v5, p6

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setShortcutMenuYPosition(FIIIZLcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;)V

    return-object v7
.end method

.method private calculateScale()F
    .locals 3

    .line 118
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    return v1

    .line 122
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getMaxVisualHeight()I

    move-result v0

    .line 123
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShortcutMenuVisualMaxHeightWhenDisplayComplete()I

    move-result v2

    if-le v0, v2, :cond_1

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    .line 129
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShortcutMenuVisualMaxWidthWhenDisplayComplete()I

    move-result v0

    .line 130
    iget p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mMenuVisualWidth:I

    if-le p0, v0, :cond_2

    int-to-float v0, v0

    int-to-float p0, p0

    div-float v1, v0, p0

    .line 134
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "calculateScale, heightScale="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", widthScale="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ShortcutMenu"

    invoke-static {v0, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private canMenuShowCompleteWhenMenuAboveIcon(F)Z
    .locals 2

    .line 539
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 540
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    add-int/2addr p0, v0

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private canMenuShowCompleteWhenMenuBelowIcon(FZ)Z
    .locals 4

    .line 545
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isHasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    .line 550
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getVisualHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mScale:F

    mul-float/2addr v2, v3

    add-float/2addr p1, v2

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    move p0, v2

    goto :goto_1

    .line 551
    :cond_1
    iget p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mDragIconToArrowGap:I

    :goto_1
    int-to-float p0, p0

    sub-float/2addr p1, p0

    sub-float/2addr v1, p1

    int-to-float p0, v0

    cmpl-float p0, v1, p0

    if-lez p0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private getBigIconMenuTransY(FIIIZ)I
    .locals 0

    const/4 p2, 0x1

    if-ne p4, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p5, :cond_1

    if-eqz p2, :cond_1

    .line 490
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getVisualHeight()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    :goto_1
    float-to-int p0, p1

    return p0

    :cond_1
    if-eqz p5, :cond_2

    float-to-int p1, p1

    .line 493
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getVisualHeight()I

    move-result p0

    :goto_2
    sub-int/2addr p1, p0

    return p1

    :cond_2
    if-eqz p2, :cond_3

    .line 496
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getApplicationIconContainerHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p1, p0

    goto :goto_1

    :cond_3
    float-to-int p1, p1

    .line 498
    iget p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mDragIconToArrowGap:I

    goto :goto_2
.end method

.method private getIntrinsicHeight()I
    .locals 0

    .line 183
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getVisualHeight()I

    move-result p0

    return p0
.end method

.method private getIntrinsicWidth()I
    .locals 0

    .line 179
    iget p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mMenuVisualWidth:I

    return p0
.end method

.method private getMaxVisualHeight()I
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->getMaxVisualHeight()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppSystemTransparentSpace:Landroid/view/View;

    .line 145
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/WidgetShortcutMenu;

    .line 146
    invoke-virtual {v1}, Lcom/miui/home/launcher/shortcuts/WidgetShortcutMenu;->getItemHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    .line 147
    invoke-virtual {v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->getMaxVisualHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAddWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    .line 148
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->getMaxVisualHeight()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private getMenuVisualWidth()I
    .locals 0

    .line 191
    iget p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mMenuVisualWidth:I

    return p0
.end method

.method private getShadowPadding()I
    .locals 0

    .line 187
    iget p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mShadowPadding:I

    return p0
.end method

.method private getShortcutMenuTopYWhenMenuAboveIcon(FZ)F
    .locals 2

    .line 555
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getVisualHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mScale:F

    mul-float/2addr v0, v1

    sub-float/2addr p1, v0

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 556
    :cond_0
    iget p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mDragIconToArrowGap:I

    :goto_0
    int-to-float p0, p0

    add-float/2addr p1, p0

    return p1
.end method

.method private getShortcutMenuTopYWhenMenuBelowIcon(IF)F
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    float-to-int p0, p2

    .line 560
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getApplicationIconContainerHeight()I

    move-result p1

    goto :goto_0

    :cond_0
    float-to-int p0, p2

    .line 561
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result p1

    add-int/2addr p0, p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getApplicationIconContainerHeight()I

    move-result p1

    :goto_0
    add-int/2addr p0, p1

    int-to-float p0, p0

    return p0
.end method

.method private getShortcutMenuVisualMaxWidthWhenDisplayComplete()I
    .locals 1

    .line 140
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getApplicationIconContainerWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    add-int/2addr p0, v0

    return p0
.end method

.method private getShortcutMenuVisualTopYWhenMenuAboveIcon(FZ)F
    .locals 2

    .line 565
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getVisualHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mScale:F

    mul-float/2addr v0, v1

    sub-float/2addr p1, v0

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 566
    :cond_0
    iget p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mDragIconToArrowGap:I

    :goto_0
    int-to-float p0, p0

    add-float/2addr p1, p0

    return p1
.end method

.method private getVisualHeight()I
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->getVisualHeight()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    .line 169
    invoke-virtual {v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->getVisualHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 170
    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppSystemTransparentSpace:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppSystemTransparentSpace:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    .line 171
    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppSystemTransparentSpace:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShadowPadding()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/WidgetShortcutMenu;

    .line 172
    invoke-virtual {v1}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->getVisualHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 173
    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/WidgetShortcutMenu;

    invoke-virtual {v1}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->shouldBeShown()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShadowPadding()I

    move-result v1

    mul-int/lit8 v2, v1, 0x2

    :cond_2
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mFolderShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    .line 174
    invoke-virtual {v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->getVisualHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAddWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    .line 175
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->getVisualHeight()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private hideShortcut(Landroid/view/View;)V
    .locals 4

    .line 772
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 774
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v0

    .line 775
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v1

    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    .line 776
    invoke-virtual {v1}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 778
    :cond_1
    invoke-virtual {v1}, Lcom/miui/home/launcher/DragController;->getDragObjectDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 780
    :cond_2
    invoke-virtual {v1}, Lcom/miui/home/launcher/DragView;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    .line 782
    instance-of v2, v1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    if-eqz v2, :cond_4

    .line 783
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    if-nez p1, :cond_3

    return-void

    .line 785
    :cond_3
    check-cast v1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    .line 786
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove icon for hideShortcut\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShortcutMenu"

    invoke-static {v3, v2}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    invoke-virtual {v1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 788
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result p0

    if-eqz p0, :cond_4

    if-eqz v0, :cond_4

    .line 789
    new-instance p0, Lcom/miui/home/launcher/EditStateChangeReason;

    const-string p1, "app_install_success"

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/EditStateChangeReason;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->hideShortcutMenu(Lcom/miui/home/launcher/EditStateChangeReason;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private isHideImmediately(Lcom/miui/home/launcher/EditStateChangeReason;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 620
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/EditStateChangeReason;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "event_sosc"

    .line 621
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "event_lock"

    .line 622
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "cancel_drag"

    .line 623
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "event_drawer_window_insets"

    .line 624
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "app_install_success"

    .line 625
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p0, 0x1

    :cond_2
    return p0
.end method

.method private isIconCenterMoreThanScreenHalfWidth(FZ)Z
    .locals 1

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 571
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    return p0

    .line 573
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    add-float/2addr p1, p2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    move p0, v0

    :goto_1
    return p0
.end method

.method private move(Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;)V
    .locals 1

    .line 302
    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->getTransX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 303
    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->getTransY()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    return-void
.end method

.method private requestAccessibilityFocus(Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;)Z
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    .line 636
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 637
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method private setChildViewAlpha(F)V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 196
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppSystemTransparentSpace:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 197
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 198
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/WidgetShortcutMenu;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 199
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mFolderShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 200
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAddWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method private setFullScreenBlur(Z)V
    .locals 14

    .line 725
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 726
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    .line 727
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuBlurView()Lcom/miui/home/launcher/shortcuts/ShortcutMenuBlurView;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mBlurCoverView:Lcom/miui/home/launcher/shortcuts/ShortcutMenuBlurView;

    .line 728
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDragViewContainer()Lcom/miui/home/launcher/widget/DragContainerLayout;

    move-result-object p1

    .line 729
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mBlurCoverView:Lcom/miui/home/launcher/shortcuts/ShortcutMenuBlurView;

    .line 730
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07069e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x1

    .line 729
    invoke-static {v0, v2, v2, v1}, Lcom/miui/home/launcher/common/BlurUtilities;->setContainerBlur(Landroid/view/View;IZI)V

    .line 731
    iget-object v3, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mBlurCoverView:Lcom/miui/home/launcher/shortcuts/ShortcutMenuBlurView;

    const/4 v4, 0x0

    const v5, -0x4c89898a

    const/16 v6, 0x64

    const v7, 0x66b4b4b4

    const/16 v8, 0x64

    const v9, -0xeb6c00

    const/16 v10, 0x6a

    const v11, -0xd10e00

    const/16 v12, 0x6a

    const/16 v13, 0xa

    invoke-static/range {v3 .. v13}, Lcom/miui/home/launcher/common/BlurUtilities;->setFolderIconBlur(Landroid/view/View;IIIIIIIIII)V

    .line 735
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mShortcutMenuBlurAnimationHelper:Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->cancelBlurAnim()V

    .line 736
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mShortcutMenuBlurAnimationHelper:Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;

    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mBlurCoverView:Lcom/miui/home/launcher/shortcuts/ShortcutMenuBlurView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->startBlurAnim(Landroid/view/View;ZLcom/miui/home/launcher/widget/DragContainerLayout;F)V

    .line 737
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mBlurCoverView:Lcom/miui/home/launcher/shortcuts/ShortcutMenuBlurView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/BlurUtilities;->setMiBackgroundBlurEnhanceFlag(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method private setMenuItemBg()V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->setBg()V

    .line 231
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->setBg()V

    .line 232
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/WidgetShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/WidgetShortcutMenu;->setBg()V

    .line 233
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mFolderShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->setBg()V

    .line 234
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAddWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->setBg()V

    return-void
.end method

.method private setMenuItemTextColor()V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->setTextColor()V

    .line 239
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->setTextColor()V

    .line 240
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/WidgetShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->setTextColor()V

    .line 241
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mFolderShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->setTextColor()V

    .line 242
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAddWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->setTextColor()V

    return-void
.end method

.method private setPivot(Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;)V
    .locals 2

    const/4 v0, 0x4

    .line 525
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->isDragViewAtMenuPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getIntrinsicWidth()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mArrowCenterToMenuNearestLeftOrRightBorder:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setPivotX(F)V

    goto :goto_0

    .line 528
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mArrowCenterToMenuNearestLeftOrRightBorder:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setPivotX(F)V

    :goto_0
    const/4 v0, 0x2

    .line 531
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->isDragViewAtMenuPosition(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 532
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setPivotY(F)V

    goto :goto_1

    .line 534
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getIntrinsicHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setPivotY(F)V

    :goto_1
    return-void
.end method

.method private setShortcutMenuBlur()V
    .locals 18

    .line 715
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07069d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 717
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07069e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x1

    move-object/from16 v2, p0

    invoke-static {v2, v1, v1, v0}, Lcom/miui/home/launcher/common/BlurUtilities;->setContainerBlur(Landroid/view/View;IZI)V

    const/4 v3, 0x1

    const/4 v5, 0x1

    const v6, -0x4c89898a

    const/16 v7, 0x64

    const v8, 0x66b4b4b4

    const/16 v9, 0x64

    const v10, -0xe05a00

    const/16 v11, 0x6a

    const v12, -0xd10e00

    const/16 v13, 0x6a

    const v14, -0x4cdbdbdc

    const/4 v15, 0x3

    const v16, -0x4c000001

    const/16 v17, 0x3

    .line 718
    invoke-static/range {v2 .. v17}, Lcom/miui/home/launcher/common/BlurUtilities;->setElementBlur(Landroid/view/View;IIZIIIIIIIIIIII)V

    :cond_0
    return-void
.end method

.method private setShortcutMenuXPosition(FIIILcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;)V
    .locals 4

    mul-int/2addr p3, p4

    .line 439
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object v0

    .line 440
    invoke-virtual {v0}, Lcom/miui/launcher/sosc/module/SoscEvent;->isHalfSoscSplit()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/miui/launcher/sosc/module/SoscEvent;->isMinimized:Z

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    const/4 p2, 0x2

    if-ne p4, p2, :cond_1

    move v2, v3

    .line 444
    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->isIconCenterMoreThanScreenHalfWidth(FZ)Z

    move-result p2

    xor-int/2addr p2, v3

    goto :goto_2

    .line 446
    :cond_2
    iget p4, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mMenuVisualWidth:I

    if-le p3, p4, :cond_3

    int-to-float p2, p2

    sub-float/2addr p2, p1

    .line 447
    div-int/lit8 p4, p3, 0x2

    int-to-float p4, p4

    cmpg-float p2, p2, p4

    if-gez p2, :cond_4

    goto :goto_1

    :cond_3
    add-int/2addr p2, p4

    .line 451
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result p4

    if-ge p2, p4, :cond_4

    :goto_1
    move v2, v3

    :cond_4
    move p2, v2

    :goto_2
    if-eqz p2, :cond_5

    float-to-int p0, p1

    .line 456
    invoke-virtual {p5, p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransX(I)V

    .line 457
    invoke-virtual {p5, v3}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setDragViewRelativeToMenuPosition(I)V

    goto :goto_3

    :cond_5
    float-to-int p1, p1

    add-int/2addr p1, p3

    .line 460
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getIntrinsicWidth()I

    move-result p0

    sub-int/2addr p1, p0

    .line 459
    invoke-virtual {p5, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransX(I)V

    const/4 p0, 0x4

    .line 461
    invoke-virtual {p5, p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setDragViewRelativeToMenuPosition(I)V

    :goto_3
    return-void
.end method

.method private setShortcutMenuYPosition(FIIIZLcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;)V
    .locals 7

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    move v2, p1

    goto :goto_0

    .line 469
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    move v2, v0

    .line 470
    :goto_0
    invoke-direct {p0, p1, p5}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShortcutMenuTopYWhenMenuAboveIcon(FZ)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->canMenuShowCompleteWhenMenuAboveIcon(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 472
    invoke-direct {p0, p1, p5}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShortcutMenuTopYWhenMenuAboveIcon(FZ)F

    move-result p1

    float-to-int p1, p1

    .line 473
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShadowPadding()I

    move-result p0

    sub-int/2addr p1, p0

    .line 472
    invoke-virtual {p6, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransY(I)V

    const/16 p0, 0x8

    .line 474
    invoke-virtual {p6, p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setDragViewRelativeToMenuPosition(I)V

    goto :goto_1

    .line 475
    :cond_1
    invoke-direct {p0, p4, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShortcutMenuTopYWhenMenuBelowIcon(IF)F

    move-result v0

    invoke-direct {p0, v0, p5}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->canMenuShowCompleteWhenMenuBelowIcon(FZ)Z

    move-result p5

    const/4 v0, 0x2

    if-eqz p5, :cond_2

    float-to-int p1, p1

    int-to-float p1, p1

    .line 476
    invoke-direct {p0, p4, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShortcutMenuTopYWhenMenuBelowIcon(IF)F

    move-result p1

    float-to-int p1, p1

    .line 477
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShadowPadding()I

    move-result p0

    add-int/2addr p1, p0

    .line 476
    invoke-virtual {p6, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransY(I)V

    .line 478
    invoke-virtual {p6, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setDragViewRelativeToMenuPosition(I)V

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    .line 480
    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getBigIconMenuTransY(FIIIZ)I

    move-result p0

    invoke-virtual {p6, p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransY(I)V

    .line 482
    invoke-virtual {p6, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setDragViewRelativeToMenuPosition(I)V

    :goto_1
    return-void
.end method

.method private updateAddWidgetShortcutMenuPadding()V
    .locals 3

    .line 336
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 338
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 339
    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAddWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 340
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0706a2

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v1, v2, v2, v2, p0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0

    .line 342
    :cond_0
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateTransparentSpaceVisible()V
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppSystemTransparentSpace:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAddWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {v1}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->shouldBeShown()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {v1}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->shouldBeShown()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->shouldBeShown()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public bindShortcut(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;)V
    .locals 3

    .line 246
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setBindedItemInfo(Lcom/miui/home/launcher/ItemInfo;)V

    .line 247
    invoke-virtual {p2}, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->getAllShortcutMenuItemsSize()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 248
    :goto_0
    invoke-virtual {p2}, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->getAppShortcutMenuItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {p2}, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->getAppShortcutMenuItems()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2, p1, v1}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->bindMenu(Ljava/util/List;Lcom/miui/home/launcher/ItemInfo;Z)V

    .line 251
    :cond_1
    invoke-virtual {p2}, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->getSystemShortcutMenuItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 252
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {p2}, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->getSystemShortcutMenuItems()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2, p1, v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->bindMenu(Ljava/util/List;Lcom/miui/home/launcher/ItemInfo;Z)V

    .line 254
    :cond_2
    invoke-virtual {p2}, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->getWidgetShortcutMenuItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 255
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/WidgetShortcutMenu;

    invoke-virtual {p2}, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->getWidgetShortcutMenuItems()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2, p1, v1}, Lcom/miui/home/launcher/shortcuts/WidgetShortcutMenu;->bindMenu(Ljava/util/List;Lcom/miui/home/launcher/ItemInfo;Z)V

    .line 257
    :cond_3
    invoke-virtual {p2}, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->getFolderShortcutMenuItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 258
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mFolderShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {p2}, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->getFolderShortcutMenuItems()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2, p1, v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->bindMenu(Ljava/util/List;Lcom/miui/home/launcher/ItemInfo;Z)V

    .line 260
    :cond_4
    invoke-virtual {p2}, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->getAddWidgetShortcutMenuItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 261
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAddWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {p2}, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->getAddWidgetShortcutMenuItems()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2, p1, v1}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->bindMenu(Ljava/util/List;Lcom/miui/home/launcher/ItemInfo;Z)V

    :cond_5
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 110
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 114
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public endBlurAnim()V
    .locals 2

    .line 742
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mShortcutMenuBlurAnimationHelper:Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->reset()V

    .line 744
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mShortcutMenuBlurAnimationHelper:Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->cancelBlurAnim()V

    .line 745
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mShortcutMenuBlurAnimationHelper:Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;

    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mBlurCoverView:Lcom/miui/home/launcher/shortcuts/ShortcutMenuBlurView;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getDragViewContainer()Lcom/miui/home/launcher/widget/DragContainerLayout;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->hideShortcutMenuWithNoAnimation(Landroid/view/View;Lcom/miui/home/launcher/widget/DragContainerLayout;)V

    :cond_0
    return-void
.end method

.method public getBindedItemInfo()Lcom/miui/home/launcher/ItemInfo;
    .locals 0

    .line 275
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mBindedItemInfo:Lcom/miui/home/launcher/ItemInfo;

    return-object p0
.end method

.method public getShortcutMenuVisualMaxHeightWhenDisplayComplete()I
    .locals 1

    .line 152
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    sub-int/2addr v0, p0

    .line 153
    div-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getApplicationIconContainerHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    return v0
.end method

.method public hide(Lcom/miui/home/launcher/EditStateChangeReason;)V
    .locals 6

    .line 590
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mBlurCoverView:Lcom/miui/home/launcher/shortcuts/ShortcutMenuBlurView;

    if-eqz v0, :cond_1

    .line 591
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragViewContainer()Lcom/miui/home/launcher/widget/DragContainerLayout;

    move-result-object v0

    .line 592
    iget-object v2, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mShortcutMenuBlurAnimationHelper:Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;

    invoke-virtual {v2}, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->cancelBlurAnim()V

    .line 593
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->isHideImmediately(Lcom/miui/home/launcher/EditStateChangeReason;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 594
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setWithoutAnimNextHide()V

    .line 595
    iget-object v2, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mShortcutMenuBlurAnimationHelper:Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;

    iget-object v3, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mBlurCoverView:Lcom/miui/home/launcher/shortcuts/ShortcutMenuBlurView;

    invoke-virtual {v2, v3, v0}, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->hideShortcutMenuWithNoAnimation(Landroid/view/View;Lcom/miui/home/launcher/widget/DragContainerLayout;)V

    goto :goto_0

    .line 597
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mShortcutMenuBlurAnimationHelper:Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;

    iget-object v3, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mBlurCoverView:Lcom/miui/home/launcher/shortcuts/ShortcutMenuBlurView;

    const/4 v4, 0x0

    invoke-virtual {v2}, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->getProgress()F

    move-result v5

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->startBlurAnim(Landroid/view/View;ZLcom/miui/home/launcher/widget/DragContainerLayout;F)V

    .line 599
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mBlurCoverView:Lcom/miui/home/launcher/shortcuts/ShortcutMenuBlurView;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/BlurUtilities;->setMiBackgroundBlurEnhanceFlag(Landroid/view/View;Z)V

    .line 601
    :cond_1
    iget-boolean v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mIsWithoutAnimNextHide:Z

    if-eqz v0, :cond_2

    .line 602
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->reset()V

    goto :goto_1

    .line 604
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mShowOrHideAnimator:Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/DirectionState;->goToStart()V

    .line 607
    :goto_1
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mBindedItemInfo:Lcom/miui/home/launcher/ItemInfo;

    instance-of v0, p0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_3

    .line 608
    check-cast p0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide ShortcutMenu, pkgName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ShortcutMenu"

    invoke-static {v2, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 612
    invoke-virtual {p1}, Lcom/miui/home/launcher/EditStateChangeReason;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackCancelShortcutMenu(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    :cond_3
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance p1, Lcom/miui/home/launcher/common/messages/AccessibilityMessage;

    invoke-direct {p1, v1}, Lcom/miui/home/launcher/common/messages/AccessibilityMessage;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public isVisible()Z
    .locals 0

    .line 578
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 751
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 752
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mProgressIconHideHandler:Lcom/miui/home/launcher/shortcuts/ShortcutMenu$RemoveProgressIconHideHandler;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onDarkModeChanged()V
    .locals 0

    .line 711
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setShortcutMenuBlur()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 757
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 758
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mProgressIconHideHandler:Lcom/miui/home/launcher/shortcuts/ShortcutMenu$RemoveProgressIconHideHandler;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 79
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0080

    .line 80
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    iput-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    const v0, 0x7f0a038c

    .line 81
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    iput-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    const v0, 0x7f0a01ac

    .line 82
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    iput-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mFolderShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    const v0, 0x7f0a0429

    .line 83
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/shortcuts/WidgetShortcutMenu;

    iput-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/WidgetShortcutMenu;

    const v0, 0x7f0a005c

    .line 84
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    iput-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAddWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    const v0, 0x7f0a03df

    .line 85
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppSystemTransparentSpace:Landroid/view/View;

    .line 86
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mShadowPadding:I

    .line 88
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060685

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mShortcutMenuItemNormalColor:I

    .line 89
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mMenuVisualWidth:I

    .line 90
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mArrowCenterToMenuNearestLeftOrRightBorder:I

    .line 91
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07027f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mDragIconToArrowGap:I

    .line 93
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->adjustMenuMaxSize()V

    .line 95
    new-instance v0, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mShortcutMenuBlurAnimationHelper:Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;

    const-string p0, "ShortcutMenu"

    const-string v0, "ShortcutMenu finish inflate"

    .line 96
    invoke-static {p0, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->adjustMenuMaxSize()V

    return-void
.end method

.method public requestFocusForTalkBack()V
    .locals 1

    .line 629
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->requestAccessibilityFocus(Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mFolderShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->requestAccessibilityFocus(Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;)Z

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 157
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setBindedItemInfo(Lcom/miui/home/launcher/ItemInfo;)V

    .line 158
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->reset()V

    .line 159
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->reset()V

    .line 160
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/WidgetShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->reset()V

    .line 161
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mFolderShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->reset()V

    .line 162
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mShowOrHideAnimator:Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->resetVisibility()V

    .line 163
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAddWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->reset()V

    const/4 v0, 0x0

    .line 164
    iput-boolean v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mIsWithoutAnimNextHide:Z

    return-void
.end method

.method public setBindedItemInfo(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mBindedItemInfo:Lcom/miui/home/launcher/ItemInfo;

    return-void
.end method

.method public setMenuBg()V
    .locals 6

    .line 204
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060685

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mShortcutMenuItemNormalColor:I

    .line 205
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0806d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 206
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0806cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 207
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0806cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 208
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0806d1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 209
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08019f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 210
    iget-object v5, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppSystemTransparentSpace:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 211
    iget-object v4, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/WidgetShortcutMenu;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 212
    iget-object v4, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mFolderShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 214
    iget-object v4, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppSystemTransparentSpace:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 215
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 216
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->shouldBeShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAddWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 218
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 220
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAddWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 223
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 224
    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAddWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 225
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setWithoutAnimNextHide()V
    .locals 1

    const/4 v0, 0x1

    .line 586
    iput-boolean v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mIsWithoutAnimNextHide:Z

    return-void
.end method

.method public show([FZ[IIZ)V
    .locals 0

    .line 279
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->updateTransparentSpaceVisible()V

    .line 281
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->calcPositionInfo([FZ[II)Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;

    move-result-object p1

    .line 282
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "calculate position="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ShortcutMenu"

    invoke-static {p3, p2}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->move(Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;)V

    .line 284
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->addViewAndAdjustOrder(Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;)V

    .line 285
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setMenuItemTextColor()V

    .line 286
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isBlurSupported()Z

    move-result p2

    if-nez p2, :cond_0

    .line 287
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setMenuItemBg()V

    .line 288
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setMenuBg()V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 290
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 291
    iget-object p2, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppSystemTransparentSpace:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f08019e

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 292
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setShortcutMenuBlur()V

    .line 293
    invoke-direct {p0, p5}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setFullScreenBlur(Z)V

    .line 295
    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setPivot(Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;)V

    .line 296
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->showWithAnim()V

    .line 297
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->requestFocusForTalkBack()V

    .line 298
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance p1, Lcom/miui/home/launcher/common/messages/AccessibilityMessage;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/miui/home/launcher/common/messages/AccessibilityMessage;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public showWithAnim()V
    .locals 0

    .line 582
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mShowOrHideAnimator:Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/DirectionState;->goToEnd()V

    return-void
.end method
