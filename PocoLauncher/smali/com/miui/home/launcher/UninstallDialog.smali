.class public Lcom/miui/home/launcher/UninstallDialog;
.super Lcom/miui/launcher/views/LauncherFrameLayout;
.source "UninstallDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;,
        Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mButtons:Landroid/view/View;

.field private mCustomHeight:I

.field private mDescription:Landroid/widget/TextView;

.field private mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mMessages:Landroid/view/View;

.field private mRemoveItemsWorker:Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;

.field private mShakeAnim:Landroid/animation/ValueAnimator;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$MBg8FNHyPZhseab4eIiYFIg82y0(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/UninstallDialog;->lambda$removeItem$0(Lcom/miui/home/launcher/ItemInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/miui/launcher/views/LauncherFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialog;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 46
    iput p1, p0, Lcom/miui/home/launcher/UninstallDialog;->mCustomHeight:I

    .line 408
    new-instance p1, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;-><init>(Lcom/miui/home/launcher/UninstallDialog;Lcom/miui/home/launcher/UninstallDialog$1;)V

    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialog;->mRemoveItemsWorker:Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/UninstallDialog;)Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/UninstallDialog;Landroid/view/View;)Z
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/UninstallDialog;->removeItem(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/UninstallDialog;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/UninstallDialog;[Landroid/view/View;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/UninstallDialog;->addItemsWhenCancelUninstallWithoutAnim([Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/UninstallDialog;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/miui/launcher/views/LauncherFrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/UninstallDialog;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/miui/launcher/views/LauncherFrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/UninstallDialog;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/miui/launcher/views/LauncherFrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/UninstallDialog;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/miui/launcher/views/LauncherFrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/home/launcher/UninstallDialog;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/miui/launcher/views/LauncherFrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private addItemsWhenCancelUninstallWithoutAnim([Landroid/view/View;)V
    .locals 5

    .line 309
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 310
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ItemInfo;

    .line 311
    instance-of v4, v3, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v4, :cond_0

    .line 312
    iget-object v4, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4, v3, v1, v1}, Lcom/miui/home/launcher/Launcher;->addItem(Lcom/miui/home/launcher/ItemInfo;ZZ)Landroid/view/View;

    .line 313
    iget-object v4, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 314
    move-object v4, v3

    check-cast v4, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v4}, Lcom/miui/home/launcher/ShortcutInfo;->restoreCheckedStatus()V

    .line 317
    :cond_0
    invoke-virtual {v3}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private cancelUninstall([Landroid/view/View;Z)V
    .locals 7

    .line 270
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 271
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 273
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, p1, v4

    .line 274
    iget-object v6, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v6, v5}, Lcom/miui/home/launcher/Launcher;->getDragSourceForCancelUninstall(Landroid/view/View;)Lcom/miui/home/launcher/DragSource;

    move-result-object v6

    if-eqz v6, :cond_0

    if-eqz p2, :cond_0

    .line 276
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 278
    :cond_0
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    :goto_1
    instance-of v6, v6, Lcom/miui/home/launcher/hotseats/HotSeats;

    if-nez v6, :cond_1

    instance-of v6, v5, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v6, :cond_1

    .line 281
    check-cast v5, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v5, v3}, Lcom/miui/home/launcher/ShortcutIcon;->setIsHideTitle(Z)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 285
    :cond_2
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 286
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/UninstallDialog;->cancelUninstallWithAnim(Ljava/util/HashMap;)V

    .line 289
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 290
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/view/View;

    .line 291
    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/UninstallDialog;->addItemsWhenCancelUninstallWithoutAnim([Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method private cancelUninstallWithAnim(Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Lcom/miui/home/launcher/DragSource;",
            ">;)V"
        }
    .end annotation

    .line 296
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Landroid/view/View;

    .line 297
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v1, v1, [Lcom/miui/home/launcher/DragSource;

    .line 298
    iget-object v2, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v2

    .line 299
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Landroid/view/View;

    .line 300
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, [Lcom/miui/home/launcher/DragSource;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, v2

    .line 299
    invoke-virtual/range {v3 .. v8}, Lcom/miui/home/launcher/DragController;->autoDrag([Landroid/view/View;[Lcom/miui/home/launcher/DragSource;III)V

    .line 303
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 304
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getDropTargetBar()Lcom/miui/home/launcher/DropTargetBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/DropTargetBar;->getUninstallDialogWrapper()Lcom/miui/home/launcher/UninstallDialogWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->getShowUninstallDialogAnimDuration()I

    move-result p0

    .line 303
    invoke-virtual {v2, p0}, Lcom/miui/home/launcher/DragController;->setEachDragViewMinDropAnimationDuration(I)V

    .line 305
    invoke-virtual {v2}, Lcom/miui/home/launcher/DragController;->autoDropBack()V

    return-void
.end method

.method private containRelativeXSpace()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 218
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {v2}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 219
    iget-object v2, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutIcon;

    .line 220
    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v3, :cond_0

    .line 221
    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 222
    invoke-virtual {v2}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/launcher/utils/LauncherUtils;->isXSpaceUser(Landroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/launcher/views/LauncherFrameLayout;->mContext:Landroid/content/Context;

    .line 223
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/miui/launcher/utils/LauncherUtils;->hasRelativeXSpaceApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static synthetic lambda$removeItem$0(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    .line 420
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    return-void
.end method

.method private removeFromDB(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 2

    .line 446
    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    .line 447
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 448
    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Launcher;->removeFromAppsList(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 449
    iget-object v1, v0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 450
    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackDeletedShortCut(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 454
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 455
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.xiaomi.market"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 456
    new-instance p1, Lcom/miui/home/launcher/UninstallDialog$3;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/UninstallDialog$3;-><init>(Lcom/miui/home/launcher/UninstallDialog;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private removeItem(Landroid/view/View;)Z
    .locals 2

    .line 412
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ItemInfo;

    .line 413
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->isApplicatoin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getUninstallController()Lcom/miui/home/launcher/uninstall/UninstallController;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/uninstall/UninstallController;->uninstallApp(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v0

    goto :goto_0

    .line 415
    :cond_0
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->isHybirdApp(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getUninstallController()Lcom/miui/home/launcher/uninstall/UninstallController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/uninstall/UninstallController;->deleteItem(Lcom/miui/home/launcher/ItemInfo;)V

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 419
    new-instance v1, Lcom/miui/home/launcher/UninstallDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/UninstallDialog$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/ItemInfo;)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return v0
.end method

.method private setIcon(Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 0

    .line 255
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->onlyShowIconWhenDrawChild()V

    .line 257
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private updateMessageTextSize()V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070722

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 125
    iget-object v2, p0, Lcom/miui/home/launcher/UninstallDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07071d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 129
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    return-void
.end method

.method private updateMessageWidth()V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mMessages:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07071e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 117
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog;->mMessages:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bindItem(Lcom/miui/home/launcher/DragObject;)Z
    .locals 4

    .line 143
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    .line 144
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/DragView;->getContent()Landroid/view/View;

    move-result-object v1

    .line 145
    instance-of v2, v1, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v2, :cond_0

    .line 146
    check-cast v1, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutIcon;->onlyShowIconWhenDrawChild()V

    :cond_0
    const/4 v1, 0x0

    .line 149
    instance-of v2, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v2, :cond_1

    .line 150
    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v2, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {v1, v2, v0}, Lcom/miui/home/launcher/Launcher;->createShortIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    .line 153
    iget-object v2, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    iget v3, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-virtual {v2, v3, v0}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->updateSpanXY(II)V

    .line 154
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/UninstallDialog;->setIcon(Lcom/miui/home/launcher/ShortcutIcon;)V

    .line 155
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public cancelUninstall(Z)V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView;->getAllScreens()[Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/UninstallDialog;->cancelUninstall([Landroid/view/View;Z)V

    .line 266
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->removeAllScreens()V

    return-void
.end method

.method public checkUninstallApp()I
    .locals 3

    const/4 v0, 0x0

    .line 233
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutIcon;

    .line 235
    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ItemInfo;

    iget-object v2, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1, v2}, Lcom/miui/home/launcher/uninstall/UninstallController;->isSecondConfirmationDialog(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_1
    return p0
.end method

.method protected correctFrame(IIII)Landroid/graphics/Rect;
    .locals 0

    .line 71
    new-instance p4, Landroid/graphics/Rect;

    iget p0, p0, Lcom/miui/home/launcher/UninstallDialog;->mCustomHeight:I

    add-int/2addr p0, p2

    invoke-direct {p4, p1, p2, p3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p4
.end method

.method public getAllInfos()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 245
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {v2}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 246
    iget-object v2, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 247
    instance-of v3, v2, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v3, :cond_0

    .line 248
    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getIconContainer()Landroid/view/ViewGroup;
    .locals 0

    .line 473
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    return-object p0
.end method

.method public getUninstallItemCount()I
    .locals 0

    .line 261
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result p0

    return p0
.end method

.method public onConfirm(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView;->removeOutAllScreens()[Landroid/view/View;

    move-result-object v0

    .line 323
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    .line 324
    aget-object v2, v0, v1

    check-cast v2, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz p1, :cond_0

    .line 325
    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    aget-object p1, v0, v1

    .line 326
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/UninstallDialog;->removeItem(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 327
    :cond_1
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/UninstallDialog;->addItemsWhenCancelUninstallWithoutAnim([Landroid/view/View;)V

    goto :goto_0

    .line 329
    :cond_2
    array-length v1, v0

    if-le v1, v2, :cond_3

    .line 330
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog;->mRemoveItemsWorker:Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->remove([Landroid/view/View;Ljava/util/List;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 76
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a03ba

    .line 77
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0138

    .line 78
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mDescription:Landroid/widget/TextView;

    const v0, 0x7f0a0131

    .line 79
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    iput-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    const/4 v1, 0x2

    .line 80
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ScreenView;->setScreenLayoutMode(I)V

    .line 81
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/ScreenView;->setEnableReverseDrawingMode(Z)V

    .line 82
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    iput-object p0, v0, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    const v0, 0x7f0a0279

    .line 83
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mMessages:Landroid/view/View;

    const v0, 0x7f0a00d5

    .line 84
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mButtons:Landroid/view/View;

    new-array v0, v1, [F

    .line 85
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mShakeAnim:Landroid/animation/ValueAnimator;

    .line 86
    new-instance v1, Lcom/miui/home/launcher/UninstallDialog$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/UninstallDialog$1;-><init>(Lcom/miui/home/launcher/UninstallDialog;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 94
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mShakeAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/UninstallDialog$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/UninstallDialog$2;-><init>(Lcom/miui/home/launcher/UninstallDialog;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 101
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 102
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->doLauncherHavePaddingTopForStatusBarAndNotch()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f070721

    goto :goto_0

    :cond_0
    const v1, 0x7f070720

    .line 101
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingTop(Landroid/view/View;I)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onScreenSizeChanged()V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/miui/home/launcher/UninstallDialog;->updateMessageTextSize()V

    .line 109
    invoke-direct {p0}, Lcom/miui/home/launcher/UninstallDialog;->updateMessageWidth()V

    return-void
.end method

.method public onShow(ZZLjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 478
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportCompleteAnimation()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 479
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialog;->mShakeAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 480
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 481
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p2}, Lcom/miui/home/launcher/DragController;->createViewBitmap(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 483
    iget-object v2, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v2

    .line 484
    iget-object v3, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    const/4 v4, 0x0

    invoke-static {v3, v2, p2, v4}, Lcom/miui/home/launcher/common/Utilities;->getLocationInParent(Landroid/view/View;Landroid/view/View;[IZ)F

    .line 485
    new-instance v3, Landroid/graphics/Rect;

    aget v5, p2, v4

    const/4 v6, 0x1

    aget v7, p2, v6

    aget v8, p2, v4

    iget-object v9, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    aget p2, p2, v6

    iget-object v6, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    add-int/2addr p2, v6

    invoke-direct {v3, v5, v7, v8, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 486
    iget p2, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v5

    iput p2, v3, Landroid/graphics/Rect;->bottom:I

    .line 487
    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 488
    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 489
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    iput p2, v3, Landroid/graphics/Rect;->right:I

    .line 490
    new-instance p2, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;

    invoke-direct {p2, v2, p1, v3}, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;-><init>(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 491
    invoke-virtual {v2, p2}, Lcom/miui/home/launcher/SuperDraglayer;->attachParasiticDrawingObject(Lcom/miui/home/launcher/common/ParasiticDrawingObject;)V

    .line 492
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v0, 0x44c

    .line 493
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 494
    new-instance p1, Lcom/miui/home/launcher/UninstallDialog$4;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/UninstallDialog$4;-><init>(Lcom/miui/home/launcher/UninstallDialog;)V

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 503
    invoke-virtual {p2}, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;->start()V

    .line 504
    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/UninstallDialog;->onConfirm(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public removeDragItem(Lcom/miui/home/launcher/DragObject;Lcom/miui/home/launcher/ItemInfo;Z)V
    .locals 3

    .line 428
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/Folder;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/miui/home/launcher/ItemInfo;->container:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->getFolderInfoById(J)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderInfo;->remove(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 434
    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderInfo;->getAdapter(Landroid/content/Context;)Lcom/miui/home/launcher/ShortcutsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutsAdapter;->notifyDataSetChanged()V

    :cond_0
    if-eqz p3, :cond_1

    .line 438
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/UninstallDialog;->removeFromDB(Lcom/miui/home/launcher/ItemInfo;)V

    .line 439
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object p1

    instance-of p1, p1, Lcom/miui/home/launcher/Workspace;

    if-eqz p1, :cond_1

    iget p1, p2, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    iget p1, p2, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-ne p1, p3, :cond_1

    .line 440
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Launcher;->fillEmpty(Lcom/miui/home/launcher/ItemInfo;)V

    :cond_1
    return-void
.end method

.method public setContentAlpha(F)V
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mMessages:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 469
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog;->mButtons:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method public setTitle()V
    .locals 9

    .line 162
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutIcon;

    if-nez v0, :cond_0

    return-void

    .line 166
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getDropTargetBar()Lcom/miui/home/launcher/DropTargetBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/DropTargetBar;->isUninstallMode()Z

    move-result v2

    .line 167
    iget-object v3, p0, Lcom/miui/home/launcher/UninstallDialog;->mButtons:Landroid/view/View;

    const v4, 0x7f0a00c6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    if-eqz v2, :cond_1

    const v4, 0x7f100526

    goto :goto_0

    :cond_1
    const v4, 0x7f1004d7

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 168
    iget-object v3, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {v3}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v3

    .line 170
    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v4, :cond_2

    .line 171
    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/ShortcutInfo;

    .line 172
    iget-object v5, p0, Lcom/miui/launcher/views/LauncherFrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_1

    .line 174
    :cond_2
    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    .line 175
    iget-object v5, p0, Lcom/miui/launcher/views/LauncherFrameLayout;->mContext:Landroid/content/Context;

    iget-object v6, v4, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v6, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v4, v4, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v4

    invoke-static {v5, v6, v4}, Lcom/miui/home/launcher/ScreenUtils;->getProviderName(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 177
    :goto_1
    iget-object v5, p0, Lcom/miui/home/launcher/UninstallDialog;->mDescription:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    move v6, v1

    goto :goto_2

    :cond_3
    const/16 v6, 0x8

    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const v5, 0x7f10052d

    const v6, 0x7f100529

    const/4 v7, 0x1

    if-le v3, v7, :cond_6

    if-nez v2, :cond_4

    .line 180
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0e0017

    new-array v7, v7, [Ljava/lang/Object;

    .line 181
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {v2, v4, v3, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 183
    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0e0019

    new-array v7, v7, [Ljava/lang/Object;

    .line 184
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {v2, v4, v3, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    :goto_3
    invoke-direct {p0}, Lcom/miui/home/launcher/UninstallDialog;->containRelativeXSpace()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 187
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 189
    :cond_5
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    :cond_6
    if-ne v3, v7, :cond_9

    if-nez v2, :cond_7

    .line 194
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mTitle:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/miui/launcher/views/LauncherFrameLayout;->mContext:Landroid/content/Context;

    const v2, 0x7f10043e

    .line 195
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v4, v2, v1

    .line 194
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 198
    :cond_7
    iget-object v2, p0, Lcom/miui/home/launcher/UninstallDialog;->mTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/launcher/views/LauncherFrameLayout;->mContext:Landroid/content/Context;

    const v8, 0x7f10052a

    .line 199
    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v4, v8, v1

    .line 198
    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v2, p0, Lcom/miui/home/launcher/UninstallDialog;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 202
    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v2, :cond_9

    .line 203
    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 204
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/launcher/utils/LauncherUtils;->isXSpaceUser(Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 205
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/launcher/views/LauncherFrameLayout;->mContext:Landroid/content/Context;

    .line 206
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10052f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v4, v3, v1

    .line 205
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog;->mDescription:Landroid/widget/TextView;

    const v0, 0x7f10052e

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 209
    :cond_8
    iget-object v1, p0, Lcom/miui/launcher/views/LauncherFrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/launcher/utils/LauncherUtils;->hasRelativeXSpaceApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 210
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setText(I)V

    :cond_9
    :goto_4
    return-void
.end method

.method public stretctHeightTo(I)V
    .locals 4

    .line 138
    iput p1, p0, Lcom/miui/home/launcher/UninstallDialog;->mCustomHeight:I

    .line 139
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    iget v3, p0, Lcom/miui/home/launcher/UninstallDialog;->mCustomHeight:I

    add-int/2addr v2, v3

    invoke-super {p0, p1, v0, v1, v2}, Lcom/miui/launcher/views/LauncherFrameLayout;->setFrame(IIII)Z

    return-void
.end method
