.class public Lcom/miui/home/launcher/LauncherMenuHelper;
.super Ljava/lang/Object;
.source "LauncherMenuHelper.java"


# instance fields
.field private contentView:Lcom/miui/home/launcher/LauncherMenu;

.field private mBottomSheetBehavior:Lmiuix/bottomsheet/BottomSheetBehavior;

.field private mDismissCallBack:Lcom/miui/home/launcher/LauncherMenu$DismissCallBack;

.field private mIsMenuBottomSheetShowing:Z

.field private mIsRealShow:Z

.field private final mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mLauncherMenuBottomSheet:Lmiuix/bottomsheet/BottomSheetModal;


# direct methods
.method public static synthetic $r8$lambda$fOKPSuoJe1bp_ba-bzpxsGiybBk(Lcom/miui/home/launcher/LauncherMenuHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherMenuHelper;->lambda$initMenuBottomSheet$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$jX6EbwBUQmrZY6POGS7WUBSS5x8(Lcom/miui/home/launcher/LauncherMenuHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherMenuHelper;->lambda$initMenuBottomSheet$1()V

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->mLauncherMenuBottomSheet:Lmiuix/bottomsheet/BottomSheetModal;

    .line 19
    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->mBottomSheetBehavior:Lmiuix/bottomsheet/BottomSheetBehavior;

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->mIsMenuBottomSheetShowing:Z

    .line 25
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->mIsRealShow:Z

    .line 30
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method private dialogShowReverseColorNavigationBar(Z)V
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSystemUiController()Lcom/miui/home/launcher/util/SystemUiController;

    move-result-object p0

    if-eqz p1, :cond_1

    .line 124
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasLightBgForStatusBar()Z

    move-result p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/util/SystemUiController;->updateUiState(Z)V

    return-void
.end method

.method private hideEntryViewOutLine()V
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getEditingEntryView()Lcom/miui/home/launcher/EditingEntryThumbnailView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->hideAllOutLine()V

    :cond_0
    return-void
.end method

.method private initMenuBottomSheet()V
    .locals 4

    .line 83
    new-instance v0, Lmiuix/bottomsheet/BottomSheetModal;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lmiuix/bottomsheet/BottomSheetModal;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->mLauncherMenuBottomSheet:Lmiuix/bottomsheet/BottomSheetModal;

    const/4 v1, 0x1

    .line 84
    invoke-virtual {v0, v1}, Lmiuix/bottomsheet/BottomSheetModal;->setCanceledOnTouchOutside(Z)V

    .line 85
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d0097

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherMenu;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->contentView:Lcom/miui/home/launcher/LauncherMenu;

    .line 86
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->mLauncherMenuBottomSheet:Lmiuix/bottomsheet/BottomSheetModal;

    invoke-virtual {v2, v0}, Lmiuix/bottomsheet/BottomSheetModal;->setContentView(Landroid/view/View;)V

    .line 87
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->mLauncherMenuBottomSheet:Lmiuix/bottomsheet/BottomSheetModal;

    new-instance v2, Lcom/miui/home/launcher/LauncherMenuHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/LauncherMenuHelper$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/LauncherMenuHelper;)V

    invoke-virtual {v0, v2}, Lmiuix/bottomsheet/BottomSheetModal;->setOnOnShowListener(Lmiuix/bottomsheet/BottomSheetModal$OnShowListener;)V

    .line 99
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->mLauncherMenuBottomSheet:Lmiuix/bottomsheet/BottomSheetModal;

    new-instance v2, Lcom/miui/home/launcher/LauncherMenuHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/LauncherMenuHelper$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/LauncherMenuHelper;)V

    invoke-virtual {v0, v2}, Lmiuix/bottomsheet/BottomSheetModal;->setOnDismissListener(Lmiuix/bottomsheet/BottomSheetModal$OnDismissListener;)V

    .line 106
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->mLauncherMenuBottomSheet:Lmiuix/bottomsheet/BottomSheetModal;

    invoke-virtual {v0}, Lmiuix/bottomsheet/BottomSheetModal;->getBehavior()Lmiuix/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->mBottomSheetBehavior:Lmiuix/bottomsheet/BottomSheetBehavior;

    .line 107
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v2}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lmiuix/bottomsheet/BottomSheetBehavior;->setFixedHeightRatioEnabled(Z)V

    .line 108
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->mBottomSheetBehavior:Lmiuix/bottomsheet/BottomSheetBehavior;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lmiuix/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 109
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->mBottomSheetBehavior:Lmiuix/bottomsheet/BottomSheetBehavior;

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x2

    :cond_0
    invoke-virtual {v0, v1}, Lmiuix/bottomsheet/BottomSheetBehavior;->setModeConfig(I)V

    return-void
.end method

