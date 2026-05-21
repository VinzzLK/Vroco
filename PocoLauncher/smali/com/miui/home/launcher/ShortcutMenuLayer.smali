.class public Lcom/miui/home/launcher/ShortcutMenuLayer;
.super Lcom/miui/launcher/views/LauncherFrameLayout;
.source "ShortcutMenuLayer.java"

# interfaces
.implements Lcom/miui/home/launcher/DragController$DragListener;
.implements Lcom/miui/launcher/sosc/interfaces/SoscingView;


# instance fields
.field private mIsNeedSkipTouch:Z

.field private mRequestAppShortcutAsyncTask:Landroid/os/AsyncTask;

.field private mRequestingItemInfo:Lcom/miui/home/launcher/ItemInfo;

.field private mShortcutMenu:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

.field public mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;


# direct methods
.method public static synthetic $r8$lambda$5KFuGK4q9BcMoXVUaq5Y8FjBfjs(Lcom/miui/home/launcher/ShortcutMenuLayer;Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ShortcutMenuLayer;->lambda$showShortcutMenu$2(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HlgBxfeqMPoqI5EvVBGRreYDMw0(Lcom/miui/home/launcher/ShortcutMenuLayer;Lcom/miui/home/launcher/ItemInfo;Ljava/lang/Void;)Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ShortcutMenuLayer;->lambda$showShortcutMenu$0(Lcom/miui/home/launcher/ItemInfo;Ljava/lang/Void;)Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Td70PHaK2IECXHFfA1KsN5gH4mI(Lcom/miui/home/launcher/ShortcutMenuLayer;Lcom/miui/home/launcher/ItemInfo;[FZ[IILcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/miui/home/launcher/ShortcutMenuLayer;->lambda$showShortcutMenu$1(Lcom/miui/home/launcher/ItemInfo;[FZ[IILcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/launcher/views/LauncherFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 154
    iput-boolean p1, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mIsNeedSkipTouch:Z

    .line 64
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->createAllSystemShortcutMenuItems()V

    .line 66
    new-instance p1, Lcom/miui/home/recents/util/SpringAnimationImpl;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/util/SpringAnimationImpl;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    return-void
.end method

.method private cancelShortcutMenu(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;)V
    .locals 3

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelShortcutMenu reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.ShortcutMenuLayer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getEditingState()I

    move-result v1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_0

    const/4 v1, 0x7

    .line 189
    :cond_0
    invoke-virtual {v0, v1, p2}, Lcom/miui/home/launcher/Launcher;->cancelShortcutMenu(ILcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;)V

    .line 191
    :cond_1
    iget-object p2, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mRequestingItemInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 192
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setRequestingItemInfo(Lcom/miui/home/launcher/ItemInfo;)V

    :cond_2
    return-void
.end method

.method private checkMainThread()Z
    .locals 1

    .line 349
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private checkRequestLayoutInWorkerThread()V
    .locals 5

    .line 341
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->checkMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "should not requestLayout in background thread:"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string v1, "Launcher.ShortcutMenuLayer"

    const-string v2, "requestLayout error"

    .line 343
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 344
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/miui/home/launcher/common/Utilities;->getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, v1, v2, v0}, Lcom/miui/home/library/MiuiHomeLog284Helper;->fileLoggerLevelFatal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method private checkServiceDeliverSupport(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    if-eqz p2, :cond_1

    .line 127
    iget p0, p2, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 p2, 0x17

    if-eq p0, p2, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    invoke-static {p1}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryUtils;->isSupportServiceDelivery(Landroid/content/Context;)Z

    move-result p0

    sput-boolean p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryMenuUtils;->isSupportServiceDelivery:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private getDragViewLocationInShortcutMenuLayer(Lcom/miui/home/launcher/DragObject;)[F
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 255
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/DragObject;->getDragView(I)Lcom/miui/home/launcher/DragView;

    move-result-object p1

    const/4 v1, 0x1

    .line 254
    invoke-static {p1, p0, v0, v1, v1}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    return-object v0
.end method

.method private isNotSupportDiffRotationTouch(I)Z
    .locals 1

    .line 148
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportHorizontalInterrupt()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 151
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/miui/home/recents/util/RotationHelper;->isLandscapeRotation(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isRequestingShortcutMenuItems()Z
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mRequestingItemInfo:Lcom/miui/home/launcher/ItemInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isShortcutIconShowingMessage(Lcom/miui/home/launcher/DragObject;)Z
    .locals 1

    const/4 p0, 0x0

    .line 261
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/DragObject;->getDragView(I)Lcom/miui/home/launcher/DragView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragView;->getContent()Landroid/view/View;

    move-result-object p1

    .line 262
    instance-of v0, p1, Lcom/miui/home/launcher/DesktopIcon;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/home/launcher/DesktopIcon;

    invoke-interface {p1}, Lcom/miui/home/launcher/DesktopIcon;->isMessageVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method private synthetic lambda$showShortcutMenu$0(Lcom/miui/home/launcher/ItemInfo;Ljava/lang/Void;)Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;
    .locals 0

    .line 114
    iget-object p2, p0, Lcom/miui/launcher/views/LauncherFrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2, p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->checkServiceDeliverSupport(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 115
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->getInstance()Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->getAllShortcutMenuItems(Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$showShortcutMenu$1(Lcom/miui/home/launcher/ItemInfo;[FZ[IILcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p6

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    .line 117
    invoke-direct/range {v0 .. v6}, Lcom/miui/home/launcher/ShortcutMenuLayer;->onQuerySucceed(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;[FZ[II)V

    return-void
.end method

.method private synthetic lambda$showShortcutMenu$2(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->onQueryCancel(Lcom/miui/home/launcher/ItemInfo;)V

    return-void
.end method

.method private loadSoscLayout(Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 4

    .line 358
    iget v0, p1, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 361
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 362
    iget v1, p1, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v1, v2, :cond_4

    .line 363
    iget-object v1, p1, Lcom/miui/launcher/sosc/module/SoscEvent;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 364
    iget-object v1, p1, Lcom/miui/launcher/sosc/module/SoscEvent;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 365
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreenMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 366
    iget p1, p1, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    if-ne p1, v3, :cond_1

    const/4 p1, 0x3

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    :goto_0
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_2

    .line 368
    :cond_2
    iget p1, p1, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    if-ne p1, v3, :cond_3

    const/16 p1, 0x30

    goto :goto_1

    :cond_3
    const/16 p1, 0x50

    :goto_1
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_2

    .line 371
    :cond_4
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 372
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 374
    :goto_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result p1

    shr-int/2addr p1, v3

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 375
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result p1

    shr-int/2addr p1, v3

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 376
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->requestLayout()V

    return-void
.end method

.method private obtainCellWidth(Lcom/miui/home/launcher/ItemInfo;)I
    .locals 0

    .line 134
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->isInHotseatList()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->isInHotseatRecommend()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->isInHotseat()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 138
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotSeatsCellWidth()I

    move-result p0

    return p0

    .line 140
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result p0

    return p0

    .line 135
    :cond_2
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotSeatsListCellWidth()I

    move-result p0

    return p0
.end method

.method private obtainTipShortcutMenu(Ljava/lang/String;)Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;
    .locals 2

    .line 233
    new-instance p0, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;-><init>()V

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 235
    new-instance v1, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$TipMenuItem;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$TipMenuItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->setSystemShortcutMenuItems(Ljava/util/List;)V

    return-object p0
.end method

.method private onQueryCancel(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 2

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQueryCancel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.ShortcutMenuLayer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v0, Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;

    const-string v1, "onQueryCancel"

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->cancelShortcutMenu(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;)V

    return-void
.end method

.method private onQuerySucceed(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;[FZ[II)V
    .locals 8

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQuerySucceed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.ShortcutMenuLayer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {p2}, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->getAllShortcutMenuItemsSize()I

    move-result v0

    if-gtz v0, :cond_0

    .line 201
    new-instance p2, Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;

    const-string p3, "The valid items is 0"

    invoke-direct {p2, p3}, Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ShortcutMenuLayer;->cancelShortcutMenu(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;)V

    return-void

    :cond_0
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    .line 204
    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/ShortcutMenuLayer;->showMenuItems(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;[FZ[IIZ)V

    return-void
.end method

.method private setRequestingItemInfo(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mRequestingItemInfo:Lcom/miui/home/launcher/ItemInfo;

    return-void
.end method

.method private showMenuItems(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;[FZ[IIZ)V
    .locals 7

    const/4 v0, 0x0

    .line 211
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setRequestingItemInfo(Lcom/miui/home/launcher/ItemInfo;)V

    .line 212
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mShortcutMenu:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->bindShortcut(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;)V

    .line 213
    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mShortcutMenu:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->show([FZ[IIZ)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 163
    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mIsNeedSkipTouch:Z

    if-eqz v0, :cond_0

    const-string p1, "Launcher.ShortcutMenuLayer"

    const-string v0, "don\'t dispatch touch because mIsNeedSkipTouch"

    .line 164
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 165
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setIsNeedSkipTouch(Z)V

    return p1

    .line 168
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getBindedItemInfo()Lcom/miui/home/launcher/ItemInfo;
    .locals 0

    .line 288
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mShortcutMenu:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getBindedItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    return-object p0
.end method

.method public getShortcutMenu()Lcom/miui/home/launcher/shortcuts/ShortcutMenu;
    .locals 0

    .line 432
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mShortcutMenu:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    return-object p0
.end method

.method public getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    return-object p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hideShortcutMenu(Lcom/miui/home/launcher/EditStateChangeReason;)V
    .locals 2

    .line 272
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->isRequestingShortcutMenuItems()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mRequestAppShortcutAsyncTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 273
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    .line 275
    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mRequestAppShortcutAsyncTask:Landroid/os/AsyncTask;

    .line 276
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->resetAllSystemShortcutMenuItems()V

    .line 277
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mShortcutMenu:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    if-eqz p0, :cond_1

    .line 278
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->hide(Lcom/miui/home/launcher/EditStateChangeReason;)V

    :cond_1
    return-void
.end method

.method public isShortcutMenuShow()Z
    .locals 0

    .line 425
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mShortcutMenu:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 428
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->isVisible()Z

    move-result p0

    return p0
.end method

.method public onDarkModeChanged()V
    .locals 0

    .line 390
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mShortcutMenu:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    if-eqz p0, :cond_0

    .line 391
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->onDarkModeChanged()V

    :cond_0
    return-void
.end method

.method public onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 322
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    .line 323
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->checkMainThread()Z

    move-result p1

    if-nez p1, :cond_0

    .line 324
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "should not invalidate in background thread:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/home/launcher/common/Utilities;->getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Launcher.ShortcutMenuLayer"

    const-string v1, "invalidate error"

    invoke-static {p2, p0, v0, v1, p1}, Lcom/miui/home/library/MiuiHomeLog284Helper;->fileLoggerLevelFatal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 329
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 411
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 412
    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->clearAllBlur(Landroid/view/View;)V

    return-void
.end method

.method public onDisplayRotationChanged(I)V
    .locals 0

    .line 144
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->isNotSupportDiffRotationTouch(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setIsNeedSkipTouch(Z)V

    return-void
.end method

.method public onDragEnd(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 296
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getBindedItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    .line 297
    instance-of p1, p0, Lcom/miui/home/launcher/ShortcutInfo;

    if-nez p1, :cond_0

    return-void

    .line 298
    :cond_0
    check-cast p0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 299
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 300
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "show shortcut menu when drop, pkgName="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ShortcutMenu"

    invoke-static {v0, p1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackShowingShortcutMenuWhenDropIcon(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onDragStart([Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onInterceptSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 381
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lmiuix/device/DeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 384
    :cond_0
    iget p0, p1, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    const/4 p1, 0x1

    if-nez p0, :cond_1

    iget v1, p2, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    if-eq v1, p1, :cond_2

    :cond_1
    if-ne p0, p1, :cond_3

    iget p0, p2, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    if-nez p0, :cond_3

    :cond_2
    move v0, p1

    :cond_3
    :goto_0
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 397
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 398
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isBlurSupported()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 399
    sget-boolean p1, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_V:Z

    if-eqz p1, :cond_0

    const-string p1, "Wallpaper BBQ wrapper-lock"

    .line 401
    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/BlurUtilities;->setMiBlurWinExc(Landroid/view/View;Ljava/lang/String;)V

    const-string p1, "Wallpaper BBQ wrapper"

    .line 402
    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/BlurUtilities;->setMiBlurWinInc(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x2

    const/4 p2, 0x1

    .line 405
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0706a1

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 404
    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/launcher/common/BlurUtilities;->setContainerBlur(Landroid/view/View;IZI)V

    :cond_1
    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 1

    .line 306
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInHalfSoscSplitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->loadSoscLayout(Lcom/miui/launcher/sosc/module/SoscEvent;)V

    goto :goto_0

    .line 309
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mShortcutMenu:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    if-eqz p0, :cond_1

    .line 310
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->onScreenSizeChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 0

    .line 354
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/ShortcutMenuLayer;->loadSoscLayout(Lcom/miui/launcher/sosc/module/SoscEvent;)V

    return-void
.end method

.method public requestLayout()V
    .locals 0

    .line 336
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->checkRequestLayoutInWorkerThread()V

    .line 337
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setIsNeedSkipTouch(Z)V
    .locals 1

    .line 157
    iput-boolean p1, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mIsNeedSkipTouch:Z

    .line 158
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isNeedSkipTouch="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher.ShortcutMenuLayer"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setWithoutAnimNextHide()V
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mShortcutMenu:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    if-eqz p0, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setWithoutAnimNextHide()V

    :cond_0
    return-void
.end method

.method public setupShortcutMenuIfNeed()V
    .locals 3

    .line 416
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mShortcutMenu:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/launcher/views/LauncherFrameLayout;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    .line 419
    :cond_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0167

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mShortcutMenu:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    .line 420
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 421
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mShortcutMenu:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->reset()V

    :cond_1
    :goto_0
    return-void
.end method

.method public showShortcutMenu(Lcom/miui/home/launcher/DragObject;)V
    .locals 10

    .line 74
    invoke-static {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->canShowShortcutMenu(Lcom/miui/home/launcher/DragObject;)Z

    move-result v0

    const-string v1, "Launcher.ShortcutMenuLayer"

    if-nez v0, :cond_0

    const-string p0, "can not show shortcut menu"

    .line 75
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setupShortcutMenuIfNeed()V

    .line 81
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mShortcutMenu:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo p0, "shortcut menu already visible"

    .line 82
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 86
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragObject;->getDragInfo(I)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v9

    if-nez v9, :cond_2

    const-string p0, "drag item info is null"

    .line 89
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 93
    :cond_2
    iget-object v2, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mRequestingItemInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p0, "itemInfo already requesting"

    .line 94
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 98
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->isRequestingShortcutMenuItems()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mRequestAppShortcutAsyncTask:Landroid/os/AsyncTask;

    if-eqz v2, :cond_4

    const-string v2, "cancel current requesting"

    .line 99
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mRequestAppShortcutAsyncTask:Landroid/os/AsyncTask;

    invoke-virtual {v1, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 103
    :cond_4
    invoke-direct {p0, v9}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setRequestingItemInfo(Lcom/miui/home/launcher/ItemInfo;)V

    .line 105
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getDragViewLocationInShortcutMenuLayer(Lcom/miui/home/launcher/DragObject;)[F

    move-result-object v5

    .line 106
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->isShortcutIconShowingMessage(Lcom/miui/home/launcher/DragObject;)Z

    move-result v6

    const/4 v1, 0x2

    new-array v7, v1, [I

    .line 107
    aget v1, v5, v0

    float-to-int v1, v1

    iget v2, p1, Lcom/miui/home/launcher/DragObject;->xOffset:I

    add-int/2addr v1, v2

    aput v1, v7, v0

    aget v0, v5, v3

    float-to-int v0, v0

    iget p1, p1, Lcom/miui/home/launcher/DragObject;->yOffset:I

    add-int/2addr v0, p1

    aput v0, v7, v3

    .line 110
    invoke-direct {p0, v9}, Lcom/miui/home/launcher/ShortcutMenuLayer;->obtainCellWidth(Lcom/miui/home/launcher/ItemInfo;)I

    move-result v8

    .line 112
    new-instance p1, Lcom/miui/home/launcher/ShortcutMenuLayer$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, v9}, Lcom/miui/home/launcher/ShortcutMenuLayer$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/ShortcutMenuLayer;Lcom/miui/home/launcher/ItemInfo;)V

    new-instance v0, Lcom/miui/home/launcher/ShortcutMenuLayer$$ExternalSyntheticLambda1;

    move-object v2, v0

    move-object v3, p0

    move-object v4, v9

    invoke-direct/range {v2 .. v8}, Lcom/miui/home/launcher/ShortcutMenuLayer$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/ShortcutMenuLayer;Lcom/miui/home/launcher/ItemInfo;[FZ[II)V

    new-instance v1, Lcom/miui/home/launcher/ShortcutMenuLayer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v9}, Lcom/miui/home/launcher/ShortcutMenuLayer$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/ShortcutMenuLayer;Lcom/miui/home/launcher/ItemInfo;)V

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execCancelableTaskParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mRequestAppShortcutAsyncTask:Landroid/os/AsyncTask;

    return-void
.end method

.method public showShortcutTip(Landroid/view/View;Ljava/lang/String;)V
    .locals 9

    .line 217
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/ItemInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    .line 221
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setupShortcutMenuIfNeed()V

    const/4 v0, 0x2

    new-array v6, v0, [I

    const/4 v1, 0x1

    .line 224
    invoke-static {p1, p0, v6, v1}, Lcom/miui/home/launcher/common/Utilities;->getLocationInParent(Landroid/view/View;Landroid/view/View;[IZ)F

    new-array v4, v0, [F

    const/4 v0, 0x0

    aget v2, v6, v0

    int-to-float v2, v2

    aput v2, v4, v0

    aget v0, v6, v1

    int-to-float v0, v0

    aput v0, v4, v1

    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/miui/home/launcher/ItemInfo;

    .line 228
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/ShortcutMenuLayer;->obtainTipShortcutMenu(Ljava/lang/String;)Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;

    move-result-object v3

    const/4 v5, 0x0

    .line 229
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    const/4 v8, 0x1

    move-object v1, p0

    .line 228
    invoke-direct/range {v1 .. v8}, Lcom/miui/home/launcher/ShortcutMenuLayer;->showMenuItems(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;[FZ[IIZ)V

    :cond_1
    :goto_0
    return-void
.end method
