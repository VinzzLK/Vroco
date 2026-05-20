.class public Lcom/miui/home/launcher/CellLayout;
.super Lcom/miui/launcher/views/LauncherViewGroup;
.source "CellLayout.java"

# interfaces
.implements Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;
.implements Lcom/miui/home/launcher/IconContainer;
.implements Lcom/miui/home/launcher/NewInstallIconContainer;
.implements Lcom/miui/home/launcher/PendingSource;
.implements Lcom/miui/home/launcher/DragController$LocationCalibration;
.implements Lcom/miui/launcher/sosc/interfaces/SoscingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/CellLayout$ItemVisibilityWorker;,
        Lcom/miui/home/launcher/CellLayout$Size;,
        Lcom/miui/home/launcher/CellLayout$Widget;,
        Lcom/miui/home/launcher/CellLayout$CellInfo;,
        Lcom/miui/home/launcher/CellLayout$LayoutParams;,
        Lcom/miui/home/launcher/CellLayout$ViewConfiguration;,
        Lcom/miui/home/launcher/CellLayout$ItemArea;,
        Lcom/miui/home/launcher/CellLayout$StayConfirm;,
        Lcom/miui/home/launcher/CellLayout$DragPos;
    }
.end annotation


# static fields
.field private static final SHAKE_OFFSET:I

.field private static final sOnItemInvisibleWorker:Lcom/miui/home/launcher/CellLayout$ItemVisibilityWorker;

.field private static sOnItemVisibleWorker:Lcom/miui/home/launcher/CellLayout$ItemVisibilityWorker;

.field private static sUpdateMamlDownloadVisible:Lcom/miui/home/launcher/CellLayout$ItemVisibilityWorker;


# instance fields
.field private mAllowFastClearCellBackgroundGridCells:Z

.field private final mCellBackground:Lcom/miui/home/launcher/CellBackground;

.field private mCellContainerHeight:I

.field private mCellHeight:I

.field private final mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

.field private mCellPaddingLeft:I

.field private mCellPaddingTop:I

.field private final mCellShakeConfig:Lmiuix/animation/base/AnimConfig;

.field private mCellWidth:I

