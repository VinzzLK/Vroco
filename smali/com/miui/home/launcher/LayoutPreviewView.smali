.class public Lcom/miui/home/launcher/LayoutPreviewView;
.super Lcom/miui/home/launcher/EditingEntryThumbnailView;
.source "LayoutPreviewView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;,
        Lcom/miui/home/launcher/LayoutPreviewView$CustomAccessibilityDelegate;
    }
.end annotation


# instance fields
.field private final TWO_CLICK_TIME:J

.field private final mAppearAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private final mButtonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;",
            ">;"
        }
    .end annotation
.end field

.field private mCellCountXYInPreview:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

.field private final mCellCountXYInUse:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

.field private mClickTime:J

.field private final mDisappearAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private final mHideState:Lmiuix/animation/controller/AnimState;

.field private mNumOfColumnsChanged:Z

.field private final mShowState:Lmiuix/animation/controller/AnimState;

.field private mWorkspace:Lcom/miui/home/launcher/Workspace;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/EditingEntryThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, 0x3e8

    .line 42
    iput-wide p1, p0, Lcom/miui/home/launcher/LayoutPreviewView;->TWO_CLICK_TIME:J

    .line 43
    new-instance p1, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    invoke-direct {p1}, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mCellCountXYInUse:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    .line 44
    iput-object p1, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mCellCountXYInPreview:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    .line 45
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mButtonList:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 47
    iput-boolean p1, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mNumOfColumnsChanged:Z

    .line 48
    new-instance p1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 p2, 0x2

    new-array v0, p2, [F

    fill-array-data v0, :array_0

    const/4 v1, -0x2

    invoke-virtual {p1, v1, v0}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mDisappearAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 49
    new-instance p1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array p2, p2, [F

    fill-array-data p2, :array_1

    invoke-virtual {p1, v1, p2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mAppearAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 50
    new-instance p1, Lmiuix/animation/controller/AnimState;

    const-string/jumbo p2, "state_show"

    invoke-direct {p1, p2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object p2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 51
    invoke-virtual {p1, p2, v0, v1}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object v2, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 52
    invoke-virtual {p1, v2, v0, v1}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object v3, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 53
    invoke-virtual {p1, v3, v0, v1}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mShowState:Lmiuix/animation/controller/AnimState;

    .line 54
    new-instance p1, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v0, "state_hide"

    invoke-direct {p1, v0}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    .line 55
    invoke-virtual {p1, p2, v0, v1}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    const-wide v0, 0x3fee666660000000L    # 0.949999988079071

    .line 56
    invoke-virtual {p1, v2, v0, v1}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    .line 57
    invoke-virtual {p1, v3, v0, v1}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mHideState:Lmiuix/animation/controller/AnimState;

    .line 61
    invoke-virtual {p0}, Lcom/miui/home/launcher/LayoutPreviewView;->initWidgetThumbnailView()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3e19999a    # 0.15f
    .end array-data

    :array_1
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3eb33333    # 0.35f
    .end array-data
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/LayoutPreviewView;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/miui/home/launcher/LayoutPreviewView;->resetWorkspace()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/LayoutPreviewView;Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/LayoutPreviewView;->changeCellCountX(Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/LayoutPreviewView;)Lmiuix/animation/controller/AnimState;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mShowState:Lmiuix/animation/controller/AnimState;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/LayoutPreviewView;)Lmiuix/animation/base/AnimConfig;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mAppearAnimConfig:Lmiuix/animation/base/AnimConfig;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/LayoutPreviewView;)Lcom/miui/home/launcher/Workspace;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    return-object p0
.end method

.method private applyPreviewLayout()V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 460
    invoke-direct {p0, v0, v1, v1}, Lcom/miui/home/launcher/LayoutPreviewView;->clearMamlCache(ZZZ)V

    .line 461
    invoke-direct {p0}, Lcom/miui/home/launcher/LayoutPreviewView;->checkAnimation()V

    .line 462
    iget-object v2, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mCellCountXYInPreview:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    iget-object v3, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mCellCountXYInUse:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->equal(Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "LayoutPreviewView"

    const-string v0, "layout preview cell coung xy is using"

    .line 463
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 466
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    if-eqz v2, :cond_2

    .line 467
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/miui/home/launcher/DeviceConfig;->tryToMigrateDefaultDatabase(Landroid/content/Context;Z)V

    .line 468
    iget-object v2, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCurrentScreenCells()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/Launcher;->screenCellsChangeConfirmed(Ljava/lang/String;)V

    .line 469
    iget-object v2, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    const-wide/16 v3, -0x1

    iget-object v5, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mCellCountXYInPreview:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    iget v5, v5, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->x:I

    iget-object v6, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mCellCountXYInUse:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    iget v6, v6, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->x:I

    if-eq v5, v6, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {v2, v3, v4, v0}, Lcom/miui/home/launcher/Workspace;->applyPreviewLayout(JZ)V

    .line 470
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mCellCountXYInPreview:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    iget v1, v1, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->x:I

    const-string v2, "pref_key_cell_x"

    invoke-static {v0, v2, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 471
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mCellCountXYInPreview:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    iget v1, v1, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->type:I

    const-string v2, "pref_key_layout_type"

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/common/BaseSharePreference;->putInt(Ljava/lang/String;I)V

    .line 472
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mCellCountXYInPreview:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    iget p0, p0, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->x:I

    const-string v1, "miui_home_screen_columns_size"

    invoke-static {v0, v1, p0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putIntToSystem(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    return-void
.end method

.method private canBeChanged()Z
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 137
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isNeedToWaitToDeleteEmptyScreen()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private cancelLayoutPreview(Lcom/miui/home/launcher/EditStateChangeReason;)V
    .locals 4

    const/4 v0, 0x0

    .line 432
    invoke-direct {p0, v0, v0, v0}, Lcom/miui/home/launcher/LayoutPreviewView;->clearMamlCache(ZZZ)V

    .line 433
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LayoutPreviewView;->showLauncher(Lcom/miui/home/launcher/EditStateChangeReason;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 434
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.home.Setting"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x10808000

    .line 435
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 436
    iget-object v2, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 438
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/LayoutPreviewView;->checkAnimation()V

    const-wide/16 v1, -0x1

    .line 440
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LayoutPreviewView;->performLayoutNow(Lcom/miui/home/launcher/EditStateChangeReason;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 441
    iget-object p1, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v1

    .line 442
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel layout preview, perform layout now screen id = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "LayoutPreviewView"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mCellCountXYInUse:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/LayoutPreviewView;->changeCellCountX(Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;Z)V

    .line 445
    iget-object p0, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    if-eqz p0, :cond_2

    .line 446
    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/Workspace;->cancelPreviewLayout(J)V

    .line 448
    :cond_2
    sput-boolean v0, Lcom/miui/home/launcher/ScreenView;->mIsChangingCellCount:Z

    return-void
.end method

.method private changeCellCountX(Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    if-nez v3, :cond_0

    goto :goto_1

    .line 211
    :cond_0
    iget v4, v1, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->x:I

    iget v5, v2, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->x:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v4, v5, :cond_1

    move v4, v7

    goto :goto_0

    :cond_1
    move v4, v6

    :goto_0
    invoke-direct {v0, v6, v7, v4}, Lcom/miui/home/launcher/LayoutPreviewView;->clearMamlCache(ZZZ)V

    .line 212
    sget-object v4, Lcom/miui/home/launcher/DeviceConfig;->INSTANCE:Lcom/miui/home/launcher/util/MainThreadInitializedObject;

    iget-object v5, v0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/DeviceConfig;

    iget-object v5, v0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/16 v9, 0xb

    invoke-virtual {v4, v5, v8, v9, v2}, Lcom/miui/home/launcher/DeviceConfig;->loadScreenSize(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/Object;)Z

    .line 213
    iget-object v10, v0, Lcom/miui/home/launcher/LayoutPreviewView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget v11, v1, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->x:I

    iget v12, v1, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->y:I

    iget v13, v2, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->x:I

    iget v14, v2, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->y:I

    iget v15, v3, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->x:I

    iget v1, v3, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->y:I

    move/from16 v16, v1

    invoke-virtual/range {v10 .. v16}, Lcom/miui/home/launcher/Workspace;->changeCellCount(IIIIII)V

    .line 214
    iput-object v2, v0, Lcom/miui/home/launcher/LayoutPreviewView;->mCellCountXYInPreview:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    .line 215
    invoke-virtual {v0, v7}, Lcom/miui/home/launcher/LayoutPreviewView;->updateBorderLine(Z)V

    .line 216
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    const v3, 0x7f100068

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->getContentDescription()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-virtual {v1, v3, v4}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    :goto_1
    const-string v0, "LayoutPreviewView"

    const-string v1, "no change xy, usingxy or newxy or oldxy is null"

    .line 208
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private changeCellCountX(Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;Z)V
    .locals 2

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "change cell cellCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviewing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mCellCountXYInPreview:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mUsing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mCellCountXYInUse:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LayoutPreviewView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mCellCountXYInPreview:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->equal(Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 146
    sput-boolean v0, Lcom/miui/home/launcher/ScreenView;->mIsChangingCellCount:Z

    .line 147
    invoke-direct {p0}, Lcom/miui/home/launcher/LayoutPreviewView;->checkAnimation()V

    if-eqz p2, :cond_1

    .line 149
    iget-object p2, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mCellCountXYInUse:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    iget-object v0, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mCellCountXYInPreview:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    invoke-direct {p0, p2, p1, v0}, Lcom/miui/home/launcher/LayoutPreviewView;->changeCellCountXWithAnim(Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;)V

    goto :goto_0

    .line 151
    :cond_1
    iget-object p2, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mCellCountXYInUse:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    iget-object v0, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mCellCountXYInPreview:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    invoke-virtual {p0, p2, p1, v0}, Lcom/miui/home/launcher/LayoutPreviewView;->changeCellCountXNoAnim(Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;)V

    :goto_0
    return-void
.end method

.method private changeCellCountXWithAnim(Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;)V
    .locals 5

    .line 161
    iget-object v0, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mAppearAnimConfig:Lmiuix/animation/base/AnimConfig;

    const/4 v1, 0x0

    new-array v2, v1, [Lmiuix/animation/listener/TransitionListener;

    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->removeListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 162
    iget-object v0, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mAppearAnimConfig:Lmiuix/animation/base/AnimConfig;

    const/4 v2, 0x1

    new-array v3, v2, [Lmiuix/animation/listener/TransitionListener;

    invoke-direct {p0}, Lcom/miui/home/launcher/LayoutPreviewView;->getAppearAnimListener()Lmiuix/animation/listener/TransitionListener;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 163
    iget-object v0, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mDisappearAnimConfig:Lmiuix/animation/base/AnimConfig;

    new-array v3, v1, [Lmiuix/animation/listener/TransitionListener;

    invoke-virtual {v0, v3}, Lmiuix/animation/base/AnimConfig;->removeListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 164
    iget-object v0, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mDisappearAnimConfig:Lmiuix/animation/base/AnimConfig;

    new-array v3, v2, [Lmiuix/animation/listener/TransitionListener;

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/LayoutPreviewView;->getDisAppearAnimListener(Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;)Lmiuix/animation/listener/TransitionListener;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {v0, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    new-array p1, v2, [Landroid/view/View;

    .line 165
    iget-object p2, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    aput-object p2, p1, v1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mHideState:Lmiuix/animation/controller/AnimState;

    new-array p3, v2, [Lmiuix/animation/base/AnimConfig;

    iget-object p0, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mDisappearAnimConfig:Lmiuix/animation/base/AnimConfig;

    aput-object p0, p3, v1

    invoke-interface {p1, p2, p3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method private checkAnimation()V
    .locals 3

    .line 477
    iget-object v0, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 478
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/ICancelableStyle;->cancel()V

    .line 479
    iget-object v0, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mDisappearAnimConfig:Lmiuix/animation/base/AnimConfig;

    new-array v1, v2, [Lmiuix/animation/listener/TransitionListener;

    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->removeListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 480
    iget-object p0, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mAppearAnimConfig:Lmiuix/animation/base/AnimConfig;

    new-array v0, v2, [Lmiuix/animation/listener/TransitionListener;

    invoke-virtual {p0, v0}, Lmiuix/animation/base/AnimConfig;->removeListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    :cond_0
    return-void
.end method

.method private clearMamlCache(ZZZ)V
    .locals 0

    if-eqz p2, :cond_1

    .line 487
    iget-boolean p1, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mNumOfColumnsChanged:Z

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    .line 488
    invoke-static {}, Lcom/miui/maml/ResourceManager;->clear()V

    const/4 p1, 0x1

    .line 489
    iput-boolean p1, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mNumOfColumnsChanged:Z

    :cond_0
    return-void

    .line 493
    :cond_1
    iget-boolean p2, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mNumOfColumnsChanged:Z

    if-nez p2, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 496
    iget-object p1, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mCellCountXYInPreview:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    iget p1, p1, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->x:I

    iget-object p0, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mCellCountXYInUse:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    iget p0, p0, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->x:I

    if-ne p1, p0, :cond_4

    .line 497
    :cond_3
    invoke-static {}, Lcom/miui/maml/ResourceManager;->clear()V

    :cond_4
    return-void
.end method

.method private createCellCountXY(III)Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;
    .locals 1

    .line 267
    new-instance v0, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    invoke-direct {v0}, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;-><init>()V

    .line 268
    iput p2, v0, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->x:I

    .line 269
    iput p1, v0, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->index:I

    .line 270
    iput p3, v0, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->type:I

    .line 271
    sget-object p1, Lcom/miui/home/launcher/DeviceConfig;->INSTANCE:Lcom/miui/home/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/DeviceConfig;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/DeviceConfig;->getGridConfig(Landroid/content/Context;)Lcom/miui/home/launcher/GridConfig;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x4

    invoke-virtual {p1, p2, p3, v0}, Lcom/miui/home/launcher/GridConfig;->calGridSize(Landroid/content/Context;ILjava/lang/Object;)Z

    .line 272
    invoke-direct {p0}, Lcom/miui/home/launcher/LayoutPreviewView;->getIconDrawableId()I

    move-result p0

    iput p0, v0, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->drawableId:I

    return-object v0
.end method

.method private getAppearAnimListener()Lmiuix/animation/listener/TransitionListener;
    .locals 1

    .line 169
    new-instance v0, Lcom/miui/home/launcher/LayoutPreviewView$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/LayoutPreviewView$1;-><init>(Lcom/miui/home/launcher/LayoutPreviewView;)V

    return-object v0
.end method

.method private getCellCountXYByIndex(I)Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;
    .locals 2

    .line 125
    iget-object p0, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    .line 126
    iget v1, v0, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->index:I

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getDisAppearAnimListener(Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;)Lmiuix/animation/listener/TransitionListener;
    .locals 1

    .line 187
    new-instance v0, Lcom/miui/home/launcher/LayoutPreviewView$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/miui/home/launcher/LayoutPreviewView$2;-><init>(Lcom/miui/home/launcher/LayoutPreviewView;Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;)V

    return-object v0
.end method

.method private getIconDrawableId()I
    .locals 0

    .line 277
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0802f2

    goto :goto_0

    :cond_0
    const p0, 0x7f0802f3

    :goto_0
    return p0
.end method

.method public static getScreenCellConfigString(II)Ljava/lang/String;
    .locals 3

    .line 502
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 503
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    const p0, 0x7f10029e

    invoke-virtual {v0, p0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private performLayoutNow(Lcom/miui/home/launcher/EditStateChangeReason;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 455
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mCellCountXYInPreview:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    iget-object p0, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mCellCountXYInUse:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->equal(Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 456
    invoke-virtual {p1}, Lcom/miui/home/launcher/EditStateChangeReason;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "event_lock"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/launcher/EditStateChangeReason;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "event_home"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private prepareCellCountButton()V
    .locals 5

    .line 247
    iget-object v0, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 249
    invoke-static {}, Lcom/miui/home/launcher/compat/LauncherLayoutType;->isSupportLooseLayout()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mButtonList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2, v1}, Lcom/miui/home/launcher/LayoutPreviewView;->createCellCountXY(III)Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 252
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mButtonList:Ljava/util/ArrayList;

    const/4 v3, 0x1

    add-int/2addr v1, v3

    invoke-direct {p0, v1, v2, v3}, Lcom/miui/home/launcher/LayoutPreviewView;->createCellCountXY(III)Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object v0, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mButtonList:Ljava/util/ArrayList;

    add-int/2addr v1, v3

    const/4 v2, 0x5

    const/4 v3, 0x2

    invoke-direct {p0, v1, v2, v3}, Lcom/miui/home/launcher/LayoutPreviewView;->createCellCountXY(III)Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v0, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    .line 255
    iget v2, v1, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->x:I

    iget-object v3, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mCellCountXYInUse:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    iget v4, v3, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->x:I

    if-ne v2, v4, :cond_1

    iget v2, v1, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->y:I

    iget v4, v3, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->y:I

    if-ne v2, v4, :cond_1

    iget v2, v1, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->type:I

    iget v4, v3, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->type:I

    if-ne v2, v4, :cond_1

    .line 258
    iget v0, v1, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->index:I

    iput v0, v3, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->index:I

    .line 262
    :cond_2
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->INSTANCE:Lcom/miui/home/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/DeviceConfig;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DeviceConfig;->getGridConfig(Landroid/content/Context;)Lcom/miui/home/launcher/GridConfig;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xb

    iget-object p0, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mCellCountXYInUse:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    invoke-virtual {v0, v1, v2, p0}, Lcom/miui/home/launcher/GridConfig;->calGridSize(Landroid/content/Context;ILjava/lang/Object;)Z

    return-void
.end method

.method private prepareCellCountXYInUse()V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mCellCountXYInUse:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->reset()V

    .line 235
    iget-object v0, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mCellCountXYInUse:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v1

    iput v1, v0, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->x:I

    .line 236
    iget-object v0, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mCellCountXYInUse:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v1

    iput v1, v0, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->y:I

    .line 237
    iget-object v0, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mCellCountXYInUse:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getLauncherLayoutType()Lcom/miui/home/launcher/compat/LauncherLayoutType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/compat/LauncherLayoutType;->getCurType()I

    move-result v1

    iput v1, v0, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->type:I

    .line 238
    iget-object v0, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mCellCountXYInUse:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    invoke-direct {p0}, Lcom/miui/home/launcher/LayoutPreviewView;->getIconDrawableId()I

    move-result v1

    iput v1, v0, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->drawableId:I

    .line 239
    iget-object v0, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mCellCountXYInUse:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    iput-object v0, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mCellCountXYInPreview:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    return-void
.end method

.method private resetView()V
    .locals 1

    const/4 v0, 0x0

    .line 385
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 386
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 387
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 388
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScaleY(F)V

    return-void
.end method

.method private resetWorkspace()V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 221
    iget-object v0, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 222
    iget-object p0, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    return-void
.end method

.method private showLauncher(Lcom/miui/home/launcher/EditStateChangeReason;)Z
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 426
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/EditStateChangeReason;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "event_home"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 427
    invoke-virtual {p1}, Lcom/miui/home/launcher/EditStateChangeReason;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "state_stop"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 428
    invoke-virtual {p1}, Lcom/miui/home/launcher/EditStateChangeReason;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "event_sosc"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p0, 0x1

    :cond_2
    return p0
.end method


# virtual methods
.method public changeCellCountXNoAnim(Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;)V
    .locals 0

    .line 156
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/LayoutPreviewView;->changeCellCountX(Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;)V

    const/4 p0, 0x0

    .line 157
    sput-boolean p0, Lcom/miui/home/launcher/ScreenView;->mIsChangingCellCount:Z

    return-void
.end method

.method public getScreenCellsInUse()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object p0, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mCellCountXYInUse:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    iget v0, p0, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->x:I

    iget p0, p0, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->y:I

    invoke-static {v0, p0}, Lcom/miui/home/launcher/LayoutPreviewView;->getScreenCellConfigString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hide(Z)V
    .locals 1

    .line 359
    iget-boolean v0, p0, Lcom/miui/home/launcher/EditModeThumbnailView;->mIsEditMode:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 362
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/LayoutPreviewView;->hideWithOriginAnim()V

    goto :goto_1

    .line 360
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->hideWithGoogleAnim()V

    :goto_1
    const/4 p1, 0x0

    .line 364
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->setScreenCellsChangedTemporary(Z)V

    .line 365
    invoke-static {p1}, Lcom/miui/home/launcher/AutoLayoutAnimation;->setDisableAutoLayoutAnimation(Z)V

    .line 366
    iput-boolean p1, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mNumOfColumnsChanged:Z

    return-void
.end method

.method public hideLayoutPreview(Lcom/miui/home/launcher/EditStateChangeReason;)V
    .locals 2

    const/4 v0, 0x0

    .line 408
    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->setScreenCellsChangedTemporary(Z)V

    if-nez p1, :cond_0

    .line 410
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    const-string v0, "LayoutPreviewView"

    const-string v1, "hide layout preview no reason"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 411
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LayoutPreviewView;->cancelLayoutPreview(Lcom/miui/home/launcher/EditStateChangeReason;)V

    return-void

    .line 414
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/EditStateChangeReason;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "event_apply"

    .line 415
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    invoke-direct {p0}, Lcom/miui/home/launcher/LayoutPreviewView;->applyPreviewLayout()V

    return-void

    .line 419
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LayoutPreviewView;->cancelLayoutPreview(Lcom/miui/home/launcher/EditStateChangeReason;)V

    return-void
.end method

.method public hideWithOriginAnim()V
    .locals 1

    .line 402
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditModeThumbnailView;->getExitAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x4

    .line 403
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 404
    iput-boolean v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mShow:Z

    return-void
.end method

.method protected initWidgetThumbnailView()V
    .locals 1

    .line 74
    invoke-super {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->initWidgetThumbnailView()V

    .line 75
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getLayoutPreviewBottomButtonGap()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setFixedGap(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 104
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 108
    iget-wide v2, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 109
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "two clicks are too close, time = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mClickTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LayoutPreviewView"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 112
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/LayoutPreviewView;->canBeChanged()Z

    move-result v2

    if-nez v2, :cond_2

    const-string p0, "Launcher.Workspace"

    const-string p1, "need to wait to delete empty screen"

    .line 113
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 116
    :cond_2
    iput-wide v0, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mClickTime:J

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 118
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LayoutPreviewView;->getCellCountXYByIndex(I)Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    .line 120
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/LayoutPreviewView;->changeCellCountX(Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;Z)V

    :cond_3
    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 2

    .line 97
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getLayoutPreviewBottomButtonGap()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setFixedGap(I)V

    .line 98
    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mThumbnailMeasureController:Lcom/miui/home/launcher/ThumbnailMeasureController;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ThumbnailMeasureController;->onScreenSizeChanged(Landroid/view/View;)V

    .line 99
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mThumbnailMeasureController:Lcom/miui/home/launcher/ThumbnailMeasureController;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/EditModeThumbnailView;->resetMarginBottom(Landroid/view/ViewGroup$LayoutParams;Lcom/miui/home/launcher/ThumbnailMeasureController;)V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 3

    .line 66
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->varyViewGroupByWallpaper(Landroid/view/ViewGroup;)V

    .line 67
    iget-object v0, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    .line 68
    invoke-direct {p0}, Lcom/miui/home/launcher/LayoutPreviewView;->getIconDrawableId()I

    move-result v2

    iput v2, v1, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->drawableId:I

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/LayoutPreviewView;->setDrawable()V

    return-void
.end method

.method public prepareToShow()V
    .locals 1

    .line 227
    invoke-direct {p0}, Lcom/miui/home/launcher/LayoutPreviewView;->prepareCellCountXYInUse()V

    .line 228
    invoke-direct {p0}, Lcom/miui/home/launcher/LayoutPreviewView;->prepareCellCountButton()V

    .line 229
    invoke-virtual {p0}, Lcom/miui/home/launcher/LayoutPreviewView;->reLoadThumbnails()V

    const/4 v0, 0x0

    .line 230
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LayoutPreviewView;->updateBorderLine(Z)V

    return-void
.end method

.method public reLoadThumbnails()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables"
        }
    .end annotation

    .line 304
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 307
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    move v1, v0

    .line 308
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 309
    iget-object v2, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    .line 310
    iget-object v3, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0d00a4

    invoke-virtual {v3, v4, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/LayoutPreviewBorder;

    const v4, 0x7f0a00d1

    .line 311
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    const v5, 0x7f0a00d0

    .line 312
    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f0a00d3

    .line 313
    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 315
    iget v7, v2, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->index:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 316
    iget v7, v2, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->index:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 317
    invoke-virtual {v4, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    iget-object v7, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mContext:Landroid/content/Context;

    iget v8, v2, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->drawableId:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 321
    invoke-virtual {v2}, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->getLayoutName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    new-instance v2, Lcom/miui/home/launcher/LayoutPreviewView$CustomAccessibilityDelegate;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v5}, Lcom/miui/home/launcher/LayoutPreviewView$CustomAccessibilityDelegate;-><init>(Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 323
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getLayoutPreviewButtonNameTextSize()F

    move-result v2

    invoke-virtual {v6, v0, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v2, 0x1

    .line 324
    invoke-static {p0, v3, v2}, Lcom/miui/home/launcher/WallpaperUtils;->onAddViewToGroup(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 325
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setDrawable()V
    .locals 2

    const/4 v0, 0x0

    .line 89
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 90
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/LayoutPreviewView;->setIconDrawable(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setIconDrawable(Landroid/view/View;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables"
        }
    .end annotation

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x7f0a00d0

    .line 81
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 82
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/LayoutPreviewView;->getCellCountXYByIndex(I)Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object p0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mContext:Landroid/content/Context;

    iget v0, v0, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->drawableId:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 3

    .line 372
    iget-boolean v0, p0, Lcom/miui/home/launcher/EditModeThumbnailView;->mIsEditMode:Z

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/miui/home/launcher/LayoutPreviewView;->showWithOriginAnim()V

    goto :goto_0

    .line 375
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->showWithGoogleAnim()V

    :goto_0
    const/4 v0, 0x1

    .line 377
    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->setScreenCellsChangedTemporary(Z)V

    const-wide/16 v1, 0x0

    .line 378
    iput-wide v1, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mClickTime:J

    .line 379
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherModel;->beginSaveAppsInLayoutPreview()V

    .line 380
    invoke-static {v0}, Lcom/miui/home/launcher/AutoLayoutAnimation;->setDisableAutoLayoutAnimation(Z)V

    const/4 v0, 0x0

    .line 381
    iput-boolean v0, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mNumOfColumnsChanged:Z

    return-void
.end method

.method public showWithOriginAnim()V
    .locals 1

    .line 393
    invoke-direct {p0}, Lcom/miui/home/launcher/LayoutPreviewView;->resetView()V

    .line 394
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditModeThumbnailView;->getEnterAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x0

    .line 395
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 396
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    const/4 v0, 0x1

    .line 397
    iput-boolean v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView;->mShow:Z

    return-void
.end method

.method public updateBorderLine(Z)V
    .locals 4

    const/4 v0, 0x0

    .line 287
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 288
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 289
    instance-of v2, v1, Lcom/miui/home/launcher/LayoutPreviewBorder;

    if-eqz v2, :cond_1

    .line 290
    iget-object v2, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    .line 291
    iget-object v3, p0, Lcom/miui/home/launcher/LayoutPreviewView;->mCellCountXYInPreview:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->equal(Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    check-cast v1, Lcom/miui/home/launcher/LayoutPreviewBorder;

    sget-object v2, Lcom/miui/home/launcher/anim/BackgroundType;->SELECT:Lcom/miui/home/launcher/anim/BackgroundType;

    invoke-virtual {v1, v2, p1}, Lcom/miui/home/launcher/LayoutPreviewBorder;->updateBackgroundType(Lcom/miui/home/launcher/anim/BackgroundType;Z)V

    goto :goto_1

    .line 294
    :cond_0
    check-cast v1, Lcom/miui/home/launcher/LayoutPreviewBorder;

    sget-object v2, Lcom/miui/home/launcher/anim/BackgroundType;->NORMAL:Lcom/miui/home/launcher/anim/BackgroundType;

    invoke-virtual {v1, v2, p1}, Lcom/miui/home/launcher/LayoutPreviewBorder;->updateBackgroundType(Lcom/miui/home/launcher/anim/BackgroundType;Z)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public updateEditModeThumbnailViewBlurMode(Z)V
    .locals 0

    return-void
.end method