.method private synthetic lambda$initMenuBottomSheet$0()V
    .locals 3

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->mIsMenuBottomSheetShowing:Z

    .line 89
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->mIsRealShow:Z

    .line 90
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->contentView:Lcom/miui/home/launcher/LauncherMenu;

    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherMenu;->onShow()V

    .line 93
    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/LauncherMenuHelper;->setBottomViewImportantForAccessibility(Z)V

    .line 94
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherMenuHelper;->hideEntryViewOutLine()V

    .line 95
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/common/messages/LauncherBottomMenuMessage;

    invoke-direct {v2, v0}, Lcom/miui/home/launcher/common/messages/LauncherBottomMenuMessage;-><init>(Z)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 96
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    return-void
.end method

.method private synthetic lambda$initMenuBottomSheet$1()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->mDismissCallBack:Lcom/miui/home/launcher/LauncherMenu$DismissCallBack;

    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherMenu$DismissCallBack;->onDismiss()V

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->mDismissCallBack:Lcom/miui/home/launcher/LauncherMenu$DismissCallBack;

    .line 104
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherMenuHelper;->resumeEditStatus()V

    return-void
.end method

.method private resumeEditStatus()V
    .locals 2

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->mIsMenuBottomSheetShowing:Z

    .line 114
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->mIsRealShow:Z

    .line 115
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/LauncherMenuHelper;->dialogShowReverseColorNavigationBar(Z)V

    .line 116
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/LauncherMenuHelper;->setBottomViewImportantForAccessibility(Z)V

    .line 117
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherMenuHelper;->hideEntryViewOutLine()V

    .line 118
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance v1, Lcom/miui/home/launcher/common/messages/LauncherBottomMenuMessage;

    invoke-direct {v1, v0}, Lcom/miui/home/launcher/common/messages/LauncherBottomMenuMessage;-><init>(Z)V

    invoke-virtual {p0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    const p0, 0x7f10007f

    .line 119
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(I)V

    return-void
.end method

.method private setBottomViewImportantForAccessibility(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 129
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    goto :goto_0

    .line 131
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public hideBottomSheetMenu(Lcom/miui/home/launcher/LauncherMenu$DismissCallBack;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->mDismissCallBack:Lcom/miui/home/launcher/LauncherMenu$DismissCallBack;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->mLauncherMenuBottomSheet:Lmiuix/bottomsheet/BottomSheetModal;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->mIsMenuBottomSheetShowing:Z

    if-eqz v1, :cond_1

    .line 58
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->mDismissCallBack:Lcom/miui/home/launcher/LauncherMenu$DismissCallBack;

    .line 59
    invoke-virtual {v0}, Lmiuix/bottomsheet/BottomSheetModal;->dismiss()V

    const/4 p1, 0x0

    .line 60
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->mIsMenuBottomSheetShowing:Z

    :cond_1
    return-void
.end method

.method public isLauncherMenuRealShow()Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->mIsRealShow:Z

    return p0
.end method

.method public isLauncherMenuShowing()Z
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->mLauncherMenuBottomSheet:Lmiuix/bottomsheet/BottomSheetModal;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->mIsMenuBottomSheetShowing:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public resetLauncherMenu()V
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->mIsMenuBottomSheetShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->mLauncherMenuBottomSheet:Lmiuix/bottomsheet/BottomSheetModal;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lmiuix/bottomsheet/BottomSheetModal;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->mLauncherMenuBottomSheet:Lmiuix/bottomsheet/BottomSheetModal;

    .line 69
    iput-object v0, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->mBottomSheetBehavior:Lmiuix/bottomsheet/BottomSheetBehavior;

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->mIsMenuBottomSheetShowing:Z

    .line 71
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->mIsRealShow:Z

    return-void
.end method

.method public showBottomSheetMenu(Z)V
    .locals 1

    if-eqz p1, :cond_3

    .line 35
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->mLauncherMenuBottomSheet:Lmiuix/bottomsheet/BottomSheetModal;

    if-nez p1, :cond_0

    .line 36
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherMenuHelper;->initMenuBottomSheet()V

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->mBottomSheetBehavior:Lmiuix/bottomsheet/BottomSheetBehavior;

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    .line 40
    invoke-virtual {p1, v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 42
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->contentView:Lcom/miui/home/launcher/LauncherMenu;

    if-eqz p1, :cond_2

    .line 43
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherMenu;->initCellSetting()V

    :cond_2
    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->mIsMenuBottomSheetShowing:Z

    .line 46
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenuHelper;->mLauncherMenuBottomSheet:Lmiuix/bottomsheet/BottomSheetModal;

    invoke-virtual {v0}, Lmiuix/bottomsheet/BottomSheetModal;->show()V

    .line 47
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherMenuHelper;->dialogShowReverseColorNavigationBar(Z)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 49
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherMenuHelper;->hideBottomSheetMenu(Lcom/miui/home/launcher/LauncherMenu$DismissCallBack;)V

    :goto_0
    return-void
.end method