.field private mCellXIterateRange:[I

.field private final mCellXY:[I

.field mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private mDefaultCellBackground:Landroid/graphics/drawable/Drawable;

.field private mDeleteSelfRunnable:Ljava/lang/Runnable;

.field private mDisableTouch:Z

.field private mDrawCallback:Lcom/miui/home/launcher/MIUIWidgetAddAnimator$OnDrawCallback;

.field private mDstPos:[I

.field private final mEditAnimContoller:Lcom/miui/home/launcher/anim/EditAnimController;

.field private mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

.field private mFirstPos:[I

.field private final mFolderCreateBgAnim:Lcom/miui/home/launcher/anim/FolderCreateBgAnim;

.field protected mFolderCreationBg:Lcom/miui/home/launcher/FolderCreationBg;

.field private mGridCell:[[Lcom/miui/home/launcher/GridCell;

.field private mGridCellUpdateScheduled:Z

.field private mHCells:I

.field private mHasNewInstallApps:Z

.field private mHeightGap:I

.field private mIsDrawingInThumbnailView:Z

.field private mIsNoVacantMode:Z

.field private mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

.field private mLastDownOnOccupiedCell:Z

.field private mLastDragOverViews:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

.field private final mLastDragedXY:[I

.field private mLastGridCellsUpdateTime:J

.field private mLastRelayoutTime:J

.field protected mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mLayoutBackupValid:Z

.field private mNewInstallAnimHelper:Lcom/miui/home/launcher/NewInstallAnimHelper;

.field private mOccupiedCell:[[Landroid/view/View;

.field private mOccupiedCellBak:[[Landroid/view/View;

.field private mOldOccupiedCell:[[Landroid/view/View;

.field private final mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

.field private final mPendingItemsDelegate:Lcom/miui/home/launcher/PendingSourceDelegate;

.field private final mRect:Landroid/graphics/Rect;

.field private mRectTmp:Landroid/graphics/Rect;

.field private mStartShowingTime:J

.field private mStayConfirm:Lcom/miui/home/launcher/CellLayout$StayConfirm;

.field private mStayConfirmSize:I

.field mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

.field protected mTmpXY:[I

.field private mToasted:Z

.field private mTotalCells:I

.field private mVCells:I

.field private mVisibleForMaml:Z

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWidthGap:I

.field private mXs:[I

.field private mYs:[I

.field private misEditing:Z


# direct methods
.method public static synthetic $r8$lambda$9LCeV1EwgA4Yk1jy2ilxnTcuylA(Lcom/miui/home/launcher/CellLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->lambda$clearGridCells$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$BMmNlSM4p1WJjZdQEtYJsoK2WSk(ZLcom/miui/home/launcher/interfaces/IEditable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/CellLayout;->lambda$setChildEditMode$0(ZLcom/miui/home/launcher/interfaces/IEditable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ik8HZAWMma3ISKZH0SltNGJpnFw(ZLcom/miui/home/launcher/ShortcutIcon;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/CellLayout;->lambda$quickShowOrHideAllShortcutsCheckBox$2(ZLcom/miui/home/launcher/ShortcutIcon;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OtvFsaCGClRxe6AOVQkSZI1i6UQ(Lcom/miui/home/launcher/CellLayout;IILandroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/CellLayout;->lambda$pushItemsInDistance$3(IILandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$QedhVE8sbGkP7Pb8zdyonc9n_gk(Lcom/miui/home/launcher/CellLayout$Widget;Lcom/miui/home/launcher/CellLayout$Widget;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/CellLayout;->lambda$predictWidgetCanBeAdded$8(Lcom/miui/home/launcher/CellLayout$Widget;Lcom/miui/home/launcher/CellLayout$Widget;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$TnclGeiQZwyRtRzEBiaO6TddErk(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/CellLayout$ItemArea;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/CellLayout;->lambda$getEffectedArea$4(Lcom/miui/home/launcher/CellLayout$ItemArea;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aAi0hDMDEnsM1sqR1XpKPhMs39A(Lcom/miui/home/launcher/CellLayout;Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/CellLayout;->lambda$moveEffectedArea$5(Ljava/util/ArrayList;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jbeZICih_mQfjzOVQC74oK-dCrM(Lcom/miui/home/launcher/CellLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->lambda$schedulerUpdateGridCells$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$qhnUaYoNGPxS-VXWw_3U3n5PCg4(ZLcom/miui/home/launcher/interfaces/IEditable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/CellLayout;->lambda$setChildEditMode$1(ZLcom/miui/home/launcher/interfaces/IEditable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 120
    const-class v0, Lcom/miui/home/launcher/CellLayout;

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 137
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/CellLayout;->SHAKE_OFFSET:I

    .line 3850
    new-instance v0, Lcom/miui/home/launcher/CellLayout$6;

    invoke-direct {v0}, Lcom/miui/home/launcher/CellLayout$6;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/CellLayout;->sOnItemVisibleWorker:Lcom/miui/home/launcher/CellLayout$ItemVisibilityWorker;

    .line 3881
    new-instance v0, Lcom/miui/home/launcher/CellLayout$7;

    invoke-direct {v0}, Lcom/miui/home/launcher/CellLayout$7;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/CellLayout;->sUpdateMamlDownloadVisible:Lcom/miui/home/launcher/CellLayout$ItemVisibilityWorker;

    .line 3920
    new-instance v0, Lcom/miui/home/launcher/CellLayout$8;

    invoke-direct {v0}, Lcom/miui/home/launcher/CellLayout$8;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/CellLayout;->sOnItemInvisibleWorker:Lcom/miui/home/launcher/CellLayout$ItemVisibilityWorker;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 212
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 216
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/launcher/views/LauncherViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 151
    iput-boolean p2, p0, Lcom/miui/home/launcher/CellLayout;->mIsNoVacantMode:Z

    .line 160
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/miui/home/launcher/CellLayout;->mRect:Landroid/graphics/Rect;

    .line 161
    new-instance p3, Lcom/miui/home/launcher/CellLayout$CellInfo;

    invoke-direct {p3}, Lcom/miui/home/launcher/CellLayout$CellInfo;-><init>()V

    iput-object p3, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 163
    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    new-array v1, v0, [I

    .line 164
    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mTmpXY:[I

    .line 165
    new-instance v1, Lcom/miui/home/launcher/CellLayout$DragPos;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/CellLayout$DragPos;-><init>(Lcom/miui/home/launcher/CellLayout;)V

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    .line 166
    new-instance v1, Lcom/miui/home/launcher/CellLayout$DragPos;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/CellLayout$DragPos;-><init>(Lcom/miui/home/launcher/CellLayout;)V

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    .line 168
    iput-boolean p2, p0, Lcom/miui/home/launcher/CellLayout;->mLastDownOnOccupiedCell:Z

    const/4 v1, 0x0

    .line 177
    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    .line 188
    iput-boolean p2, p0, Lcom/miui/home/launcher/CellLayout;->mDisableTouch:Z

    new-array v2, v0, [I

    .line 192
    iput-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mLastDragedXY:[I

    .line 194
    new-instance v2, Lcom/miui/home/launcher/PendingSourceDelegate;

    invoke-direct {v2}, Lcom/miui/home/launcher/PendingSourceDelegate;-><init>()V

    iput-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mPendingItemsDelegate:Lcom/miui/home/launcher/PendingSourceDelegate;

    .line 196
    new-instance v2, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v2}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    iput-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 197
    iput-boolean p2, p0, Lcom/miui/home/launcher/CellLayout;->mVisibleForMaml:Z

    .line 205
    iput-boolean p2, p0, Lcom/miui/home/launcher/CellLayout;->mHasNewInstallApps:Z

    .line 344
    iput-boolean p2, p0, Lcom/miui/home/launcher/CellLayout;->misEditing:Z

    new-array v2, v0, [I

    .line 914
    iput-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mCellXIterateRange:[I

    .line 1373
    new-instance v2, Lcom/miui/home/launcher/CellLayout$3;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/CellLayout$3;-><init>(Lcom/miui/home/launcher/CellLayout;)V

    iput-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mDeleteSelfRunnable:Ljava/lang/Runnable;

    .line 1574
    new-instance v2, Lcom/miui/home/launcher/CellLayout$StayConfirm;

    invoke-direct {v2, p0, v1}, Lcom/miui/home/launcher/CellLayout$StayConfirm;-><init>(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/CellLayout$1;)V

    iput-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mStayConfirm:Lcom/miui/home/launcher/CellLayout$StayConfirm;

    const-wide/16 v1, 0x0

    .line 1576
    iput-wide v1, p0, Lcom/miui/home/launcher/CellLayout;->mLastRelayoutTime:J

    .line 2254
    iput-boolean p2, p0, Lcom/miui/home/launcher/CellLayout;->mLayoutBackupValid:Z

    .line 2349
    iput-boolean p2, p0, Lcom/miui/home/launcher/CellLayout;->mToasted:Z

    .line 2395
    new-instance v3, Lcom/miui/home/launcher/CellLayout$5;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/CellLayout$5;-><init>(Lcom/miui/home/launcher/CellLayout;)V

    iput-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

    .line 2536
    iput-wide v1, p0, Lcom/miui/home/launcher/CellLayout;->mLastGridCellsUpdateTime:J

    .line 2540
    iput-boolean p2, p0, Lcom/miui/home/launcher/CellLayout;->mGridCellUpdateScheduled:Z

    const/4 p2, 0x1

    .line 2607
    iput-boolean p2, p0, Lcom/miui/home/launcher/CellLayout;->mAllowFastClearCellBackgroundGridCells:Z

    .line 2766
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mRectTmp:Landroid/graphics/Rect;

    .line 2944
    new-instance v3, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    sget-object v4, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    new-array v5, v0, [F

    fill-array-data v5, :array_0

    const-wide/16 v6, -0x2

    invoke-virtual {v3, v4, v6, v7, v5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;J[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mCellShakeConfig:Lmiuix/animation/base/AnimConfig;

    .line 2946
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mLastDragOverViews:Ljava/util/HashSet;

    new-array v3, v0, [I

    .line 3384
    iput-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mDstPos:[I

    new-array v0, v0, [I

    .line 3385
    iput-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mFirstPos:[I

    .line 3892
    iput-wide v1, p0, Lcom/miui/home/launcher/CellLayout;->mStartShowingTime:J

    .line 218
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 219
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceCellPaddingTop()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/CellLayout;->setCellPaddingTop(I)V

    .line 220
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceCellPaddingSide()I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingLeft:I

    .line 222
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 224
    move-object v1, p1

    check-cast v1, Lcom/miui/home/launcher/Launcher;

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 225
    new-instance v1, Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-direct {v1, p0, p0}, Lcom/miui/home/launcher/OnLongClickAgent;-><init>(Landroid/view/ViewGroup;Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;)V

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    .line 227
    new-instance v1, Lcom/miui/home/launcher/CellBackground;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/CellBackground;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    .line 228
    new-instance v2, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    invoke-direct {v2}, Lcom/miui/home/launcher/CellLayout$LayoutParams;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    new-instance v2, Lcom/miui/home/launcher/ItemInfo;

    invoke-direct {v2}, Lcom/miui/home/launcher/ItemInfo;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f0801bd

    .line 230
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mDefaultCellBackground:Landroid/graphics/drawable/Drawable;

    .line 232
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->initFolderCreationBg(Landroid/content/Context;)V

    .line 234
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;

    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p1, v0, p0}, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/CellLayout;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;

    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p1, v0, p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/CellLayout;)V

    :goto_0
    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mEditAnimContoller:Lcom/miui/home/launcher/anim/EditAnimController;

    .line 235
    new-instance p1, Lcom/miui/home/launcher/anim/FolderCreateBgAnim;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/anim/FolderCreateBgAnim;-><init>(Lcom/miui/home/launcher/CellLayout;)V

    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mFolderCreateBgAnim:Lcom/miui/home/launcher/anim/FolderCreateBgAnim;

    .line 237
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setWillNotCacheDrawing(Z)V

    .line 238
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->setNoVacantMode(Z)V

    .line 239
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 240
    new-instance p1, Lcom/miui/home/launcher/NewInstallAnimHelper;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/NewInstallAnimHelper;-><init>(Lcom/miui/home/launcher/NewInstallIconContainer;)V

    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mNewInstallAnimHelper:Lcom/miui/home/launcher/NewInstallAnimHelper;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f7ae148    # 0.98f
        0x3edc28f6    # 0.43f
    .end array-data
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/CellLayout;)Landroid/app/WallpaperManager;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/CellLayout;)[[Landroid/view/View;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/CellLayout;)Z
    .locals 0

    .line 120
    iget-boolean p0, p0, Lcom/miui/home/launcher/CellLayout;->mIsNoVacantMode:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/miui/home/launcher/CellLayout;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->rollbackLayoutWithoutRelayout()V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/home/launcher/CellLayout;IIII)V
    .locals 0

    .line 120
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/CellLayout;->makeEmptyCellsNoSpan(IIII)V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/home/launcher/CellLayout;)[[Landroid/view/View;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCellBak:[[Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/miui/home/launcher/CellLayout;II)I
    .locals 0

    .line 120
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/CellLayout;->cellToPositionIndex(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/miui/home/launcher/CellLayout;I)Z
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->hasEmptyCellBeforeTargetIndex(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/miui/home/launcher/CellLayout;Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/miui/home/launcher/CellLayout;)[I
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mXs:[I

    return-object p0
.end method

.method static synthetic access$1800(Lcom/miui/home/launcher/CellLayout;)[I
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mYs:[I

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/home/launcher/CellLayout;Z)Z
    .locals 0

    .line 120
    iput-boolean p1, p0, Lcom/miui/home/launcher/CellLayout;->mAllowFastClearCellBackgroundGridCells:Z

    return p1
.end method

.method static synthetic access$2200(IIII)I
    .locals 0

    .line 120
    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/launcher/CellLayout;->calculateX(IIII)I

    move-result p0

    return p0
.end method

.method static synthetic access$2300(IIIIII)I
    .locals 0

    .line 120
    invoke-static/range {p0 .. p5}, Lcom/miui/home/launcher/CellLayout;->calculateY(IIIIII)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/CellLayout;)Lcom/miui/home/launcher/CellLayout$CellInfo;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/CellLayout;IIII)V
    .locals 0

    .line 120
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/CellLayout;->makeEmptyCellsWithSpanForInnerItem(IIII)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/CellLayout;IIII)V
    .locals 0

    .line 120
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/CellLayout;->makeEmptyCellsWithSpan(IIII)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/CellLayout;Landroid/view/View;)Z
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->isOccupiedMoreThan1X1(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/CellLayout;)Lcom/miui/home/launcher/DropTarget;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    return-object p0
.end method

.method static synthetic access$702(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/DropTarget;)Lcom/miui/home/launcher/DropTarget;
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    return-object p1
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/CellLayout;Ljava/util/HashSet;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->resetLastShakeViews(Ljava/util/HashSet;)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/home/launcher/CellLayout;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->rollbackLayout()V

    return-void
.end method

.method private addNewItem()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 4306
    :goto_0
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v1, v2, :cond_4

    move v2, v0

    .line 4307
    :goto_1
    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v2, v3, :cond_3

    .line 4308
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v3, v3, v2

    aget-object v3, v3, v1

    if-eqz v3, :cond_2

    .line 4309
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/miui/home/launcher/ItemInfo;

    if-nez v4, :cond_0

    goto :goto_2

    .line 4312
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/ItemInfo;

    .line 4313
    iget v5, v4, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    if-eq v5, v2, :cond_1

    iget v4, v4, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    if-eq v4, v1, :cond_1

    goto :goto_2

    .line 4316
    :cond_1
    invoke-direct {p0, v3}, Lcom/miui/home/launcher/CellLayout;->addViewToCellLayout(Landroid/view/View;)V

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private addViewToCellLayout(Landroid/view/View;)V
    .locals 1

    .line 4225
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_0

    return-void

    .line 4228
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 4229
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4231
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-super {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private areTheTwoRegionsSame(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/CellLayout$Size;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/CellLayout$Size;",
            ">;)Z"
        }
    .end annotation

    .line 3763
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eq p0, v0, :cond_0

    return v1

    .line 3766
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move p2, v1

    .line 3767
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 3768
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private backupLayout()V
    .locals 2

    .line 2257
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCellBak:[[Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/CellLayout;->copyOccupiedCells([[Landroid/view/View;[[Landroid/view/View;)Z

    const/4 v0, 0x1

    .line 2258
    iput-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mLayoutBackupValid:Z

    return-void
.end method

.method private calCellXRange(I)V
    .locals 4

    .line 917
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellXIterateRange:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    sub-int/2addr v3, v2

    :goto_0
    aput v3, v0, v1

    if-ne p1, v2, :cond_1

    .line 918
    iget p0, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    add-int/lit8 v1, p0, -0x1

    :cond_1
    aput v1, v0, v2

    return-void
.end method

.method private calFirstIconPos(I)V
    .locals 5

    .line 3423
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mFirstPos:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    sub-int/2addr p1, v2

    :goto_0
    aput p1, v0, v1

    .line 3424
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/miui/home/launcher/Workspace;->isDefaultScreen(J)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3425
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mFirstPos:[I

    aput v1, p0, v2

    return-void

    .line 3428
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mFirstPos:[I

    aput v1, p1, v2

    move p1, v1

    .line 3429
    :goto_1
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge p1, v0, :cond_5

    move v0, v1

    .line 3430
    :goto_2
    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v0, v3, :cond_4

    .line 3431
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v3, v3, v0

    aget-object v3, v3, p1

    if-nez v3, :cond_2

    goto :goto_3

    .line 3433
    :cond_2
    invoke-direct {p0, v3}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v3

    .line 3434
    iget v4, v3, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    if-ne v4, v2, :cond_3

    iget v3, v3, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-ne v3, v2, :cond_3

    .line 3435
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mFirstPos:[I

    aput p1, p0, v2

    return-void

    .line 3438
    :cond_3
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mFirstPos:[I

    add-int/lit8 v4, p1, 0x2

    aput v4, v3, v2

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private calNextDstPos(I)V
    .locals 4

    .line 3388
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mDstPos:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    add-int/2addr v2, p1

    aput v2, v0, v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    .line 3389
    aget v3, v0, v1

    if-gez v3, :cond_0

    .line 3390
    iget p0, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    sub-int/2addr p0, v2

    aput p0, v0, v1

    .line 3391
    aget p0, v0, v2

    add-int/2addr p0, v2

    aput p0, v0, v2

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    .line 3392
    aget p1, v0, v1

    iget p0, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-lt p1, p0, :cond_1

    .line 3393
    aput v1, v0, v1

    .line 3394
    aget p0, v0, v2

    add-int/2addr p0, v2

    aput p0, v0, v2

    :cond_1
    :goto_0
    return-void
.end method

.method private calculatePushDistance(Lcom/miui/home/launcher/CellLayout$ItemArea;Landroid/graphics/Rect;I)I
    .locals 2

    .line 1959
    iget p0, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellX:I

    .line 1960
    iget v0, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellY:I

    .line 1961
    iget v1, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mSpanX:I

    .line 1962
    iget p1, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mSpanY:I

    if-nez p3, :cond_0

    add-int/2addr p0, v1

    .line 1965
    iget p1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    .line 1967
    iget p1, p2, Landroid/graphics/Rect;->right:I

    sub-int p0, p1, p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    if-ne p3, p0, :cond_2

    add-int/2addr v0, p1

    .line 1969
    iget p0, p2, Landroid/graphics/Rect;->top:I

    sub-int p0, v0, p0

    goto :goto_0

    .line 1971
    :cond_2
    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v0

    :goto_0
    return p0
.end method

.method private static calculateX(IIII)I
    .locals 0

    add-int/2addr p2, p3

    mul-int/2addr p0, p2

    add-int/2addr p1, p0

    return p1
.end method

.method private static calculateY(IIIIII)I
    .locals 0

    if-ge p4, p5, :cond_0

    move p4, p5

    :cond_0
    add-int/2addr p1, p2

    add-int/2addr p3, p4

    sub-int/2addr p3, p5

    mul-int/2addr p0, p3

    add-int/2addr p1, p0

    return p1
.end method

.method private cellToPositionIndex(II)I
    .locals 1

    .line 3111
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    :cond_0
    iget p0, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    mul-int/2addr p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method private cellToPositionIndexIgnoreRTL(II)I
    .locals 0

    .line 3115
    iget p0, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    mul-int/2addr p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method private checkEmptyAreaSize(IIII)Z
    .locals 4

    mul-int/2addr p3, p4

    const/4 p1, 0x0

    move p2, p1

    move p4, p2

    .line 1696
    :goto_0
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mTotalCells:I

    const/4 v1, 0x1

    if-ge p2, v0, :cond_1

    .line 1697
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    invoke-virtual {p0, p2, v0}, Lcom/miui/home/launcher/CellLayout;->positionIndexToCell(I[I)V

    .line 1698
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    aget v3, v2, p1

    aget-object v0, v0, v3

    aget v1, v2, v1

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    add-int/lit8 p4, p4, 0x1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    if-ge p4, p3, :cond_2

    return p1

    :cond_2
    return v1
.end method

.method private clearGridCells()V
    .locals 3

    const/4 v0, 0x1

    .line 2516
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/CellLayout;->clearGridCells(Z)V

    .line 2517
    new-instance v0, Lcom/miui/home/launcher/CellLayout$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/CellLayout$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/CellLayout;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private clearGridCells(Z)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 2522
    :goto_0
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v1, v2, :cond_4

    move v2, v0

    .line 2523
    :goto_1
    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v2, v3, :cond_3

    .line 2524
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mGridCell:[[Lcom/miui/home/launcher/GridCell;

    aget-object v4, v3, v2

    aget-object v4, v4, v1

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_1

    .line 2528
    aget-object v3, v3, v2

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/miui/home/launcher/GridCell;->setHide()V

    goto :goto_2

    .line 2529
    :cond_1
    aget-object v3, v3, v2

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/miui/home/launcher/GridCell;->isHide()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2530
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mGridCell:[[Lcom/miui/home/launcher/GridCell;

    aget-object v3, v3, v2

    const/4 v4, 0x0

    aput-object v4, v3, v1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private copyOccupiedCells([[Landroid/view/View;[[Landroid/view/View;)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 2264
    :goto_0
    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v1, v3, :cond_2

    move v3, v0

    .line 2265
    :goto_1
    iget v4, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v3, v4, :cond_1

    .line 2266
    aget-object v4, p2, v3

    aget-object v4, v4, v1

    aget-object v5, p1, v3

    aget-object v5, v5, v1

    if-eq v4, v5, :cond_0

    .line 2267
    aget-object v2, p2, v3

    aget-object v4, p1, v3

    aget-object v4, v4, v1

    aput-object v4, v2, v1

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private createNewAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)Landroid/view/View;
    .locals 9

    .line 4436
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isRestore()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->needPending:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->removePending:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 4439
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppWidgetManager()Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iget v2, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v7

    if-nez v7, :cond_1

    return-object v1

    .line 4443
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppWidgetHost()Lcom/miui/home/launcher/LauncherAppWidgetHost;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget v5, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    const/4 v8, 0x0

    move-object v6, p1

    invoke-virtual/range {v3 .. v8}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->createLauncherWidgetView(Landroid/content/Context;ILcom/miui/home/launcher/LauncherAppWidgetInfo;Landroid/appwidget/AppWidgetProviderInfo;Z)Lcom/miui/home/launcher/LauncherWidgetView;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method private createNewGadget(Landroid/view/View;Lcom/miui/home/launcher/gadget/GadgetInfo;)Landroid/view/View;
    .locals 5

    .line 4448
    instance-of v0, p1, Lcom/miui/home/launcher/LauncherMtzGadgetView;

    if-eqz v0, :cond_0

    .line 4449
    check-cast p1, Lcom/miui/home/launcher/LauncherMtzGadgetView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherMtzGadgetView;->getGadget()Lcom/miui/home/launcher/gadget/Gadget;

    move-result-object p1

    .line 4450
    instance-of v0, p1, Lcom/miui/home/launcher/gadget/MtzGadget;

    if-eqz v0, :cond_0

    .line 4451
    check-cast p1, Lcom/miui/home/launcher/gadget/MtzGadget;

    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/MtzGadget;->clearCache()V

    .line 4454
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/miui/home/launcher/gadget/GadgetFactory;->createGadget(Landroid/content/Context;Lcom/miui/home/launcher/gadget/GadgetInfo;)Lcom/miui/home/launcher/gadget/Gadget;

    move-result-object p1

    .line 4456
    invoke-virtual {p2}, Lcom/miui/home/launcher/gadget/GadgetInfo;->isMtzGadget()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4457
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0098

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherMtzGadgetView;

    .line 4458
    invoke-virtual {p2}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4459
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/LauncherMtzGadgetView;->setGadget(Lcom/miui/home/launcher/gadget/Gadget;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 4462
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/Gadget;->onAdded()V

    .line 4463
    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/Gadget;->onCreate()V

    .line 4464
    iget-object p2, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v3

    cmp-long p0, v1, v3

    if-nez p0, :cond_2

    .line 4465
    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    :cond_2
    return-object v0
.end method

.method private createNewMaml(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Landroid/view/View;
    .locals 4

    .line 4428
    invoke-static {p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->from(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Lcom/miui/home/launcher/maml/MaMlWidgetView;

    move-result-object p1

    .line 4429
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v0

    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    .line 4430
    invoke-virtual {p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->onResume()V

    :cond_0
    return-object p1
.end method

.method private createNewServiceDelivery(Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;)Landroid/view/View;
    .locals 0

    .line 4471
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getServiceDeliveryWidgetDelegate()Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate;

    move-result-object p0

    .line 4472
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate;->createWidget(Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;)Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;

    move-result-object p0

    .line 4473
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->setTag(Ljava/lang/Object;)V

    return-object p0
.end method

.method private debugIcon(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private drawCellGrid(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 4085
    :goto_0
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v1, v2, :cond_3

    move v2, v0

    .line 4086
    :goto_1
    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v2, v3, :cond_2

    .line 4087
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mGridCell:[[Lcom/miui/home/launcher/GridCell;

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    .line 4088
    iget-boolean v4, p0, Lcom/miui/home/launcher/CellLayout;->mIsDrawingInThumbnailView:Z

    if-eqz v4, :cond_0

    .line 4089
    invoke-virtual {v3}, Lcom/miui/home/launcher/GridCell;->isHovered()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4090
    :cond_0
    invoke-virtual {v3, p1}, Lcom/miui/home/launcher/GridCell;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private fastClearCellBackgroundGridCells()V
    .locals 5

    .line 2612
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    .line 2613
    iget v1, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    iget v1, v0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    if-eq v1, v2, :cond_4

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->isOccupiedCellMoreThan1x1()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/miui/home/launcher/CellLayout;->mAllowFastClearCellBackgroundGridCells:Z

    if-nez v1, :cond_0

    goto :goto_3

    .line 2617
    :cond_0
    iget v1, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v2, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    :goto_0
    iget v2, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    if-lt v1, v2, :cond_4

    .line 2618
    iget v2, v0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget v3, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    :goto_1
    iget v3, v0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    if-lt v2, v3, :cond_3

    .line 2619
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mGridCell:[[Lcom/miui/home/launcher/GridCell;

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-gt v1, v4, :cond_2

    const/4 v4, 0x0

    aget-object v4, v3, v4

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-le v2, v4, :cond_1

    goto :goto_2

    .line 2622
    :cond_1
    aget-object v3, v3, v1

    const/4 v4, 0x0

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    :goto_3
    return-void
.end method

.method private findNewWidgetFromCache(Landroid/view/View;Ljava/util/ArrayList;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    .line 4401
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4405
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 4406
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 4408
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/miui/home/launcher/CellLayout;->updateInfoHostView(Landroid/view/View;Ljava/lang/Object;)V

    move-object v0, v1

    .line 4412
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide p1

    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v1

    cmp-long p0, p1, v1

    if-nez p0, :cond_5

    .line 4413
    instance-of p0, v0, Lcom/miui/home/launcher/maml/MaMlWidgetView;

    if-eqz p0, :cond_3

    .line 4414
    move-object p0, v0

    check-cast p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->onResume()V

    .line 4416
    :cond_3
    instance-of p0, v0, Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz p0, :cond_4

    .line 4417
    move-object p0, v0

    check-cast p0, Lcom/miui/home/launcher/gadget/Gadget;

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    .line 4419
    :cond_4
    instance-of p0, v0, Lcom/miui/home/launcher/LauncherMtzGadgetView;

    if-eqz p0, :cond_5

    move-object p0, v0

    check-cast p0, Lcom/miui/home/launcher/LauncherMtzGadgetView;

    .line 4420
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherMtzGadgetView;->getGadget()Lcom/miui/home/launcher/gadget/Gadget;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 4421
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherMtzGadgetView;->getGadget()Lcom/miui/home/launcher/gadget/Gadget;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    :cond_5
    :goto_0
    return-object v0
.end method

.method private findTheFarthestEmptyCell(ZII)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1653
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-eqz p1, :cond_0

    .line 1654
    iget v4, p0, Lcom/miui/home/launcher/CellLayout;->mTotalCells:I

    if-ge p2, v4, :cond_4

    goto :goto_1

    :cond_0
    if-ltz p2, :cond_4

    .line 1655
    :goto_1
    invoke-direct {p0, p2, v0}, Lcom/miui/home/launcher/CellLayout;->positionIndexToCellIgnoreRTL(I[I)V

    .line 1656
    iget-object v4, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget v5, v0, v1

    aget-object v4, v4, v5

    const/4 v5, 0x1

    aget v5, v0, v5

    aget-object v4, v4, v5

    if-nez v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    if-ne v2, p3, :cond_1

    goto :goto_2

    :cond_1
    move v3, p2

    :cond_2
    if-eqz p1, :cond_3

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_4
    move p2, v3

    .line 1663
    :goto_2
    new-instance p0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private findViewsTouchEdge(Landroid/view/View;ILjava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 2048
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p2, :cond_9

    if-eq p2, v0, :cond_6

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto/16 :goto_4

    .line 2078
    :cond_0
    iget p2, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    add-int/2addr p2, v0

    .line 2079
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-lt p2, v0, :cond_1

    return-void

    .line 2080
    :cond_1
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    :goto_0
    iget v1, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v2, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_c

    .line 2081
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v2, v1, v0

    aget-object v2, v2, p2

    if-eqz v2, :cond_2

    aget-object v1, v1, v0

    aget-object v1, v1, p2

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2082
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v1, v1, v0

    aget-object v1, v1, p2

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2060
    :cond_3
    iget p2, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    add-int/2addr p2, v0

    .line 2061
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-lt p2, v0, :cond_4

    return-void

    .line 2062
    :cond_4
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    :goto_1
    iget v1, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget v2, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_c

    .line 2063
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v2, v1, p2

    aget-object v2, v2, v0

    if-eqz v2, :cond_5

    aget-object v1, v1, p2

    aget-object v1, v1, v0

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2064
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v1, v1, p2

    aget-object v1, v1, v0

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2069
    :cond_6
    iget p2, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    sub-int/2addr p2, v0

    if-gez p2, :cond_7

    return-void

    .line 2071
    :cond_7
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    :goto_2
    iget v1, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v2, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_c

    .line 2072
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v2, v1, v0

    aget-object v2, v2, p2

    if-eqz v2, :cond_8

    aget-object v1, v1, v0

    aget-object v1, v1, p2

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 2073
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v1, v1, v0

    aget-object v1, v1, p2

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2051
    :cond_9
    iget p2, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    sub-int/2addr p2, v0

    if-gez p2, :cond_a

    return-void

    .line 2053
    :cond_a
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    :goto_3
    iget v1, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget v2, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_c

    .line 2054
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v2, v1, p2

    aget-object v2, v2, v0

    if-eqz v2, :cond_b

    aget-object v1, v1, p2

    aget-object v1, v1, v0

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 2055
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v1, v1, p2

    aget-object v1, v1, v0

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_c
    :goto_4
    return-void
.end method

.method private getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;
    .locals 0

    .line 264
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/ItemInfo;

    return-object p0
.end method

.method private getEffectedArea(Lcom/miui/home/launcher/CellLayout$ItemArea;)Lcom/miui/home/launcher/CellLayout$ItemArea;
    .locals 7

    .line 1805
    new-instance v6, Lcom/miui/home/launcher/CellLayout$ItemArea;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/CellLayout$ItemArea;-><init>(Lcom/miui/home/launcher/CellLayout;IIII)V

    .line 1806
    new-instance v0, Lcom/miui/home/launcher/CellLayout$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, v6}, Lcom/miui/home/launcher/CellLayout$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/CellLayout$ItemArea;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellLayout$ItemArea;->iterateAllViewsInArea(Ljava/util/function/Consumer;)V

    return-object v6
.end method

.method private getFirstPersonView()Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    .line 3906
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 3907
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3908
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v3

    .line 3909
    instance-of v4, v3, Lcom/miui/home/launcher/FolderInfo;

    if-nez v4, :cond_0

    sget-object v4, Lcom/miui/home/launcher/allapps/AllAppsStore;->WORK_MATHER:Lcom/miui/home/launcher/util/ItemInfoMatcher;

    invoke-virtual {v4, v3, v2}, Lcom/miui/home/launcher/util/ItemInfoMatcher;->matches(Lcom/miui/home/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private getHeightGapDelta()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private getMaxIndex()I
    .locals 1

    .line 1049
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    iget p0, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    mul-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private getNoPositionWidgets(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/CellLayout$Widget;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/CellLayout$Widget;",
            ">;"
        }
    .end annotation

    .line 3709
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 3710
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3711
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/CellLayout$Widget;

    .line 3712
    iget-boolean v2, v1, Lcom/miui/home/launcher/CellLayout$Widget;->mAlreadyPut:Z

    if-nez v2, :cond_0

    .line 3713
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private getOriginalSpanXY(IILandroid/view/View;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/view/View;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    move v2, p2

    move v1, v0

    .line 4274
    :goto_0
    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v2, v3, :cond_1

    move v3, p1

    .line 4275
    :goto_1
    iget v4, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v3, v4, :cond_0

    .line 4276
    iget-object v4, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v4, v4, v3

    aget-object v4, v4, v2

    if-ne v4, p3, :cond_0

    sub-int v0, v3, p1

    add-int/lit8 v0, v0, 0x1

    sub-int v1, v2, p2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4284
    :cond_1
    new-instance p0, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private getPushDirections()[I
    .locals 1

    .line 1780
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget p0, p0, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    const/4 v0, 0x4

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-array p0, v0, [I

    .line 1798
    fill-array-data p0, :array_0

    goto :goto_0

    :pswitch_1
    new-array p0, v0, [I

    .line 1783
    fill-array-data p0, :array_1

    goto :goto_0

    :pswitch_2
    new-array p0, v0, [I

    .line 1791
    fill-array-data p0, :array_2

    goto :goto_0

    :pswitch_3
    new-array p0, v0, [I

    .line 1795
    fill-array-data p0, :array_3

    goto :goto_0

    :pswitch_4
    new-array p0, v0, [I

    .line 1787
    fill-array-data p0, :array_4

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :array_0
    .array-data 4
        0x1
        0x3
        0x0
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x3
        0x0
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x1
        0x0
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x2
        0x3
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x2
        0x0
        0x3
        0x1
    .end array-data
.end method

.method private getRectsFromRegion(Landroid/graphics/Region;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Region;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/CellLayout$Size;",
            ">;"
        }
    .end annotation

    .line 3751
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 3752
    new-instance v0, Landroid/graphics/RegionIterator;

    invoke-direct {v0, p1}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    .line 3753
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 3754
    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3755
    new-instance v1, Lcom/miui/home/launcher/CellLayout$Size;

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Lcom/miui/home/launcher/CellLayout$Size;-><init>(II)V

    .line 3756
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private handleAllEditables(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/miui/home/launcher/interfaces/IEditable;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 392
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 393
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/interfaces/IEditable;

    if-eqz v1, :cond_0

    .line 394
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/interfaces/IEditable;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleAllShortcuts(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/miui/home/launcher/ShortcutIcon;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 384
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 385
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v1, :cond_0

    .line 386
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private hasEmptyCellBeforeTargetIndex(I)Z
    .locals 2

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    :goto_0
    if-ltz p1, :cond_1

    .line 1580
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->isCellVacant(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private includeView(Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 4322
    :goto_0
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v1, v2, :cond_2

    move v2, v0

    .line 4323
    :goto_1
    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v2, v3, :cond_1

    .line 4324
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v3, v3, v2

    aget-object v3, v3, v1

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private initFolderCreationBg(Landroid/content/Context;)V
    .locals 3

    .line 244
    new-instance v0, Lcom/miui/home/launcher/FolderCreationBg;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/FolderCreationBg;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mFolderCreationBg:Lcom/miui/home/launcher/FolderCreationBg;

    .line 245
    new-instance p1, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    invoke-direct {p1}, Lcom/miui/home/launcher/CellLayout$LayoutParams;-><init>()V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mFolderCreationBg:Lcom/miui/home/launcher/FolderCreationBg;

    new-instance v0, Lcom/miui/home/launcher/ItemInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v1, v2, v2}, Lcom/miui/home/launcher/ItemInfo;-><init>(IIII)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 247
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mFolderCreationBg:Lcom/miui/home/launcher/FolderCreationBg;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mFolderCreationBg:Lcom/miui/home/launcher/FolderCreationBg;

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private isCellCreatingForFolder([I)Z
    .locals 4

    .line 3097
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mFolderCreationBg:Lcom/miui/home/launcher/FolderCreationBg;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    .line 3098
    iget v0, p0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    const/4 v1, 0x0

    aget v2, p1, v1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    aget p1, p1, v3

    if-ne p0, p1, :cond_0

    move v1, v3

    :cond_0
    return v1
.end method

.method private isCellOccupiedByBackground(II)Z
    .locals 3

    .line 819
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    .line 821
    iget v0, p0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    if-lt p1, v0, :cond_0

    iget v2, p0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    add-int/2addr v0, v2

    if-ge p1, v0, :cond_0

    iget p1, p0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    if-lt p2, p1, :cond_0

    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    add-int/2addr p1, p0

    if-ge p2, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isCellVacant(I)Z
    .locals 2

    .line 1588
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mTmpXY:[I

    .line 1589
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/CellLayout;->positionIndexToCell(I[I)V

    .line 1590
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    const/4 p1, 0x0

    aget v1, v0, p1

    aget-object p0, p0, v1

    const/4 v1, 0x1

    aget v0, v0, v1

    aget-object p0, p0, v0

    if-nez p0, :cond_0

    move p1, v1

    :cond_0
    return p1
.end method

.method private isFailedLayout(Ljava/util/ArrayList;Landroid/graphics/Region;Ljava/util/HashMap;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/CellLayout$Widget;",
            ">;",
            "Landroid/graphics/Region;",
            "Ljava/util/HashMap<",
            "Landroid/graphics/Region;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/CellLayout$Widget;",
            ">;>;)Z"
        }
    .end annotation

    .line 3721
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3722
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/CellLayout;->getRectsFromRegion(Landroid/graphics/Region;)Ljava/util/ArrayList;

    move-result-object p2

    .line 3724
    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3725
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Region;

    .line 3726
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/CellLayout;->getRectsFromRegion(Landroid/graphics/Region;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3727
    invoke-direct {p0, p2, v2}, Lcom/miui/home/launcher/CellLayout;->areTheTwoRegionsSame(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3728
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3732
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    return p3

    .line 3735
    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->getNoPositionWidgets(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    .line 3736
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    return p3

    .line 3739
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-eq p1, p2, :cond_4

    return p3

    :cond_4
    move p1, p3

    .line 3742
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_6

    .line 3743
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    return p3

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method private isItemPosEmpty(II)Z
    .locals 1

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 2156
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge p2, v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object p0, p0, p1

    aget-object p0, p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isOccupiedMoreThan1X1(Landroid/view/View;)Z
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    .line 1474
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v0, :cond_1

    .line 1475
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ItemInfo;

    .line 1476
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    if-le p1, v1, :cond_1

    :cond_0
    move p0, v1

    :cond_1
    return p0
.end method

.method private isScreenType(I)Z
    .locals 0

    .line 337
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenType()I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isViewInAutoLayoutAnimating(Landroid/view/View;)Z
    .locals 0

    .line 3018
    instance-of p0, p1, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    if-eqz p0, :cond_0

    .line 3019
    check-cast p1, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    invoke-interface {p1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->isAutoLayoutAnimating()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$clearGridCells$6()V
    .locals 1

    const/4 v0, 0x0

    .line 2517
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/CellLayout;->clearGridCells(Z)V

    return-void
.end method

.method private synthetic lambda$getEffectedArea$4(Lcom/miui/home/launcher/CellLayout$ItemArea;Landroid/view/View;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 1808
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    .line 1809
    iget p2, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellX:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1810
    iget p2, p0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iput p2, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellX:I

    .line 1811
    iget p2, p0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iput p2, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellY:I

    .line 1812
    iget p2, p0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iput p2, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mSpanX:I

    .line 1813
    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    iput p0, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mSpanY:I

    return-void

    .line 1816
    :cond_0
    iget v0, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mSpanX:I

    add-int/2addr p2, v0

    iget v0, p0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v1, p0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    add-int/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget v0, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellX:I

    iget v1, p0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 1817
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr p2, v0

    iput p2, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mSpanX:I

    .line 1818
    iget p2, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellY:I

    iget v0, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mSpanY:I

    add-int/2addr p2, v0

    iget v0, p0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget v1, p0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    add-int/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget v0, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellY:I

    iget v1, p0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 1819
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr p2, v0

    iput p2, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mSpanY:I

    .line 1820
    iget p2, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellX:I

    iget v0, p0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellX:I

    .line 1821
    iget p2, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellY:I

    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    iput p0, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellY:I

    :cond_1
    return-void
.end method

.method private synthetic lambda$moveEffectedArea$5(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1856
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1857
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 1858
    invoke-virtual {p0, p2, p1}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$predictWidgetCanBeAdded$8(Lcom/miui/home/launcher/CellLayout$Widget;Lcom/miui/home/launcher/CellLayout$Widget;)I
    .locals 6

    .line 3657
    iget v0, p0, Lcom/miui/home/launcher/CellLayout$Widget;->mSpanX:I

    iget p0, p0, Lcom/miui/home/launcher/CellLayout$Widget;->mSpanY:I

    mul-int v1, v0, p0

    .line 3658
    iget v2, p1, Lcom/miui/home/launcher/CellLayout$Widget;->mSpanX:I

    iget p1, p1, Lcom/miui/home/launcher/CellLayout$Widget;->mSpanY:I

    mul-int v3, v2, p1

    const/4 v4, -0x1

    if-le v1, v3, :cond_0

    return v4

    :cond_0
    const/4 v5, 0x1

    if-ge v1, v3, :cond_1

    return v5

    :cond_1
    if-le v0, v2, :cond_2

    return v4

    :cond_2
    if-ge v0, v2, :cond_3

    return v5

    .line 3671
    :cond_3
    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$pushItemsInDistance$3(IILandroid/view/View;)Z
    .locals 0

    if-eqz p3, :cond_0

    .line 1775
    invoke-direct {p0, p3, p1, p2}, Lcom/miui/home/launcher/CellLayout;->pushViewInDistance(Landroid/view/View;II)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$quickShowOrHideAllShortcutsCheckBox$2(ZLcom/miui/home/launcher/ShortcutIcon;)V
    .locals 0

    .line 366
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/ShortcutIcon;->quickHideOrShowCheckbox(Z)V

    return-void
.end method

.method private synthetic lambda$schedulerUpdateGridCells$7()V
    .locals 8

    .line 2583
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez v0, :cond_0

    return-void

    .line 2586
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 2590
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 2591
    iput-boolean v3, p0, Lcom/miui/home/launcher/CellLayout;->mGridCellUpdateScheduled:Z

    .line 2592
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/miui/home/launcher/Workspace;->isInDefaultScreenList(J)Z

    move-result v0

    .line 2593
    iget-object v4, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->isFinishLoading()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFirstScreenLoaded()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v3, 0x1

    .line 2594
    :cond_3
    iget-wide v4, p0, Lcom/miui/home/launcher/CellLayout;->mLastGridCellsUpdateTime:J

    sub-long v4, v1, v4

    const-wide/16 v6, 0x10

    cmp-long v0, v4, v6

    if-ltz v0, :cond_6

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInLayout()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->isChildrenLaidOut()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 2598
    :cond_4
    iput-wide v1, p0, Lcom/miui/home/launcher/CellLayout;->mLastGridCellsUpdateTime:J

    .line 2599
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->misEditing:Z

    if-eqz v0, :cond_5

    .line 2600
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->setupGridCells()V

    goto :goto_0

    .line 2602
    :cond_5
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->clearGridCells()V

    :goto_0
    return-void

    .line 2595
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFinishLoading()Z

    move-result v0

    if-eqz v0, :cond_7

    const-wide/16 v0, 0x8

    goto :goto_2

    :cond_7
    const-wide/16 v0, 0x3c

    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/CellLayout;->schedulerUpdateGridCells(J)V

    return-void
.end method

.method private static synthetic lambda$setChildEditMode$0(ZLcom/miui/home/launcher/interfaces/IEditable;)V
    .locals 1

    const/4 v0, 0x0

    .line 352
    invoke-interface {p1, p0, v0}, Lcom/miui/home/launcher/interfaces/IEditable;->setEditMode(ZZ)V

    return-void
.end method

.method private static synthetic lambda$setChildEditMode$1(ZLcom/miui/home/launcher/interfaces/IEditable;)V
    .locals 1

    const/4 v0, 0x1

    .line 354
    invoke-interface {p1, p0, v0}, Lcom/miui/home/launcher/interfaces/IEditable;->setEditMode(ZZ)V

    return-void
.end method

.method private loadGridConfig(IIZ)V
    .locals 5

    .line 268
    iput p1, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    .line 269
    iput p2, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    .line 270
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    array-length v4, v0

    if-ne v4, p1, :cond_0

    aget-object v0, v0, v2

    array-length v0, v0

    if-eq v0, p2, :cond_1

    :cond_0
    new-array v0, v1, [I

    aput p2, v0, v3

    aput p1, v0, v2

    .line 272
    const-class p1, Landroid/view/View;

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Landroid/view/View;

    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    .line 273
    iget p1, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    iget p2, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    new-array v0, v1, [I

    aput p2, v0, v3

    aput p1, v0, v2

    const-class p1, Lcom/miui/home/launcher/GridCell;

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Lcom/miui/home/launcher/GridCell;

    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mGridCell:[[Lcom/miui/home/launcher/GridCell;

    .line 275
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    .line 276
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/CellLayout;->mCellHeight:I

    .line 278
    iget p1, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    iget p2, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    new-array v0, v1, [I

    aput p2, v0, v3

    aput p1, v0, v2

    const-class p1, Landroid/view/View;

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Landroid/view/View;

    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCellBak:[[Landroid/view/View;

    .line 279
    iget p1, p0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    int-to-float p1, p1

    const/high16 p2, 0x3e800000    # 0.25f

    mul-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/home/launcher/CellLayout;->mStayConfirmSize:I

    .line 280
    iget p1, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    iget p2, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    mul-int v0, p1, p2

    iput v0, p0, Lcom/miui/home/launcher/CellLayout;->mTotalCells:I

    .line 281
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mXs:[I

    .line 282
    new-array p1, p2, [I

    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mYs:[I

    .line 283
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v3

    :goto_0
    if-ltz p1, :cond_3

    .line 284
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 285
    instance-of v0, p2, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    if-eqz v0, :cond_2

    .line 286
    check-cast p2, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    invoke-interface {p2, v3}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setSkipNextAutoLayoutAnimation(Z)V

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 289
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->setAllLayoutValues(Z)V

    .line 290
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->updateCellContainerHeight()V

    if-eqz p3, :cond_4

    .line 292
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->requestLayout()V

    :cond_4
    return-void
.end method

.method private loadGridConfig(Z)V
    .locals 2

    .line 297
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/miui/home/launcher/CellLayout;->loadGridConfig(IIZ)V

    return-void
.end method

.method private makeEmptyCellsNoSpan(IIII)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p4, v0, :cond_0

    move p4, v0

    goto :goto_0

    :cond_0
    move p4, v1

    .line 1599
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/miui/home/launcher/CellLayout;->cellToPositionIndexIgnoreRTL(II)I

    move-result p2

    if-eqz p4, :cond_1

    add-int/lit8 p3, p2, -0x1

    goto :goto_1

    :cond_1
    move p3, p2

    :goto_1
    if-eqz p4, :cond_2

    move v2, p2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, p2, 0x1

    :goto_2
    if-eqz p4, :cond_6

    .line 1603
    iget-boolean p4, p0, Lcom/miui/home/launcher/CellLayout;->mIsNoVacantMode:Z

    if-eqz p4, :cond_4

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/CellLayout;->hasEmptyCellBeforeTargetIndex(I)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_3

    :cond_3
    move p2, v1

    move p4, p2

    goto :goto_4

    .line 1604
    :cond_4
    :goto_3
    invoke-direct {p0, v2, p1}, Lcom/miui/home/launcher/CellLayout;->searchRight(II)Landroid/util/Pair;

    move-result-object p2

    .line 1605
    iget-object p4, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    .line 1606
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_4
    if-ge p2, p1, :cond_5

    if-ltz p3, :cond_5

    .line 1609
    invoke-direct {p0, p3, p1}, Lcom/miui/home/launcher/CellLayout;->searchLeft(II)Landroid/util/Pair;

    move-result-object p1

    .line 1610
    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1611
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_5

    :cond_5
    move p1, v1

    move v3, p1

    goto :goto_5

    .line 1614
    :cond_6
    invoke-direct {p0, p3, p1}, Lcom/miui/home/launcher/CellLayout;->searchLeft(II)Landroid/util/Pair;

    move-result-object p4

    .line 1615
    iget-object v3, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1616
    iget-object p4, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-ge p4, p1, :cond_7

    .line 1617
    iget v4, p0, Lcom/miui/home/launcher/CellLayout;->mTotalCells:I

    if-gt v2, v4, :cond_7

    .line 1618
    invoke-direct {p0, p2, p1}, Lcom/miui/home/launcher/CellLayout;->searchRight(II)Landroid/util/Pair;

    move-result-object p1

    .line 1619
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1620
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    move v5, p2

    move p2, p1

    move p1, p4

    move p4, v5

    goto :goto_5

    :cond_7
    move p1, p4

    move p2, v1

    move p4, p2

    :goto_5
    if-lez p2, :cond_8

    .line 1625
    invoke-direct {p0, p4, v1, v2}, Lcom/miui/home/launcher/CellLayout;->squeezePosition(IZI)Z

    move-result p2

    or-int/2addr v1, p2

    :cond_8
    if-lez p1, :cond_9

    .line 1628
    invoke-direct {p0, v3, v0, p3}, Lcom/miui/home/launcher/CellLayout;->squeezePosition(IZI)Z

    move-result p1

    or-int/2addr v1, p1

    :cond_9
    if-eqz v1, :cond_a

    .line 1631
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performSqueezePosition(Landroid/view/View;)V

    .line 1633
    :cond_a
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->relayoutByOccupiedCells()V

    return-void
.end method

.method private makeEmptyCellsWithSpan(IIII)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    if-ltz v1, :cond_8

    if-ltz v2, :cond_8

    .line 1895
    invoke-direct/range {p0 .. p4}, Lcom/miui/home/launcher/CellLayout;->checkEmptyAreaSize(IIII)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_5

    .line 1898
    :cond_0
    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v1, v3

    add-int v7, v2, v4

    invoke-direct {v5, v1, v2, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1899
    new-instance v8, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9}, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;-><init>(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/CellLayout$1;)V

    .line 1900
    invoke-virtual {v0, v8}, Lcom/miui/home/launcher/CellLayout;->saveCurrentConfiguration(Lcom/miui/home/launcher/CellLayout$ViewConfiguration;)V

    .line 1902
    iget v9, v0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    iget v10, v0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    const/4 v11, 0x2

    new-array v12, v11, [I

    const/4 v13, 0x1

    aput v10, v12, v13

    const/4 v10, 0x0

    aput v9, v12, v10

    const-class v9, Landroid/view/View;

    invoke-static {v9, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[Landroid/view/View;

    .line 1903
    iget-object v12, v0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    invoke-direct {v0, v12, v9}, Lcom/miui/home/launcher/CellLayout;->copyOccupiedCells([[Landroid/view/View;[[Landroid/view/View;)Z

    .line 1904
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1905
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->getPushDirections()[I

    move-result-object v14

    move v15, v2

    :goto_0
    if-ge v15, v7, :cond_4

    move v11, v1

    :goto_1
    if-ge v11, v6, :cond_3

    .line 1908
    iget-object v13, v0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v13, v13, v11

    aget-object v13, v13, v15

    move/from16 v17, v6

    if-eqz v13, :cond_1

    .line 1911
    aget v6, v14, v10

    invoke-direct {v0, v13, v5, v6}, Lcom/miui/home/launcher/CellLayout;->pushView(Landroid/view/View;Landroid/graphics/Rect;I)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x1

    aget v10, v14, v6

    .line 1912
    invoke-direct {v0, v13, v5, v10}, Lcom/miui/home/launcher/CellLayout;->pushView(Landroid/view/View;Landroid/graphics/Rect;I)Z

    move-result v10

    if-nez v10, :cond_1

    const/4 v10, 0x3

    const/16 v16, 0x2

    aget v6, v14, v16

    .line 1913
    invoke-direct {v0, v13, v5, v6}, Lcom/miui/home/launcher/CellLayout;->pushView(Landroid/view/View;Landroid/graphics/Rect;I)Z

    move-result v6

    if-nez v6, :cond_2

    aget v6, v14, v10

    .line 1914
    invoke-direct {v0, v13, v5, v6}, Lcom/miui/home/launcher/CellLayout;->pushView(Landroid/view/View;Landroid/graphics/Rect;I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1916
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    .line 1917
    invoke-virtual {v0, v13, v6}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Z)V

    goto :goto_2

    :cond_1
    const/16 v16, 0x2

    :cond_2
    :goto_2
    add-int/lit8 v11, v11, 0x1

    move/from16 v6, v17

    const/4 v10, 0x0

    const/4 v13, 0x1

    goto :goto_1

    :cond_3
    move/from16 v17, v6

    const/16 v16, 0x2

    add-int/lit8 v15, v15, 0x1

    move/from16 v11, v16

    const/4 v10, 0x0

    const/4 v13, 0x1

    goto :goto_0

    .line 1923
    :cond_4
    new-instance v5, Lcom/miui/home/launcher/ItemInfo;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/miui/home/launcher/ItemInfo;-><init>(IIII)V

    .line 1924
    iget-object v6, v0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    const/4 v7, 0x0

    const/4 v10, 0x1

    invoke-virtual {v0, v6, v5, v7, v10}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Lcom/miui/home/launcher/ItemInfo;ZZ)V

    .line 1926
    iget-object v6, v8, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;->comparator:Lcom/miui/home/launcher/CellLayout$ViewConfiguration$SpanComparator;

    .line 1927
    iput v7, v6, Lcom/miui/home/launcher/CellLayout$ViewConfiguration$SpanComparator;->whichDirection:I

    .line 1928
    invoke-static {v12, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1929
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 1930
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 1931
    invoke-direct {v0, v7}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v10

    .line 1932
    iget v11, v10, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v12, v10, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget v13, v10, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v14, v10, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-virtual {v0, v11, v12, v13, v14}, Lcom/miui/home/launcher/CellLayout;->findNearestVacantAreaByCellPos(IIII)[I

    move-result-object v11

    if-eqz v11, :cond_5

    const/4 v12, 0x1

    .line 1934
    invoke-virtual {v0, v7, v12}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Z)V

    const/4 v13, 0x0

    .line 1935
    aget v14, v11, v13

    iput v14, v10, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 1936
    aget v11, v11, v12

    iput v11, v10, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 1937
    invoke-virtual {v0, v7, v13}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Z)V

    goto :goto_3

    :cond_5
    const/4 v13, 0x0

    .line 1940
    iget-object v6, v0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    invoke-direct {v0, v9, v6}, Lcom/miui/home/launcher/CellLayout;->copyOccupiedCells([[Landroid/view/View;[[Landroid/view/View;)Z

    .line 1941
    invoke-virtual {v8}, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;->resetViewConfig()V

    move v10, v13

    goto :goto_4

    :cond_6
    const/4 v10, 0x1

    :goto_4
    if-eqz v10, :cond_7

    .line 1949
    iget-object v6, v0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v5, v7, v7}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Lcom/miui/home/launcher/ItemInfo;ZZ)V

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v8

    .line 1955
    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/CellLayout;->onSuccessMoved(IIIILcom/miui/home/launcher/CellLayout$ViewConfiguration;)V

    return-void

    .line 1951
    :cond_7
    iget-object v1, v0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    invoke-direct {v0, v9, v1}, Lcom/miui/home/launcher/CellLayout;->copyOccupiedCells([[Landroid/view/View;[[Landroid/view/View;)Z

    .line 1952
    invoke-virtual {v8}, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;->resetViewConfig()V

    :cond_8
    :goto_5
    return-void
.end method

.method private makeEmptyCellsWithSpanForInnerItem(IIII)V
    .locals 10

    .line 1828
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v6, 0x0

    aput v0, v2, v6

    const-class v0, Landroid/view/View;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [[Landroid/view/View;

    .line 1829
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    invoke-direct {p0, v0, v7}, Lcom/miui/home/launcher/CellLayout;->copyOccupiedCells([[Landroid/view/View;[[Landroid/view/View;)Z

    .line 1830
    new-instance v8, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;

    const/4 v0, 0x0

    invoke-direct {v8, p0, v0}, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;-><init>(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/CellLayout$1;)V

    .line 1831
    invoke-virtual {p0, v8}, Lcom/miui/home/launcher/CellLayout;->saveCurrentConfiguration(Lcom/miui/home/launcher/CellLayout$ViewConfiguration;)V

    .line 1833
    new-instance v9, Lcom/miui/home/launcher/CellLayout$ItemArea;

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/CellLayout$ItemArea;-><init>(Lcom/miui/home/launcher/CellLayout;IIII)V

    .line 1834
    invoke-direct {p0, v9}, Lcom/miui/home/launcher/CellLayout;->getEffectedArea(Lcom/miui/home/launcher/CellLayout$ItemArea;)Lcom/miui/home/launcher/CellLayout$ItemArea;

    move-result-object v0

    .line 1836
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->getPushDirections()[I

    move-result-object v1

    .line 1837
    :goto_0
    array-length v2, v1

    if-ge v6, v2, :cond_1

    .line 1838
    aget v2, v1, v6

    invoke-direct {p0, v9, v0, v2}, Lcom/miui/home/launcher/CellLayout;->pushItemsInDistance(Lcom/miui/home/launcher/CellLayout$ItemArea;Lcom/miui/home/launcher/CellLayout$ItemArea;I)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v8

    .line 1839
    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/CellLayout;->onSuccessMoved(IIIILcom/miui/home/launcher/CellLayout$ViewConfiguration;)V

    return-void

    .line 1842
    :cond_0
    invoke-direct {p0, v7, v8}, Lcom/miui/home/launcher/CellLayout;->resetAllItems([[Landroid/view/View;Lcom/miui/home/launcher/CellLayout$ViewConfiguration;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1846
    :cond_1
    invoke-direct {p0, v0, v9}, Lcom/miui/home/launcher/CellLayout;->moveEffectedArea(Lcom/miui/home/launcher/CellLayout$ItemArea;Lcom/miui/home/launcher/CellLayout$ItemArea;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v8

    .line 1847
    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/CellLayout;->onSuccessMoved(IIIILcom/miui/home/launcher/CellLayout$ViewConfiguration;)V

    goto :goto_1

    .line 1849
    :cond_2
    invoke-direct {p0, v7, v8}, Lcom/miui/home/launcher/CellLayout;->resetAllItems([[Landroid/view/View;Lcom/miui/home/launcher/CellLayout$ViewConfiguration;)V

    :goto_1
    return-void
.end method

.method private moveEffectedArea(Lcom/miui/home/launcher/CellLayout$ItemArea;Lcom/miui/home/launcher/CellLayout$ItemArea;)Z
    .locals 12

    .line 1854
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1855
    new-instance v1, Lcom/miui/home/launcher/CellLayout$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/CellLayout$$ExternalSyntheticLambda4;-><init>(Lcom/miui/home/launcher/CellLayout;Ljava/util/ArrayList;)V

    invoke-virtual {p2, v1}, Lcom/miui/home/launcher/CellLayout$ItemArea;->iterateAllViewsInArea(Ljava/util/function/Consumer;)V

    .line 1861
    new-instance v1, Lcom/miui/home/launcher/ItemInfo;

    iget v2, p2, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellX:I

    iget v3, p2, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellY:I

    iget v4, p2, Lcom/miui/home/launcher/CellLayout$ItemArea;->mSpanX:I

    iget v5, p2, Lcom/miui/home/launcher/CellLayout$ItemArea;->mSpanY:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/home/launcher/ItemInfo;-><init>(IIII)V

    .line 1862
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v1, v3, v4}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Lcom/miui/home/launcher/ItemInfo;ZZ)V

    .line 1863
    iget v6, p2, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellX:I

    iget v7, p2, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellY:I

    iget v8, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mSpanX:I

    iget v9, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mSpanY:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/miui/home/launcher/CellLayout;->findNearestVacantArea(IIIIZZ)[I

    move-result-object p2

    .line 1864
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {p0, v2, v1, v4, v4}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Lcom/miui/home/launcher/ItemInfo;ZZ)V

    if-eqz p2, :cond_1

    .line 1866
    aget v1, p2, v3

    iget v2, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellX:I

    sub-int/2addr v1, v2

    .line 1867
    aget p2, p2, v4

    iget p1, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellY:I

    sub-int/2addr p2, p1

    .line 1868
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1869
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    .line 1870
    iget v5, v2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    add-int/2addr v5, v1

    iput v5, v2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 1871
    iget v5, v2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    add-int/2addr v5, p2

    iput v5, v2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 1872
    invoke-virtual {p0, v0, v3}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    return v4

    :cond_1
    return v3
.end method

.method private onRemoveViews(II)V
    .locals 5

    if-gez p1, :cond_0

    return-void

    :cond_0
    :goto_0
    add-int/lit8 v0, p2, -0x1

    if-lez p2, :cond_2

    add-int p2, p1, v0

    .line 3313
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 3314
    instance-of v1, p2, Lcom/miui/home/launcher/CellBackground;

    if-nez v1, :cond_1

    .line 3315
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 3316
    invoke-virtual {p0, p2, v1}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Z)V

    :cond_1
    move p2, v0

    goto :goto_0

    .line 3320
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->updateNewInstallFlags()V

    .line 3321
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance p1, Lcom/miui/home/launcher/common/messages/CellLayoutMessage;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Lcom/miui/home/launcher/common/messages/CellLayoutMessage;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private onSuccessMoved(IIIILcom/miui/home/launcher/CellLayout$ViewConfiguration;)V
    .locals 0

    .line 1880
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/CellLayout;->isCellOccupied(IIII)Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x2

    new-array p3, p3, [I

    const/4 p4, 0x0

    aput p1, p3, p4

    const/4 p1, 0x1

    aput p2, p3, p1

    .line 1882
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-direct {p0, p1, p3}, Lcom/miui/home/launcher/CellLayout;->updateCellBackgroundPosition(Lcom/miui/home/launcher/CellBackground;[I)Z

    .line 1884
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->requestLayout()V

    .line 1885
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/miui/home/launcher/CellLayout;->mLastRelayoutTime:J

    return-void
.end method

.method private positionIndexToCellIgnoreRTL(I[I)V
    .locals 2

    .line 3124
    iget p0, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    rem-int v0, p1, p0

    const/4 v1, 0x0

    aput v0, p2, v1

    .line 3125
    div-int/2addr p1, p0

    const/4 p0, 0x1

    aput p1, p2, p0

    return-void
.end method

.method private predict(Landroid/graphics/Region;Ljava/util/ArrayList;ILjava/util/HashMap;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Region;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/CellLayout$Widget;",
            ">;I",
            "Ljava/util/HashMap<",
            "Landroid/graphics/Region;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/CellLayout$Widget;",
            ">;>;)Z"
        }
    .end annotation

    .line 3678
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne p3, v0, :cond_0

    return v1

    .line 3681
    :cond_0
    invoke-direct {p0, p2, p1, p4}, Lcom/miui/home/launcher/CellLayout;->isFailedLayout(Ljava/util/ArrayList;Landroid/graphics/Region;Ljava/util/HashMap;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 3684
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move v3, v2

    .line 3685
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 3686
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/CellLayout$Widget;

    .line 3687
    iget-boolean v5, v4, Lcom/miui/home/launcher/CellLayout$Widget;->mAlreadyPut:Z

    if-nez v5, :cond_5

    .line 3688
    iput-boolean v1, v4, Lcom/miui/home/launcher/CellLayout$Widget;->mAlreadyPut:Z

    .line 3689
    new-instance v5, Landroid/graphics/RegionIterator;

    invoke-direct {v5, p1}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    .line 3690
    :cond_2
    :goto_1
    invoke-virtual {v5, v0}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3691
    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iget v8, v4, Lcom/miui/home/launcher/CellLayout$Widget;->mSpanX:I

    if-lt v6, v8, :cond_2

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    iget v9, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v9

    iget v10, v4, Lcom/miui/home/launcher/CellLayout$Widget;->mSpanY:I

    if-lt v6, v10, :cond_2

    .line 3692
    iget-object v6, v4, Lcom/miui/home/launcher/CellLayout$Widget;->mRegion:Landroid/graphics/Region;

    add-int/2addr v8, v7

    add-int/2addr v10, v9

    invoke-virtual {v6, v7, v9, v8, v10}, Landroid/graphics/Region;->set(IIII)Z

    .line 3693
    iget-object v6, v4, Lcom/miui/home/launcher/CellLayout$Widget;->mRegion:Landroid/graphics/Region;

    sget-object v7, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    add-int/lit8 v6, p3, 0x1

    .line 3694
    invoke-direct {p0, p1, p2, v6, p4}, Lcom/miui/home/launcher/CellLayout;->predict(Landroid/graphics/Region;Ljava/util/ArrayList;ILjava/util/HashMap;)Z

    move-result v6

    if-eqz v6, :cond_3

    return v1

    .line 3698
    :cond_3
    iget-object v6, v4, Lcom/miui/home/launcher/CellLayout$Widget;->mRegion:Landroid/graphics/Region;

    sget-object v7, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    goto :goto_1

    .line 3701
    :cond_4
    iput-boolean v2, v4, Lcom/miui/home/launcher/CellLayout$Widget;->mAlreadyPut:Z

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3704
    :cond_6
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/CellLayout;->getNoPositionWidgets(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p4, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2
.end method

.method private pushItemsInDistance(Lcom/miui/home/launcher/CellLayout$ItemArea;Lcom/miui/home/launcher/CellLayout$ItemArea;I)Z
    .locals 1

    .line 1773
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout$ItemArea;->getCoveringRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, p2, v0, p3}, Lcom/miui/home/launcher/CellLayout;->calculatePushDistance(Lcom/miui/home/launcher/CellLayout$ItemArea;Landroid/graphics/Rect;I)I

    move-result p2

    .line 1774
    new-instance v0, Lcom/miui/home/launcher/CellLayout$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p2, p3}, Lcom/miui/home/launcher/CellLayout$$ExternalSyntheticLambda8;-><init>(Lcom/miui/home/launcher/CellLayout;II)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellLayout$ItemArea;->iterateAllViewsInAreaInterruptably(Ljava/util/function/Predicate;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private pushView(Landroid/view/View;Landroid/graphics/Rect;I)Z
    .locals 8

    .line 2008
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    .line 2009
    new-instance v7, Lcom/miui/home/launcher/CellLayout$ItemArea;

    iget v3, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v4, v0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget v5, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v6, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/CellLayout$ItemArea;-><init>(Lcom/miui/home/launcher/CellLayout;IIII)V

    .line 2010
    invoke-direct {p0, v7, p2, p3}, Lcom/miui/home/launcher/CellLayout;->calculatePushDistance(Lcom/miui/home/launcher/CellLayout$ItemArea;Landroid/graphics/Rect;I)I

    move-result p2

    if-gtz p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2015
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/CellLayout;->pushViewInDistance(Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method private pushViewInDistance(Landroid/view/View;II)Z
    .locals 7

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    return v0

    .line 1980
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1981
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x1

    aput v3, v4, v5

    aput v2, v4, v0

    const-class v2, Landroid/view/View;

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Landroid/view/View;

    .line 1982
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    invoke-direct {p0, v3, v2}, Lcom/miui/home/launcher/CellLayout;->copyOccupiedCells([[Landroid/view/View;[[Landroid/view/View;)Z

    .line 1983
    new-instance v3, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;-><init>(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/CellLayout$1;)V

    :cond_1
    if-lez p2, :cond_3

    .line 1985
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1986
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1987
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1988
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 1989
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 1990
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1992
    invoke-direct {p0, v6, p3, v4}, Lcom/miui/home/launcher/CellLayout;->findViewsTouchEdge(Landroid/view/View;ILjava/util/ArrayList;)V

    .line 1993
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1994
    invoke-virtual {v3, v6}, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    add-int/lit8 p2, p2, -0x1

    .line 1998
    invoke-direct {p0, v1, p3, v5}, Lcom/miui/home/launcher/CellLayout;->shiftViews(Ljava/util/ArrayList;II)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1999
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    invoke-direct {p0, v2, p1}, Lcom/miui/home/launcher/CellLayout;->copyOccupiedCells([[Landroid/view/View;[[Landroid/view/View;)Z

    .line 2000
    invoke-virtual {v3}, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;->resetViewConfig()V

    return v0

    :cond_3
    return v5
.end method

.method private removeNoPosItem()V
    .locals 3

    const/4 v0, 0x0

    .line 4294
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4295
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4296
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/CellLayout;->includeView(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mFolderCreationBg:Lcom/miui/home/launcher/FolderCreationBg;

    if-eq v1, v2, :cond_0

    .line 4297
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeOldAndAddNewWidget(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    move v1, v0

    .line 4356
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v2, 0x0

    .line 4357
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const/4 v4, 0x0

    .line 4359
    instance-of v5, v3, Lcom/miui/home/launcher/maml/MaMlWidgetView;

    if-eqz v5, :cond_1

    .line 4360
    invoke-direct {p0, v3, p2}, Lcom/miui/home/launcher/CellLayout;->findNewWidgetFromCache(Landroid/view/View;Ljava/util/ArrayList;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    move v1, v0

    goto :goto_1

    :cond_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_8

    .line 4363
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    invoke-direct {p0, v2}, Lcom/miui/home/launcher/CellLayout;->createNewMaml(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Landroid/view/View;

    move-result-object v4

    goto :goto_6

    .line 4365
    :cond_1
    instance-of v5, v3, Lcom/miui/home/launcher/LauncherWidgetView;

    if-eqz v5, :cond_3

    .line 4366
    invoke-direct {p0, v3, p2}, Lcom/miui/home/launcher/CellLayout;->findNewWidgetFromCache(Landroid/view/View;Ljava/util/ArrayList;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    if-eqz v1, :cond_8

    .line 4369
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-direct {p0, v2}, Lcom/miui/home/launcher/CellLayout;->createNewAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)Landroid/view/View;

    move-result-object v4

    goto :goto_6

    .line 4371
    :cond_3
    instance-of v5, v3, Lcom/miui/home/launcher/LauncherMtzGadgetView;

    if-nez v5, :cond_6

    instance-of v5, v3, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    if-eqz v5, :cond_4

    goto :goto_4

    .line 4378
    :cond_4
    instance-of v5, v3, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;

    if-eqz v5, :cond_8

    .line 4379
    invoke-direct {p0, v3, p2}, Lcom/miui/home/launcher/CellLayout;->findNewWidgetFromCache(Landroid/view/View;Ljava/util/ArrayList;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_5

    move v1, v0

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    if-eqz v1, :cond_8

    .line 4382
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;

    invoke-direct {p0, v2}, Lcom/miui/home/launcher/CellLayout;->createNewServiceDelivery(Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;)Landroid/view/View;

    move-result-object v4

    goto :goto_6

    .line 4373
    :cond_6
    :goto_4
    invoke-direct {p0, v3, p2}, Lcom/miui/home/launcher/CellLayout;->findNewWidgetFromCache(Landroid/view/View;Ljava/util/ArrayList;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_7

    move v1, v0

    goto :goto_5

    :cond_7
    move v1, v2

    :goto_5
    if-eqz v1, :cond_8

    .line 4376
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/gadget/GadgetInfo;

    invoke-direct {p0, v3, v2}, Lcom/miui/home/launcher/CellLayout;->createNewGadget(Landroid/view/View;Lcom/miui/home/launcher/gadget/GadgetInfo;)Landroid/view/View;

    move-result-object v4

    :cond_8
    :goto_6
    if-nez v4, :cond_9

    goto :goto_0

    :cond_9
    if-nez p2, :cond_a

    .line 4389
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_a
    if-eqz v1, :cond_b

    .line 4392
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4394
    :cond_b
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/CellLayout;->removeView(Landroid/view/View;)V

    const/4 v2, -0x1

    .line 4395
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v4, v2, v3}, Lcom/miui/home/launcher/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_c
    return-object p2
.end method

.method private resetAllItems([[Landroid/view/View;Lcom/miui/home/launcher/CellLayout$ViewConfiguration;)V
    .locals 1

    .line 1889
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/CellLayout;->copyOccupiedCells([[Landroid/view/View;[[Landroid/view/View;)Z

    .line 1890
    invoke-virtual {p2}, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;->resetViewConfig()V

    return-void
.end method

.method private resetLastShakeViews(Ljava/util/HashSet;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 3025
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastDragOverViews:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz p1, :cond_1

    .line 3026
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3027
    :cond_1
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/CellLayout;->isViewInAutoLayoutAnimating(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 3028
    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v1

    new-instance v3, Lmiuix/animation/controller/AnimState;

    const-string v5, "origin"

    invoke-direct {v3, v5}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v5, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v6, 0x0

    .line 3029
    invoke-virtual {v3, v5, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v3

    sget-object v5, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 3030
    invoke-virtual {v3, v5, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v3

    new-array v2, v2, [Lmiuix/animation/base/AnimConfig;

    iget-object v5, p0, Lcom/miui/home/launcher/CellLayout;->mCellShakeConfig:Lmiuix/animation/base/AnimConfig;

    aput-object v5, v2, v4

    .line 3028
    invoke-interface {v1, v3, v2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private rollbackLayout()V
    .locals 2

    .line 2214
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mLayoutBackupValid:Z

    if-eqz v0, :cond_0

    .line 2215
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCellBak:[[Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/CellLayout;->copyOccupiedCells([[Landroid/view/View;[[Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2216
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->relayoutByOccupiedCells()V

    :cond_0
    return-void
.end method

.method private rollbackLayoutWithoutRelayout()V
    .locals 2

    .line 2222
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mLayoutBackupValid:Z

    if-eqz v0, :cond_0

    const-string v0, "Launcher.CellLayout"

    const-string v1, "rollbackLayoutWithoutRelayout"

    .line 2223
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCellBak:[[Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/CellLayout;->copyOccupiedCells([[Landroid/view/View;[[Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method private saveCurrentLayout()V
    .locals 18

    move-object/from16 v1, p0

    const-string v2, "Launcher.CellLayout"

    .line 2459
    iget-boolean v0, v1, Lcom/miui/home/launcher/CellLayout;->mLayoutBackupValid:Z

    if-nez v0, :cond_0

    return-void

    .line 2460
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2461
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    const/4 v5, 0x0

    move v14, v5

    .line 2462
    :goto_0
    iget v6, v1, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v14, v6, :cond_6

    move v15, v5

    .line 2463
    :goto_1
    iget v6, v1, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v15, v6, :cond_5

    .line 2464
    iget-object v6, v1, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v6, v6, v15

    aget-object v13, v6, v14

    if-eqz v13, :cond_4

    .line 2467
    :try_start_0
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    if-eqz v6, :cond_1

    .line 2468
    iget-wide v7, v6, Lcom/miui/home/launcher/CellLayout$LayoutParams;->accessTag:J

    cmp-long v7, v7, v3

    if-eqz v7, :cond_4

    :cond_1
    if-eqz v6, :cond_2

    .line 2470
    iput-wide v3, v6, Lcom/miui/home/launcher/CellLayout$LayoutParams;->accessTag:J

    .line 2472
    :cond_2
    invoke-direct {v1, v13}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v12

    .line 2473
    iget-object v6, v1, Lcom/miui/home/launcher/CellLayout;->mOccupiedCellBak:[[Landroid/view/View;

    aget-object v7, v6, v15

    aget-object v7, v7, v14

    if-ne v13, v7, :cond_3

    iget v7, v12, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    add-int/2addr v7, v15

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7

    iget v7, v12, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    add-int/2addr v7, v14

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7

    if-eq v13, v6, :cond_4

    .line 2474
    :cond_3
    iput v15, v12, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 2475
    iput v14, v12, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    const-wide/16 v7, -0x64

    .line 2479
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v9

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->getScreenType()I

    move-result v11
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v6, v12

    move-object/from16 v16, v12

    move v12, v15

    move-object/from16 v17, v13

    move v13, v14

    .line 2476
    :try_start_1
    invoke-static/range {v6 .. v13}, Lcom/miui/home/launcher/LauncherModel;->makeMoveItemOperation(Lcom/miui/home/launcher/ItemInfo;JJIII)Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2481
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveCurrentLayout, info="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v17, v13

    .line 2486
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mHCells: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , mVCells: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , mOccupiedCellBak size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/miui/home/launcher/CellLayout;->mOccupiedCellBak:[[Landroid/view/View;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/miui/home/launcher/CellLayout;->mOccupiedCellBak:[[Landroid/view/View;

    aget-object v5, v6, v5

    array-length v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", layoutRTL: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2488
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2486
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, v17

    .line 2490
    invoke-direct {v1, v3}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    .line 2491
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error item "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " at ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") of screen "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " with spanX "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", spanY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2494
    throw v0

    :cond_4
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 2498
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 2499
    iget-object v2, v1, Lcom/miui/launcher/views/LauncherViewGroup;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/miui/home/launcher/LauncherSettings;->AUTHORITY:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/miui/home/launcher/LauncherModel;->applyBatch(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2501
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->resetTouchCellInfo()V

    return-void
.end method

.method private schedulerUpdateGridCells(J)V
    .locals 1

    .line 2578
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mGridCellUpdateScheduled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2581
    iput-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mGridCellUpdateScheduled:Z

    .line 2582
    new-instance v0, Lcom/miui/home/launcher/CellLayout$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/CellLayout$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/CellLayout;)V

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private searchLeft(II)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1647
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-lez p2, :cond_0

    if-eqz p1, :cond_0

    .line 1645
    invoke-direct {p0, v0, p1, p2}, Lcom/miui/home/launcher/CellLayout;->findTheFarthestEmptyCell(ZII)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 1647
    :cond_0
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private searchRight(II)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1637
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mTotalCells:I

    if-eq p1, v0, :cond_0

    if-lez p2, :cond_0

    const/4 v0, 0x1

    .line 1638
    invoke-direct {p0, v0, p1, p2}, Lcom/miui/home/launcher/CellLayout;->findTheFarthestEmptyCell(ZII)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 1640
    :cond_0
    new-instance p0, Landroid/util/Pair;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private setNoVacantMode(Z)V
    .locals 0

    .line 256
    iput-boolean p1, p0, Lcom/miui/home/launcher/CellLayout;->mIsNoVacantMode:Z

    return-void
.end method

.method private setupGridCells()V
    .locals 17

    move-object/from16 v0, p0

    .line 2629
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->isQuickCallCellLayout()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 2632
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setupGridCells "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Launcher.CellLayout"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2633
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result v1

    .line 2634
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconHeight()I

    move-result v2

    .line 2635
    iget v3, v0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    .line 2636
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getMiuiWidgetPaddingTop()I

    move-result v4

    .line 2638
    iget-object v5, v0, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v5, v5, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    const/4 v6, 0x0

    aget v7, v5, v6

    const/4 v8, 0x1

    .line 2639
    aget v5, v5, v8

    .line 2640
    iget-object v9, v0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v9}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/miui/home/launcher/DragController;->getCurrentDragObject()Lcom/miui/home/launcher/DragObject;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 2642
    invoke-virtual {v9}, Lcom/miui/home/launcher/DragObject;->isDroped()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v9}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 2643
    invoke-virtual {v9}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/miui/home/launcher/ItemInfo;->isOccupiedCellMoreThan1x1()Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_0

    :cond_1
    move v8, v6

    .line 2645
    :goto_0
    iget-object v9, v0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v9}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/miui/home/launcher/Workspace;->isIdInCurrentScreen(J)Z

    move-result v9

    move v10, v6

    .line 2646
    :goto_1
    iget v11, v0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v10, v11, :cond_7

    move v11, v6

    .line 2647
    :goto_2
    iget v12, v0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v11, v12, :cond_6

    .line 2648
    iget-object v12, v0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v12, v12, v10

    aget-object v12, v12, v11

    if-nez v12, :cond_5

    invoke-direct {v0, v10, v11}, Lcom/miui/home/launcher/CellLayout;->isCellOccupiedByBackground(II)Z

    move-result v12

    if-eqz v12, :cond_2

    if-eqz v8, :cond_5

    .line 2649
    :cond_2
    iget-object v12, v0, Lcom/miui/home/launcher/CellLayout;->mGridCell:[[Lcom/miui/home/launcher/GridCell;

    aget-object v13, v12, v10

    aget-object v13, v13, v11

    .line 2650
    aget-object v12, v12, v10

    aget-object v12, v12, v11

    if-nez v12, :cond_3

    .line 2651
    iget-object v12, v0, Lcom/miui/launcher/views/LauncherViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v12, v6}, Lcom/miui/home/launcher/GridCell;->create(Landroid/content/Context;Z)Lcom/miui/home/launcher/GridCell;

    move-result-object v13

    .line 2652
    iget-object v12, v0, Lcom/miui/home/launcher/CellLayout;->mGridCell:[[Lcom/miui/home/launcher/GridCell;

    aget-object v12, v12, v10

    aput-object v13, v12, v11

    .line 2653
    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2655
    :cond_3
    iget-object v12, v0, Lcom/miui/home/launcher/CellLayout;->mXs:[I

    aget v14, v12, v10

    add-int/2addr v14, v3

    iget-object v15, v0, Lcom/miui/home/launcher/CellLayout;->mYs:[I

    aget v16, v15, v11

    add-int v6, v16, v4

    aget v12, v12, v10

    add-int/2addr v12, v3

    add-int/2addr v12, v1

    aget v15, v15, v11

    add-int/2addr v15, v4

    add-int/2addr v15, v2

    invoke-virtual {v13, v14, v6, v12, v15}, Lcom/miui/home/launcher/GridCell;->setCellBounds(IIII)V

    .line 2659
    iget-object v6, v0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {v6}, Lcom/miui/home/launcher/CellBackground;->isBind()Z

    move-result v6

    if-eqz v6, :cond_4

    if-ne v10, v7, :cond_4

    if-ne v5, v11, :cond_4

    if-eqz v8, :cond_4

    .line 2660
    invoke-virtual {v13}, Lcom/miui/home/launcher/GridCell;->setHovered()V

    goto :goto_3

    .line 2662
    :cond_4
    invoke-virtual {v13, v9}, Lcom/miui/home/launcher/GridCell;->setActivated(Z)V

    goto :goto_3

    .line 2665
    :cond_5
    iget-object v6, v0, Lcom/miui/home/launcher/CellLayout;->mGridCell:[[Lcom/miui/home/launcher/GridCell;

    aget-object v6, v6, v10

    const/4 v12, 0x0

    aput-object v12, v6, v11

    :goto_3
    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x0

    goto :goto_2

    :cond_6
    add-int/lit8 v10, v10, 0x1

    const/4 v6, 0x0

    goto :goto_1

    :cond_7
    :goto_4
    return-void
.end method

.method private shakeCoveringViews(Lcom/miui/home/launcher/DragObject;)Ljava/util/HashSet;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/DragObject;",
            ")",
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 3037
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v2, p1

    .line 3038
    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/DragObject;->getVisionRect(Landroid/graphics/Rect;)V

    .line 3039
    iget-object v3, v0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    .line 3040
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v4, v5, v3}, Lcom/miui/home/launcher/CellLayout;->pointToCell(II[I)V

    const/4 v4, 0x0

    .line 3041
    aget v5, v3, v4

    const/4 v6, 0x1

    .line 3042
    aget v7, v3, v6

    .line 3043
    iget v8, v1, Landroid/graphics/Rect;->right:I

    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v8, v9, v3}, Lcom/miui/home/launcher/CellLayout;->pointToCell(II[I)V

    .line 3044
    aget v8, v3, v4

    .line 3045
    aget v3, v3, v6

    .line 3047
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "shake view sx = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " sy = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " ex = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " ey = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Launcher.CellLayout"

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3049
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 3050
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    :goto_0
    if-gt v7, v3, :cond_3

    move v12, v5

    :goto_1
    if-gt v12, v8, :cond_2

    .line 3053
    iget-object v13, v0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v14, v13, v12

    aget-object v14, v14, v7

    if-eqz v14, :cond_1

    .line 3054
    aget-object v13, v13, v12

    aget-object v13, v13, v7

    .line 3055
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v14

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v11, v14, v15, v6, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3056
    invoke-direct {v0, v13}, Lcom/miui/home/launcher/CellLayout;->isOccupiedMoreThan1X1(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3058
    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x8

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x8

    invoke-virtual {v11, v4, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 3060
    :cond_0
    invoke-virtual {v11, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {v0, v13}, Lcom/miui/home/launcher/CellLayout;->isViewInAutoLayoutAnimating(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3061
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Shake view view rect = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " dragRect = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3062
    iget-object v4, v0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v4, v4, v12

    aget-object v4, v4, v7

    invoke-virtual {v9, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    goto :goto_0

    .line 3068
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getVisionCenterPosition()[I

    move-result-object v1

    .line 3069
    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 3070
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 3071
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    const/4 v6, 0x0

    .line 3072
    aget v7, v1, v6

    sub-int/2addr v7, v4

    const/4 v4, 0x1

    .line 3073
    aget v6, v1, v4

    sub-int/2addr v6, v5

    .line 3076
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const-wide/high16 v10, -0x3fcc000000000000L    # -20.0

    const-wide/high16 v12, 0x4034000000000000L    # 20.0

    if-ge v4, v5, :cond_6

    invoke-direct {v0, v3}, Lcom/miui/home/launcher/CellLayout;->isOccupiedMoreThan1X1(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    if-lez v6, :cond_5

    .line 3084
    new-instance v4, Lmiuix/animation/controller/AnimState;

    const-string v5, "ShakeTop"

    invoke-direct {v4, v5}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v5, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v4, v5, v10, v11}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v4

    goto :goto_4

    .line 3086
    :cond_5
    new-instance v4, Lmiuix/animation/controller/AnimState;

    const-string v5, "ShakeBottom"

    invoke-direct {v4, v5}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v5, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v4, v5, v12, v13}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v4

    goto :goto_4

    :cond_6
    :goto_3
    if-lez v7, :cond_7

    .line 3078
    new-instance v4, Lmiuix/animation/controller/AnimState;

    const-string v5, "ShakeLeft"

    invoke-direct {v4, v5}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v5, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v4, v5, v10, v11}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v4

    goto :goto_4

    .line 3080
    :cond_7
    new-instance v4, Lmiuix/animation/controller/AnimState;

    const-string v5, "ShakeRight"

    invoke-direct {v4, v5}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v5, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v4, v5, v12, v13}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v4

    :goto_4
    const/4 v5, 0x1

    if-eqz v4, :cond_8

    new-array v6, v5, [Landroid/view/View;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    .line 3090
    invoke-static {v6}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v3

    invoke-interface {v3}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v3

    new-array v6, v5, [Lmiuix/animation/base/AnimConfig;

    iget-object v8, v0, Lcom/miui/home/launcher/CellLayout;->mCellShakeConfig:Lmiuix/animation/base/AnimConfig;

    aput-object v8, v6, v7

    invoke-interface {v3, v4, v6}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto/16 :goto_2

    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_9
    return-object v9
.end method

.method private shakeCoveringViews(Lcom/miui/home/launcher/CellLayout$DragPos;Lcom/miui/home/launcher/DragObject;)V
    .locals 10

    .line 2977
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2978
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    iget-object v2, p1, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    aget-object v1, v1, v4

    const/4 v4, 0x1

    aget v2, v2, v4

    aget-object v1, v1, v2

    if-eqz v1, :cond_6

    .line 2979
    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->isDragingOneObjectWhichOccupiedCellMoreThan1X1()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    .line 2980
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/CellLayout;->isCellCreatingForFolder([I)Z

    move-result v2

    if-nez v2, :cond_6

    const/4 p2, 0x0

    .line 2982
    iget v2, p1, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    const-wide/high16 v5, 0x4034000000000000L    # 20.0

    if-eq v2, v4, :cond_0

    const/16 v7, 0x8

    if-ne v2, v7, :cond_1

    .line 2983
    :cond_0
    new-instance p2, Lmiuix/animation/controller/AnimState;

    const-string v2, "ShakeRight"

    invoke-direct {p2, v2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p2, v2, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    .line 2985
    :cond_1
    iget v2, p1, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    const/4 v7, 0x3

    const-wide/high16 v8, -0x3fcc000000000000L    # -20.0

    if-eq v2, v7, :cond_4

    const/16 v7, 0x9

    if-ne v2, v7, :cond_2

    goto :goto_0

    :cond_2
    const/4 v7, 0x4

    if-ne v2, v7, :cond_3

    .line 2988
    new-instance p2, Lmiuix/animation/controller/AnimState;

    const-string v2, "ShakeBottom"

    invoke-direct {p2, v2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p2, v2, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    goto :goto_1

    :cond_3
    const/4 v5, 0x5

    if-ne v2, v5, :cond_5

    .line 2990
    new-instance p2, Lmiuix/animation/controller/AnimState;

    const-string v2, "ShakeTop"

    invoke-direct {p2, v2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p2, v2, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    goto :goto_1

    .line 2986
    :cond_4
    :goto_0
    new-instance p2, Lmiuix/animation/controller/AnimState;

    const-string v2, "ShakeLeft"

    invoke-direct {p2, v2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p2, v2, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    :cond_5
    :goto_1
    if-eqz p2, :cond_7

    .line 2992
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/CellLayout;->isViewInAutoLayoutAnimating(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_7

    new-array v2, v4, [Landroid/view/View;

    aput-object v1, v2, v3

    .line 2993
    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v2

    invoke-interface {v2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v2

    new-array v5, v4, [Lmiuix/animation/base/AnimConfig;

    iget-object v6, p0, Lcom/miui/home/launcher/CellLayout;->mCellShakeConfig:Lmiuix/animation/base/AnimConfig;

    aput-object v6, v5, v3

    invoke-interface {v2, p2, v5}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 2994
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2997
    :cond_6
    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->isDragingOneObjectWhichOccupiedCellMoreThan1X1()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->shouldShakeAroundViews(Lcom/miui/home/launcher/CellLayout$DragPos;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2998
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/CellLayout;->shakeCoveringViews(Lcom/miui/home/launcher/DragObject;)Ljava/util/HashSet;

    move-result-object v0

    .line 3001
    :cond_7
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shake view "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " DragPos x = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v1, v1, v3

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " y = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget p1, p1, v4

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Launcher.CellLayout"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3002
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3003
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shake view = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3005
    :cond_8
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/CellLayout;->resetLastShakeViews(Ljava/util/HashSet;)V

    .line 3006
    iput-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastDragOverViews:Ljava/util/HashSet;

    return-void
.end method

.method private shiftViews(Ljava/util/ArrayList;II)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    .line 2019
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2020
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    .line 2021
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Z)V

    if-eqz p2, :cond_3

    if-eq p2, v1, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    goto :goto_1

    .line 2033
    :cond_0
    iget v1, v2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    add-int/2addr v1, p3

    iput v1, v2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    goto :goto_1

    .line 2027
    :cond_1
    iget v1, v2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    add-int/2addr v1, p3

    iput v1, v2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    goto :goto_1

    .line 2030
    :cond_2
    iget v1, v2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    sub-int/2addr v1, p3

    iput v1, v2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    goto :goto_1

    .line 2024
    :cond_3
    iget v1, v2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    sub-int/2addr v1, p3

    iput v1, v2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 2038
    :goto_1
    iget v1, v2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v3, v2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget v4, v2, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v2, v2, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/miui/home/launcher/CellLayout;->isItemPosInvalid(IIII)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    return v2

    .line 2041
    :cond_4
    invoke-virtual {p0, v0, v2}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Z)V

    goto :goto_0

    :cond_5
    return v1
.end method

.method private shouldShakeAroundViews(Lcom/miui/home/launcher/CellLayout$DragPos;)Z
    .locals 4

    .line 3013
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    .line 3014
    iget v0, p0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget-object p1, p1, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    const/4 v1, 0x0

    aget v2, p1, v1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    aget p1, p1, v3

    if-eq p0, p1, :cond_1

    :cond_0
    move v1, v3

    :cond_1
    return v1
.end method

.method private showCellBackgroundDrawable(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    if-eqz p1, :cond_4

    .line 2916
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2920
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/GridCell;

    if-nez v0, :cond_1

    return-void

    .line 2924
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/GridCell;

    .line 2927
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result p0

    if-nez p0, :cond_2

    .line 2928
    invoke-virtual {v0}, Lcom/miui/home/launcher/GridCell;->setHovered()V

    .line 2933
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->getContent()Landroid/view/View;

    move-result-object p0

    .line 2935
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isWidgetBlurSupported()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->supportWidgetBackgroundBlur(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 2939
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isBlurSupported()Z

    move-result p1

    if-nez p1, :cond_4

    instance-of p0, p0, Lcom/miui/home/launcher/HostViewContainer;

    if-eqz p0, :cond_4

    .line 2940
    invoke-virtual {v0}, Lcom/miui/home/launcher/GridCell;->setHovered()V

    :cond_4
    :goto_0
    return-void
.end method

.method private showPreviewingCellLayout([[Landroid/view/View;)V
    .locals 1

    .line 4288
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/CellLayout;->copyOccupiedCells([[Landroid/view/View;[[Landroid/view/View;)Z

    .line 4289
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->removeNoPosItem()V

    .line 4290
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->addNewItem()V

    return-void
.end method

.method private showUsingCellLayout()V
    .locals 3

    .line 4213
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOldOccupiedCell:[[Landroid/view/View;

    if-nez v0, :cond_0

    .line 4214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screenId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " no backup data"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Launcher.CellLayout"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4217
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/CellLayout;->copyOccupiedCells([[Landroid/view/View;[[Landroid/view/View;)Z

    const/4 v0, 0x0

    .line 4218
    iput-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOldOccupiedCell:[[Landroid/view/View;

    .line 4219
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->useOldLayout()V

    .line 4220
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->removeNoPosItem()V

    .line 4221
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->addNewItem()V

    return-void
.end method

.method private squeezePosition(IZI)Z
    .locals 9

    .line 1668
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    const/4 v1, 0x0

    move v2, p1

    move v3, v1

    move v4, v3

    .line 1672
    :cond_0
    :goto_0
    invoke-direct {p0, v2, v0}, Lcom/miui/home/launcher/CellLayout;->positionIndexToCellIgnoreRTL(I[I)V

    .line 1673
    iget-object v5, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget v6, v0, v1

    aget-object v5, v5, v6

    const/4 v6, 0x1

    aget v7, v0, v6

    aget-object v5, v5, v7

    if-eqz v5, :cond_3

    .line 1675
    invoke-direct {p0, v5}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v7

    .line 1676
    iget v8, v7, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    if-ne v8, v6, :cond_3

    iget v7, v7, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-ne v7, v6, :cond_3

    .line 1677
    iget-object v4, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget v7, v0, v1

    aget-object v4, v4, v7

    aget v7, v0, v6

    const/4 v8, 0x0

    aput-object v8, v4, v7

    :cond_1
    if-eqz p2, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    neg-int v4, v3

    :goto_1
    add-int/2addr v4, p1

    .line 1679
    invoke-direct {p0, v4, v0}, Lcom/miui/home/launcher/CellLayout;->positionIndexToCellIgnoreRTL(I[I)V

    add-int/lit8 v3, v3, 0x1

    .line 1681
    iget-object v4, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget v7, v0, v1

    aget-object v7, v4, v7

    aget v8, v0, v6

    aget-object v7, v7, v8

    if-nez v7, :cond_1

    .line 1682
    aget v7, v0, v1

    aget-object v4, v4, v7

    aget v7, v0, v6

    aput-object v5, v4, v7

    move v4, v6

    :cond_3
    if-eqz p2, :cond_4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, -0x1

    :goto_2
    if-eqz p2, :cond_5

    if-gt v2, p3, :cond_6

    goto :goto_0

    :cond_5
    if-ge v2, p3, :cond_0

    :cond_6
    return v4
.end method

.method private trackExposeEvent()V
    .locals 8

    .line 3976
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/home/launcher/CellLayout;->mStartShowingTime:J

    sub-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 3977
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3978
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v6

    invoke-static {v2, v0, v1, v6, v7}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackScreenExpose(Lcom/miui/home/launcher/Launcher;JJ)V

    .line 3980
    :cond_0
    iput-wide v4, p0, Lcom/miui/home/launcher/CellLayout;->mStartShowingTime:J

    return-void
.end method

.method private updateCellBackgroundPosition(Lcom/miui/home/launcher/CellBackground;[I)Z
    .locals 4

    .line 2746
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    .line 2748
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    const/4 v1, 0x0

    aget v2, p2, v1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    aget v2, p2, v3

    if-eq v0, v2, :cond_1

    .line 2749
    :cond_0
    aget v0, p2, v1

    iput v0, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 2750
    aget p2, p2, v3

    iput p2, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 2751
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->requestLayout()V

    move v1, v3

    :cond_1
    return v1
.end method

.method private updateCellBackgroundPositionWhenDragOver(Lcom/miui/home/launcher/CellBackground;[IIILcom/miui/home/launcher/DragObject;)V
    .locals 3

    .line 2722
    invoke-virtual {p0, p5}, Lcom/miui/home/launcher/CellLayout;->isSpaceEnough(Lcom/miui/home/launcher/DragObject;)Z

    move-result p5

    if-nez p5, :cond_0

    return-void

    .line 2725
    :cond_0
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateCellBackgroundPositionWhenDragOver, cellXY="

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", spanX="

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", spanY="

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v0, "Launcher.CellLayout"

    invoke-static {v0, p5}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2727
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object p5

    .line 2729
    iget v0, p5, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p3, :cond_2

    iget v0, p5, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-eq v0, p4, :cond_1

    goto :goto_0

    :cond_1
    move p3, v1

    goto :goto_1

    .line 2730
    :cond_2
    :goto_0
    iput p3, p5, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 2731
    iput p4, p5, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    .line 2732
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->requestLayout()V

    move p3, v2

    .line 2735
    :goto_1
    iget-object p4, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-direct {p0, p4, p2}, Lcom/miui/home/launcher/CellLayout;->updateCellBackgroundPosition(Lcom/miui/home/launcher/CellBackground;[I)Z

    move-result p2

    if-eqz p2, :cond_3

    move p3, v2

    .line 2736
    :cond_3
    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-nez p2, :cond_4

    .line 2737
    new-instance p2, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    invoke-direct {p2}, Lcom/miui/home/launcher/CellLayout$LayoutParams;-><init>()V

    invoke-virtual {p0, p1, v1, p2}, Lcom/miui/home/launcher/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_4
    move v2, p3

    :goto_2
    if-eqz v2, :cond_5

    .line 2741
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->requestUpdateGridCells()V

    :cond_5
    return-void
.end method

.method private updateCellContainerHeight()V
    .locals 6

    .line 721
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingTop:I

    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mCellHeight:I

    iget v4, p0, Lcom/miui/home/launcher/CellLayout;->mHeightGap:I

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/CellLayout;->calculateY(IIIIII)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellContainerHeight:I

    return-void
.end method

.method private updateChildColorIfNeed()V
    .locals 4

    .line 1291
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1293
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1294
    instance-of v3, v2, Lcom/miui/home/launcher/gadget/ColorUpdatable;

    if-eqz v3, :cond_0

    .line 1295
    check-cast v2, Lcom/miui/home/launcher/gadget/ColorUpdatable;

    invoke-interface {v2}, Lcom/miui/home/launcher/gadget/ColorUpdatable;->notifyColorChanged()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateDropTargetCell(Lcom/miui/home/launcher/CellLayout$DragPos;Lcom/miui/home/launcher/DragObject;)V
    .locals 5

    .line 2949
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout$DragPos;->equal(Lcom/miui/home/launcher/CellLayout$DragPos;)Z

    move-result v0

    const-string v1, "Launcher.CellLayout"

    if-nez v0, :cond_1

    .line 2950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDropTargetCell : pos = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2952
    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/ItemInfo;->isOccupiedCellMoreThan1x1()Z

    move-result p2

    if-nez p2, :cond_2

    .line 2953
    iget-object p2, p0, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object p2, p2, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    const/4 v0, 0x0

    aget v1, p2, v0

    const/4 v2, 0x1

    .line 2954
    aget p2, p2, v2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    if-eq p2, v3, :cond_0

    .line 2956
    iget-object v4, p0, Lcom/miui/home/launcher/CellLayout;->mGridCell:[[Lcom/miui/home/launcher/GridCell;

    aget-object v1, v4, v1

    aget-object p2, v1, p2

    if-eqz p2, :cond_0

    .line 2958
    invoke-virtual {p2, v2}, Lcom/miui/home/launcher/GridCell;->setActivated(Z)V

    .line 2962
    :cond_0
    iget-object p1, p1, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget p2, p1, v0

    .line 2963
    aget p1, p1, v2

    if-eq p2, v3, :cond_2

    if-eq p1, v3, :cond_2

    .line 2965
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mGridCell:[[Lcom/miui/home/launcher/GridCell;

    aget-object p0, p0, p2

    aget-object p0, p0, p1

    if-eqz p0, :cond_2

    .line 2967
    invoke-virtual {p0}, Lcom/miui/home/launcher/GridCell;->setHovered()V

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "updateDropTargetCell : not equal"

    .line 2972
    invoke-static {v1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateInfoHostView(Landroid/view/View;Ljava/lang/Object;)V
    .locals 1

    .line 4260
    instance-of p0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetView;

    if-eqz p0, :cond_0

    instance-of p0, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz p0, :cond_0

    .line 4261
    move-object p0, p2

    check-cast p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/maml/MaMlWidgetView;

    iput-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->hostView:Lcom/miui/home/launcher/maml/MaMlWidgetView;

    .line 4263
    :cond_0
    instance-of p0, p1, Lcom/miui/home/launcher/LauncherWidgetView;

    if-eqz p0, :cond_1

    instance-of p0, p2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz p0, :cond_1

    .line 4264
    move-object p0, p2

    check-cast p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/LauncherWidgetView;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Lcom/miui/home/launcher/LauncherWidgetView;

    .line 4266
    :cond_1
    instance-of p0, p1, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;

    if-eqz p0, :cond_2

    instance-of p0, p2, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;

    if-eqz p0, :cond_2

    .line 4267
    check-cast p2, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;

    check-cast p1, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;

    iput-object p1, p2, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;->hostView:Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;

    :cond_2
    return-void
.end method

.method private updateWidgetInPreviewing(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 4334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 4335
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 4336
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4337
    instance-of v3, v2, Lcom/miui/home/launcher/maml/MaMlWidgetView;

    if-eqz v3, :cond_0

    .line 4338
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4340
    :cond_0
    instance-of v3, v2, Lcom/miui/home/launcher/LauncherWidgetView;

    if-eqz v3, :cond_1

    .line 4341
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4343
    :cond_1
    instance-of v3, v2, Lcom/miui/home/launcher/LauncherMtzGadgetView;

    if-nez v3, :cond_2

    instance-of v3, v2, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    if-eqz v3, :cond_3

    .line 4344
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4346
    :cond_3
    instance-of v3, v2, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;

    if-eqz v3, :cond_4

    .line 4347
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4350
    :cond_5
    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/CellLayout;->removeOldAndAddNewWidget(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private useOldLayout()V
    .locals 9

    .line 4235
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const/4 v2, 0x0

    move v3, v2

    .line 4236
    :goto_0
    iget v4, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v3, v4, :cond_4

    move v4, v2

    .line 4237
    :goto_1
    iget v5, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v4, v5, :cond_3

    .line 4238
    iget-object v5, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    if-eqz v5, :cond_2

    .line 4240
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    if-eqz v6, :cond_0

    .line 4241
    iget-wide v7, v6, Lcom/miui/home/launcher/CellLayout$LayoutParams;->accessTag:J

    cmp-long v7, v7, v0

    if-eqz v7, :cond_2

    :cond_0
    if-eqz v6, :cond_1

    .line 4243
    iput-wide v0, v6, Lcom/miui/home/launcher/CellLayout$LayoutParams;->accessTag:J

    .line 4245
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/home/launcher/ItemInfo;

    .line 4246
    invoke-direct {p0, v4, v3, v5}, Lcom/miui/home/launcher/CellLayout;->getOriginalSpanXY(IILandroid/view/View;)Landroid/util/Pair;

    move-result-object v7

    .line 4247
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v6, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 4248
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v6, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    .line 4249
    iput v4, v6, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 4250
    iput v3, v6, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 4251
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 4252
    invoke-direct {p0, v5, v6}, Lcom/miui/home/launcher/CellLayout;->updateInfoHostView(Landroid/view/View;Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private workOnAllCellLayoutItem(Lcom/miui/home/launcher/CellLayout$ItemVisibilityWorker;I)V
    .locals 3

    .line 3833
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_5

    .line 3834
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3835
    instance-of v2, v1, Lcom/miui/home/launcher/DesktopIcon;

    if-eqz v2, :cond_0

    .line 3836
    check-cast v1, Lcom/miui/home/launcher/DesktopIcon;

    invoke-interface {v1}, Lcom/miui/home/launcher/DesktopIcon;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {p1, v2, p2}, Lcom/miui/home/launcher/CellLayout$ItemVisibilityWorker;->process(Landroid/graphics/drawable/Drawable;I)V

    .line 3837
    invoke-interface {p1, v1, p2}, Lcom/miui/home/launcher/CellLayout$ItemVisibilityWorker;->process(Lcom/miui/home/launcher/DesktopIcon;I)V

    goto :goto_1

    .line 3838
    :cond_0
    instance-of v2, v1, Lcom/miui/home/launcher/LauncherWidgetView;

    if-eqz v2, :cond_1

    .line 3839
    check-cast v1, Lcom/miui/home/launcher/LauncherWidgetView;

    invoke-interface {p1, v1}, Lcom/miui/home/launcher/CellLayout$ItemVisibilityWorker;->process(Lcom/miui/home/launcher/LauncherWidgetView;)V

    goto :goto_1

    .line 3840
    :cond_1
    instance-of v2, v1, Lcom/miui/home/launcher/maml/MaMlWidgetView;

    if-eqz v2, :cond_2

    .line 3841
    check-cast v1, Lcom/miui/home/launcher/maml/MaMlWidgetView;

    invoke-interface {p1, v1}, Lcom/miui/home/launcher/CellLayout$ItemVisibilityWorker;->process(Lcom/miui/home/launcher/maml/MaMlWidgetView;)V

    goto :goto_1

    .line 3842
    :cond_2
    instance-of v2, v1, Lcom/miui/home/launcher/FolderIcon;

    if-eqz v2, :cond_3

    .line 3843
    check-cast v1, Lcom/miui/home/launcher/FolderIcon;

    invoke-interface {p1, v1, p2}, Lcom/miui/home/launcher/CellLayout$ItemVisibilityWorker;->process(Lcom/miui/home/launcher/FolderIcon;I)V

    goto :goto_1

    .line 3844
    :cond_3
    instance-of v2, v1, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;

    if-eqz v2, :cond_4

    .line 3845
    check-cast v1, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;

    invoke-interface {p1, v1}, Lcom/miui/home/launcher/CellLayout$ItemVisibilityWorker;->process(Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;)V

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public addPendingItem(Lcom/miui/home/launcher/PendingItem;)V
    .locals 0

    .line 1333
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mPendingItemsDelegate:Lcom/miui/home/launcher/PendingSourceDelegate;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/PendingSourceDelegate;->addPendingItem(Lcom/miui/home/launcher/PendingItem;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 472
    instance-of v0, p1, Lcom/miui/home/launcher/DesktopIcon;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 473
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setEnableAutoLayoutAnimation(Z)V

    .line 476
    :cond_0
    instance-of v0, p1, Lcom/miui/home/launcher/CellBackground;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/widget/ImageView;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 477
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Z)V

    .line 480
    :cond_1
    invoke-static {p0, p1, v1}, Lcom/miui/home/launcher/WallpaperUtils;->onAddViewToGroup(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 481
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public alignIconsToTop(Z)Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 3477
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 3480
    invoke-static {v3}, Lcom/miui/home/launcher/DeviceConfig;->getIterateDirection(Z)I

    move-result v4

    .line 3481
    invoke-direct {v0, v4}, Lcom/miui/home/launcher/CellLayout;->calCellXRange(I)V

    .line 3482
    invoke-direct {v0, v4}, Lcom/miui/home/launcher/CellLayout;->calFirstIconPos(I)V

    .line 3483
    iget-object v5, v0, Lcom/miui/home/launcher/CellLayout;->mDstPos:[I

    iget-object v6, v0, Lcom/miui/home/launcher/CellLayout;->mFirstPos:[I

    const/4 v7, 0x1

    aget v8, v6, v7

    aput v8, v5, v7

    .line 3484
    aget v6, v6, v3

    aput v6, v5, v3

    move v5, v3

    .line 3485
    :goto_0
    iget v6, v0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v5, v6, :cond_9

    .line 3486
    iget-object v6, v0, Lcom/miui/home/launcher/CellLayout;->mCellXIterateRange:[I

    aget v6, v6, v3

    .line 3487
    :goto_1
    iget-object v8, v0, Lcom/miui/home/launcher/CellLayout;->mCellXIterateRange:[I

    if-ne v4, v7, :cond_0

    aget v8, v8, v7

    if-gt v6, v8, :cond_8

    goto :goto_2

    :cond_0
    aget v8, v8, v7

    if-lt v6, v8, :cond_8

    .line 3489
    :goto_2
    iget-object v8, v0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v8, v8, v6

    aget-object v8, v8, v5

    if-nez v8, :cond_1

    goto/16 :goto_4

    .line 3491
    :cond_1
    invoke-direct {v0, v8}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v9

    .line 3492
    iget v10, v9, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    if-ne v10, v7, :cond_7

    iget v10, v9, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-ne v10, v7, :cond_7

    .line 3493
    :goto_3
    iget-object v10, v0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    iget-object v11, v0, Lcom/miui/home/launcher/CellLayout;->mDstPos:[I

    aget v12, v11, v3

    aget-object v12, v10, v12

    aget v13, v11, v7

    aget-object v12, v12, v13

    if-eqz v12, :cond_3

    aget v12, v11, v3

    aget-object v10, v10, v12

    aget v11, v11, v7

    aget-object v10, v10, v11

    .line 3494
    invoke-direct {v0, v10}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v10

    iget v10, v10, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    if-ne v10, v7, :cond_2

    iget-object v10, v0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    iget-object v11, v0, Lcom/miui/home/launcher/CellLayout;->mDstPos:[I

    aget v12, v11, v3

    aget-object v10, v10, v12

    aget v11, v11, v7

    aget-object v10, v10, v11

    .line 3495
    invoke-direct {v0, v10}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v10

    iget v10, v10, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-eq v10, v7, :cond_3

    .line 3496
    :cond_2
    invoke-direct {v0, v4}, Lcom/miui/home/launcher/CellLayout;->calNextDstPos(I)V

    goto :goto_3

    .line 3498
    :cond_3
    iget-object v10, v0, Lcom/miui/home/launcher/CellLayout;->mDstPos:[I

    aget v11, v10, v3

    if-ne v6, v11, :cond_4

    aget v11, v10, v7

    if-eq v5, v11, :cond_6

    .line 3499
    :cond_4
    iget-object v11, v0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget v12, v10, v3

    aget-object v12, v11, v12

    aget v13, v10, v7

    aput-object v8, v12, v13

    .line 3500
    aget-object v11, v11, v6

    const/4 v12, 0x0

    aput-object v12, v11, v5

    .line 3501
    aget v11, v10, v3

    iput v11, v9, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 3502
    aget v10, v10, v7

    iput v10, v9, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    if-eqz v1, :cond_5

    .line 3503
    instance-of v10, v8, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    if-eqz v10, :cond_5

    .line 3504
    move-object v10, v8

    check-cast v10, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    invoke-interface {v10, v1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setSkipNextAutoLayoutAnimation(Z)V

    .line 3507
    :cond_5
    invoke-direct {v0, v8}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v11

    const-wide/16 v12, -0x64

    .line 3509
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->getScreenType()I

    move-result v16

    iget-object v8, v0, Lcom/miui/home/launcher/CellLayout;->mDstPos:[I

    aget v17, v8, v3

    aget v18, v8, v7

    .line 3506
    invoke-static/range {v11 .. v18}, Lcom/miui/home/launcher/LauncherModel;->makeMoveItemOperation(Lcom/miui/home/launcher/ItemInfo;JJIII)Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3511
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "alignIconsToTopWithSaveDb, info="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Launcher.CellLayout"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3513
    :cond_6
    invoke-direct {v0, v4}, Lcom/miui/home/launcher/CellLayout;->calNextDstPos(I)V

    :cond_7
    :goto_4
    add-int/2addr v6, v4

    goto/16 :goto_1

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 3517
    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 3518
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->requestLayout()V

    :cond_a
    return-object v2
.end method

.method public alignIconsToTopWithSaveDb(Z)Z
    .locals 2

    .line 3467
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->alignIconsToTop(Z)Ljava/util/ArrayList;

    move-result-object p1

    .line 3468
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3469
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherSettings;->AUTHORITY:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/LauncherModel;->applyBatch(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3470
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->requestLayout()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 0

    .line 3539
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->isSpaceEnough(Lcom/miui/home/launcher/DragObject;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

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

.method public buildDrawingCache(Z)V
    .locals 0

    return-void
.end method

.method public calculateXsAndYs()V
    .locals 14

    .line 701
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mXs:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mYs:[I

    if-nez v0, :cond_0

    goto :goto_2

    .line 704
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingLeft:I

    .line 705
    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    .line 706
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mWidthGap:I

    .line 707
    iget v9, p0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingTop:I

    .line 708
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getPaddingTopDelta()I

    move-result v10

    .line 709
    iget v11, p0, Lcom/miui/home/launcher/CellLayout;->mCellHeight:I

    .line 710
    iget v12, p0, Lcom/miui/home/launcher/CellLayout;->mHeightGap:I

    .line 711
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->getHeightGapDelta()I

    move-result v13

    const/4 v3, 0x0

    move v4, v3

    .line 712
    :goto_0
    iget-object v5, p0, Lcom/miui/home/launcher/CellLayout;->mXs:[I

    array-length v6, v5

    if-ge v4, v6, :cond_1

    .line 713
    invoke-static {v4, v0, v1, v2}, Lcom/miui/home/launcher/CellLayout;->calculateX(IIII)I

    move-result v6

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    .line 715
    :goto_1
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mYs:[I

    array-length v2, v1

    if-ge v0, v2, :cond_2

    move v3, v0

    move v4, v9

    move v5, v10

    move v6, v11

    move v7, v12

    move v8, v13

    .line 716
    invoke-static/range {v3 .. v8}, Lcom/miui/home/launcher/CellLayout;->calculateY(IIIIII)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public canBeDeleted()Z
    .locals 8

    .line 1351
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getLastCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    const/4 v1, 0x1

    if-ne v0, p0, :cond_0

    .line 1352
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->needDeleteLastEmptyScreen()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1354
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->isEmpty()Z

    move-result v2

    .line 1355
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->isPendingItemsEmtpy()Z

    move-result v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 1356
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v4, v5

    const-string v5, "canBeDeleted ret:%s , getChildCount:%s , isEmpty:%s , isPendingItemsEmtpy:%s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Launcher.CellLayout"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 1357
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    if-ne p0, v1, :cond_1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v6

    :goto_1
    return v1
.end method

.method public cancelEditEnterAnim()V
    .locals 0

    .line 406
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mEditAnimContoller:Lcom/miui/home/launcher/anim/EditAnimController;

    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/EditAnimController;->cancelEditEnterAnim()V

    return-void
.end method

.method public cancelLongPress()V
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-virtual {v0}, Lcom/miui/home/launcher/OnLongClickAgent;->cancelCustomziedLongPress()V

    .line 303
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/CancelEmptySpaceLongClickMessage;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/messages/CancelEmptySpaceLongClickMessage;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 306
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 308
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 309
    invoke-virtual {v2}, Landroid/view/View;->cancelLongPress()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method cellToCenterPoint(II[I)V
    .locals 3

    .line 634
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingLeft:I

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mWidthGap:I

    add-int/2addr v2, v1

    mul-int/2addr p1, v2

    add-int/2addr v0, p1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    const/4 p1, 0x0

    aput v0, p3, p1

    .line 635
    iget p1, p0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingTop:I

    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellHeight:I

    iget p0, p0, Lcom/miui/home/launcher/CellLayout;->mHeightGap:I

    add-int/2addr p0, v0

    mul-int/2addr p2, p0

    add-int/2addr p1, p2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    const/4 p0, 0x1

    aput p1, p3, p0

    return-void
.end method

.method cellToPoint(II[I)V
    .locals 3

    .line 646
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingLeft:I

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mWidthGap:I

    add-int/2addr v1, v2

    mul-int/2addr p1, v1

    add-int/2addr v0, p1

    const/4 p1, 0x0

    aput v0, p3, p1

    .line 647
    iget p1, p0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingTop:I

    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellHeight:I

    iget p0, p0, Lcom/miui/home/launcher/CellLayout;->mHeightGap:I

    add-int/2addr v0, p0

    mul-int/2addr p2, v0

    add-int/2addr p1, p2

    const/4 p0, 0x1

    aput p1, p3, p0

    return-void
.end method

.method public changeCellCount(IIII[[Landroid/view/View;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII[[",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 4181
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4182
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "screenId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " occupied is null"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher.CellLayout"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-ne p1, p3, :cond_1

    if-ne p2, p4, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-nez v3, :cond_2

    .line 4187
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->isUsing()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput p2, v4, v0

    aput p1, v4, v2

    .line 4188
    const-class p2, Landroid/view/View;

    invoke-static {p2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[Landroid/view/View;

    iput-object p2, p0, Lcom/miui/home/launcher/CellLayout;->mOldOccupiedCell:[[Landroid/view/View;

    .line 4189
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lcom/miui/home/launcher/CellLayout;->copyOccupiedCells([[Landroid/view/View;[[Landroid/view/View;)Z

    .line 4191
    :cond_2
    invoke-direct {p0, p3, p4, v2}, Lcom/miui/home/launcher/CellLayout;->loadGridConfig(IIZ)V

    if-eqz v3, :cond_3

    .line 4193
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->showUsingCellLayout()V

    goto :goto_1

    :cond_3
    if-nez p5, :cond_4

    return-object v1

    .line 4197
    :cond_4
    invoke-direct {p0, p5}, Lcom/miui/home/launcher/CellLayout;->showPreviewingCellLayout([[Landroid/view/View;)V

    :goto_1
    if-eq p1, p3, :cond_5

    .line 4200
    invoke-direct {p0, p6}, Lcom/miui/home/launcher/CellLayout;->updateWidgetInPreviewing(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4202
    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v2, p1, :cond_7

    .line 4203
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 4204
    instance-of p2, p1, Lcom/miui/home/launcher/UpdateIconSize;

    if-eqz p2, :cond_6

    .line 4205
    check-cast p1, Lcom/miui/home/launcher/UpdateIconSize;

    invoke-interface {p1}, Lcom/miui/home/launcher/UpdateIconSize;->updateSizeOnIconSizeChanged()V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4208
    :cond_7
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->requestLayout()V

    return-object v1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 3154
    instance-of p0, p1, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    return p0
.end method

.method public checkToDeleteSelf()V
    .locals 1

    .line 1367
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertUIThread()V

    .line 1368
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mDeleteSelfRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1370
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mDeleteSelfRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method clearBackupLayout()V
    .locals 5

    .line 2505
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mLayoutBackupValid:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 2507
    :goto_0
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v1, v2, :cond_2

    move v2, v0

    .line 2508
    :goto_1
    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v2, v3, :cond_1

    .line 2509
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCellBak:[[Landroid/view/View;

    aget-object v3, v3, v2

    const/4 v4, 0x0

    aput-object v4, v3, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2512
    :cond_2
    iput-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mLayoutBackupValid:Z

    return-void
.end method

.method public clearCellBackground()V
    .locals 2

    .line 1325
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1326
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 1327
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method clearDraggingState(Lcom/miui/home/launcher/DragObject;)V
    .locals 8

    .line 2425
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2427
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mStayConfirm:Lcom/miui/home/launcher/CellLayout$StayConfirm;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2429
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mStayConfirm:Lcom/miui/home/launcher/CellLayout$StayConfirm;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout$StayConfirm;->clear()V

    if-eqz p1, :cond_1

    .line 2430
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 2431
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2432
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->isDragingOneObjectWhichOccupiedCellMoreThan1X1()Z

    move-result p1

    if-nez p1, :cond_2

    .line 2433
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->clearCellBackground()V

    .line 2436
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->requestUpdateGridCells()V

    .line 2437
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object p1, p1, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v1, v2, :cond_4

    aget v1, p1, v3

    if-eq v1, v2, :cond_4

    .line 2439
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mGridCell:[[Lcom/miui/home/launcher/GridCell;

    aget v4, p1, v0

    aget-object v4, v1, v4

    aget v5, p1, v3

    aget-object v4, v4, v5

    if-eqz v4, :cond_3

    .line 2440
    aget v4, p1, v0

    aget-object v1, v1, v4

    aget p1, p1, v3

    aget-object p1, v1, p1

    invoke-virtual {p1, v3}, Lcom/miui/home/launcher/GridCell;->setActivated(Z)V

    .line 2442
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout$DragPos;->reset()V

    .line 2445
    :cond_4
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mLastDragOverViews:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_5

    new-array v4, v3, [Landroid/view/View;

    aput-object v1, v4, v0

    .line 2447
    invoke-static {v4}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v1

    new-instance v4, Lmiuix/animation/controller/AnimState;

    const-string v5, "origin"

    invoke-direct {v4, v5}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v5, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v6, 0x0

    .line 2448
    invoke-virtual {v4, v5, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v4

    sget-object v5, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 2449
    invoke-virtual {v4, v5, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v4

    new-array v5, v3, [Lmiuix/animation/base/AnimConfig;

    iget-object v6, p0, Lcom/miui/home/launcher/CellLayout;->mCellShakeConfig:Lmiuix/animation/base/AnimConfig;

    aput-object v6, v5, v0

    .line 2447
    invoke-interface {v1, v4, v5}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    .line 2452
    :cond_6
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    .line 2453
    iput v2, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 2454
    iput v2, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 2455
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mLastDragOverViews:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public clearOthersToasted()V
    .locals 3

    .line 2363
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2367
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    const/4 v1, 0x0

    .line 2368
    :goto_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2369
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    if-eq v2, p0, :cond_1

    .line 2371
    invoke-virtual {v2}, Lcom/miui/home/launcher/CellLayout;->clearToasted()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public clearToasted()V
    .locals 1

    const/4 v0, 0x0

    .line 2359
    iput-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mToasted:Z

    return-void
.end method

.method public collectAllIcons(Ljava/util/function/Consumer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3399
    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getIterateDirection(Z)I

    move-result v1

    .line 3400
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/CellLayout;->calCellXRange(I)V

    .line 3401
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/CellLayout;->calFirstIconPos(I)V

    move v2, v0

    .line 3402
    :goto_0
    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v2, v3, :cond_6

    .line 3403
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mCellXIterateRange:[I

    aget v3, v3, v0

    :goto_1
    const/4 v4, 0x1

    .line 3404
    iget-object v5, p0, Lcom/miui/home/launcher/CellLayout;->mCellXIterateRange:[I

    if-ne v1, v4, :cond_0

    aget v5, v5, v4

    if-gt v3, v5, :cond_5

    goto :goto_2

    :cond_0
    aget v5, v5, v4

    if-lt v3, v5, :cond_5

    .line 3406
    :goto_2
    iget-object v5, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v5, v5, v3

    aget-object v5, v5, v2

    if-nez v5, :cond_1

    goto :goto_3

    .line 3408
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/home/launcher/ItemInfo;

    .line 3409
    instance-of v7, v6, Lcom/miui/home/launcher/oldman/ElderlyManShortcut;

    if-nez v7, :cond_4

    instance-of v7, v6, Lcom/miui/home/launcher/oldman/AddContactShortcutInfo;

    if-eqz v7, :cond_2

    goto :goto_3

    .line 3410
    :cond_2
    instance-of v7, v6, Lcom/miui/home/launcher/ShortcutInfo;

    if-nez v7, :cond_3

    instance-of v7, v6, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v7, :cond_4

    :cond_3
    iget v7, v6, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    if-ne v7, v4, :cond_4

    iget v7, v6, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-ne v7, v4, :cond_4

    .line 3412
    invoke-virtual {p0, v5, v4, v0}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;ZZ)V

    .line 3413
    invoke-interface {p1, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3414
    invoke-super {p0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    :goto_3
    add-int/2addr v3, v1

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public containsOnlyEmptyFolders(Lcom/miui/home/launcher/DragObject;)Z
    .locals 5

    .line 3776
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    .line 3778
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3779
    instance-of v4, v3, Lcom/miui/home/launcher/FolderCreationBg;

    if-eqz v4, :cond_0

    goto :goto_1

    .line 3782
    :cond_0
    instance-of v4, v3, Lcom/miui/home/launcher/FolderIcon;

    if-nez v4, :cond_1

    return v1

    .line 3785
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/FolderInfo;

    .line 3786
    invoke-virtual {v3}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v4

    if-eqz v4, :cond_3

    .line 3787
    invoke-virtual {v3}, Lcom/miui/home/launcher/FolderInfo;->isOpened()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3788
    invoke-virtual {v3}, Lcom/miui/home/launcher/FolderInfo;->isOpened()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, p1}, Lcom/miui/home/launcher/FolderInfo;->isAllItemDragging(Lcom/miui/home/launcher/DragObject;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    return v1

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public deleteSelf()V
    .locals 3

    .line 1362
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->deleteScreen(J)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 4068
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mDrawCallback:Lcom/miui/home/launcher/MIUIWidgetAddAnimator$OnDrawCallback;

    if-eqz v0, :cond_0

    .line 4069
    invoke-interface {v0, p1}, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$OnDrawCallback;->onDraw(Landroid/graphics/Canvas;)V

    .line 4071
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->drawCellGrid(Landroid/graphics/Canvas;)V

    .line 4072
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 513
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 514
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    .line 516
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    if-nez v0, :cond_7

    .line 518
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mRect:Landroid/graphics/Rect;

    .line 519
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v4

    add-int/2addr v3, v4

    .line 520
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v5

    add-int/2addr v4, v5

    .line 521
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_0
    const/4 v6, 0x0

    if-ltz v5, :cond_5

    .line 525
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 526
    invoke-direct {p0, v7}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v8

    .line 527
    instance-of v9, v8, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    if-eqz v9, :cond_0

    move-object v9, v8

    check-cast v9, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    iget-boolean v9, v9, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    if-ne v9, v2, :cond_0

    move v9, v2

    goto :goto_1

    :cond_0
    move v9, v6

    :goto_1
    if-eqz v9, :cond_1

    .line 529
    invoke-virtual {v7}, Landroid/view/View;->isLongClickable()Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 530
    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    iput v9, v0, Landroid/graphics/Rect;->left:I

    .line 531
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, v0, Landroid/graphics/Rect;->right:I

    .line 532
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, v0, Landroid/graphics/Rect;->top:I

    .line 533
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, v0, Landroid/graphics/Rect;->bottom:I

    .line 534
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    .line 535
    instance-of v10, v7, Lcom/miui/home/launcher/DesktopIcon;

    if-eqz v10, :cond_3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isAccessibilityEnabled()Z

    move-result v10

    if-nez v10, :cond_3

    .line 536
    move-object v9, v7

    check-cast v9, Lcom/miui/home/launcher/DesktopIcon;

    invoke-interface {v9, p0, v3, v4}, Lcom/miui/home/launcher/DesktopIcon;->isHintClick(Landroid/view/ViewGroup;II)Z

    move-result v9

    :cond_3
    if-eqz v9, :cond_4

    .line 539
    iput-object v7, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 540
    iget v0, v8, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iput v0, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellX:I

    .line 541
    iget v0, v8, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iput v0, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellY:I

    .line 542
    iget v0, v8, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iput v0, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanX:I

    .line 543
    iget v0, v8, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    iput v0, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanY:I

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "touch item:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "Launcher.CellLayout"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_0

    :cond_5
    move v0, v6

    .line 551
    :goto_2
    iput-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastDownOnOccupiedCell:Z

    if-nez v0, :cond_6

    .line 554
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    .line 555
    invoke-virtual {p0, v3, v4, v0}, Lcom/miui/home/launcher/CellLayout;->pointToCell(II[I)V

    const/4 v3, 0x0

    .line 556
    iput-object v3, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 557
    aget v3, v0, v6

    iput v3, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellX:I

    .line 558
    aget v0, v0, v2

    iput v0, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellY:I

    .line 559
    iput v2, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanX:I

    .line 560
    iput v2, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanY:I

    .line 563
    :cond_6
    iget-object v0, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 564
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/CancelEmptySpaceLongClickMessage;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/messages/CancelEmptySpaceLongClickMessage;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    if-ne v0, v2, :cond_8

    .line 568
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->resetTouchCellInfo()V

    .line 570
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/OnLongClickAgent;->onDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 572
    :cond_9
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3

    .line 3580
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mIsDrawingInThumbnailView:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v2, p2, Lcom/miui/home/launcher/CellBackground;

    if-eqz v2, :cond_0

    return v1

    :cond_0
    if-eqz v0, :cond_1

    .line 3583
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v0, :cond_1

    .line 3584
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->isPending()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3587
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0
.end method

.method public exitPreview(J)V
    .locals 2

    const/4 v0, 0x0

    .line 4478
    iput-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOldOccupiedCell:[[Landroid/view/View;

    const/4 v0, 0x1

    .line 4479
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->setIsUsing(Z)V

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 4480
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    .line 4481
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->performLayoutNow(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public fillEmptyCellAuto(II)V
    .locals 12

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Object;

    .line 2162
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "Start filling empty cell auto on cellX=%d,cellY=%d with mHCells=%d,mVCells=%d"

    .line 2161
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Launcher.CellLayout"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2163
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/CellLayout;->isItemPosEmpty(II)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "Fail to fill empty cell auto"

    .line 2164
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2168
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->backupLayout()V

    .line 2169
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/CellLayout;->cellToPositionIndex(II)I

    move-result p1

    add-int/lit8 p2, p1, 0x1

    .line 2170
    :goto_0
    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mTotalCells:I

    if-ge p2, v1, :cond_3

    .line 2171
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    invoke-virtual {p0, p2, v1}, Lcom/miui/home/launcher/CellLayout;->positionIndexToCell(I[I)V

    .line 2172
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    iget-object v7, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    aget v8, v7, v3

    aget-object v1, v1, v8

    aget v7, v7, v4

    aget-object v1, v1, v7

    if-eqz v1, :cond_2

    .line 2173
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v7, :cond_2

    .line 2174
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v7

    .line 2175
    iget v8, v7, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    if-gt v8, v4, :cond_2

    iget v8, v7, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-le v8, v4, :cond_1

    goto :goto_1

    .line 2178
    :cond_1
    iget-object v8, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    iget-object v9, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    aget v10, v9, v3

    aget-object v8, v8, v10

    aget v10, v9, v4

    const/4 v11, 0x0

    aput-object v11, v8, v10

    .line 2179
    invoke-virtual {p0, p1, v9}, Lcom/miui/home/launcher/CellLayout;->positionIndexToCell(I[I)V

    new-array p1, v0, [Ljava/lang/Object;

    .line 2180
    iget v8, v7, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 2181
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, p1, v3

    iget v8, v7, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, p1, v4

    iget-object v8, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    aget v8, v8, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, p1, v5

    iget-object v8, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    aget v8, v8, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, p1, v6

    const-string v8, "Move item from (%d,%d) to (%d,%d)"

    .line 2180
    invoke-static {v8, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2182
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    aget v8, p1, v3

    iput v8, v7, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 2183
    aget v8, p1, v4

    iput v8, v7, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 2184
    iget-object v7, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget v8, p1, v3

    aget-object v7, v7, v8

    aget p1, p1, v4

    aput-object v1, v7, p1

    move p1, p2

    :cond_2
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    .line 2188
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->saveCurrentLayout()V

    .line 2189
    new-instance p1, Lcom/miui/home/launcher/CellLayout$4;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/CellLayout$4;-><init>(Lcom/miui/home/launcher/CellLayout;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public findDropTargetPosition(Lcom/miui/home/launcher/DragObject;)[I
    .locals 10

    .line 1134
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    .line 1136
    iget v1, p1, Lcom/miui/home/launcher/DragObject;->dropAction:I

    if-eqz v1, :cond_6

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    goto :goto_0

    .line 1158
    :cond_0
    iget v1, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v3, v0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget v4, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v5, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/miui/home/launcher/CellLayout;->isCellOccupied(IIII)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1159
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mTmpXY:[I

    const/4 v1, 0x0

    iget v3, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    aput v3, p0, v1

    .line 1160
    iget v1, v0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    aput v1, p0, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    goto :goto_1

    .line 1139
    :cond_2
    iget v1, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v2, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/CellLayout;->findLastVacantArea(II)[I

    move-result-object p0

    goto :goto_1

    .line 1142
    :cond_3
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->isMultiDrag()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1143
    iget v1, p1, Lcom/miui/home/launcher/DragObject;->x:I

    iget v2, p1, Lcom/miui/home/launcher/DragObject;->xOffset:I

    sub-int v4, v1, v2

    iget v1, p1, Lcom/miui/home/launcher/DragObject;->y:I

    iget v2, p1, Lcom/miui/home/launcher/DragObject;->yOffset:I

    sub-int v5, v1, v2

    iget v6, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v7, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/miui/home/launcher/CellLayout;->findNearestLinearVacantArea(IIIIZ)[I

    move-result-object p0

    goto :goto_1

    .line 1146
    :cond_4
    iget-boolean v1, p0, Lcom/miui/home/launcher/CellLayout;->mIsNoVacantMode:Z

    if-eqz v1, :cond_5

    .line 1147
    invoke-virtual {p0, v2, v2}, Lcom/miui/home/launcher/CellLayout;->findFirstVacantArea(II)[I

    move-result-object p0

    goto :goto_1

    .line 1149
    :cond_5
    iget v1, p1, Lcom/miui/home/launcher/DragObject;->x:I

    iget v2, p1, Lcom/miui/home/launcher/DragObject;->xOffset:I

    sub-int v4, v1, v2

    iget v1, p1, Lcom/miui/home/launcher/DragObject;->y:I

    iget v2, p1, Lcom/miui/home/launcher/DragObject;->yOffset:I

    sub-int v5, v1, v2

    iget v6, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v7, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/miui/home/launcher/CellLayout;->findNearestVacantArea(IIIIZZ)[I

    move-result-object p0

    goto :goto_1

    .line 1155
    :cond_6
    iget v1, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v2, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/CellLayout;->findFirstVacantArea(II)[I

    move-result-object p0

    :goto_1
    const-string v1, "findDropTargetPosition: DropAction = "

    const-string v2, "Launcher.CellLayout"

    if-eqz v0, :cond_7

    .line 1165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/miui/home/launcher/DragObject;->dropAction:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " spanX= "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " spanY= "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "targetXY = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1167
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1165
    invoke-static {v2, p1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1169
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/miui/home/launcher/DragObject;->dropAction:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "dragInfo is null , targetXY = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1169
    invoke-static {v2, p1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object p0
.end method

.method public findFirstVacantArea(II)[I
    .locals 7

    .line 1000
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mTmpXY:[I

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 1001
    aput v1, v0, v2

    .line 1002
    invoke-static {v2}, Lcom/miui/home/launcher/DeviceConfig;->getIterateDirection(Z)I

    move-result v1

    .line 1003
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/CellLayout;->calCellXRange(I)V

    move v3, v2

    .line 1004
    :goto_0
    iget v4, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v3, v4, :cond_3

    .line 1005
    iget-object v4, p0, Lcom/miui/home/launcher/CellLayout;->mCellXIterateRange:[I

    aget v4, v4, v2

    :goto_1
    const/4 v5, 0x1

    .line 1006
    iget-object v6, p0, Lcom/miui/home/launcher/CellLayout;->mCellXIterateRange:[I

    if-ne v1, v5, :cond_0

    aget v6, v6, v5

    if-gt v4, v6, :cond_2

    goto :goto_2

    :cond_0
    aget v6, v6, v5

    if-lt v4, v6, :cond_2

    .line 1008
    :goto_2
    invoke-virtual {p0, v4, v3, p1, p2}, Lcom/miui/home/launcher/CellLayout;->isCellOccupied(IIII)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1009
    aput v4, v0, v2

    .line 1010
    aput v3, v0, v5

    return-object v0

    :cond_1
    add-int/2addr v4, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public findLastEmptyCell(II)[I
    .locals 12

    .line 922
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mTmpXY:[I

    .line 923
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 924
    aput v3, v0, v2

    const/4 v4, 0x1

    .line 925
    aput v3, v0, v4

    .line 926
    invoke-static {v4}, Lcom/miui/home/launcher/DeviceConfig;->getIterateDirection(Z)I

    move-result v3

    .line 927
    invoke-direct {p0, v3}, Lcom/miui/home/launcher/CellLayout;->calCellXRange(I)V

    .line 928
    iget v5, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    sub-int/2addr v5, v4

    :goto_0
    if-ltz v5, :cond_e

    .line 929
    iget-object v6, p0, Lcom/miui/home/launcher/CellLayout;->mCellXIterateRange:[I

    aget v6, v6, v2

    .line 930
    :goto_1
    iget-object v7, p0, Lcom/miui/home/launcher/CellLayout;->mCellXIterateRange:[I

    if-ne v3, v4, :cond_0

    aget v7, v7, v4

    if-gt v6, v7, :cond_d

    goto :goto_2

    :cond_0
    aget v7, v7, v4

    if-lt v6, v7, :cond_d

    .line 932
    :goto_2
    iget-object v7, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v8, v7, v6

    aget-object v8, v8, v5

    if-eqz v8, :cond_c

    .line 933
    aget-object v3, v7, v6

    aget-object v3, v3, v5

    .line 934
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ItemInfo;

    .line 940
    iget v5, v3, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    sub-int v6, v5, p2

    if-gez v6, :cond_1

    iget v6, v3, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    add-int/2addr v6, v5

    sub-int/2addr v6, p2

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_3

    .line 941
    :cond_1
    iget v5, v3, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 942
    :goto_3
    iget v6, v3, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    if-eqz v1, :cond_2

    sub-int/2addr v6, v4

    goto :goto_4

    :cond_2
    iget v7, v3, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    add-int/2addr v6, v7

    :goto_4
    if-eqz v1, :cond_3

    move v7, v2

    goto :goto_5

    .line 943
    :cond_3
    iget v7, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    sub-int/2addr v7, v4

    .line 944
    :goto_5
    invoke-static {v2}, Lcom/miui/home/launcher/DeviceConfig;->getIterateDirection(Z)I

    move-result v8

    .line 946
    iget v9, v3, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget v10, v3, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    add-int/2addr v9, v10

    sub-int/2addr v9, v4

    :goto_6
    if-lt v9, v5, :cond_8

    move v10, v7

    :goto_7
    if-eqz v1, :cond_4

    .line 947
    iget v11, v3, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    if-ge v10, v11, :cond_7

    goto :goto_8

    :cond_4
    if-lt v10, v6, :cond_7

    .line 948
    :goto_8
    iget-object v11, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v11, v11, v10

    aget-object v11, v11, v9

    if-eqz v11, :cond_5

    goto :goto_9

    .line 950
    :cond_5
    invoke-virtual {p0, v10, v9, p1, p2}, Lcom/miui/home/launcher/CellLayout;->isCellOccupied(IIII)Z

    move-result v11

    if-nez v11, :cond_6

    .line 951
    aput v10, v0, v2

    .line 952
    aput v9, v0, v4

    :cond_6
    sub-int/2addr v10, v8

    goto :goto_7

    :cond_7
    :goto_9
    add-int/lit8 v9, v9, -0x1

    goto :goto_6

    .line 956
    :cond_8
    aget v5, v0, v2

    if-ltz v5, :cond_9

    aget v5, v0, v4

    if-ltz v5, :cond_9

    return-object v0

    :cond_9
    if-eqz v1, :cond_a

    .line 960
    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    sub-int/2addr v1, p1

    goto :goto_a

    :cond_a
    move v1, v2

    :goto_a
    aput v1, v0, v2

    .line 961
    iget v1, v3, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget v3, v3, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    add-int/2addr v1, v3

    aput v1, v0, v4

    .line 962
    aget v1, v0, v2

    aget v2, v0, v4

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/miui/home/launcher/CellLayout;->isCellOccupied(IIII)Z

    move-result p0

    if-nez p0, :cond_b

    return-object v0

    :cond_b
    const/4 p0, 0x0

    return-object p0

    :cond_c
    add-int/2addr v6, v3

    goto/16 :goto_1

    :cond_d
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_0

    :cond_e
    if-eqz v1, :cond_f

    .line 970
    iget p0, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    sub-int/2addr p0, p1

    goto :goto_b

    :cond_f
    move p0, v2

    :goto_b
    aput p0, v0, v2

    .line 971
    aput v2, v0, v4

    return-object v0
.end method

.method public findLastVacantArea(II)[I
    .locals 8

    .line 976
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mTmpXY:[I

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 977
    aput v2, v0, v1

    const/4 v3, 0x1

    .line 979
    invoke-static {v3}, Lcom/miui/home/launcher/DeviceConfig;->getIterateDirection(Z)I

    move-result v4

    .line 980
    invoke-direct {p0, v4}, Lcom/miui/home/launcher/CellLayout;->calCellXRange(I)V

    .line 981
    iget v5, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    sub-int/2addr v5, v3

    :goto_0
    if-ltz v5, :cond_4

    .line 982
    iget-object v6, p0, Lcom/miui/home/launcher/CellLayout;->mCellXIterateRange:[I

    aget v6, v6, v1

    .line 983
    :goto_1
    iget-object v7, p0, Lcom/miui/home/launcher/CellLayout;->mCellXIterateRange:[I

    if-ne v4, v3, :cond_0

    aget v7, v7, v3

    if-gt v6, v7, :cond_3

    goto :goto_2

    :cond_0
    aget v7, v7, v3

    if-lt v6, v7, :cond_3

    .line 985
    :goto_2
    invoke-virtual {p0, v6, v5, p1, p2}, Lcom/miui/home/launcher/CellLayout;->isCellOccupied(IIII)Z

    move-result v7

    if-nez v7, :cond_1

    .line 986
    aput v6, v0, v1

    .line 987
    aput v5, v0, v3

    goto :goto_3

    .line 988
    :cond_1
    aget v7, v0, v1

    if-eq v7, v2, :cond_2

    return-object v0

    :cond_2
    :goto_3
    add-int/2addr v6, v4

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 993
    :cond_4
    aget p0, v0, v1

    if-eq p0, v2, :cond_5

    return-object v0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method findNearestLinearVacantArea(IIIIZ)[I
    .locals 4

    .line 1019
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mTmpXY:[I

    .line 1020
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/CellLayout;->pointToCell(II[I)V

    if-eqz p5, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    .line 1025
    aget p2, v0, p1

    const/4 p5, 0x1

    aget v1, v0, p5

    invoke-direct {p0, p2, v1}, Lcom/miui/home/launcher/CellLayout;->cellToPositionIndex(II)I

    move-result p2

    move v1, p2

    .line 1027
    :goto_0
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mTotalCells:I

    if-ge v1, v2, :cond_2

    .line 1028
    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/CellLayout;->positionIndexToCell(I[I)V

    .line 1029
    aget v2, v0, p1

    aget v3, v0, p5

    invoke-virtual {p0, v2, v3, p3, p4}, Lcom/miui/home/launcher/CellLayout;->isCellOccupied(IIII)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sub-int/2addr p2, p5

    :goto_1
    if-ltz p2, :cond_4

    .line 1035
    invoke-virtual {p0, p2, v0}, Lcom/miui/home/launcher/CellLayout;->positionIndexToCell(I[I)V

    .line 1036
    aget v1, v0, p1

    aget v2, v0, p5

    invoke-virtual {p0, v1, v2, p3, p4}, Lcom/miui/home/launcher/CellLayout;->isCellOccupied(IIII)Z

    move-result v1

    if-nez v1, :cond_3

    return-object v0

    :cond_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method findNearestVacantArea(IIIIZZ)[I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    const/4 v3, 0x0

    if-nez p5, :cond_0

    mul-int v4, v1, v2

    .line 1076
    iget v5, v0, Lcom/miui/home/launcher/CellLayout;->mTotalCells:I

    if-le v4, v5, :cond_0

    return-object v3

    .line 1079
    :cond_0
    iget-object v4, v0, Lcom/miui/home/launcher/CellLayout;->mTmpXY:[I

    .line 1080
    iget-object v5, v0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    .line 1086
    iget v6, v0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    sub-int/2addr v6, v2

    const-wide v9, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_0
    if-ltz v6, :cond_5

    .line 1087
    iget v11, v0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    sub-int/2addr v11, v1

    :goto_1
    if-ltz v11, :cond_4

    if-eqz p6, :cond_1

    .line 1090
    invoke-virtual {v0, v11, v6, v5}, Lcom/miui/home/launcher/CellLayout;->cellToCenterPoint(II[I)V

    goto :goto_2

    .line 1092
    :cond_1
    invoke-virtual {v0, v11, v6, v5}, Lcom/miui/home/launcher/CellLayout;->cellToPoint(II[I)V

    :goto_2
    const/4 v12, 0x0

    .line 1094
    aget v13, v5, v12

    sub-int v13, v13, p1

    int-to-double v13, v13

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    const/16 v16, 0x1

    aget v17, v5, v16

    sub-int v15, v17, p2

    move-object/from16 v17, v4

    int-to-double v3, v15

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v13, v3

    cmpl-double v3, v13, v9

    if-ltz v3, :cond_2

    goto :goto_3

    :cond_2
    if-nez p5, :cond_3

    .line 1100
    invoke-virtual {v0, v11, v6, v1, v2}, Lcom/miui/home/launcher/CellLayout;->isCellOccupied(IIII)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    .line 1106
    :cond_3
    aput v11, v17, v12

    .line 1107
    aput v6, v17, v16

    move-wide v9, v13

    :goto_3
    add-int/lit8 v11, v11, -0x1

    move-object/from16 v4, v17

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    move-object/from16 v17, v4

    add-int/lit8 v6, v6, -0x1

    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    move-object/from16 v17, v4

    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v0, v9, v3

    if-gez v0, :cond_6

    return-object v17

    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method

.method findNearestVacantAreaByCellPos(IIII)[I
    .locals 7

    .line 1044
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/CellLayout;->cellToPoint(II[I)V

    .line 1045
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    const/4 p2, 0x0

    aget v1, p1, p2

    const/4 p2, 0x1

    aget v2, p1, p2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/miui/home/launcher/CellLayout;->findNearestVacantArea(IIIIZZ)[I

    move-result-object p0

    return-object p0
.end method

.method forceRequestUpdateGridCells()V
    .locals 2

    const/4 v0, 0x0

    .line 2553
    iput-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mGridCellUpdateScheduled:Z

    const-wide/16 v0, 0x0

    .line 2554
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/CellLayout;->schedulerUpdateGridCells(J)V

    return-void
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 3149
    new-instance v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 3159
    new-instance p0, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public bridge synthetic getAllVisibleMIMarketNewInstallShortcuts()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/NewInstallIconContainer;->getAllVisibleMIMarketNewInstallShortcuts()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCellBackground()Landroid/view/View;
    .locals 0

    .line 4490
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    return-object p0
.end method

.method public getCellContainerHeight()I
    .locals 0

    .line 4132
    iget p0, p0, Lcom/miui/home/launcher/CellLayout;->mCellContainerHeight:I

    return p0
.end method

.method getCellHeight()I
    .locals 0

    .line 655
    iget p0, p0, Lcom/miui/home/launcher/CellLayout;->mCellHeight:I

    return p0
.end method

.method getCellHeightGap()I
    .locals 0

    .line 663
    iget p0, p0, Lcom/miui/home/launcher/CellLayout;->mHeightGap:I

    return p0
.end method

.method public getCellPaddingTop()I
    .locals 0

    .line 4136
    iget p0, p0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingTop:I

    return p0
.end method

.method getCellWidth()I
    .locals 0

    .line 651
    iget p0, p0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    return p0
.end method

.method public getCellWidthGap()I
    .locals 0

    .line 659
    iget p0, p0, Lcom/miui/home/launcher/CellLayout;->mWidthGap:I

    return p0
.end method

.method getChildVisualPosByTag(Ljava/lang/Object;[I)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1120
    :goto_0
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v1, v2, :cond_2

    move v2, v0

    .line 1121
    :goto_1
    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v2, v3, :cond_1

    .line 1122
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v3, v3, v2

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    .line 1123
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1124
    aput v2, p2, v0

    const/4 p0, 0x1

    .line 1125
    aput v1, p2, p0

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public getContainerView()Landroid/view/ViewGroup;
    .locals 0

    return-object p0
.end method

.method public getEditAnimContoller()Lcom/miui/home/launcher/anim/EditAnimController;
    .locals 0

    .line 4486
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mEditAnimContoller:Lcom/miui/home/launcher/anim/EditAnimController;

    return-object p0
.end method

.method public getEmptyCellsNum()I
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 3529
    :goto_0
    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mTotalCells:I

    if-ge v1, v3, :cond_1

    .line 3530
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    invoke-virtual {p0, v1, v3}, Lcom/miui/home/launcher/CellLayout;->positionIndexToCell(I[I)V

    .line 3531
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    iget-object v4, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    aget v5, v4, v0

    aget-object v3, v3, v5

    const/4 v5, 0x1

    aget v4, v4, v5

    aget-object v3, v3, v4

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public getFolderCreateAnim()Lcom/miui/home/launcher/anim/FolderCreateBgAnim;
    .locals 0

    .line 4168
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mFolderCreateBgAnim:Lcom/miui/home/launcher/anim/FolderCreateBgAnim;

    return-object p0
.end method

.method public getFolderCreationBg()Landroid/widget/ImageView;
    .locals 0

    .line 4164
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mFolderCreationBg:Lcom/miui/home/launcher/FolderCreationBg;

    return-object p0
.end method

.method public getGridCells()[[Lcom/miui/home/launcher/GridCell;
    .locals 0

    .line 4081
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mGridCell:[[Lcom/miui/home/launcher/GridCell;

    return-object p0
.end method

.method public getItemMoveDescription(II)Ljava/lang/String;
    .locals 3

    .line 3811
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    add-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v0, v2

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const p1, 0x7f100082

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLastOccupiedIndex()I
    .locals 5

    .line 1053
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mTmpXY:[I

    .line 1054
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->getMaxIndex()I

    move-result v1

    :goto_0
    if-ltz v1, :cond_1

    .line 1055
    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/CellLayout;->positionIndexToCell(I[I)V

    const/4 v2, 0x0

    .line 1056
    aget v2, v0, v2

    const/4 v3, 0x1

    aget v4, v0, v3

    invoke-virtual {p0, v2, v4, v3, v3}, Lcom/miui/home/launcher/CellLayout;->isCellOccupied(IIII)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getOccupiedCell()[[Ljava/lang/Object;
    .locals 6

    .line 4140
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4144
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    const-class v0, Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    move v2, v1

    .line 4145
    :goto_0
    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v2, v3, :cond_2

    move v3, v1

    .line 4146
    :goto_1
    iget v4, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v3, v4, :cond_1

    .line 4147
    aget-object v4, v0, v2

    iget-object v5, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getOnLongClickAgent()Lcom/miui/home/launcher/OnLongClickAgent;
    .locals 0

    .line 3796
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    return-object p0
.end method

.method public getPaddingTopDelta()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getScreenId()J
    .locals 2

    .line 322
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-wide v0, p0, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    return-wide v0
.end method

.method public getScreenType()I
    .locals 0

    .line 333
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget p0, p0, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenType:I

    return p0
.end method

.method public getVersionTag()Ljava/lang/Object;
    .locals 0

    .line 608
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowAttachCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getmXs()[I
    .locals 0

    .line 4124
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mXs:[I

    return-object p0
.end method

.method public getmYs()[I
    .locals 0

    .line 4128
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mYs:[I

    return-object p0
.end method

.method public hasNewInstallApps()Z
    .locals 0

    .line 454
    iget-boolean p0, p0, Lcom/miui/home/launcher/CellLayout;->mHasNewInstallApps:Z

    return p0
.end method

.method public hasToastedNoSpace()Z
    .locals 0

    .line 1253
    iget-boolean p0, p0, Lcom/miui/home/launcher/CellLayout;->mToasted:Z

    return p0
.end method

.method public isCellOccupied(IIII)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_6

    add-int v2, p1, v1

    .line 876
    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_5

    if-gez v2, :cond_0

    goto :goto_3

    :cond_0
    move v3, v0

    :goto_1
    if-ge v3, p4, :cond_4

    add-int v5, p2, v3

    .line 880
    iget v6, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v5, v6, :cond_3

    if-gez v5, :cond_1

    goto :goto_2

    .line 883
    :cond_1
    iget-object v6, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v6, v6, v2

    aget-object v5, v6, v5

    if-eqz v5, :cond_2

    return v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return v4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    return v4

    :cond_6
    return v0
.end method

.method public isCellOccupiedExceptItem(IIIILcom/miui/home/launcher/ItemInfo;)Z
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_7

    add-int v2, p1, v1

    .line 893
    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_6

    if-gez v2, :cond_0

    goto :goto_4

    :cond_0
    move v3, v0

    :goto_1
    if-ge v3, p4, :cond_5

    add-int v5, p2, v3

    .line 897
    iget v6, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v5, v6, :cond_4

    if-gez v5, :cond_1

    goto :goto_3

    .line 902
    :cond_1
    iget-object v6, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v6, v6, v2

    aget-object v6, v6, v5

    if-eqz v6, :cond_3

    .line 903
    iget v6, p5, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    if-lt v2, v6, :cond_2

    iget v7, p5, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    add-int/2addr v6, v7

    if-ge v2, v6, :cond_2

    iget v6, p5, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    if-lt v5, v6, :cond_2

    iget v7, p5, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_2

    goto :goto_2

    :cond_2
    return v4

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    return v4

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    :goto_4
    return v4

    :cond_7
    return v0
.end method

.method public isChildrenLaidOut()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 4108
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4109
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4110
    invoke-virtual {v2}, Landroid/view/View;->isLaidOut()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public isEmpty()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1707
    :goto_0
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v1, v2, :cond_2

    move v2, v0

    .line 1708
    :goto_1
    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v2, v3, :cond_1

    .line 1709
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public isFull()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 3800
    :goto_0
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v1, v2, :cond_2

    move v2, v0

    .line 3801
    :goto_1
    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v2, v3, :cond_1

    .line 3802
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v3, v3, v2

    aget-object v3, v3, v1

    if-nez v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method isItemPosInvalid(IIII)Z
    .locals 0

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    add-int/2addr p1, p3

    .line 866
    iget p3, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-gt p1, p3, :cond_1

    add-int/2addr p2, p4

    iget p0, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-le p2, p0, :cond_0

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

.method public isNoVacantMode()Z
    .locals 0

    .line 260
    iget-boolean p0, p0, Lcom/miui/home/launcher/CellLayout;->mIsNoVacantMode:Z

    return p0
.end method

.method public isPendingItemsEmtpy()Z
    .locals 0

    .line 1345
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mPendingItemsDelegate:Lcom/miui/home/launcher/PendingSourceDelegate;

    invoke-virtual {p0}, Lcom/miui/home/launcher/PendingSourceDelegate;->isPendingItemsEmtpy()Z

    move-result p0

    return p0
.end method

.method public isQuickCallCellLayout()Z
    .locals 1

    const/4 v0, 0x3

    .line 341
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/CellLayout;->isScreenType(I)Z

    move-result p0

    return p0
.end method

.method public isSpaceEnough(Lcom/miui/home/launcher/DragObject;)Z
    .locals 1

    .line 2342
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getEmptyCellsNum()I

    move-result p0

    .line 2343
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getRemainedDraggingSize()I

    move-result v0

    if-gt v0, p0, :cond_0

    .line 2344
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    mul-int/2addr v0, p1

    if-gt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 2345
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isSpaceEnough: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Launcher.CellLayout"

    invoke-static {v0, p1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public isUsing()Z
    .locals 0

    .line 4176
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-boolean p0, p0, Lcom/miui/home/launcher/CellLayout$CellInfo;->isUsing:Z

    return p0
.end method

.method public isVisibleForMaml()Z
    .locals 0

    .line 3988
    iget-boolean p0, p0, Lcom/miui/home/launcher/CellLayout;->mVisibleForMaml:Z

    return p0
.end method

.method public lastDownOnOccupiedCell()Z
    .locals 0

    .line 3242
    iget-boolean p0, p0, Lcom/miui/home/launcher/CellLayout;->mLastDownOnOccupiedCell:Z

    return p0
.end method

.method public measureChild(Landroid/view/View;)V
    .locals 7

    .line 725
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 726
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/miui/home/launcher/ItemInfo;

    .line 727
    iget v2, v4, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v3, v4, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/launcher/CellLayout;->setupLayoutParam(IILcom/miui/home/launcher/ItemInfo;ZLcom/miui/home/launcher/CellLayout$LayoutParams;)V

    .line 728
    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    .line 729
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 730
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 731
    invoke-virtual {p1, p0, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public needAlignIconsToTop()Z
    .locals 7

    const/4 v0, 0x0

    .line 3445
    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getIterateDirection(Z)I

    move-result v1

    .line 3446
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/CellLayout;->calFirstIconPos(I)V

    .line 3450
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move v4, v0

    :goto_0
    iget-object v5, p0, Lcom/miui/home/launcher/CellLayout;->mFirstPos:[I

    aget v5, v5, v3

    if-lt v2, v5, :cond_5

    if-ne v1, v3, :cond_0

    .line 3451
    iget v5, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    sub-int/2addr v5, v3

    goto :goto_1

    :cond_0
    move v5, v0

    :goto_1
    if-ne v1, v3, :cond_1

    if-ltz v5, :cond_4

    goto :goto_2

    .line 3452
    :cond_1
    iget v6, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    sub-int/2addr v6, v3

    if-gt v5, v6, :cond_4

    .line 3454
    :goto_2
    iget-object v6, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v6, v6, v5

    aget-object v6, v6, v2

    if-eqz v4, :cond_2

    if-nez v6, :cond_2

    return v3

    :cond_2
    if-nez v4, :cond_3

    if-eqz v6, :cond_3

    .line 3458
    invoke-direct {p0, v6}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/home/launcher/ItemInfo;->isOccupiedCell1x1()Z

    move-result v6

    if-eqz v6, :cond_3

    move v4, v3

    :cond_3
    sub-int/2addr v5, v1

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public offset([FLcom/miui/home/launcher/DragObject;)V
    .locals 5

    .line 1389
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result v0

    .line 1390
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 1391
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_4

    .line 1394
    array-length v2, p1

    if-lez v2, :cond_4

    .line 1395
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1396
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Landroid/widget/FrameLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1397
    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 1398
    invoke-virtual {v1, v2, v3}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eq v2, p0, :cond_3

    .line 1400
    invoke-virtual {v2}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v2

    .line 1401
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v1

    .line 1402
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_1

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_1
    sub-int v1, v2, v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1404
    aget v0, p1, v2

    int-to-float v1, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    aput v0, p1, v2

    goto :goto_1

    .line 1406
    :cond_2
    aget v0, p1, v2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v3

    mul-int/2addr v1, v3

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p1, v2

    .line 1409
    :cond_3
    :goto_1
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->isIgnoreSearchLayoutTranY()Z

    move-result p2

    if-nez p2, :cond_4

    .line 1410
    aget p2, p1, v1

    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getScreen()Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p0

    add-float/2addr p2, p0

    aput p2, p1, v1

    :cond_4
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 2412
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2413
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 2418
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2419
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 2420
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mDeleteSelfRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method onDragChild(Landroid/view/View;)V
    .locals 2

    .line 1319
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    const/4 v1, 0x1

    .line 1320
    iput-boolean v1, v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->isDragging:Z

    .line 1321
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Z)V

    return-void
.end method

.method onDragEnter(Lcom/miui/home/launcher/DragObject;)V
    .locals 4

    .line 2284
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout$DragPos;->reset()V

    .line 2285
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->backupLayout()V

    .line 2286
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->setCellBackgroundImage(Lcom/miui/home/launcher/DragObject;)V

    .line 2287
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellBackground;->bindDragObject(Lcom/miui/home/launcher/DragObject;)V

    .line 2288
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellBackground;->setSkipNextAutoLayoutAnimation(Z)V

    .line 2289
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastDragedXY:[I

    const/4 v2, 0x0

    const/4 v3, -0x1

    aput v3, v0, v2

    .line 2290
    aput v3, v0, v1

    .line 2291
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->isSpaceEnough(Lcom/miui/home/launcher/DragObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2292
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/launcher/CellLayout;->showNoSpaceToast(Lcom/miui/home/launcher/DragObject;Z)V

    goto :goto_2

    .line 2294
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->isMultiDrag()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2295
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2296
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 2299
    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->predictWidgetCanBeAdded(Lcom/miui/home/launcher/DragObject;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 2302
    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/launcher/CellLayout;->showNoSpaceToast(Lcom/miui/home/launcher/DragObject;Z)V

    goto :goto_2

    .line 2300
    :cond_3
    :goto_0
    invoke-virtual {p0, p1, v2}, Lcom/miui/home/launcher/CellLayout;->showNoSpaceToast(Lcom/miui/home/launcher/DragObject;Z)V

    goto :goto_2

    .line 2297
    :cond_4
    :goto_1
    invoke-virtual {p0, p1, v2}, Lcom/miui/home/launcher/CellLayout;->showNoSpaceToast(Lcom/miui/home/launcher/DragObject;Z)V

    .line 2306
    :goto_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->clearOthersToasted()V

    return-void
.end method

.method onDragExit(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 2377
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->clearDraggingState(Lcom/miui/home/launcher/DragObject;)V

    .line 2378
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->isDroped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2379
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->rollbackLayout()V

    .line 2380
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->clearBackupLayout()V

    .line 2381
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    if-eqz v0, :cond_0

    .line 2382
    invoke-interface {v0, p1}, Lcom/miui/home/launcher/DropTarget;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    const/4 v0, 0x0

    .line 2383
    iput-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    .line 2386
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellBackground;->unbindDragObject(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method onDragOver(Lcom/miui/home/launcher/DragObject;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 2770
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget v9, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 2771
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget v10, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    .line 2772
    invoke-virtual/range {p0 .. p1}, Lcom/miui/home/launcher/CellLayout;->findDropTargetPosition(Lcom/miui/home/launcher/DragObject;)[I

    move-result-object v11

    .line 2773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellLayout onDragOver cellPos is Null ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-nez v11, :cond_0

    move v1, v13

    goto :goto_0

    :cond_0
    move v1, v12

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "isMultiDrag ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2774
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->isMultiDrag()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.CellLayout"

    .line 2773
    invoke-static {v1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v11, :cond_3

    .line 2776
    iget-object v0, v7, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    if-eqz v0, :cond_1

    .line 2777
    iget-object v0, v7, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {v7, v0}, Lcom/miui/home/launcher/CellLayout;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 2779
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->isMultiDrag()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2780
    iget-object v0, v7, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {v7, v0}, Lcom/miui/home/launcher/CellLayout;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 2782
    :cond_2
    iget-object v1, v7, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    move-object/from16 v0, p0

    move-object v2, v11

    move v3, v9

    move v4, v10

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/CellLayout;->updateCellBackgroundPositionWhenDragOver(Lcom/miui/home/launcher/CellBackground;[IIILcom/miui/home/launcher/DragObject;)V

    .line 2785
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    if-eqz v0, :cond_3

    .line 2786
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    aget v1, v11, v12

    iput v1, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 2787
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    aget v1, v11, v13

    iput v1, v0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    :cond_3
    if-gt v9, v13, :cond_5

    if-le v10, v13, :cond_4

    goto :goto_2

    .line 2799
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getVisionCenterPosition()[I

    move-result-object v0

    .line 2800
    aget v1, v0, v12

    .line 2801
    aget v0, v0, v13

    move v14, v0

    move v15, v1

    move v6, v13

    goto :goto_3

    .line 2795
    :cond_5
    :goto_2
    iget v0, v8, Lcom/miui/home/launcher/DragObject;->x:I

    iget v1, v8, Lcom/miui/home/launcher/DragObject;->xOffset:I

    sub-int v1, v0, v1

    .line 2796
    iget v0, v8, Lcom/miui/home/launcher/DragObject;->y:I

    iget v2, v8, Lcom/miui/home/launcher/DragObject;->yOffset:I

    sub-int/2addr v0, v2

    move v14, v0

    move v15, v1

    move v6, v12

    .line 2804
    :goto_3
    iget-object v5, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move v1, v15

    move v2, v14

    move v3, v9

    move v4, v10

    move-object v13, v5

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v6}, Lcom/miui/home/launcher/CellLayout;->findNearestVacantArea(IIIIZZ)[I

    move-result-object v0

    iput-object v0, v13, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    .line 2806
    iget-object v0, v7, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    iget-object v1, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v1, v1, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v2, v1, v12

    aget-object v0, v0, v2

    const/4 v2, 0x1

    aget v1, v1, v2

    aget-object v0, v0, v1

    .line 2808
    iget-object v1, v7, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/allapps/LauncherMode;->isIconPositionFixed(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-void

    :cond_6
    const/4 v3, 0x2

    if-gt v9, v2, :cond_14

    if-le v10, v2, :cond_7

    goto/16 :goto_7

    .line 2829
    :cond_7
    instance-of v2, v0, Lcom/miui/home/launcher/DropTarget;

    if-eqz v2, :cond_8

    move-object v2, v0

    check-cast v2, Lcom/miui/home/launcher/DropTarget;

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    :goto_4
    if-nez v0, :cond_9

    .line 2831
    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iput v12, v2, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    goto/16 :goto_6

    .line 2832
    :cond_9
    invoke-direct {v7, v0}, Lcom/miui/home/launcher/CellLayout;->isOccupiedMoreThan1X1(Landroid/view/View;)Z

    move-result v5

    const/4 v6, 0x3

    const/4 v9, 0x4

    if-nez v5, :cond_d

    .line 2833
    iget-object v5, v7, Lcom/miui/home/launcher/CellLayout;->mRectTmp:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v13

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v5, v10, v13, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 2835
    iget-object v1, v7, Lcom/miui/home/launcher/CellLayout;->mRectTmp:Landroid/graphics/Rect;

    iget v4, v7, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    div-int/2addr v4, v9

    iget v5, v7, Lcom/miui/home/launcher/CellLayout;->mCellHeight:I

    div-int/2addr v5, v9

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->inset(II)V

    .line 2836
    iget-object v1, v7, Lcom/miui/home/launcher/CellLayout;->mRectTmp:Landroid/graphics/Rect;

    invoke-virtual {v1, v15, v14}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz v2, :cond_a

    invoke-interface {v2}, Lcom/miui/home/launcher/DropTarget;->isDropEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v2, v8}, Lcom/miui/home/launcher/DropTarget;->acceptDrop(Lcom/miui/home/launcher/DragObject;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2837
    iget-object v1, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iput v3, v1, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    goto/16 :goto_6

    .line 2839
    :cond_a
    iget-object v1, v7, Lcom/miui/home/launcher/CellLayout;->mRectTmp:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    .line 2840
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v9

    .line 2839
    invoke-virtual {v1, v2, v4, v5, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 2841
    iget-object v1, v7, Lcom/miui/home/launcher/CellLayout;->mRectTmp:Landroid/graphics/Rect;

    invoke-virtual {v1, v15, v14}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2842
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/2addr v2, v3

    add-int/2addr v1, v2

    if-ge v15, v1, :cond_b

    .line 2843
    iget-object v1, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    const/4 v2, 0x1

    iput v2, v1, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    goto/16 :goto_6

    .line 2845
    :cond_b
    iget-object v1, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iput v6, v1, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    goto/16 :goto_6

    .line 2848
    :cond_c
    iget-object v0, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iput v12, v0, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    const/4 v0, 0x0

    goto/16 :goto_6

    .line 2853
    :cond_d
    iget-object v1, v7, Lcom/miui/home/launcher/CellLayout;->mRectTmp:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v13

    invoke-virtual {v1, v4, v5, v10, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 2854
    iget-object v1, v7, Lcom/miui/home/launcher/CellLayout;->mRectTmp:Landroid/graphics/Rect;

    invoke-virtual {v1, v15, v14}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2855
    iget-object v1, v7, Lcom/miui/home/launcher/CellLayout;->mRectTmp:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int v4, v14, v4

    .line 2856
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v14

    .line 2857
    iget v10, v1, Landroid/graphics/Rect;->left:I

    sub-int v10, v15, v10

    .line 2858
    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v15

    .line 2859
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v13, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2861
    iget v13, v7, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    div-int/2addr v13, v9

    if-lt v1, v13, :cond_f

    if-eqz v2, :cond_f

    invoke-interface {v2}, Lcom/miui/home/launcher/DropTarget;->isDropEnabled()Z

    move-result v13

    if-eqz v13, :cond_f

    .line 2862
    invoke-interface {v2, v8}, Lcom/miui/home/launcher/DropTarget;->acceptDrop(Lcom/miui/home/launcher/DragObject;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_5

    .line 2873
    :cond_e
    iget-object v1, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iput v3, v1, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    goto :goto_6

    :cond_f
    :goto_5
    if-ne v1, v4, :cond_10

    .line 2864
    iget-object v1, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iput v9, v1, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    goto :goto_6

    :cond_10
    if-ne v1, v5, :cond_11

    .line 2866
    iget-object v1, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    const/4 v2, 0x5

    iput v2, v1, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    goto :goto_6

    :cond_11
    if-ne v1, v10, :cond_12

    .line 2868
    iget-object v1, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    const/4 v2, 0x1

    iput v2, v1, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    goto :goto_6

    .line 2870
    :cond_12
    iget-object v1, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iput v6, v1, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    .line 2878
    :cond_13
    :goto_6
    iget-object v1, v7, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    if-eqz v1, :cond_1a

    if-eq v0, v1, :cond_1a

    .line 2879
    invoke-interface {v1, v8}, Lcom/miui/home/launcher/DropTarget;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    const/4 v1, 0x0

    .line 2880
    iput-object v1, v7, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    goto :goto_a

    .line 2813
    :cond_14
    :goto_7
    iget-object v1, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v1, v1, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v2, v1, v12

    add-int/2addr v2, v9

    iget v4, v7, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-le v2, v4, :cond_15

    sub-int/2addr v4, v9

    .line 2814
    aput v4, v1, v12

    :cond_15
    const/4 v2, 0x1

    .line 2816
    aget v4, v1, v2

    add-int/2addr v4, v10

    iget v5, v7, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-le v4, v5, :cond_16

    sub-int/2addr v5, v10

    .line 2817
    aput v5, v1, v2

    .line 2819
    :cond_16
    iget-object v4, v7, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    .line 2820
    aget v5, v1, v12

    aget v1, v1, v2

    invoke-virtual {v7, v5, v1, v4}, Lcom/miui/home/launcher/CellLayout;->cellToPoint(II[I)V

    .line 2821
    aget v1, v4, v12

    sub-int/2addr v1, v15

    .line 2822
    aget v4, v4, v2

    sub-int/2addr v4, v14

    .line 2823
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v2, v5, :cond_18

    .line 2824
    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    if-lez v1, :cond_17

    const/16 v1, 0x8

    goto :goto_8

    :cond_17
    const/16 v1, 0x9

    :goto_8
    iput v1, v2, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    goto :goto_a

    .line 2826
    :cond_18
    iget-object v1, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    if-lez v4, :cond_19

    const/4 v2, 0x6

    goto :goto_9

    :cond_19
    const/4 v2, 0x7

    :goto_9
    iput v2, v1, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    .line 2884
    :cond_1a
    :goto_a
    iget-object v1, v7, Lcom/miui/home/launcher/CellLayout;->mLastDragedXY:[I

    aget v2, v1, v12

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1b

    const/4 v2, 0x1

    aget v5, v1, v2

    if-eq v5, v4, :cond_1c

    aget v1, v1, v12

    sub-int/2addr v1, v15

    .line 2886
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v4, 0x5

    if-ge v1, v4, :cond_1c

    iget-object v1, v7, Lcom/miui/home/launcher/CellLayout;->mLastDragedXY:[I

    aget v1, v1, v2

    sub-int/2addr v1, v14

    .line 2887
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v4, :cond_1c

    return-void

    :cond_1b
    const/4 v2, 0x1

    .line 2891
    :cond_1c
    iget-object v1, v7, Lcom/miui/home/launcher/CellLayout;->mLastDragedXY:[I

    aput v15, v1, v12

    .line 2892
    aput v14, v1, v2

    .line 2894
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v4, v7, Lcom/miui/home/launcher/CellLayout;->mLastRelayoutTime:J

    sub-long/2addr v1, v4

    const-wide/16 v4, 0x28a

    cmp-long v1, v1, v4

    if-lez v1, :cond_20

    .line 2895
    iget-object v1, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    invoke-direct {v7, v1, v8}, Lcom/miui/home/launcher/CellLayout;->shakeCoveringViews(Lcom/miui/home/launcher/CellLayout$DragPos;Lcom/miui/home/launcher/DragObject;)V

    .line 2896
    iget-object v1, v7, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/CellLayout$DragPos;->equal(Lcom/miui/home/launcher/CellLayout$DragPos;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 2897
    iget-object v1, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    invoke-direct {v7, v1, v8}, Lcom/miui/home/launcher/CellLayout;->updateDropTargetCell(Lcom/miui/home/launcher/CellLayout$DragPos;Lcom/miui/home/launcher/DragObject;)V

    .line 2898
    iget-object v1, v7, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/CellLayout$DragPos;->set(Lcom/miui/home/launcher/CellLayout$DragPos;)V

    .line 2899
    iget-object v1, v7, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout$DragPos;->isInvalid()Z

    move-result v1

    if-nez v1, :cond_1d

    if-eqz v11, :cond_1d

    .line 2900
    aget v1, v11, v12

    const/4 v2, 0x1

    aget v2, v11, v2

    invoke-virtual {v7, v1, v2}, Lcom/miui/home/launcher/CellLayout;->getItemMoveDescription(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/miui/home/launcher/DragObject;->announce(Ljava/lang/CharSequence;)V

    .line 2902
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mStayConfirm:Lcom/miui/home/launcher/CellLayout$StayConfirm;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2903
    iget-object v1, v7, Lcom/miui/home/launcher/CellLayout;->mStayConfirm:Lcom/miui/home/launcher/CellLayout$StayConfirm;

    invoke-static {v1, v8}, Lcom/miui/home/launcher/CellLayout$StayConfirm;->access$2102(Lcom/miui/home/launcher/CellLayout$StayConfirm;Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/DragObject;

    .line 2904
    instance-of v0, v0, Lcom/miui/home/launcher/FolderIcon;

    .line 2905
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 2906
    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mStayConfirm:Lcom/miui/home/launcher/CellLayout$StayConfirm;

    iget-object v4, v7, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget v4, v4, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    const-wide/16 v5, 0x154

    if-ne v4, v3, :cond_1f

    if-eqz v0, :cond_1e

    if-eqz v1, :cond_1e

    const/16 v0, 0x64

    goto :goto_b

    :cond_1e
    const/16 v0, 0x154

    :goto_b
    int-to-long v5, v0

    :cond_1f
    invoke-virtual {v7, v2, v5, v6}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2911
    :cond_20
    invoke-direct/range {p0 .. p1}, Lcom/miui/home/launcher/CellLayout;->showCellBackgroundDrawable(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 3524
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method onDrop(Lcom/miui/home/launcher/DragObject;Landroid/view/View;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1176
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    .line 1180
    :cond_0
    iget-object v5, v0, Lcom/miui/home/launcher/CellLayout;->mStayConfirm:Lcom/miui/home/launcher/CellLayout$StayConfirm;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1181
    iget-object v3, v0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    if-eqz v3, :cond_2

    .line 1182
    invoke-interface {v3, v1}, Lcom/miui/home/launcher/DropTarget;->onDrop(Lcom/miui/home/launcher/DragObject;)Z

    move-result v2

    .line 1183
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->isLastObject()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1184
    iget-object v3, v0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    invoke-interface {v3, v1}, Lcom/miui/home/launcher/DropTarget;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    const/4 v1, 0x0

    .line 1185
    iput-object v1, v0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    if-nez v2, :cond_1

    .line 1187
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->rollbackLayout()V

    :cond_1
    return v2

    .line 1193
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/miui/home/launcher/CellLayout;->findDropTargetPosition(Lcom/miui/home/launcher/DragObject;)[I

    move-result-object v3

    if-nez v3, :cond_3

    return v4

    .line 1198
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v5

    const/4 v6, 0x1

    if-nez v2, :cond_4

    .line 1202
    aget v0, v3, v4

    iput v0, v5, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 1203
    aget v0, v3, v6

    iput v0, v5, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    return v6

    .line 1207
    :cond_4
    instance-of v7, v5, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    if-eqz v7, :cond_6

    iget-wide v7, v5, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_5

    iget v7, v5, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    aget v8, v3, v4

    if-ne v7, v8, :cond_5

    iget v7, v5, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    aget v8, v3, v6

    if-eq v7, v8, :cond_6

    .line 1209
    :cond_5
    iget-object v9, v0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    move-object v10, v5

    check-cast v10, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    const/4 v11, 0x0

    iget-wide v7, v5, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    long-to-int v12, v7

    .line 1210
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v7

    long-to-int v13, v7

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget v7, v5, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v8, v5, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    aget v18, v3, v4

    aget v19, v3, v6

    move/from16 v16, v7

    move/from16 v17, v8

    .line 1209
    invoke-static/range {v9 .. v19}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackDragMiuiWidget(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;IIIIIIIII)V

    .line 1215
    :cond_6
    invoke-direct {v0, v2}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v7

    .line 1216
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 1217
    aget v8, v3, v4

    iput v8, v7, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 1218
    aget v3, v3, v6

    iput v3, v7, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    const-wide/16 v8, -0x64

    .line 1219
    iput-wide v8, v7, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 1221
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 1222
    iput-boolean v4, v3, Lcom/miui/home/launcher/CellLayout$LayoutParams;->isDragging:Z

    .line 1223
    iput-boolean v6, v3, Lcom/miui/home/launcher/CellLayout$LayoutParams;->dropped:Z

    .line 1224
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_7

    const/4 v4, -0x1

    .line 1225
    invoke-virtual {v0, v2, v4, v3}, Lcom/miui/home/launcher/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1227
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 1229
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->requestLayout()V

    .line 1230
    invoke-virtual {v0, v2, v4}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Z)V

    .line 1232
    :goto_0
    instance-of v3, v2, Lcom/miui/home/launcher/interfaces/IEditable;

    if-eqz v3, :cond_8

    .line 1233
    move-object v3, v2

    check-cast v3, Lcom/miui/home/launcher/interfaces/IEditable;

    iget-object v4, v0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v4

    invoke-interface {v3, v4, v6}, Lcom/miui/home/launcher/interfaces/IEditable;->setEditMode(ZZ)V

    .line 1235
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v3

    new-instance v4, Lcom/miui/home/launcher/CellLayout$2;

    invoke-direct {v4, v0, v5, v1, v2}, Lcom/miui/home/launcher/CellLayout$2;-><init>(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/DragObject;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/DragView;->setOnRemoveCallback(Ljava/lang/Runnable;)V

    return v6
.end method

.method onDropAborted(Landroid/view/View;)V
    .locals 2

    .line 1301
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1303
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mStayConfirm:Lcom/miui/home/launcher/CellLayout$StayConfirm;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 1306
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    const/4 v0, 0x0

    .line 1307
    iput-boolean v0, p1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->isDragging:Z

    .line 1308
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->rollbackLayout()V

    :cond_1
    return-void
.end method

.method onDropCompleted()V
    .locals 1

    .line 1281
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->saveCurrentLayout()V

    .line 1282
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->clearBackupLayout()V

    .line 1283
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->updateChildColorIfNeed()V

    .line 1284
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    if-eqz v0, :cond_0

    .line 1285
    invoke-interface {v0}, Lcom/miui/home/launcher/DropTarget;->onDropCompleted()V

    const/4 v0, 0x0

    .line 1286
    iput-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    :cond_0
    return-void
.end method

.method public onDropFormThumbnail(Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1261
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    const-wide/16 v2, -0x64

    .line 1262
    iput-wide v2, v1, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 1263
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 1264
    iput-boolean v0, v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->isDragging:Z

    const/4 v2, 0x1

    .line 1265
    iput-boolean v2, v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->dropped:Z

    .line 1266
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v0, -0x1

    .line 1267
    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1269
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 1270
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Z)V

    .line 1272
    :goto_0
    instance-of v0, p1, Lcom/miui/home/launcher/interfaces/IEditable;

    if-eqz v0, :cond_2

    .line 1273
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/interfaces/IEditable;

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v1

    invoke-interface {v0, v1, v2}, Lcom/miui/home/launcher/interfaces/IEditable;->setEditMode(ZZ)V

    :cond_2
    const/4 v0, 0x0

    .line 1275
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1276
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return v2
.end method

.method onDropStart(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 2390
    iget-boolean p1, p0, Lcom/miui/home/launcher/CellLayout;->mLayoutBackupValid:Z

    if-nez p1, :cond_0

    .line 2391
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->backupLayout()V

    :cond_0
    return-void
.end method

.method public onInterceptSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onInvisible(I)V
    .locals 1

    .line 3969
    sget-object v0, Lcom/miui/home/launcher/CellLayout;->sOnItemInvisibleWorker:Lcom/miui/home/launcher/CellLayout$ItemVisibilityWorker;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/CellLayout;->workOnAllCellLayoutItem(Lcom/miui/home/launcher/CellLayout$ItemVisibilityWorker;I)V

    const/4 p1, 0x0

    .line 3970
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->setVisibleForMaml(Z)V

    .line 3971
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->trackExposeEvent()V

    .line 3972
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mNewInstallAnimHelper:Lcom/miui/home/launcher/NewInstallAnimHelper;

    invoke-virtual {p0}, Lcom/miui/home/launcher/NewInstallAnimHelper;->onParentInvisible()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .line 745
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mXs:[I

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mYs:[I

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 748
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_4

    .line 751
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 752
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p5

    const/16 v0, 0x8

    if-eq p5, v0, :cond_3

    .line 754
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    move-object v4, p5

    check-cast v4, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 755
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/miui/home/launcher/ItemInfo;

    .line 761
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mXs:[I

    iget v1, p5, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    aget v3, v0, v1

    .line 762
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mYs:[I

    iget v1, p5, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    aget v5, v0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-lez v0, :cond_2

    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-lez v0, :cond_2

    .line 776
    instance-of p5, p4, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    if-eqz p5, :cond_1

    iget-object p5, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Lcom/miui/home/launcher/Launcher;->isShowingUserPresentAnimation()Z

    move-result p5

    if-eqz p5, :cond_1

    .line 777
    move-object p5, p4

    check-cast p5, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    const/4 v0, 0x1

    invoke-interface {p5, v0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setSkipNextAutoLayoutAnimation(Z)V

    .line 779
    :cond_1
    iget p5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    add-int/2addr p5, v3

    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    add-int/2addr v0, v5

    invoke-virtual {p4, v3, v5, p5, v0}, Landroid/view/View;->layout(IIII)V

    .line 781
    iget-boolean p4, v4, Lcom/miui/home/launcher/CellLayout$LayoutParams;->dropped:Z

    if-eqz p4, :cond_3

    .line 782
    iput-boolean p2, v4, Lcom/miui/home/launcher/CellLayout$LayoutParams;->dropped:Z

    .line 784
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    .line 785
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 786
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getParallelExecutor()Ljava/util/concurrent/Executor;

    move-result-object p4

    new-instance p5, Lcom/miui/home/launcher/CellLayout$1;

    move-object v0, p5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/CellLayout$1;-><init>(Lcom/miui/home/launcher/CellLayout;[IILcom/miui/home/launcher/CellLayout$LayoutParams;I)V

    invoke-interface {p4, p5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 769
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "item size = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " illegal with cellWidth = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " cellHeight = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/launcher/CellLayout;->mCellHeight:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " item = "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    invoke-virtual {p5}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    const-string p0, "Launcher.CellLayout"

    const-string p1, "onLayout exception"

    .line 764
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    .line 799
    :cond_4
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->isQuickCallCellLayout()Z

    move-result p1

    if-nez p1, :cond_7

    .line 800
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result p1

    .line 801
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconHeight()I

    move-result p3

    .line 802
    iget p4, p0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    sub-int/2addr p4, p1

    div-int/lit8 p4, p4, 0x2

    .line 803
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getMiuiWidgetPaddingTop()I

    move-result p5

    move v0, p2

    .line 804
    :goto_2
    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v0, v1, :cond_7

    move v1, p2

    .line 805
    :goto_3
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v1, v2, :cond_6

    .line 806
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mGridCell:[[Lcom/miui/home/launcher/GridCell;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    if-eqz v2, :cond_5

    .line 808
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mXs:[I

    aget v4, v3, v0

    add-int/2addr v4, p4

    iget-object v5, p0, Lcom/miui/home/launcher/CellLayout;->mYs:[I

    aget v6, v5, v1

    add-int/2addr v6, p5

    aget v3, v3, v0

    add-int/2addr v3, p4

    add-int/2addr v3, p1

    aget v5, v5, v1

    add-int/2addr v5, p5

    add-int/2addr v5, p3

    invoke-virtual {v2, v4, v6, v3, v5}, Lcom/miui/home/launcher/GridCell;->setCellBounds(IIII)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    :goto_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 677
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    .line 678
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellHeight:I

    .line 679
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 680
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 682
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 683
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 689
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 691
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->setAllLayoutValues(Z)V

    .line 692
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->calculateXsAndYs()V

    .line 693
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 695
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 696
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->measureChild(Landroid/view/View;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 686
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    .line 3370
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->updateCellPaddingTopNotQuickCall()V

    .line 3371
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    .line 3372
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/CellLayout;->mCellHeight:I

    .line 3373
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->requestLayout()V

    return-void
.end method

.method public onQuickEditModeChanged(Z)V
    .locals 0

    .line 361
    iput-boolean p1, p0, Lcom/miui/home/launcher/CellLayout;->misEditing:Z

    .line 362
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->requestUpdateGridCells()V

    return-void
.end method

.method public onScreenOrientationChanged()V
    .locals 1

    .line 3342
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    .line 3343
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellHeight:I

    .line 3344
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceCellPaddingSide()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingLeft:I

    .line 3345
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->updateCellPaddingTopNotQuickCall()V

    .line 3346
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->updateCellContainerHeight()V

    .line 3347
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->requestLayout()V

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 3

    .line 3351
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    .line 3352
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellHeight:I

    .line 3353
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceCellPaddingSide()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingLeft:I

    .line 3354
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->updateCellPaddingTopNotQuickCall()V

    .line 3355
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInHalfSoscSplitMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3356
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->updateCellContainerHeight()V

    .line 3357
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mEditAnimContoller:Lcom/miui/home/launcher/anim/EditAnimController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/EditAnimController;->updateParam()V

    .line 3358
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mEditAnimContoller:Lcom/miui/home/launcher/anim/EditAnimController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/EditAnimController;->onScreenSizeChanged()V

    .line 3359
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->requestLayout()V

    :cond_0
    const/4 v0, 0x0

    .line 3361
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3362
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3363
    instance-of v2, v1, Lcom/miui/home/launcher/UpdateIconSize;

    if-eqz v2, :cond_1

    .line 3364
    check-cast v1, Lcom/miui/home/launcher/UpdateIconSize;

    invoke-interface {v1}, Lcom/miui/home/launcher/UpdateIconSize;->updateSizeOnIconSizeChanged()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 0

    .line 4155
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->onScreenSizeChanged()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 589
    iget-boolean p1, p0, Lcom/miui/home/launcher/CellLayout;->mDisableTouch:Z

    if-eqz p1, :cond_0

    .line 590
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-virtual {p0}, Lcom/miui/home/launcher/OnLongClickAgent;->cancelCustomziedLongPress()V

    .line 591
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance p1, Lcom/miui/home/launcher/common/messages/CancelEmptySpaceLongClickMessage;

    invoke-direct {p1}, Lcom/miui/home/launcher/common/messages/CancelEmptySpaceLongClickMessage;-><init>()V

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 3

    .line 3326
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 3327
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->debugIcon(Landroid/view/View;)V

    .line 3328
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/CellLayoutMessage;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/common/messages/CellLayoutMessage;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 3329
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->updateNewInstallFlags()V

    .line 3330
    instance-of v0, p1, Lcom/miui/home/launcher/NewInstallAppIcon;

    if-eqz v0, :cond_0

    .line 3331
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mNewInstallAnimHelper:Lcom/miui/home/launcher/NewInstallAnimHelper;

    check-cast p1, Lcom/miui/home/launcher/NewInstallAppIcon;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/NewInstallAnimHelper;->onNewVisibleItemAdd(Lcom/miui/home/launcher/NewInstallAppIcon;)V

    :cond_0
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0

    .line 3306
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 3307
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->debugIcon(Landroid/view/View;)V

    return-void
.end method

.method public onVisible(I)V
    .locals 2

    .line 3895
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/CellLayout;->mStartShowingTime:J

    .line 3896
    sget-object v0, Lcom/miui/home/launcher/CellLayout;->sOnItemVisibleWorker:Lcom/miui/home/launcher/CellLayout$ItemVisibilityWorker;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/CellLayout;->workOnAllCellLayoutItem(Lcom/miui/home/launcher/CellLayout$ItemVisibilityWorker;I)V

    const/4 p1, 0x1

    .line 3897
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->setVisibleForMaml(Z)V

    .line 3898
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result v0

    .line 3902
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mNewInstallAnimHelper:Lcom/miui/home/launcher/NewInstallAnimHelper;

    invoke-virtual {p0}, Lcom/miui/home/launcher/NewInstallAnimHelper;->onParentVisible()V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 2

    .line 428
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->varyViewGroupByWallpaper(Landroid/view/ViewGroup;)V

    .line 429
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mDefaultCellBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mDefaultCellBackground:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method public pointOnChildViewRect(FF)Z
    .locals 6

    .line 1416
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1417
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, "Launcher.CellLayout"

    if-ge v3, v0, :cond_1

    .line 1419
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1420
    invoke-static {v5, p1, p2, v1}, Lcom/miui/home/launcher/util/DoubleTapViewUtil;->pointInViewArea(Landroid/view/View;FFLandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string p0, " point hinted child view of cell layout"

    .line 1421
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string p0, " point didn\'t hinted child view of cell layout"

    .line 1425
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method pointToCell(II[I)V
    .locals 2

    .line 619
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingLeft:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mWidthGap:I

    add-int/2addr v0, v1

    div-int/2addr p1, v0

    const/4 v0, 0x0

    aput p1, p3, v0

    .line 620
    iget p1, p0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingTop:I

    sub-int/2addr p2, p1

    iget p1, p0, Lcom/miui/home/launcher/CellLayout;->mCellHeight:I

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mHeightGap:I

    add-int/2addr p1, v1

    div-int/2addr p2, p1

    const/4 p1, 0x1

    aput p2, p3, p1

    .line 622
    aget p2, p3, v0

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    sub-int/2addr v1, p1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    aput p2, p3, v0

    .line 623
    aget p2, p3, p1

    iget p0, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    sub-int/2addr p0, p1

    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    aput p0, p3, p1

    return-void
.end method

.method public positionIndexToCell(I[I)V
    .locals 2

    .line 3119
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    add-int/lit8 v1, v0, -0x1

    rem-int v0, p1, v0

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    rem-int v1, p1, v0

    :goto_0
    const/4 v0, 0x0

    aput v1, p2, v0

    .line 3120
    iget p0, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    div-int/2addr p1, p0

    const/4 p0, 0x1

    aput p1, p2, p0

    return-void
.end method

.method public preRemoveView(Landroid/view/View;)V
    .locals 1

    .line 3377
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    .line 3378
    iput-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    :cond_0
    const/4 v0, 0x1

    .line 3380
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Z)V

    .line 3381
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->backupLayout()V

    return-void
.end method

.method public predictWidgetCanBeAdded(Lcom/miui/home/launcher/DragObject;)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 3640
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->isMultiDrag()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 3644
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3645
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3646
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 3648
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v5, :cond_2

    .line 3649
    iget v6, v5, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    const/4 v7, 0x1

    if-gt v6, v7, :cond_1

    iget v8, v5, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-le v8, v7, :cond_2

    .line 3650
    :cond_1
    new-instance v7, Lcom/miui/home/launcher/CellLayout$Widget;

    iget v5, v5, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-direct {v7, p0, v6, v5}, Lcom/miui/home/launcher/CellLayout$Widget;-><init>(Lcom/miui/home/launcher/CellLayout;II)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3653
    :cond_3
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    .line 3654
    new-instance v3, Lcom/miui/home/launcher/CellLayout$Widget;

    iget v4, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-direct {v3, p0, v4, p1}, Lcom/miui/home/launcher/CellLayout$Widget;-><init>(Lcom/miui/home/launcher/CellLayout;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3655
    new-instance p1, Landroid/graphics/Region;

    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    iget v4, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    invoke-direct {p1, v0, v0, v3, v4}, Landroid/graphics/Region;-><init>(IIII)V

    .line 3656
    sget-object v3, Lcom/miui/home/launcher/CellLayout$$ExternalSyntheticLambda2;->INSTANCE:Lcom/miui/home/launcher/CellLayout$$ExternalSyntheticLambda2;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 3673
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/miui/home/launcher/CellLayout;->predict(Landroid/graphics/Region;Ljava/util/ArrayList;ILjava/util/HashMap;)Z

    move-result p0

    return p0

    :cond_4
    :goto_1
    const-string p0, "Launcher.CellLayout"

    const-string p1, "invalidate params in predictWidgetCanBeAdded"

    .line 3641
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public quickShowOrHideAllShortcutsCheckBox(Z)V
    .locals 1

    .line 366
    new-instance v0, Lcom/miui/home/launcher/CellLayout$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/CellLayout$$ExternalSyntheticLambda5;-><init>(Z)V

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/CellLayout;->handleAllShortcuts(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public relayoutByOccupiedCells()V
    .locals 9

    const-string v0, "Launcher.CellLayout"

    const-string v1, "relayoutByOccupiedCells"

    .line 2229
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2230
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const/4 v2, 0x0

    move v3, v2

    .line 2231
    :goto_0
    iget v4, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v3, v4, :cond_3

    move v4, v2

    .line 2232
    :goto_1
    iget v5, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v4, v5, :cond_2

    .line 2233
    iget-object v5, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    if-eqz v5, :cond_1

    .line 2235
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 2236
    iget-wide v7, v6, Lcom/miui/home/launcher/CellLayout$LayoutParams;->accessTag:J

    cmp-long v7, v7, v0

    if-eqz v7, :cond_0

    .line 2237
    invoke-direct {p0, v5}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v7

    .line 2238
    iput v4, v7, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 2239
    iput v3, v7, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 2240
    iput-wide v0, v6, Lcom/miui/home/launcher/CellLayout$LayoutParams;->accessTag:J

    .line 2242
    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eq v5, p0, :cond_1

    .line 2243
    iget-object v5, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v5, v5, v4

    const/4 v6, 0x0

    aput-object v6, v5, v3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2248
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mFirstPos:[I

    aput v2, v0, v2

    const/4 v1, 0x1

    .line 2249
    aput v2, v0, v1

    .line 2250
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->requestLayout()V

    .line 2251
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->invalidateWorkspacePreview()V

    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 2

    .line 3287
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/CellLayout;->onRemoveViews(II)V

    .line 3288
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    return-void
.end method

.method public removeChild(J)Landroid/view/View;
    .locals 4

    .line 3252
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3254
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3255
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    .line 3256
    iget-wide v2, v2, Lcom/miui/home/launcher/ItemInfo;->id:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 3257
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/CellLayout;->removeView(Landroid/view/View;)V

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public removeChild(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 2

    .line 3246
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    iget v1, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    aget-object v0, v0, v1

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    aget-object p1, v0, p1

    .line 3248
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeIcon(Landroid/view/View;)V
    .locals 2

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove icon for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.CellLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/RemoveProgressIconHideShortcutMessage;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/common/messages/RemoveProgressIconHideShortcutMessage;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 440
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 441
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Lcom/miui/home/launcher/CellScreen;

    if-eqz p1, :cond_0

    .line 442
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    .line 444
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public removePendingItem(Lcom/miui/home/launcher/PendingItem;)V
    .locals 1

    .line 1338
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mPendingItemsDelegate:Lcom/miui/home/launcher/PendingSourceDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/PendingSourceDelegate;->removePendingItem(Lcom/miui/home/launcher/PendingItem;)V

    .line 1339
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->checkToDeleteSelf()V

    .line 1340
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->invalidateWorkspacePreview()V

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2

    .line 3269
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/CellLayout;->onRemoveViews(II)V

    .line 3270
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeViewAt(I)V
    .locals 1

    const/4 v0, 0x1

    .line 3293
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/CellLayout;->onRemoveViews(II)V

    .line 3294
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 2

    .line 3275
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/CellLayout;->onRemoveViews(II)V

    .line 3276
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    return-void
.end method

.method public removeViews(II)V
    .locals 0

    .line 3299
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/CellLayout;->onRemoveViews(II)V

    .line 3300
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViews(II)V

    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 0

    .line 3281
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/CellLayout;->onRemoveViews(II)V

    .line 3282
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 486
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    if-eqz p1, :cond_0

    .line 488
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 489
    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 490
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 5

    .line 496
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 497
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->misEditing:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mGridCell:[[Lcom/miui/home/launcher/GridCell;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 500
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v2, v2, v0

    array-length v2, v2

    if-ge v1, v2, :cond_5

    move v2, v0

    .line 501
    :goto_1
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    array-length v4, v3

    if-ge v2, v4, :cond_4

    .line 502
    aget-object v4, v3, v2

    aget-object v4, v4, v1

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/miui/home/launcher/CellLayout;->mGridCell:[[Lcom/miui/home/launcher/GridCell;

    aget-object v4, v4, v2

    aget-object v4, v4, v1

    if-eqz v4, :cond_2

    :cond_1
    aget-object v3, v3, v2

    aget-object v3, v3, v1

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mGridCell:[[Lcom/miui/home/launcher/GridCell;

    aget-object v3, v3, v2

    aget-object v3, v3, v1

    if-eqz v3, :cond_3

    .line 504
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->requestUpdateGridCellsIfNeed()V

    return-void

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method requestUpdateGridCells()V
    .locals 4

    .line 2564
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->fastClearCellBackgroundGridCells()V

    .line 2565
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mGridCellUpdateScheduled:Z

    if-eqz v0, :cond_0

    return-void

    .line 2568
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getDistanceToCurrentScreen(J)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x10

    mul-long/2addr v0, v2

    .line 2570
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isFinishLoading()Z

    move-result v2

    if-nez v2, :cond_1

    const-wide/16 v0, 0x258

    .line 2573
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/CellLayout;->schedulerUpdateGridCells(J)V

    return-void
.end method

.method requestUpdateGridCellsIfNeed()V
    .locals 1

    .line 2543
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->misEditing:Z

    if-eqz v0, :cond_0

    .line 2544
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->requestUpdateGridCells()V

    :cond_0
    return-void
.end method

.method public resetCellLayout()V
    .locals 1

    .line 410
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->scaleCellLayout()V

    const/4 v0, 0x0

    .line 411
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 412
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void
.end method

.method public resetTouchCellInfo()V
    .locals 1

    .line 576
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    const/4 v0, -0x1

    .line 577
    iput v0, p0, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellX:I

    .line 578
    iput v0, p0, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellY:I

    const/4 v0, 0x0

    .line 579
    iput v0, p0, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanX:I

    .line 580
    iput v0, p0, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanY:I

    return-void
.end method

.method saveCurrentConfiguration(Lcom/miui/home/launcher/CellLayout$ViewConfiguration;)V
    .locals 7

    .line 2090
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;->clear()V

    .line 2091
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    const/4 v1, 0x0

    move v2, v1

    .line 2092
    :goto_0
    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mTotalCells:I

    if-ge v2, v3, :cond_1

    .line 2093
    invoke-virtual {p0, v2, v0}, Lcom/miui/home/launcher/CellLayout;->positionIndexToCell(I[I)V

    .line 2094
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget v4, v0, v1

    aget-object v4, v3, v4

    const/4 v5, 0x1

    aget v6, v0, v5

    aget-object v4, v4, v6

    if-eqz v4, :cond_0

    .line 2095
    aget v4, v0, v1

    aget-object v3, v3, v4

    aget v4, v0, v5

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;->addView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public scaleCellLayout()V
    .locals 1

    .line 416
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getFoldEditModePivotX()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setPivotX(F)V

    goto :goto_0

    .line 419
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getEditModePivotX()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 421
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getEditModePivotY()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 422
    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 423
    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScaleY(F)V

    return-void
.end method

.method public setAllLayoutValues(Z)V
    .locals 0

    .line 667
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHorizontalSpacing()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/CellLayout;->mWidthGap:I

    .line 668
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellVerticalSpacing()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->setHeightGap(I)V

    return-void
.end method

.method public setAndDoEditModeAnimation(ZZLcom/miui/home/launcher/EditStateChangeReason;)V
    .locals 0

    .line 400
    iput-boolean p1, p0, Lcom/miui/home/launcher/CellLayout;->misEditing:Z

    .line 401
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->requestUpdateGridCells()V

    .line 402
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mEditAnimContoller:Lcom/miui/home/launcher/anim/EditAnimController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/anim/EditAnimController;->startEditAnim(ZZLcom/miui/home/launcher/EditStateChangeReason;)V

    return-void
.end method

.method setCellBackgroundImage(Lcom/miui/home/launcher/DragObject;)V
    .locals 6

    .line 2310
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->isQuickCallCellLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2313
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    .line 2314
    iget v1, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-ne v0, v2, :cond_1

    .line 2315
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 2319
    :cond_1
    iget-object v0, p0, Lcom/miui/launcher/views/LauncherViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/miui/home/launcher/GridCell;->create(Landroid/content/Context;Z)Lcom/miui/home/launcher/GridCell;

    move-result-object v0

    .line 2321
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragView;->getContent()Landroid/view/View;

    move-result-object p1

    .line 2322
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 2323
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2326
    instance-of v4, p1, Lcom/miui/home/launcher/DragController$VisualizeCalibration;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 2327
    check-cast p1, Lcom/miui/home/launcher/DragController$VisualizeCalibration;

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mRectTmp:Landroid/graphics/Rect;

    invoke-interface {p1, v1}, Lcom/miui/home/launcher/DragController$VisualizeCalibration;->getVisionRect(Landroid/graphics/Rect;)V

    .line 2328
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mRectTmp:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 2329
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mRectTmp:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 2330
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mRectTmp:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    .line 2331
    iget p1, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_2
    move p1, v5

    move v4, p1

    .line 2334
    :goto_0
    invoke-virtual {v0, v5, v5, v1, v3}, Lcom/miui/home/launcher/GridCell;->setCellBounds(IIII)V

    .line 2335
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2336
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {v1, v4, p1}, Lcom/miui/home/launcher/CellBackground;->setImageTranslation(II)V

    .line 2337
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Landroid/widget/ImageView;->setImageState([IZ)V

    return-void
.end method

.method public setCellPaddingTop(I)V
    .locals 0

    .line 252
    iput p1, p0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingTop:I

    return-void
.end method

.method public setChildEditMode(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 347
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/CellLayout;->setChildEditMode(ZZ)V

    return-void
.end method

.method public setChildEditMode(ZZ)V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-ne v0, p0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 354
    :cond_0
    new-instance p2, Lcom/miui/home/launcher/CellLayout$$ExternalSyntheticLambda7;

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/CellLayout$$ExternalSyntheticLambda7;-><init>(Z)V

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/CellLayout;->handleAllEditables(Ljava/util/function/Consumer;)V

    goto :goto_1

    .line 352
    :cond_1
    :goto_0
    new-instance p2, Lcom/miui/home/launcher/CellLayout$$ExternalSyntheticLambda6;

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/CellLayout$$ExternalSyntheticLambda6;-><init>(Z)V

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/CellLayout;->handleAllEditables(Ljava/util/function/Consumer;)V

    .line 356
    :goto_1
    iput-boolean p1, p0, Lcom/miui/home/launcher/CellLayout;->misEditing:Z

    .line 357
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->requestUpdateGridCells()V

    return-void
.end method

.method setContainerId(I)V
    .locals 0

    .line 318
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iput p1, p0, Lcom/miui/home/launcher/CellLayout$CellInfo;->container:I

    return-void
.end method

.method setDisableTouch(Z)V
    .locals 0

    .line 584
    iput-boolean p1, p0, Lcom/miui/home/launcher/CellLayout;->mDisableTouch:Z

    return-void
.end method

.method public setFolderPreviewShow(Z)V
    .locals 4

    .line 370
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 373
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 375
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 376
    instance-of v3, v2, Lcom/miui/home/launcher/FolderIcon;

    if-eqz v3, :cond_1

    .line 377
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/FolderInfo;

    .line 378
    iget-object v2, v2, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    invoke-interface {v2, p1}, Lcom/miui/home/launcher/Folder$FolderCallback;->showPreview(Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setHeightGap(I)V
    .locals 0

    .line 672
    iput p1, p0, Lcom/miui/home/launcher/CellLayout;->mHeightGap:I

    return-void
.end method

.method public setIsDrawingInScreenPreview(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 3566
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 3567
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3568
    instance-of v2, v1, Lcom/miui/home/launcher/DesktopIcon;

    if-eqz v2, :cond_0

    .line 3569
    check-cast v1, Lcom/miui/home/launcher/DesktopIcon;

    invoke-interface {v1, p1}, Lcom/miui/home/launcher/DesktopIcon;->setIsDrawingInScreenPreview(Z)V

    goto :goto_1

    .line 3570
    :cond_0
    instance-of v2, v1, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;

    if-eqz v2, :cond_1

    .line 3571
    check-cast v1, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->setIsDrawingInScreenPreview(Z)V

    goto :goto_1

    .line 3572
    :cond_1
    instance-of v2, v1, Lcom/miui/home/launcher/gadget/ClearButton;

    if-eqz v2, :cond_2

    .line 3573
    check-cast v1, Lcom/miui/home/launcher/gadget/ClearButton;

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/gadget/ClearButton;->setIsDrawingInScreenPreview(Z)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setIsDrawingInThumbnailView(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 3543
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 3544
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3545
    instance-of v2, v1, Lcom/miui/home/launcher/DesktopIcon;

    if-eqz v2, :cond_0

    .line 3546
    move-object v2, v1

    check-cast v2, Lcom/miui/home/launcher/DesktopIcon;

    invoke-interface {v2, p1}, Lcom/miui/home/launcher/DesktopIcon;->setIsDrawingInThumbnailView(Z)V

    .line 3548
    :cond_0
    instance-of v2, v1, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;

    if-eqz v2, :cond_1

    .line 3549
    move-object v2, v1

    check-cast v2, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->setIsDrawingInThumbnailView(Z)V

    .line 3551
    :cond_1
    instance-of v2, v1, Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v2, :cond_2

    .line 3552
    move-object v2, v1

    check-cast v2, Lcom/miui/home/launcher/gadget/Gadget;

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/gadget/Gadget;->setIsDrawingInThumbnailView(Z)V

    .line 3554
    :cond_2
    instance-of v2, v1, Lcom/miui/home/launcher/common/ViewPropertyBackuper;

    if-eqz v2, :cond_4

    if-eqz p1, :cond_3

    .line 3556
    check-cast v1, Lcom/miui/home/launcher/common/ViewPropertyBackuper;

    invoke-interface {v1}, Lcom/miui/home/launcher/common/ViewPropertyBackuper;->backupProperty()V

    goto :goto_1

    .line 3558
    :cond_3
    check-cast v1, Lcom/miui/home/launcher/common/ViewPropertyBackuper;

    invoke-interface {v1}, Lcom/miui/home/launcher/common/ViewPropertyBackuper;->restoreProperty()V

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3562
    :cond_5
    iput-boolean p1, p0, Lcom/miui/home/launcher/CellLayout;->mIsDrawingInThumbnailView:Z

    return-void
.end method

.method public setIsUsing(Z)V
    .locals 0

    .line 4172
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iput-boolean p1, p0, Lcom/miui/home/launcher/CellLayout$CellInfo;->isUsing:Z

    return-void
.end method

.method public setOnDrawCallback(Lcom/miui/home/launcher/MIUIWidgetAddAnimator$OnDrawCallback;)V
    .locals 0

    .line 4097
    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mDrawCallback:Lcom/miui/home/launcher/MIUIWidgetAddAnimator$OnDrawCallback;

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 603
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/OnLongClickAgent;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method setScreenId(J)V
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iput-wide p1, p0, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    return-void
.end method

.method setScreenType(I)V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget v1, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenType:I

    if-eq v1, p1, :cond_0

    .line 327
    iput p1, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenType:I

    const/4 p1, 0x1

    .line 328
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->loadGridConfig(Z)V

    :cond_0
    return-void
.end method

.method public setVisibleForMaml(Z)V
    .locals 0

    .line 3984
    iput-boolean p1, p0, Lcom/miui/home/launcher/CellLayout;->mVisibleForMaml:Z

    return-void
.end method

.method public setupLayoutParam(IIIIZLcom/miui/home/launcher/CellLayout$LayoutParams;)V
    .locals 13

    move-object v0, p0

    .line 739
    iget v5, v0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    iget v6, v0, Lcom/miui/home/launcher/CellLayout;->mCellHeight:I

    iget v7, v0, Lcom/miui/home/launcher/CellLayout;->mWidthGap:I

    iget v8, v0, Lcom/miui/home/launcher/CellLayout;->mHeightGap:I

    iget v9, v0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingLeft:I

    iget v10, v0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingTop:I

    .line 740
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getPaddingTopDelta()I

    move-result v11

    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->getHeightGapDelta()I

    move-result v12

    move-object/from16 v0, p6

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 739
    invoke-virtual/range {v0 .. v12}, Lcom/miui/home/launcher/CellLayout$LayoutParams;->setup(IIIIIIIIIIII)V

    return-void
.end method

.method public setupLayoutParam(IILcom/miui/home/launcher/ItemInfo;ZLcom/miui/home/launcher/CellLayout$LayoutParams;)V
    .locals 7

    .line 735
    iget v3, p3, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v4, p3, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/miui/home/launcher/CellLayout;->setupLayoutParam(IIIIZLcom/miui/home/launcher/CellLayout$LayoutParams;)V

    return-void
.end method

.method public showNoSpaceToast(Lcom/miui/home/launcher/DragObject;Z)V
    .locals 1

    .line 2352
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mToasted:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 2353
    iput-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mToasted:Z

    .line 2355
    :cond_0
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/DragObject;->showNoSpaceToast(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 3994
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3995
    invoke-super {p0}, Landroid/view/ViewGroup;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3997
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ screenId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-wide v1, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mHCells = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mVCells = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mTotalCells = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mTotalCells:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCellXY[0] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4001
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    aget v1, v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCellXY[1] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4002
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    if-eqz v1, :cond_2

    const/4 v4, 0x1

    aget v1, v1, v4

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " childCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4003
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " EmptyCellsNum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4004
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getEmptyCellsNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "   \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v3

    .line 4005
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 4006
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 4008
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "{ tag "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " |"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4009
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " childWidth  = "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4010
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " childHeight  = "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4011
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " childTranslationX  = "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4012
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " childTranslationY  = "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4013
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " childX  = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " | "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4014
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " childY  = "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4015
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " childAlpha  = "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4016
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " childVisibility  = "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4017
    instance-of v6, v4, Lcom/miui/home/launcher/ItemIcon;

    const-string v7, " drawableVisibility = "

    const-string v8, " drawableAlpha = "

    if-eqz v6, :cond_3

    .line 4018
    move-object v6, v4

    check-cast v6, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v6}, Lcom/miui/home/launcher/ItemIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 4020
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " imageViewAlpha = "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getAlpha()F

    move-result v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4021
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " imageViewVisibility = "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4022
    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 4023
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4024
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4028
    :cond_3
    instance-of v6, v4, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v6, :cond_4

    .line 4029
    check-cast v4, Lcom/miui/home/launcher/ShortcutIcon;

    .line 4030
    invoke-virtual {v4}, Lcom/miui/home/launcher/ShortcutIcon;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 4031
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/miui/home/launcher/ShortcutIcon;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4032
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/miui/home/launcher/ShortcutIcon;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4033
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " drawable = "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/miui/home/launcher/ShortcutIcon;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4036
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " } \n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 4039
    :cond_6
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    if-eqz v1, :cond_c

    .line 4040
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nOccupiedCells:\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v3

    .line 4041
    :goto_3
    iget-object v4, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v4, v4, v3

    array-length v4, v4

    if-ge v1, v4, :cond_c

    .line 4042
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\t[\t"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v4, v3

    .line 4043
    :goto_4
    iget-object v5, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    array-length v6, v5

    if-ge v4, v6, :cond_b

    .line 4044
    aget-object v5, v5, v4

    aget-object v5, v5, v1

    if-eqz v5, :cond_a

    .line 4046
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    .line 4047
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/ItemInfo;

    if-ne v6, v2, :cond_8

    if-nez v5, :cond_7

    goto :goto_5

    .line 4051
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ">\t"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 4049
    :cond_8
    :goto_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v5, :cond_9

    const-wide/16 v5, -0x1

    goto :goto_6

    :cond_9
    iget-wide v5, v5, Lcom/miui/home/launcher/ItemInfo;->id:J

    :goto_6
    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\t"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 4054
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".\t"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 4057
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 4060
    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method updateCellOccupiedMarks(Landroid/view/View;Lcom/miui/home/launcher/ItemInfo;ZZ)V
    .locals 6

    .line 832
    iget v0, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v1, p2, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    iget v2, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    if-lt v0, v2, :cond_3

    .line 833
    iget v2, p2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget v3, p2, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v1

    :goto_1
    iget v3, p2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    if-lt v2, v3, :cond_2

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    .line 839
    iget-object v4, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v5, v4, v0

    aget-object v5, v5, v2

    if-ne p1, v5, :cond_1

    .line 840
    aget-object v4, v4, v0

    aput-object v3, v4, v2

    goto :goto_2

    .line 843
    :cond_0
    iget-object v4, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v4, v4, v0

    aput-object p1, v4, v2

    .line 847
    iget-boolean v4, p0, Lcom/miui/home/launcher/CellLayout;->misEditing:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/miui/home/launcher/CellLayout;->mAllowFastClearCellBackgroundGridCells:Z

    if-eqz v4, :cond_1

    .line 848
    iget-object v4, p0, Lcom/miui/home/launcher/CellLayout;->mGridCell:[[Lcom/miui/home/launcher/GridCell;

    aget-object v4, v4, v0

    aput-object v3, v4, v2

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    if-eqz p3, :cond_4

    const-string v2, "remove"

    goto :goto_3

    :cond_4
    const-string/jumbo v2, "update"

    :goto_3
    aput-object v2, p1, v0

    .line 855
    invoke-virtual {p2}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    const-string/jumbo p2, "updateCellOccupiedMarks, %s, %s"

    .line 854
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Launcher.CellLayout"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_5

    if-eqz p4, :cond_5

    .line 857
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->checkToDeleteSelf()V

    .line 859
    :cond_5
    iget-boolean p1, p0, Lcom/miui/home/launcher/CellLayout;->misEditing:Z

    if-eqz p1, :cond_6

    .line 860
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->requestUpdateGridCells()V

    .line 862
    :cond_6
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->invalidateWorkspacePreview()V

    return-void
.end method

.method updateCellOccupiedMarks(Landroid/view/View;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 871
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;ZZ)V

    return-void
.end method

.method public updateCellOccupiedMarks(Landroid/view/View;ZZ)V
    .locals 1

    .line 828
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Lcom/miui/home/launcher/ItemInfo;ZZ)V

    return-void
.end method

.method public updateCellPaddingTopNotQuickCall()V
    .locals 1

    .line 3336
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->isQuickCallCellLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3337
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceCellPaddingTop()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->setCellPaddingTop(I)V

    :cond_0
    return-void
.end method

.method public updateEditModeScale(F)V
    .locals 0

    .line 4118
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 4119
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 4120
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mEditAnimContoller:Lcom/miui/home/launcher/anim/EditAnimController;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/anim/EditAnimController;->updateEditBackground(F)V

    return-void
.end method

.method public updateFolderCreationBgPosition([I)V
    .locals 5

    .line 2758
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mFolderCreationBg:Lcom/miui/home/launcher/FolderCreationBg;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    .line 2759
    iget v1, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    const/4 v2, 0x0

    aget v3, p1, v2

    const/4 v4, 0x1

    if-ne v1, v3, :cond_0

    iget v1, v0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    aget v3, p1, v4

    if-eq v1, v3, :cond_1

    .line 2760
    :cond_0
    aget v1, p1, v2

    iput v1, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 2761
    aget p1, p1, v4

    iput p1, v0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 2762
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->requestLayout()V

    :cond_1
    return-void
.end method

.method public updateMamlDownloadVisible(I)V
    .locals 1

    .line 3917
    sget-object v0, Lcom/miui/home/launcher/CellLayout;->sUpdateMamlDownloadVisible:Lcom/miui/home/launcher/CellLayout$ItemVisibilityWorker;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/CellLayout;->workOnAllCellLayoutItem(Lcom/miui/home/launcher/CellLayout$ItemVisibilityWorker;I)V

    return-void
.end method

.method public updateNewInstallFlags()V
    .locals 5

    .line 459
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 461
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 462
    instance-of v4, v3, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutInfo;->isNewInstalled()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 463
    iput-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mHasNewInstallApps:Z

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 467
    :cond_1
    iput-boolean v1, p0, Lcom/miui/home/launcher/CellLayout;->mHasNewInstallApps:Z

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    .line 4077
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    if-nez p0, :cond_1

    instance-of p0, p1, Lcom/miui/home/launcher/GridCell;

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
