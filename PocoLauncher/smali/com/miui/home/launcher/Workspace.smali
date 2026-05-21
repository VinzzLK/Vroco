.class public Lcom/miui/home/launcher/Workspace;
.super Lcom/miui/home/launcher/DragableScreenView;
.source "Workspace.java"

# interfaces
.implements Lcom/miui/home/launcher/DropTarget;
.implements Lcom/miui/home/launcher/DragSource;
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;
.implements Lcom/miui/home/launcher/DragController$DragListener;
.implements Lcom/miui/home/launcher/DragController$DropAnimationListener;
.implements Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;
.implements Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;
.implements Lcom/miui/home/launcher/interfaces/EventBusHandlerHolder;
.implements Lcom/miui/home/launcher/LauncherStateManager$StateHandler;
.implements Lcom/miui/home/launcher/shortcuts/ShortcutMenuDragListener;
.implements Lcom/miui/home/launcher/IShortcutIcon$ShortcutIconContainer;
.implements Lcom/miui/home/launcher/GridConfig$OnGridConfigChangeListener;
.implements Lcom/miui/home/launcher/util/TapCheckView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/Workspace$ScrollingClickGestureListener;,
        Lcom/miui/home/launcher/Workspace$DirectionProperty;,
        Lcom/miui/home/launcher/Workspace$CancelEmptySpaceLongClickHandler;,
        Lcom/miui/home/launcher/Workspace$CellInfo;,
        Lcom/miui/home/launcher/Workspace$PinchingState;
    }
.end annotation


# static fields
.field private static PREDICT_STEP_PIXELS_IN_1500:[I

.field private static PREDICT_STEP_PIXELS_IN_2250:[I

.field private static PREDICT_STEP_PIXELS_IN_3000:[I

.field private static TOTAL_PREDICT_COUNT:I

.field public static final TRANSLATION_X:Lmiuix/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/property/FloatProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSLATION_Y:Lmiuix/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/property/FloatProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPrepareNewScreenLock:Ljava/lang/Object;


# instance fields
.field private isInDragTargetViewFindPos:Z

.field private mAddResizeFrameRunnable:Ljava/lang/Runnable;

.field private mAllItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAlphaInterpolator:Landroid/view/animation/Interpolator;

.field private mAssistantPointResId:I

.field private mAutoScrollBack:Ljava/lang/Runnable;

.field private mAutoScrollEnd:Ljava/lang/Runnable;

.field private mCallbackAfterNextLayout:Ljava/lang/Runnable;

.field private final mCallbacksWhenScreenReady:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelEmptySpaceLongClickHandler:Lcom/miui/home/launcher/Workspace$CancelEmptySpaceLongClickHandler;

.field private mCollectConsumerForCategory:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCollectConsumerForFillEmpty:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentDragingScrollDirection:I

.field public final mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

.field private mCurrentMediatorRunnable:Ljava/lang/Runnable;

.field private mCurrentScreenId:J

.field private mDefaultScreenId:J

.field private mDragController:Lcom/miui/home/launcher/DragController;

.field private mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

.field private mDragScrollAnimateStarted:Z

.field private mDragScrollAnimationDistance:I

.field private mDragToNextScreenRunnable:Ljava/lang/Runnable;

.field private mEditAnimateFinishRunnable:Ljava/lang/Runnable;

.field public mEditPinchingScale:F

.field public mEditPinchingScaleAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

.field private mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

.field private mEditingMode:I

.field private mEditingScreenChanging:Z

.field private mFadeIn:Landroid/view/animation/Animation;

.field private mFadeOut:Landroid/view/animation/Animation;

.field private mFirstScreenLoadFinishedMessageHandler:Lcom/miui/home/launcher/common/messages/FirstScreenLoadFinishedMessageHandler;

.field private mFirstVelocity:I

.field private mFoldEditSwitchScreenAnim:Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;

.field private mFoldScreenModeObserver:Lcom/miui/home/launcher/common/FoldScreenModeObserver;

.field private mFolderCount:I

.field private mGlobalSearchGestureMonitor:Lcom/miui/home/launcher/GlobalSearchGestureMonitor;

.field private mHasPerformHapicFeedback:Z

.field private mHasPerformLongClick:Z

.field private mIndexOrderedScreenIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mIndicatorHeight:I

.field private mIndicatorMarginBottom:I

.field private mIndicatorOffsetBottomPortrait:I

.field private mIsCanvasLine:Z

.field private mIsInsertingNewScreen:Z

.field private mIsRemovingScreen:Z

.field private mIsSnapCausedByDragScroll:Z

.field private mIsSnaping:Z

.field private final mItemOperation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mLastDragScreenID:J

.field private mLastEvent:Landroid/view/MotionEvent;

.field private mLastWidgetView:Landroid/view/View;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

.field private final mLayoutDataProcessor:Lcom/miui/home/launcher/layout/LayoutDataProcessor;

.field private mLinePaint:Landroid/graphics/Paint;

.field private mLoadingFinishMessageHandler:Lcom/miui/home/launcher/common/messages/LoadingFinishMessageHandler;

.field private mLocation:[I

.field private mLocationInWindow:[I

.field private mLocationOnScreen:[I

.field final mMaMlWidgetViewHitRect:Landroid/graphics/Rect;

.field private mNeedToWaitToDeleteEmptyScreen:Z

.field private mOldTransitionType:I

.field private mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

.field private mOnlyDrawCurrentScreen:Z

.field private mOpenLongClick:Z

.field private mPredictStepCount:I

.field private mQuickAppCount:I

.field private mReorganizeFinishConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mResetEditingViewsAfterScreenOrientationChanged:Ljava/lang/Runnable;

.field private mRestoreBlurRunnable:Ljava/lang/Runnable;

.field private mScreenIdToIndexMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenOperation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenSeekBarEditAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

.field private final mScrollFailedTipAnimator:Lmiuix/animation/physics/SpringAnimation;

.field private mScrollFiledTipAnimatorRunnable:Ljava/lang/Runnable;

.field private mScrollToNextScreenAnimListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/fold/ScrollToNextScreenAnimListener;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollZone:I

.field private final mScrollingClickDetector:Landroid/view/GestureDetector;

.field private mShortcutCount:I

.field private mShowEditingIndicator:Z

.field private mShowingTransitionEffectDemo:Z

.field private mState:Lcom/miui/home/launcher/Workspace$PinchingState;

.field private mStateTransitionAnimation:Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;

.field private mTemGadgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/gadget/Gadget;",
            ">;"
        }
    .end annotation
.end field

.field private mTempCell:[I

.field private final mTrimScreenRunnable:Ljava/lang/Runnable;

.field private mVerticalFlingInvalidateBottomAreaHeight:F

.field private mVisibleRect:Landroid/graphics/Rect;

.field private mWidgetsToUpdate:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWorkspaceThumbnailView:Lcom/miui/home/launcher/WorkspaceThumbnailView;

.field private resetCellScreenScaleAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;


# direct methods
.method public static synthetic $r8$lambda$0RjBEl_rT6m_n3YqLYO5Cjn3DKc(Lcom/miui/home/launcher/oldman/QuickCallCellLayout;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/Workspace;->lambda$hideAddContactButtonInQuickCallCellLayout$11(Lcom/miui/home/launcher/oldman/QuickCallCellLayout;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$0zR8dxFO_asuwJBIlbMA9U8y4tU(FLcom/miui/home/launcher/CellScreen;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/Workspace;->lambda$updateNormalEditProgress$3(FLcom/miui/home/launcher/CellScreen;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5rm9LbwlWBx3pqRzM48MuNqLMXw(Lcom/miui/home/launcher/Workspace;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->lambda$initTemGadgets$17(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Dbhm1EKN1w8h6VI0nh_THOHjM6Q(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/CellLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->lambda$onDragCompleted$6(Lcom/miui/home/launcher/CellLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MsH2sfmRWhQTe9GW1m2lNxbLhR4(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/Workspace;->lambda$resetWidgetsToUpdate$18(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NukZe3JYlueF_oweTB1rwhGmfqc(Lcom/miui/home/launcher/oldman/QuickCallCellLayout;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/Workspace;->lambda$showQuickCallCellLayoutTitle$9(Lcom/miui/home/launcher/oldman/QuickCallCellLayout;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$O7DjgL48YLSaBFX2hZ3y-ycrf-s(Lcom/miui/home/launcher/Workspace;FFFFFFFFF)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/miui/home/launcher/Workspace;->lambda$setEditMode$13(FFFFFFFFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$OwVN4FHLoRBDXHru6il3_gRIO3Q(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/Workspace;->lambda$updateNewAppWidgetsSizeOption$20(Ljava/util/ArrayList;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PxE2iEIhqtPhlB5yLlQFRuB92sA(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/CellScreen;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->lambda$resetDockAndSearchPivotX$2(Lcom/miui/home/launcher/CellScreen;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pz-UgiK-A2meg8qd4RNuR-Mdspk(Lcom/miui/home/launcher/Workspace;[Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->lambda$updateNewAppWidgetsSizeOption$22([Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q0Bd8LejHtasPjkSHGxKP4hzNDU(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/Workspace;->lambda$destroyWidgetsToUpdate$19(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SSbq1M1FgJIzvHFQKI2-D1fKdFA(Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->startScrollFailedAnimator()V

    return-void
.end method

.method public static synthetic $r8$lambda$S_HgI_r1n7lcMGDVGrciDJt_j-E(Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->lambda$bindScreenAdded$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$UFkkw5cALfQdvnOVY37DEbSkeBw(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/Workspace;->lambda$onWallpaperColorChanged$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W8MFEY6DwgenumVTaH6VFe_P_ZE(Lcom/miui/home/launcher/oldman/QuickCallCellLayout;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/Workspace;->lambda$showAddContactButtonInQuickCallCellLayout$10(Lcom/miui/home/launcher/oldman/QuickCallCellLayout;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dvbflLBM0WLTpjYRbvqoPCqUiDw(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/LauncherWidgetView;Lcom/miui/home/launcher/CellLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/Workspace;->lambda$checkAppWidgetResizeFrameWhenDropOnOriginScreen$4(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/LauncherWidgetView;Lcom/miui/home/launcher/CellLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eMK_CuSfnv5MRaY5srhWd_OC-Fc()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/Workspace;->lambda$calibrateCurrentScreenIndex$16()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$jVLeLlRTjbN16g63ytdreCJFF7E(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->lambda$insertNewScreenIfNeed$8(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mcujOSPB-dbhPErJegiRCM6wKyg(Lcom/miui/home/launcher/oldman/QuickCallCellLayout;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/Workspace;->lambda$canAddShortcutToQuickCallCellLayout$12(Lcom/miui/home/launcher/oldman/QuickCallCellLayout;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$q2eVoIyo4jwUfHKM1vKmm_f0l24(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/gadget/Gadget;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->lambda$onDropFromExternal$5(Lcom/miui/home/launcher/gadget/Gadget;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$qPQWEPc2EZs5U73Sp9vkN-CqSVc(Lcom/miui/home/launcher/Workspace;[Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->lambda$updateOldAppWidgetsSizeOption$23([Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x_a2R3HS20biVEmO8TQkkkou-1I(Lcom/miui/home/launcher/Workspace;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->lambda$editPinchingScaleAnimTo$15(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$yk5XI_XvZR5bQACxKI2rNFyVrTc(Ljava/util/ArrayList;Ljava/lang/Long;Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->lambda$updateNewAppWidgetsSizeOption$21(Ljava/util/ArrayList;Ljava/lang/Long;Ljava/util/ArrayList;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v1, v0, [I

    .line 2581
    fill-array-data v1, :array_0

    sput-object v1, Lcom/miui/home/launcher/Workspace;->PREDICT_STEP_PIXELS_IN_3000:[I

    new-array v2, v0, [I

    .line 2582
    fill-array-data v2, :array_1

    sput-object v2, Lcom/miui/home/launcher/Workspace;->PREDICT_STEP_PIXELS_IN_2250:[I

    new-array v0, v0, [I

    .line 2583
    fill-array-data v0, :array_2

    sput-object v0, Lcom/miui/home/launcher/Workspace;->PREDICT_STEP_PIXELS_IN_1500:[I

    .line 2584
    array-length v0, v1

    sput v0, Lcom/miui/home/launcher/Workspace;->TOTAL_PREDICT_COUNT:I

    .line 2759
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/Workspace;->sPrepareNewScreenLock:Ljava/lang/Object;

    .line 4028
    new-instance v0, Lcom/miui/home/launcher/Workspace$20;

    const-string/jumbo v1, "translationX"

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/Workspace$20;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/Workspace;->TRANSLATION_X:Lmiuix/animation/property/FloatProperty;

    .line 4038
    new-instance v0, Lcom/miui/home/launcher/Workspace$21;

    const-string/jumbo v1, "translationY"

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/Workspace$21;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/Workspace;->TRANSLATION_Y:Lmiuix/animation/property/FloatProperty;

    return-void

    nop

    :array_0
    .array-data 4
        0xa
        0x14
        0x14
        0x14
        0x28
        0x64
    .end array-data

    :array_1
    .array-data 4
        0xa
        0xa
        0xa
        0xa
        0x23
        0x4b
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0xa
        0xa
        0x14
        0x23
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 245
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 256
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/DragableScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 170
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mHasPerformLongClick:Z

    const-wide/16 v0, -0x1

    .line 172
    iput-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    const/4 p3, 0x2

    new-array v2, p3, [I

    .line 179
    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mTempCell:[I

    .line 183
    iput-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenId:J

    const/4 v0, 0x7

    .line 184
    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mEditingMode:I

    .line 185
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mShowEditingIndicator:Z

    .line 186
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mEditingScreenChanging:Z

    const/4 v0, 0x0

    .line 202
    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLastWidgetView:Landroid/view/View;

    .line 205
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mIsSnaping:Z

    .line 206
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mDragScrollAnimateStarted:Z

    const/4 v1, -0x1

    .line 207
    iput v1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    .line 211
    new-instance v2, Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-direct {v2, p0, p0}, Lcom/miui/home/launcher/OnLongClickAgent;-><init>(Landroid/view/ViewGroup;Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    const/4 v2, 0x1

    .line 212
    iput-boolean v2, p0, Lcom/miui/home/launcher/Workspace;->mOpenLongClick:Z

    const/high16 v3, -0x40800000    # -1.0f

    .line 219
    iput v3, p0, Lcom/miui/home/launcher/Workspace;->mVerticalFlingInvalidateBottomAreaHeight:F

    .line 221
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x40400000    # 3.0f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v3, p0, Lcom/miui/home/launcher/Workspace;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    .line 229
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/miui/home/launcher/Workspace;->mScrollToNextScreenAnimListenerList:Ljava/util/List;

    .line 237
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mHasPerformHapicFeedback:Z

    .line 686
    new-instance v3, Lcom/miui/home/launcher/Workspace$1;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/Workspace$1;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Workspace;->mDragToNextScreenRunnable:Ljava/lang/Runnable;

    .line 1076
    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mState:Lcom/miui/home/launcher/Workspace$PinchingState;

    .line 1372
    new-instance v3, Lcom/miui/home/launcher/Workspace$4;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/Workspace$4;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Workspace;->mAutoScrollEnd:Ljava/lang/Runnable;

    .line 1433
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/miui/home/launcher/Workspace;->mMaMlWidgetViewHitRect:Landroid/graphics/Rect;

    .line 1710
    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mAddResizeFrameRunnable:Ljava/lang/Runnable;

    .line 2137
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->isInDragTargetViewFindPos:Z

    .line 2367
    new-instance v3, Lcom/miui/home/launcher/Workspace$7;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/Workspace$7;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Workspace;->mTrimScreenRunnable:Ljava/lang/Runnable;

    .line 2430
    new-instance v3, Lcom/miui/home/launcher/Workspace$CancelEmptySpaceLongClickHandler;

    invoke-direct {v3, p0, v0}, Lcom/miui/home/launcher/Workspace$CancelEmptySpaceLongClickHandler;-><init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/Workspace$1;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Workspace;->mCancelEmptySpaceLongClickHandler:Lcom/miui/home/launcher/Workspace$CancelEmptySpaceLongClickHandler;

    .line 2587
    iput p2, p0, Lcom/miui/home/launcher/Workspace;->mFirstVelocity:I

    .line 2714
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    .line 2715
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v3, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    .line 2909
    new-instance v3, Lcom/miui/home/launcher/Workspace$11;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/Workspace$11;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Workspace;->mReorganizeFinishConsumer:Ljava/util/function/Consumer;

    .line 2931
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/miui/home/launcher/Workspace;->mAllItems:Ljava/util/ArrayList;

    .line 2932
    iput p2, p0, Lcom/miui/home/launcher/Workspace;->mFolderCount:I

    .line 2933
    iput p2, p0, Lcom/miui/home/launcher/Workspace;->mShortcutCount:I

    .line 2934
    iput p2, p0, Lcom/miui/home/launcher/Workspace;->mQuickAppCount:I

    .line 2935
    new-instance v3, Lcom/miui/home/launcher/Workspace$12;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/Workspace$12;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Workspace;->mCollectConsumerForCategory:Ljava/util/function/Consumer;

    .line 2955
    new-instance v3, Lcom/miui/home/launcher/Workspace$13;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/Workspace$13;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Workspace;->mCollectConsumerForFillEmpty:Ljava/util/function/Consumer;

    .line 3206
    new-instance v3, Lcom/miui/home/launcher/Workspace$17;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/Workspace$17;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Workspace;->mRestoreBlurRunnable:Ljava/lang/Runnable;

    .line 3213
    new-instance v3, Lcom/miui/home/launcher/Workspace$18;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/Workspace$18;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Workspace;->mCurrentMediatorRunnable:Ljava/lang/Runnable;

    new-array v3, p3, [I

    .line 3254
    iput-object v3, p0, Lcom/miui/home/launcher/Workspace;->mLocationOnScreen:[I

    new-array v3, p3, [I

    .line 3255
    iput-object v3, p0, Lcom/miui/home/launcher/Workspace;->mLocationInWindow:[I

    .line 3272
    new-instance v3, Lcom/miui/home/launcher/Workspace$19;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/Workspace$19;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Workspace;->mResetEditingViewsAfterScreenOrientationChanged:Ljava/lang/Runnable;

    .line 3685
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mIsInsertingNewScreen:Z

    .line 3686
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mIsRemovingScreen:Z

    .line 3687
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mNeedToWaitToDeleteEmptyScreen:Z

    .line 3688
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/miui/home/launcher/Workspace;->mCallbacksWhenScreenReady:Ljava/util/ArrayList;

    .line 4052
    new-instance v3, Lmiuix/animation/physics/SpringAnimation;

    sget-object v4, Lcom/miui/home/launcher/Workspace;->TRANSLATION_X:Lmiuix/animation/property/FloatProperty;

    invoke-direct {v3, p0, v4}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Workspace;->mScrollFailedTipAnimator:Lmiuix/animation/physics/SpringAnimation;

    .line 4066
    new-instance v3, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda5;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Workspace;->mScrollFiledTipAnimatorRunnable:Ljava/lang/Runnable;

    const/high16 v3, 0x3f800000    # 1.0f

    .line 4168
    iput v3, p0, Lcom/miui/home/launcher/Workspace;->mEditPinchingScale:F

    .line 4169
    new-instance v3, Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-direct {v3}, Lcom/miui/home/launcher/animate/SpringAnimator;-><init>()V

    iput-object v3, p0, Lcom/miui/home/launcher/Workspace;->mEditPinchingScaleAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 4278
    new-instance v3, Lcom/miui/home/launcher/Workspace$22;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/Workspace$22;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Workspace;->mLoadingFinishMessageHandler:Lcom/miui/home/launcher/common/messages/LoadingFinishMessageHandler;

    .line 4315
    new-instance v3, Lcom/miui/home/launcher/Workspace$23;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/Workspace$23;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Workspace;->mFirstScreenLoadFinishedMessageHandler:Lcom/miui/home/launcher/common/messages/FirstScreenLoadFinishedMessageHandler;

    .line 4326
    new-instance v3, Lcom/miui/home/launcher/Workspace$24;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/Workspace$24;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Workspace;->mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

    const v3, 0x7f080710

    .line 4410
    iput v3, p0, Lcom/miui/home/launcher/Workspace;->mAssistantPointResId:I

    .line 4443
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/miui/home/launcher/Workspace;->mVisibleRect:Landroid/graphics/Rect;

    .line 4645
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/miui/home/launcher/Workspace;->mItemOperation:Ljava/util/ArrayList;

    .line 4646
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/miui/home/launcher/Workspace;->mScreenOperation:Ljava/util/ArrayList;

    .line 4647
    new-instance v5, Lcom/miui/home/launcher/layout/LayoutDataProcessor;

    invoke-direct {v5, v4, v3}, Lcom/miui/home/launcher/layout/LayoutDataProcessor;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v5, p0, Lcom/miui/home/launcher/Workspace;->mLayoutDataProcessor:Lcom/miui/home/launcher/layout/LayoutDataProcessor;

    .line 4648
    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mWidgetsToUpdate:Ljava/util/HashMap;

    .line 4649
    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mTemGadgets:Ljava/util/ArrayList;

    .line 257
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 258
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 259
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->loadIndicatorMarginBottom()V

    const v4, 0x7f100267

    .line 260
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 261
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorHeight:I

    invoke-direct {v4, p2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const-string v5, "bottom_point"

    .line 263
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 264
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v1, 0x51

    .line 265
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 266
    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorMarginBottom:I

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 267
    invoke-static {p2}, Lcom/miui/home/launcher/DeviceConfig;->getSeekPointRes(Z)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ScreenView;->setSeekPointResource(I)V

    .line 268
    invoke-static {p2}, Lcom/miui/home/launcher/DeviceConfig;->getAssistPointRes(Z)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->setAssistPointResource(I)V

    .line 269
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/ScreenView;->setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 270
    iput-boolean v2, p0, Lcom/miui/home/launcher/Workspace;->mShowEditingIndicator:Z

    goto :goto_0

    :cond_0
    const-string/jumbo v5, "top_point"

    .line 271
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, -0x2

    .line 272
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v1, 0x31

    .line 273
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 274
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenMarginTop()I

    move-result v1

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 275
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/ScreenView;->setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 276
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mShowEditingIndicator:Z

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "slider"

    .line 277
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 278
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v1, 0x50

    .line 279
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 280
    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorMarginBottom:I

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 281
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/ScreenView;->setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 282
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mShowEditingIndicator:Z

    .line 284
    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setAnimationCacheEnabled(Z)V

    .line 285
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->initFoldLargeScreenLinePaint()V

    const/16 v1, 0x2a30

    .line 286
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ScreenView;->setMaximumSnapVelocity(I)V

    .line 287
    invoke-static {}, Lcom/miui/home/launcher/Launcher;->isClipTransitionDevice()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 288
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/Workspace;->setClip(Z)V

    .line 291
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->resetScrollZone()V

    .line 293
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f070156

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/Workspace;->mDragScrollAnimationDistance:I

    .line 294
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    const-wide/16 v3, 0x258

    invoke-virtual {p2, v3, v4}, Lcom/miui/home/launcher/OnLongClickAgent;->setTimeOut(J)V

    .line 295
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->initScreenSeekBarEditAnimation()V

    .line 296
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 297
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isHasNavigationBar()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 298
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07024c

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_1
    iput p2, p0, Lcom/miui/home/launcher/Workspace;->mVerticalFlingInvalidateBottomAreaHeight:F

    .line 299
    new-instance p2, Landroid/view/GestureDetector;

    new-instance p3, Lcom/miui/home/launcher/Workspace$ScrollingClickGestureListener;

    invoke-direct {p3, p0, v0}, Lcom/miui/home/launcher/Workspace$ScrollingClickGestureListener;-><init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/Workspace$1;)V

    invoke-direct {p2, p1, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/miui/home/launcher/Workspace;->mScrollingClickDetector:Landroid/view/GestureDetector;

    .line 300
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 301
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/ScreenView;->setScrollWholeScreen(Z)V

    .line 303
    :cond_5
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;-><init>(Lcom/miui/home/launcher/Workspace;)V

    goto :goto_2

    :cond_6
    new-instance p1, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;-><init>(Lcom/miui/home/launcher/Workspace;)V

    :goto_2
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    .line 304
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->initFoldAnim()V

    .line 305
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/ScreenView;->setLayoutScreensSeamless(Z)V

    .line 306
    new-instance p1, Lcom/miui/home/launcher/GlobalSearchGestureMonitor;

    iget p2, p0, Lcom/miui/home/launcher/Workspace;->mVerticalFlingInvalidateBottomAreaHeight:F

    invoke-direct {p1, p2}, Lcom/miui/home/launcher/GlobalSearchGestureMonitor;-><init>(F)V

    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mGlobalSearchGestureMonitor:Lcom/miui/home/launcher/GlobalSearchGestureMonitor;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    .line 154
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->dragToNextScreen()V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/ShortcutInfo;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    .line 154
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/Workspace;->addItemToFolder(Lcom/miui/home/launcher/ShortcutInfo;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/home/launcher/Workspace;)I
    .locals 0

    .line 154
    iget p0, p0, Lcom/miui/home/launcher/Workspace;->mFolderCount:I

    return p0
.end method

.method static synthetic access$1108(Lcom/miui/home/launcher/Workspace;)I
    .locals 2

    .line 154
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mFolderCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/miui/home/launcher/Workspace;->mFolderCount:I

    return v0
.end method

.method static synthetic access$1200(Lcom/miui/home/launcher/Workspace;)I
    .locals 0

    .line 154
    iget p0, p0, Lcom/miui/home/launcher/Workspace;->mQuickAppCount:I

    return p0
.end method

.method static synthetic access$1208(Lcom/miui/home/launcher/Workspace;)I
    .locals 2

    .line 154
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mQuickAppCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/miui/home/launcher/Workspace;->mQuickAppCount:I

    return v0
.end method

.method static synthetic access$1300(Lcom/miui/home/launcher/Workspace;)I
    .locals 0

    .line 154
    iget p0, p0, Lcom/miui/home/launcher/Workspace;->mShortcutCount:I

    return p0
.end method

.method static synthetic access$1308(Lcom/miui/home/launcher/Workspace;)I
    .locals 2

    .line 154
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mShortcutCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/miui/home/launcher/Workspace;->mShortcutCount:I

    return v0
.end method

.method static synthetic access$1400(Lcom/miui/home/launcher/Workspace;)Lcom/miui/home/launcher/OnLongClickAgent;
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/miui/home/launcher/Workspace;I)I
    .locals 0

    .line 154
    iput p1, p0, Lcom/miui/home/launcher/Workspace;->mOldTransitionType:I

    return p1
.end method

.method static synthetic access$1700(Lcom/miui/home/launcher/Workspace;)Ljava/util/List;
    .locals 0

    .line 154
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getDefaultScreenIndexList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/miui/home/launcher/Workspace;)Landroid/graphics/Rect;
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mVisibleRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/Workspace;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$302(Lcom/miui/home/launcher/Workspace;Z)Z
    .locals 0

    .line 154
    iput-boolean p1, p0, Lcom/miui/home/launcher/Workspace;->mShowingTransitionEffectDemo:Z

    return p1
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/Workspace;)Ljava/lang/Runnable;
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mAutoScrollEnd:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/Workspace;)Ljava/util/ArrayList;
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mAllItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 0

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->addItemToFolder(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/FolderInfo;)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/ItemInfo;Landroid/view/View;)V
    .locals 0

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->findPosForIcon(Lcom/miui/home/launcher/ItemInfo;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/home/launcher/Workspace;)Landroid/content/Context;
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/miui/launcher/views/LauncherViewGroup;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private addItemToFolder(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 1

    .line 2965
    new-instance v0, Lcom/miui/home/launcher/Workspace$14;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/home/launcher/Workspace$14;-><init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/ShortcutInfo;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useLauncherToRunOnUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private addItemToFolder(Lcom/miui/home/launcher/ShortcutInfo;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/home/launcher/FolderInfo;",
            ">;)V"
        }
    .end annotation

    .line 2818
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2819
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/FolderInfo;

    .line 2820
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->addItemToFolder(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/FolderInfo;)V

    goto :goto_0

    .line 2822
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const-wide/16 v1, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/Launcher;->createNewFolder(JIILjava/lang/String;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v0

    .line 2823
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/FolderInfo;

    .line 2824
    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/Workspace;->findPosForIcon(Lcom/miui/home/launcher/ItemInfo;Landroid/view/View;)V

    .line 2825
    invoke-virtual {p3, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2826
    invoke-direct {p0, p1, v1}, Lcom/miui/home/launcher/Workspace;->addItemToFolder(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/FolderInfo;)V

    :goto_0
    return-void
.end method

.method private cellLayoutCancelLongPress()V
    .locals 4

    .line 2353
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2355
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentAllScreenIndex()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2356
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2357
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v2

    .line 2358
    instance-of v3, v2, Lcom/miui/home/launcher/CellScreen;

    if-eqz v3, :cond_0

    .line 2359
    check-cast v2, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v2}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/CellLayout;->cancelLongPress()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2363
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->cancelLongPress()V

    :cond_2
    return-void
.end method

.method private changeChildCellCount(Lcom/miui/home/launcher/CellScreen;IIII[[Landroid/view/View;)V
    .locals 11

    move-object v0, p0

    .line 4811
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v1

    .line 4813
    iget-object v3, v0, Lcom/miui/home/launcher/Workspace;->mWidgetsToUpdate:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move-object v10, v3

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    .line 4812
    invoke-virtual/range {v4 .. v10}, Lcom/miui/home/launcher/CellScreen;->changeCellCount(IIII[[Landroid/view/View;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4814
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4815
    iget-object v0, v0, Lcom/miui/home/launcher/Workspace;->mWidgetsToUpdate:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private checkCurScreenIndex()V
    .locals 4

    .line 4889
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 4890
    iget-wide v1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenId:J

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-ne v1, v0, :cond_0

    return-void

    .line 4894
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    iget-wide v1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenId:J

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4896
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-super {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setCurrentScreenInner(I)V

    .line 4897
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Lcom/miui/home/launcher/common/CurrentIndexMediator;->updateIndex(IZ)V

    .line 4898
    invoke-static {v1}, Lcom/miui/launcher/utils/MamlUtils;->setGlobalThreadPause(Z)V

    goto :goto_0

    .line 4900
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after change cell count screens id error screenId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", screenIndex = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Launcher.Workspace"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4902
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->setCurrentScreenInner(I)V

    :goto_0
    return-void
.end method

.method private checkIsDupTask(Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;)Z
    .locals 3

    .line 2648
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mCallbacksWhenScreenReady:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2649
    :try_start_0
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mCallbacksWhenScreenReady:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;

    .line 2650
    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;->getItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2651
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;->getItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    .line 2652
    monitor-exit v0

    return p0

    .line 2655
    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private checkScreenVisibility(Landroid/view/View;)Z
    .locals 4

    .line 1011
    iget-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mOnlyDrawCurrentScreen:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1015
    :cond_0
    instance-of v0, p1, Lcom/miui/home/launcher/CellScreen;

    if-nez v0, :cond_1

    return v1

    .line 1019
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    .line 1020
    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v2

    .line 1022
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result p0

    const/4 v3, 0x0

    if-eqz p0, :cond_4

    if-eq p1, v0, :cond_3

    if-ne p1, v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    :cond_3
    :goto_0
    return v1

    :cond_4
    if-ne p1, v0, :cond_5

    goto :goto_1

    :cond_5
    move v1, v3

    :goto_1
    return v1
.end method

.method private clearWidgetCache()V
    .locals 1

    .line 4844
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mWidgetsToUpdate:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4845
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->destroyWidgetsToUpdate()V

    .line 4846
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->updateOldAppWidgetsSizeOption()V

    :cond_0
    return-void
.end method

.method private collectAllIcons(Z)V
    .locals 4

    .line 2796
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 2797
    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mFolderCount:I

    .line 2798
    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mShortcutCount:I

    .line 2799
    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mQuickAppCount:I

    .line 2801
    iget-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mDefaultScreenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    move v1, v0

    .line 2802
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2803
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    .line 2805
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mCollectConsumerForCategory:Ljava/util/function/Consumer;

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mCollectConsumerForFillEmpty:Ljava/util/function/Consumer;

    :goto_1
    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/CellLayout;->collectAllIcons(Ljava/util/function/Consumer;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_5

    .line 2810
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_3

    .line 2812
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mCollectConsumerForCategory:Ljava/util/function/Consumer;

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mCollectConsumerForFillEmpty:Ljava/util/function/Consumer;

    :goto_3
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/CellLayout;->collectAllIcons(Ljava/util/function/Consumer;)V

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method private createNewScreen(Lcom/miui/home/launcher/layout/LayoutScreenInfo;)Lcom/miui/home/launcher/CellScreen;
    .locals 5

    .line 4800
    iget-wide v0, p1, Lcom/miui/home/launcher/layout/LayoutScreenInfo;->screenId:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->generateEmptyCellScreen(JI)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    .line 4801
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/CellLayout;->setIsUsing(Z)V

    .line 4802
    iget p1, p1, Lcom/miui/home/launcher/layout/LayoutScreenInfo;->index:I

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/Workspace;->addView(Landroid/view/View;I)V

    .line 4803
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isInLayoutPreviewMode()Z

    move-result v1

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    invoke-virtual {v0, p1, v1, v3, v4}, Lcom/miui/home/launcher/CellScreen;->setEditMode(ZZILcom/miui/home/launcher/EditStateChangeReason;)Z

    .line 4804
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isInQuickEditingMode()Z

    move-result p1

    invoke-virtual {v0, p1, v2}, Lcom/miui/home/launcher/CellScreen;->onQuickEditingModeChanged(ZZ)V

    .line 4805
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->updateChildStaticTransformation(Landroid/view/View;)V

    return-object v0
.end method

.method private destroyWidgetsToUpdate()V
    .locals 2

    .line 4869
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mWidgetsToUpdate:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4870
    sget-object v1, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda18;->INSTANCE:Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda18;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private doForEachCellScreen(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/miui/home/launcher/CellScreen;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1277
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1278
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1280
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private dragToNextScreen()V
    .locals 4

    const/4 v0, 0x1

    .line 695
    iput-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mIsSnapCausedByDragScroll:Z

    .line 696
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v1

    .line 697
    iget v2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    if-ne v2, v0, :cond_3

    if-eqz v1, :cond_3

    .line 699
    :cond_1
    invoke-super {p0}, Lcom/miui/home/launcher/DragableScreenView;->scrollDragingLeft()V

    .line 700
    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    if-nez v2, :cond_3

    .line 701
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v3}, Lcom/miui/home/launcher/DragController;->getCurrentDragObject()Lcom/miui/home/launcher/DragObject;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/home/launcher/widget/MIUIWidgetHelper;->canDragToPa(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/DragObject;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 702
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getLauncherCallbacks()Lcom/miui/home/launcher/LauncherCallbacks;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mLastEvent:Landroid/view/MotionEvent;

    invoke-interface {v2, v3}, Lcom/miui/home/launcher/LauncherCallbacks;->onDragToAssistantScreen(Landroid/view/MotionEvent;)V

    const/4 v2, 0x0

    .line 703
    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mLastEvent:Landroid/view/MotionEvent;

    goto :goto_0

    .line 705
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performEnough()V

    .line 709
    :cond_3
    :goto_0
    iget v2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    if-ne v2, v0, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    if-nez v2, :cond_6

    if-eqz v1, :cond_6

    .line 711
    :cond_5
    invoke-super {p0}, Lcom/miui/home/launcher/DragableScreenView;->scrollDragingRight()V

    .line 713
    :cond_6
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 714
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(I)I

    :cond_7
    return-void
.end method

.method private drawFoldDivideLine(Landroid/graphics/Canvas;)V
    .locals 13

    .line 343
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    .line 344
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLinePaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/miui/home/launcher/Workspace;->mIsCanvasLine:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_4

    .line 346
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 347
    instance-of v4, v3, Lcom/miui/home/launcher/CellScreen;

    if-eqz v4, :cond_3

    .line 349
    check-cast v3, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v3}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v3

    .line 350
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/lit8 v5, v2, 0x1

    .line 351
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    if-eqz v4, :cond_2

    if-nez v5, :cond_0

    goto :goto_1

    .line 356
    :cond_0
    iget-object v6, p0, Lcom/miui/home/launcher/Workspace;->mLocation:[I

    if-nez v6, :cond_1

    const/4 v6, 0x2

    new-array v6, v6, [I

    .line 357
    iput-object v6, p0, Lcom/miui/home/launcher/Workspace;->mLocation:[I

    .line 359
    :cond_1
    iget-object v6, p0, Lcom/miui/home/launcher/Workspace;->mLocation:[I

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    int-to-float v6, v4

    sub-int/2addr v5, v4

    int-to-float v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v6, v4

    .line 360
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getScreenViewDivideWidth()F

    move-result v4

    div-float/2addr v4, v5

    sub-float v10, v6, v4

    .line 361
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/miui/home/launcher/Workspace;->mLocation:[I

    aget v4, v4, v1

    add-int/2addr v3, v4

    int-to-float v9, v3

    .line 362
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result v3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v4

    mul-float/2addr v3, v4

    add-float v11, v9, v3

    .line 364
    iget-object v12, p0, Lcom/miui/home/launcher/Workspace;->mLinePaint:Landroid/graphics/Paint;

    move-object v7, p1

    move v8, v10

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_2
    :goto_1
    return-void

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private exitPreview(J)V
    .locals 3

    const/4 v0, 0x0

    .line 4851
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4852
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4853
    instance-of v2, v1, Lcom/miui/home/launcher/CellScreen;

    if-eqz v2, :cond_0

    .line 4854
    check-cast v1, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/miui/home/launcher/CellLayout;->exitPreview(J)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4857
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->resetLayoutPreviewData()V

    return-void
.end method

.method private findDragOverCellScreen(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/CellScreen;
    .locals 2

    .line 1739
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1740
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object p0

    return-object p0

    .line 1744
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1745
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v1

    iget p1, p1, Lcom/miui/home/launcher/DragObject;->x:I

    sub-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getChildScreenMeasureWidth()I

    move-result p1

    div-int/2addr v1, p1

    add-int/2addr v0, v1

    goto :goto_0

    .line 1747
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result v0

    iget p1, p1, Lcom/miui/home/launcher/DragObject;->x:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getChildScreenMeasureWidth()I

    move-result v1

    div-int/2addr p1, v1

    add-int/2addr v0, p1

    .line 1749
    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object p0

    return-object p0
.end method

.method private findEmptyCell(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Workspace$CellInfo;II)Lcom/miui/home/launcher/Workspace$CellInfo;
    .locals 5

    .line 2482
    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->needAddToQuickCallCellLayout(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2483
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getQuickCallCellLayout()Lcom/miui/home/launcher/oldman/QuickCallCellLayout;

    move-result-object v0

    goto :goto_0

    .line 2485
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getLastNotEmptyScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 2487
    :goto_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v1

    iput v1, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->screenOrder:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2494
    invoke-virtual {v0, p3, p4}, Lcom/miui/home/launcher/CellLayout;->findLastEmptyCell(II)[I

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 2496
    aget p0, p1, v1

    iput p0, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->cellX:I

    .line 2497
    aget p0, p1, v2

    iput p0, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->cellY:I

    .line 2498
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide p0

    iput-wide p0, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->screenId:J

    return-object p2

    .line 2501
    :cond_1
    invoke-virtual {p2, v2}, Lcom/miui/home/launcher/Workspace$CellInfo;->nextScreen(I)V

    .line 2502
    iget p1, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->screenOrder:I

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v3

    iput-wide v3, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->screenId:J

    .line 2503
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result p1

    sub-int/2addr p1, p3

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    iput p1, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->cellX:I

    .line 2504
    iput v1, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->cellY:I

    .line 2507
    iget p1, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->screenOrder:I

    const/16 v0, 0x1e

    if-ge p1, v0, :cond_3

    return-object p2

    .line 2511
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_2
    if-ltz p1, :cond_6

    .line 2515
    iput p1, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->screenOrder:I

    .line 2516
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_3

    .line 2518
    :cond_4
    invoke-virtual {v0, p3, p4}, Lcom/miui/home/launcher/CellLayout;->findLastVacantArea(II)[I

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2520
    aget p0, v3, v1

    iput p0, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->cellX:I

    .line 2521
    aget p0, v3, v2

    iput p0, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->cellY:I

    .line 2522
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide p0

    iput-wide p0, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->screenId:J

    return-object p2

    :cond_5
    :goto_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_6
    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p3

    .line 2489
    new-instance p4, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ",screenCount:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2490
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",isWorkspaceLoading:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ",item:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",cellInfo:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p4, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p4
.end method

.method private findEmptyCellOnCurrentCellLayout(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/CellLayout;II)Z
    .locals 11

    const/4 v10, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1849
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez v3, :cond_0

    goto :goto_0

    .line 1852
    :cond_0
    iget v3, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v4, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget v5, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v6, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-virtual {p2, v3, v4, v5, v6}, Lcom/miui/home/launcher/CellLayout;->isCellOccupied(IIII)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    return v4

    .line 1855
    :cond_1
    invoke-virtual {p2, p3, p4}, Lcom/miui/home/launcher/CellLayout;->findLastEmptyCell(II)[I

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1857
    aget v0, v2, v10

    iput v0, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 1858
    aget v0, v2, v4

    iput v0, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    return v4

    .line 1862
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-wide v2, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iget-wide v4, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    iget v6, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v7, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v9}, Lcom/miui/home/launcher/Launcher;->addItemToWorkspace(Lcom/miui/home/launcher/ItemInfo;JJIIZLjava/lang/Runnable;)V

    :cond_3
    :goto_0
    return v10
.end method

.method private findPosForIcon(Lcom/miui/home/launcher/ItemInfo;Landroid/view/View;)V
    .locals 3

    .line 2977
    instance-of v0, p1, Lcom/miui/home/launcher/FolderInfo;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-nez v0, :cond_0

    return-void

    .line 2980
    :cond_0
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v1, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getFirstVacantIconArea(II)Lcom/miui/home/launcher/Workspace$CellInfo;

    move-result-object v0

    .line 2981
    iget v1, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->cellX:I

    iput v1, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 2982
    iget v1, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->cellY:I

    iput v1, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 2983
    iget-wide v1, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->screenId:J

    iput-wide v1, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 2984
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1, p1}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 2985
    new-instance p1, Lcom/miui/home/launcher/Workspace$15;

    invoke-direct {p1, p0, v0, p2}, Lcom/miui/home/launcher/Workspace$15;-><init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/Workspace$CellInfo;Landroid/view/View;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->useLauncherToRunOnUiThread(Ljava/lang/Runnable;)Z

    .line 2998
    iget-wide v0, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1, p1}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;ZZ)V

    return-void
.end method

.method private findQuickCallCellLayout(Ljava/util/function/Function;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/miui/home/launcher/oldman/QuickCallCellLayout;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 2531
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getQuickCallCellLayout()Lcom/miui/home/launcher/oldman/QuickCallCellLayout;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2533
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private findSlot(IIIIJZ)Lcom/miui/home/launcher/CellLayout$CellInfo;
    .locals 8

    move-object v0, p0

    move-wide v1, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p7

    .line 4584
    invoke-virtual/range {v0 .. v7}, Lcom/miui/home/launcher/Workspace;->findSlot(JIIIIZ)Lcom/miui/home/launcher/CellLayout$CellInfo;

    move-result-object p0

    return-object p0
.end method

.method private generateEmptyCellScreen(JI)Lcom/miui/home/launcher/CellScreen;
    .locals 1

    .line 3675
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/CellScreen;->createCellScreen(Landroid/content/Context;)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    .line 3676
    invoke-virtual {v0, p3}, Lcom/miui/home/launcher/CellScreen;->createCellLayout(I)V

    .line 3677
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->onScreenOrientationChanged()V

    .line 3678
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p3

    .line 3679
    invoke-virtual {p3, p1, p2}, Lcom/miui/home/launcher/CellLayout;->setScreenId(J)V

    const/16 p1, -0x64

    .line 3680
    invoke-virtual {p3, p1}, Lcom/miui/home/launcher/CellLayout;->setContainerId(I)V

    .line 3681
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p3, p0}, Lcom/miui/home/launcher/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object v0
.end method

.method private getDampingScale(F)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1147
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/Workspace;->afterFriction(FF)F

    move-result p0

    const p1, 0x3f666666    # 0.9f

    mul-float/2addr p0, p1

    sub-float/2addr v0, p0

    return v0
.end method

.method private getDefaultScreenIndexList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4304
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    if-eqz v1, :cond_0

    .line 4305
    iget-wide v2, p0, Lcom/miui/home/launcher/Workspace;->mDefaultScreenId:J

    invoke-virtual {p0, v2, v3}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/common/CurrentIndexMediator;->getAllIndexesOnScreen(I)Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getDeltaWhenCancelScroll()I
    .locals 2

    .line 4013
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->getScreenScrollX(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    .line 4014
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLargeRtlLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sub-int/2addr v0, p0

    return v0
.end method

.method private getDropScreen(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/CellScreen;
    .locals 4

    .line 1757
    iget-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1758
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/Workspace;->getCurrentValidDropScreen(II)Lcom/miui/home/launcher/CellScreen;

    move-result-object p0

    return-object p0

    .line 1760
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getLastDragScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object p0

    return-object p0
.end method

.method private getFirstVacantIconArea(II)Lcom/miui/home/launcher/Workspace$CellInfo;
    .locals 10

    .line 2761
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    .line 2762
    new-instance v0, Lcom/miui/home/launcher/Workspace$CellInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/Workspace$CellInfo;-><init>()V

    .line 2763
    iget-wide v1, p0, Lcom/miui/home/launcher/Workspace;->mDefaultScreenId:J

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v1

    .line 2764
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2768
    :cond_0
    invoke-virtual {v2, p1, p2}, Lcom/miui/home/launcher/CellLayout;->findFirstVacantArea(II)[I

    move-result-object v2

    const/4 v3, 0x0

    move v4, v1

    move v5, v3

    :goto_0
    const/4 v6, 0x1

    if-eqz v2, :cond_2

    .line 2771
    aget v7, v2, v3

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    aget v7, v2, v6

    if-ne v7, v8, :cond_1

    goto :goto_1

    .line 2789
    :cond_1
    aget p1, v2, v3

    iput p1, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->cellX:I

    .line 2790
    aget p1, v2, v6

    iput p1, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->cellY:I

    .line 2791
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide p0

    iput-wide p0, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->screenId:J

    return-object v0

    :cond_2
    :goto_1
    add-int/2addr v5, v6

    add-int v2, v1, v5

    .line 2773
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v4

    .line 2774
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-nez v4, :cond_3

    .line 2776
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Workspace;->insertNewScreen(I)V

    .line 2777
    sget-object v4, Lcom/miui/home/launcher/Workspace;->sPrepareNewScreenLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2779
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v6

    .line 2781
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2783
    :goto_2
    monitor-exit v4

    goto :goto_4

    :goto_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 2786
    :cond_3
    :goto_4
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v4

    .line 2787
    invoke-virtual {v4, p1, p2}, Lcom/miui/home/launcher/CellLayout;->findFirstVacantArea(II)[I

    move-result-object v4

    move-object v9, v4

    move v4, v2

    move-object v2, v9

    goto :goto_0
.end method

.method private getLastDragScreen()Lcom/miui/home/launcher/CellScreen;
    .locals 2

    .line 1753
    iget-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object p0

    return-object p0
.end method

.method private getLastScreenIndexByType(IIZ)I
    .locals 2

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, -0x1

    :goto_0
    move v0, p2

    .line 3415
    :goto_1
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getScreenType(I)I

    move-result v1

    if-ne v1, p1, :cond_1

    add-int/2addr v0, p3

    goto :goto_1

    :cond_1
    if-ne v0, p2, :cond_2

    goto :goto_2

    :cond_2
    sub-int p2, v0, p3

    :goto_2
    return p2
.end method

.method private getNextScreenIndex(I)I
    .locals 1

    .line 635
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 636
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->getScreenLayoutX(I)I

    move-result p0

    if-ge v0, p0, :cond_0

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private getQuickCallCellLayout()Lcom/miui/home/launcher/oldman/QuickCallCellLayout;
    .locals 1

    const/4 v0, 0x0

    .line 2569
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object p0

    .line 2570
    instance-of v0, p0, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;

    if-eqz v0, :cond_0

    .line 2571
    check-cast p0, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getScreenScaleRatio()F
    .locals 1

    .line 4165
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenScaleRatio()F

    move-result v0

    return v0
.end method

.method private getScreenViewDivideWidth()F
    .locals 1

    .line 372
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070761

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method private getUsingInfo()Ljava/util/LinkedHashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Lcom/miui/home/launcher/layout/LayoutScreenInfo;",
            "[[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 4764
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x0

    .line 4765
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 4766
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 4767
    iget-object v4, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 4768
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v5

    if-ne v4, v1, :cond_0

    if-nez v5, :cond_1

    .line 4770
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "screenId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", should is = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", but index is = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", cellScreen = "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Launcher.Workspace"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4773
    :cond_1
    new-instance v4, Lcom/miui/home/launcher/layout/LayoutScreenInfo;

    invoke-direct {v4, v2, v3, v1, v5}, Lcom/miui/home/launcher/layout/LayoutScreenInfo;-><init>(JILjava/lang/Object;)V

    invoke-virtual {v5}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/CellLayout;->getOccupiedCell()[[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private initFoldAnim()V
    .locals 1

    .line 376
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    new-instance v0, Lcom/miui/home/launcher/common/FoldScreenModeObserver;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/FoldScreenModeObserver;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mFoldScreenModeObserver:Lcom/miui/home/launcher/common/FoldScreenModeObserver;

    .line 378
    new-instance v0, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mFoldEditSwitchScreenAnim:Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;

    :cond_0
    return-void
.end method

.method private initFoldLargeScreenLinePaint()V
    .locals 2

    .line 323
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLinePaint:Landroid/graphics/Paint;

    .line 325
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getScreenViewDivideWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 326
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 327
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f0606e2

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f0606e3

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private initScreenSeekBarEditAnimation()V
    .locals 1

    .line 3474
    new-instance v0, Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-direct {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBarEditAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    return-void
.end method

.method private initTemGadgets(Z)V
    .locals 2

    .line 4684
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mWidgetsToUpdate:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 4689
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/common/CurrentIndexMediator;->setTmpGadgets(Ljava/util/ArrayList;)V

    .line 4691
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mTemGadgets:Ljava/util/ArrayList;

    .line 4692
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mWidgetsToUpdate:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4693
    new-instance v1, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda15;-><init>(Lcom/miui/home/launcher/Workspace;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 4701
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mTemGadgets:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/common/CurrentIndexMediator;->setTmpGadgets(Ljava/util/ArrayList;)V

    return-void

    .line 4685
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/common/CurrentIndexMediator;->setTmpGadgets(Ljava/util/ArrayList;)V

    return-void
.end method

.method private insertNewScreenIfNeed(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 2330
    new-instance v0, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda9;-><init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/DragObject;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private isAllItemsCheckInFolder(Lcom/miui/home/launcher/FolderInfo;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 3950
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 3951
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private isEditingModeShowLastEmptyScreen()Z
    .locals 1

    .line 2384
    iget p0, p0, Lcom/miui/home/launcher/Workspace;->mEditingMode:I

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

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

.method private isLastCellLayoutEmpty()Z
    .locals 2

    .line 4531
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4532
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private isLastScreenEmpty()Z
    .locals 0

    .line 608
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getLastCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->isEmpty()Z

    move-result p0

    return p0
.end method

.method private isMotionEventIsInMaMlView(Lcom/miui/home/launcher/Launcher;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1446
    iget-object p1, p1, Lcom/miui/home/launcher/Launcher;->mMaMlViews:Ljava/util/ArrayList;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1447
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v0

    .line 1450
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1451
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/maml/MaMlWidgetView;

    .line 1452
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mMaMlWidgetViewHitRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1453
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMotionEventIsInMaMlView MaMlWidgetView name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Launcher.Workspace"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mMaMlWidgetViewHitRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1455
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->skipToEnd()V

    const-string p0, "isMotionEventIsInMaMlView MaMlWidgetView \u91ca\u653e\u4e8b\u4ef6"

    .line 1456
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private isMotionEventIsInWidget(Lcom/miui/home/launcher/Launcher;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1465
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAppWidgetHost()Lcom/miui/home/launcher/LauncherAppWidgetHost;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1469
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->getLauncherAppWidgetHostCacheViews()Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1470
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    move v1, v0

    .line 1473
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 1474
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_2

    goto :goto_1

    .line 1478
    :cond_2
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/LauncherWidgetView;

    if-nez v2, :cond_3

    goto :goto_1

    .line 1482
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMotionEventIsInWidget LauncherWidgetView name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherWidgetView;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Launcher.Workspace"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mMaMlWidgetViewHitRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1484
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mMaMlWidgetViewHitRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1485
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->skipToEnd()V

    const-string p0, "isMotionEventIsInWidget LauncherWidgetView \u91ca\u653e\u4e8b\u4ef6"

    .line 1486
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return v0
.end method

.method private isNeedCorrectIndex()Z
    .locals 2

    .line 4509
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isNeedInsertNewScreen()Z
    .locals 1

    .line 2419
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getLastCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2421
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2422
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->needShowLastEmptyScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/miui/home/launcher/Workspace;->mIsInsertingNewScreen:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSecondaryPointerEnable()Z
    .locals 1

    .line 1323
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderOpened()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$bindScreenAdded$14()V
    .locals 1

    .line 3751
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isPreviewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3752
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspacePreview()Lcom/miui/home/launcher/WorkspaceThumbnailView;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->loadThumbnails(Z)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$calibrateCurrentScreenIndex$16()Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic lambda$canAddShortcutToQuickCallCellLayout$12(Lcom/miui/home/launcher/oldman/QuickCallCellLayout;)Ljava/lang/Boolean;
    .locals 1

    .line 2561
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->isFull()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->isAddContactButtonShowing()Z

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
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$checkAppWidgetResizeFrameWhenDropOnOriginScreen$4(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/LauncherWidgetView;Lcom/miui/home/launcher/CellLayout;)V
    .locals 1

    .line 1700
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    .line 1701
    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/home/launcher/SuperDraglayer;->addResizeFrame(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/LauncherWidgetView;Lcom/miui/home/launcher/CellLayout;)V

    const/4 p1, 0x0

    .line 1702
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mAddResizeFrameRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private static synthetic lambda$destroyWidgetsToUpdate$19(Landroid/view/View;)V
    .locals 1

    .line 4871
    instance-of v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;

    if-eqz v0, :cond_0

    .line 4872
    move-object v0, p0

    check-cast v0, Lcom/miui/home/launcher/maml/MaMlWidgetView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->onDestroy()V

    .line 4874
    :cond_0
    instance-of v0, p0, Lcom/miui/home/launcher/LauncherMtzGadgetView;

    if-eqz v0, :cond_1

    .line 4875
    move-object v0, p0

    check-cast v0, Lcom/miui/home/launcher/LauncherMtzGadgetView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherMtzGadgetView;->getGadget()Lcom/miui/home/launcher/gadget/Gadget;

    move-result-object v0

    .line 4876
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onDestroy()V

    .line 4877
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onDeleted()V

    .line 4880
    :cond_1
    instance-of v0, p0, Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v0, :cond_2

    .line 4881
    check-cast p0, Lcom/miui/home/launcher/gadget/Gadget;

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Gadget;->onDestroy()V

    .line 4882
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Gadget;->onDeleted()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$editPinchingScaleAnimTo$15(F)V
    .locals 0

    .line 4180
    iput p1, p0, Lcom/miui/home/launcher/Workspace;->mEditPinchingScale:F

    return-void
.end method

.method private static synthetic lambda$hideAddContactButtonInQuickCallCellLayout$11(Lcom/miui/home/launcher/oldman/QuickCallCellLayout;)Ljava/lang/Boolean;
    .locals 0

    .line 2554
    invoke-virtual {p0}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->hideAddContactButton()V

    .line 2555
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$initTemGadgets$17(Landroid/view/View;)V
    .locals 1

    .line 4694
    instance-of v0, p1, Lcom/miui/home/launcher/LauncherMtzGadgetView;

    if-eqz v0, :cond_0

    .line 4695
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mTemGadgets:Ljava/util/ArrayList;

    check-cast p1, Lcom/miui/home/launcher/LauncherMtzGadgetView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherMtzGadgetView;->getGadget()Lcom/miui/home/launcher/gadget/Gadget;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4696
    :cond_0
    instance-of v0, p1, Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v0, :cond_1

    .line 4697
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mTemGadgets:Ljava/util/ArrayList;

    check-cast p1, Lcom/miui/home/launcher/gadget/Gadget;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$insertNewScreenIfNeed$8(Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    .line 2333
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getLastCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2334
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2335
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->containsOnlyEmptyFolders(Lcom/miui/home/launcher/DragObject;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2336
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->insertNewScreen(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onDragCompleted$6(Lcom/miui/home/launcher/CellLayout;)V
    .locals 1

    const/4 v0, 0x0

    .line 2168
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellLayout;->alignIconsToTopWithSaveDb(Z)Z

    .line 2169
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setInDragTargetViewFindPos(Z)V

    const-string p0, "noNeedCloseFolder"

    const-string/jumbo p1, "setInDragTargetViewFindPos end with anim"

    .line 2170
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$onDropFromExternal$5(Lcom/miui/home/launcher/gadget/Gadget;)Z
    .locals 2

    .line 1963
    instance-of v0, p1, Lcom/miui/home/launcher/gadget/MtzGadget;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/home/launcher/gadget/MtzGadget;

    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/MtzGadget;->isInvalidateGadget()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1964
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f10043f

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1
.end method

.method private static synthetic lambda$onWallpaperColorChanged$7(Landroid/view/View;)V
    .locals 0

    .line 2228
    check-cast p0, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;

    invoke-interface {p0}, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;->onWallpaperColorChanged()V

    return-void
.end method

.method private synthetic lambda$resetDockAndSearchPivotX$2(Lcom/miui/home/launcher/CellScreen;)V
    .locals 1

    .line 1200
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellScreen;->getEditModePinchingPivotX()F

    move-result p1

    .line 1201
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 1202
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object v0

    .line 1203
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object p0

    if-eqz v0, :cond_0

    .line 1205
    invoke-virtual {v0, p1}, Landroid/view/View;->setPivotX(F)V

    :cond_0
    if-eqz p0, :cond_1

    .line 1208
    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotX(F)V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$resetWidgetsToUpdate$18(Landroid/view/View;)V
    .locals 1

    .line 4720
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 4721
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 4722
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4724
    :cond_0
    instance-of v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;

    if-eqz v0, :cond_1

    .line 4725
    move-object v0, p0

    check-cast v0, Lcom/miui/home/launcher/maml/MaMlWidgetView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->onPause()V

    .line 4727
    :cond_1
    instance-of v0, p0, Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v0, :cond_2

    .line 4728
    move-object v0, p0

    check-cast v0, Lcom/miui/home/launcher/gadget/Gadget;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onPause()V

    .line 4730
    :cond_2
    instance-of v0, p0, Lcom/miui/home/launcher/LauncherMtzGadgetView;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/miui/home/launcher/LauncherMtzGadgetView;

    .line 4731
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherMtzGadgetView;->getGadget()Lcom/miui/home/launcher/gadget/Gadget;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4732
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherMtzGadgetView;->getGadget()Lcom/miui/home/launcher/gadget/Gadget;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Gadget;->onPause()V

    :cond_3
    return-void
.end method

.method private synthetic lambda$setEditMode$13(FFFFFFFFF)V
    .locals 1

    .line 3513
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-direct {p0, p1, p2, p9}, Lcom/miui/home/launcher/Workspace;->mix(FFF)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3514
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-direct {p0, p3, p4, p9}, Lcom/miui/home/launcher/Workspace;->mix(FFF)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 3515
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-direct {p0, p5, p6, p9}, Lcom/miui/home/launcher/Workspace;->mix(FFF)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 3516
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-direct {p0, p7, p8, p9}, Lcom/miui/home/launcher/Workspace;->mix(FFF)F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setPivotY(F)V

    return-void
.end method

.method private static synthetic lambda$showAddContactButtonInQuickCallCellLayout$10(Lcom/miui/home/launcher/oldman/QuickCallCellLayout;)Ljava/lang/Boolean;
    .locals 0

    .line 2547
    invoke-virtual {p0}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->showAddContactButton()V

    .line 2548
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private static synthetic lambda$showQuickCallCellLayoutTitle$9(Lcom/miui/home/launcher/oldman/QuickCallCellLayout;)Ljava/lang/Boolean;
    .locals 0

    .line 2540
    invoke-virtual {p0}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->showTitle()V

    .line 2541
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private static synthetic lambda$updateNewAppWidgetsSizeOption$20(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 1

    .line 4928
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz v0, :cond_0

    .line 4929
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$updateNewAppWidgetsSizeOption$21(Ljava/util/ArrayList;Ljava/lang/Long;Ljava/util/ArrayList;)V
    .locals 0

    .line 4927
    new-instance p1, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda16;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda16;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$updateNewAppWidgetsSizeOption$22([Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 0

    .line 4938
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p0, :cond_0

    .line 4939
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->updateWidgetsSizeOption([Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$updateNormalEditProgress$3(FLcom/miui/home/launcher/CellScreen;)V
    .locals 0

    .line 1259
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/CellScreen;->scaleCellLayoutToNormalEditMode(F)V

    return-void
.end method

.method private synthetic lambda$updateOldAppWidgetsSizeOption$23([Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 0

    .line 4950
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p0, :cond_0

    .line 4951
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->updateWidgetsSizeOption([Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    :cond_0
    return-void
.end method

.method private loadIndicatorMarginBottom()V
    .locals 2

    .line 3320
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceIndicatorHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorHeight:I

    .line 3321
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceIndicatorMarginBottom()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorMarginBottom:I

    .line 3322
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceIndicatorMarginBottomInEditMode()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorOffsetBottomPortrait:I

    .line 3323
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenIndicator()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3325
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3326
    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorMarginBottom:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 3327
    iget p0, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorHeight:I

    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :cond_0
    return-void
.end method

.method private loadSoscLayout(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 0

    .line 4640
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ScreenView;->onSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V

    .line 4641
    invoke-virtual {p2}, Lcom/miui/launcher/sosc/module/SoscEvent;->isHalfSoscSplit()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->setClip(Z)V

    .line 4642
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->updateWorkspacePaddingTop()V

    .line 4643
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->loadIndicatorMarginBottom()V

    return-void
.end method

.method private mix(FFF)F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p0, p3

    mul-float/2addr p1, p0

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    return p1
.end method

.method private needAddToQuickCallCellLayout(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 1

    .line 2471
    instance-of v0, p1, Lcom/miui/home/launcher/oldman/ElderlyManShortcut;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 2472
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->isContactShortcut()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2473
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getQuickCallCellLayout()Lcom/miui/home/launcher/oldman/QuickCallCellLayout;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private needShowImprovedToast()Z
    .locals 1

    .line 4911
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private notifyScrollToNextScreenAnimEnd()V
    .locals 1

    .line 667
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mScrollToNextScreenAnimListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/fold/ScrollToNextScreenAnimListener;

    .line 668
    invoke-interface {v0}, Lcom/miui/home/launcher/fold/ScrollToNextScreenAnimListener;->onScrollAnimEnd()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onDropFromExternal(Lcom/miui/home/launcher/CellScreen;Lcom/miui/home/launcher/DragObject;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1879
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v3

    .line 1880
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v4

    .line 1881
    iget v5, v3, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v8, 0x4

    const-wide/16 v9, -0x1

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v5, :cond_a

    if-eq v5, v14, :cond_a

    const/16 v15, 0x12

    if-eq v5, v15, :cond_a

    const/16 v15, 0xe

    if-eq v5, v15, :cond_a

    const/16 v15, 0xb

    if-eq v5, v15, :cond_a

    if-ne v5, v11, :cond_0

    iget-wide v6, v3, Lcom/miui/home/launcher/ItemInfo;->id:J

    cmp-long v5, v6, v9

    if-eqz v5, :cond_0

    goto/16 :goto_4

    .line 1922
    :cond_0
    invoke-virtual/range {p1 .. p2}, Lcom/miui/home/launcher/CellScreen;->findDropTargetPosition(Lcom/miui/home/launcher/DragObject;)[I

    move-result-object v4

    if-eqz v4, :cond_9

    .line 1924
    aget v5, v4, v12

    iput v5, v3, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 1925
    aget v5, v4, v14

    iput v5, v3, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 1926
    iget v5, v3, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-eq v5, v11, :cond_7

    const/16 v4, 0x17

    if-eq v5, v4, :cond_6

    const/16 v4, 0x13

    if-eq v5, v4, :cond_5

    const/16 v4, 0x14

    const-string v6, "android.intent.action.CREATE_SHORTCUT"

    if-eq v5, v4, :cond_4

    packed-switch v5, :pswitch_data_0

    .line 2007
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown item type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1990
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 1991
    move-object v1, v3

    check-cast v1, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;

    iget v1, v1, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;->addType:I

    if-ne v1, v8, :cond_1

    .line 1993
    iget-object v1, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/Launcher;->onDropToggleShortcut(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;

    move-result-object v13

    goto/16 :goto_3

    :cond_1
    const/4 v4, 0x5

    if-ne v1, v4, :cond_8

    .line 1996
    iget-object v1, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/Launcher;->onDropSettingShortcut(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;

    move-result-object v13

    goto/16 :goto_3

    .line 1984
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1985
    move-object v4, v3

    check-cast v4, Lcom/miui/home/launcher/ShortcutProviderInfo;

    invoke-virtual {v4}, Lcom/miui/home/launcher/ShortcutProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1986
    iget-object v4, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4, v2, v1}, Lcom/miui/home/launcher/Launcher;->onDropShortcut(Lcom/miui/home/launcher/DragObject;Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 1934
    :pswitch_2
    move-object v4, v3

    check-cast v4, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    .line 1935
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 1936
    new-instance v5, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-virtual {v4}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->getAppWidgetId()I

    move-result v6

    invoke-direct {v5, v6, v4}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;-><init>(ILcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)V

    .line 1937
    iget-object v6, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v6, v5, v1}, Lcom/miui/home/launcher/Launcher;->addAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;Lcom/miui/home/launcher/CellScreen;)I

    move-result v1

    .line 1938
    invoke-virtual {v4, v1}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->setAppWidgetId(I)V

    .line 1939
    iget-object v4, v0, Lcom/miui/home/launcher/Workspace;->mLastWidgetView:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 1940
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    iget v4, v4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    if-ne v1, v4, :cond_2

    .line 1941
    iget-object v1, v0, Lcom/miui/home/launcher/Workspace;->mLastWidgetView:Landroid/view/View;

    goto :goto_0

    :cond_2
    move-object v1, v13

    .line 1944
    :goto_0
    iput-object v13, v0, Lcom/miui/home/launcher/Workspace;->mLastWidgetView:Landroid/view/View;

    goto/16 :goto_2

    :pswitch_3
    const-wide/16 v4, -0x64

    .line 1960
    iput-wide v4, v3, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 1961
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 1962
    iget-object v1, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    move-object v4, v3

    check-cast v4, Lcom/miui/home/launcher/gadget/GadgetInfo;

    new-instance v5, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda23;

    invoke-direct {v5, v0}, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda23;-><init>(Lcom/miui/home/launcher/Workspace;)V

    invoke-virtual {v1, v4, v14, v5}, Lcom/miui/home/launcher/Launcher;->addGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;ZLjava/util/function/Predicate;)Landroid/view/View;

    move-result-object v1

    goto/16 :goto_2

    .line 1949
    :pswitch_4
    iget-object v4, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    move-object v5, v3

    check-cast v5, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-virtual {v4, v5, v1}, Lcom/miui/home/launcher/Launcher;->addAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;Lcom/miui/home/launcher/CellScreen;)I

    move-result v1

    .line 1950
    iget-object v4, v0, Lcom/miui/home/launcher/Workspace;->mLastWidgetView:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 1951
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    iget v4, v4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    if-ne v1, v4, :cond_3

    .line 1952
    iget-object v1, v0, Lcom/miui/home/launcher/Workspace;->mLastWidgetView:Landroid/view/View;

    goto :goto_1

    :cond_3
    move-object v1, v13

    .line 1955
    :goto_1
    iput-object v13, v0, Lcom/miui/home/launcher/Workspace;->mLastWidgetView:Landroid/view/View;

    goto :goto_2

    .line 1978
    :cond_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1979
    move-object v4, v3

    check-cast v4, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;

    invoke-virtual {v4}, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1980
    iget-object v4, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4, v2, v1}, Lcom/miui/home/launcher/Launcher;->onDropShortcut(Lcom/miui/home/launcher/DragObject;Landroid/content/Intent;)V

    goto :goto_3

    :cond_5
    const-wide/16 v4, -0x64

    .line 1972
    iput-wide v4, v3, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 1973
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 1974
    iget-object v1, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    move-object v4, v3

    check-cast v4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    invoke-virtual {v1, v4, v14, v13}, Lcom/miui/home/launcher/Launcher;->addMaMl(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;ZLjava/util/function/Predicate;)Landroid/view/View;

    move-result-object v1

    goto :goto_2

    .line 2002
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 2003
    iget-object v1, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v3, v14}, Lcom/miui/home/launcher/Launcher;->addServiceDelivery(Lcom/miui/home/launcher/ItemInfo;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_2

    .line 1928
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v1, v13}, Lcom/miui/home/launcher/FolderInfo;->setBuddyIconView(Lcom/miui/home/launcher/FolderIcon;)V

    .line 1929
    iget-object v1, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    move-object v5, v3

    check-cast v5, Lcom/miui/home/launcher/FolderInfo;

    aget v6, v4, v12

    aget v4, v4, v14

    invoke-virtual {v1, v5, v6, v4}, Lcom/miui/home/launcher/Launcher;->addFolderToCurrentScreen(Lcom/miui/home/launcher/FolderInfo;II)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v1

    :goto_2
    move-object v13, v1

    .line 2009
    :cond_8
    :goto_3
    iget v1, v3, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-eq v1, v11, :cond_11

    .line 2010
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAddWidget()V

    goto/16 :goto_8

    :cond_9
    move v14, v12

    goto/16 :goto_8

    .line 1886
    :cond_a
    :goto_4
    iget-wide v5, v3, Lcom/miui/home/launcher/ItemInfo;->id:J

    cmp-long v5, v5, v9

    if-nez v5, :cond_b

    iget-wide v5, v3, Lcom/miui/home/launcher/ItemInfo;->container:J

    cmp-long v5, v5, v9

    if-nez v5, :cond_b

    instance-of v5, v3, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v5, :cond_b

    .line 1888
    move-object v5, v3

    check-cast v5, Lcom/miui/home/launcher/ShortcutInfo;

    .line 1890
    invoke-virtual {v5}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "workspace"

    .line 1888
    invoke-static {v6, v5}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsDrag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1892
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v5

    instance-of v5, v5, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v5, :cond_c

    .line 1893
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v5, v13, v13}, Lcom/miui/home/launcher/ShortcutInfo;->setBuddyIconView(Lcom/miui/home/launcher/IShortcutIcon;Landroid/view/ViewGroup;)V

    goto :goto_5

    .line 1894
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v5

    instance-of v5, v5, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v5, :cond_d

    .line 1895
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v5, v13}, Lcom/miui/home/launcher/FolderInfo;->setBuddyIconView(Lcom/miui/home/launcher/FolderIcon;)V

    .line 1897
    :cond_d
    :goto_5
    iget-object v5, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/miui/home/launcher/Launcher;->createDesktopIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Landroid/view/View;

    move-result-object v4

    .line 1898
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1899
    invoke-virtual {v1, v2, v4}, Lcom/miui/home/launcher/CellScreen;->onDrop(Lcom/miui/home/launcher/DragObject;Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 1900
    iget v1, v2, Lcom/miui/home/launcher/DragObject;->dropAction:I

    if-ne v1, v8, :cond_f

    .line 1901
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->getLastCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    .line 1902
    invoke-virtual {v1, v2, v4}, Lcom/miui/home/launcher/CellScreen;->onDrop(Lcom/miui/home/launcher/DragObject;Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 1903
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->insertNewScreen(I)V

    .line 1904
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->getLastCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    .line 1905
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->clearDraggingState()V

    .line 1906
    invoke-virtual {v1, v2, v4}, Lcom/miui/home/launcher/CellScreen;->onDrop(Lcom/miui/home/launcher/DragObject;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_6

    :cond_e
    move v14, v12

    goto :goto_6

    :cond_f
    move v14, v12

    goto :goto_7

    :cond_10
    :goto_6
    move-object v13, v4

    :goto_7
    if-eqz v14, :cond_11

    .line 1918
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    if-eqz v1, :cond_11

    .line 1919
    iget-object v1, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/Launcher;->insertNewShortcutFromAllApps(Lcom/miui/home/launcher/DragObject;)V

    :cond_11
    :goto_8
    if-eqz v13, :cond_13

    .line 2015
    invoke-virtual {v13, v12}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 2016
    iget-wide v4, v3, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v6, -0x64

    cmp-long v1, v4, v6

    if-nez v1, :cond_12

    iget-wide v4, v3, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 2017
    invoke-virtual {v0, v4, v5}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 2018
    iget-wide v3, v3, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {v0, v3, v4}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    .line 2020
    :cond_12
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v1

    .line 2021
    iget-object v0, v0, Lcom/miui/home/launcher/Workspace;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->getCurrentDragObject()Lcom/miui/home/launcher/DragObject;

    move-result-object v0

    .line 2022
    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_13

    if-eqz v0, :cond_13

    iget v3, v0, Lcom/miui/home/launcher/DragObject;->dragAction:I

    if-eq v3, v11, :cond_13

    iget v0, v0, Lcom/miui/home/launcher/DragObject;->dropAction:I

    if-eqz v0, :cond_13

    .line 2025
    invoke-virtual {v1, v13}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    .line 2026
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    if-eqz v0, :cond_13

    .line 2027
    invoke-virtual {v1}, Lcom/miui/home/launcher/DragView;->setFadeoutAnimationMode()V

    :cond_13
    return v14

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onSnapStopped()V
    .locals 3

    .line 719
    iget-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mIsSnapCausedByDragScroll:Z

    if-nez v0, :cond_0

    return-void

    .line 722
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 723
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->cancelDragScroll()V

    goto :goto_0

    .line 725
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mDragToNextScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 726
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mDragToNextScreenRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x15e

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private onWallpaperColorChanged(Z)V
    .locals 3

    .line 2222
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->initFoldLargeScreenLinePaint()V

    .line 2223
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->updateIndicatorsColor()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 2224
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    :goto_0
    if-eqz p1, :cond_1

    .line 2225
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-ge p1, v0, :cond_3

    .line 2226
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v1

    .line 2227
    instance-of v2, v1, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;

    if-eqz v2, :cond_2

    .line 2228
    new-instance v2, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda4;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private pointOnCellScreenChild(Lcom/miui/home/launcher/CellScreen;FF)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 877
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p0

    .line 878
    invoke-virtual {p0, p2, p3}, Lcom/miui/home/launcher/CellLayout;->pointOnChildViewRect(FF)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private preInvalidate()V
    .locals 2

    .line 789
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 790
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 792
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 794
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 796
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method private preInvalidateAllMamlDrawables()V
    .locals 9

    .line 983
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    float-to-int v0, v0

    :goto_0
    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    aput v1, v3, v0

    move v1, v4

    :goto_1
    if-ge v1, v2, :cond_4

    .line 988
    aget v5, v3, v1

    invoke-virtual {p0, v5}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 989
    invoke-virtual {v5}, Lcom/miui/home/launcher/CellLayout;->isVisibleForMaml()Z

    move-result v6

    if-nez v6, :cond_3

    move v6, v4

    .line 990
    :goto_2
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 991
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 992
    instance-of v8, v7, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v8, :cond_1

    .line 993
    check-cast v7, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v7}, Lcom/miui/home/launcher/ShortcutIcon;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 994
    invoke-static {v7}, Lcom/miui/launcher/utils/MamlUtils;->isMamlDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 995
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 999
    :cond_2
    invoke-virtual {v5, v0}, Lcom/miui/home/launcher/CellLayout;->setVisibleForMaml(Z)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private reloadScreens(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 3168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Screens loaded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.Workspace"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3169
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/ScreenView;->removeScreensInLayout(II)V

    .line 3173
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3174
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    if-eqz p1, :cond_0

    .line 3175
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_1

    :cond_0
    move v4, v1

    .line 3176
    :goto_1
    invoke-direct {p0, v2, v3, v4}, Lcom/miui/home/launcher/Workspace;->generateEmptyCellScreen(JI)Lcom/miui/home/launcher/CellScreen;

    move-result-object v2

    .line 3177
    invoke-virtual {p0, v2, v1}, Lcom/miui/home/launcher/Workspace;->addView(Landroid/view/View;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3180
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isCurrentEditingStateNeedHideAssistantPoint()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->updateAssistantPoints(Z)V

    .line 3181
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->setEditModeIfNeeded()V

    return-void
.end method

.method private removeNewScreenInLayoutPreview(IIII)V
    .locals 8

    const/4 v0, 0x0

    .line 4739
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 4740
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4741
    instance-of v2, v1, Lcom/miui/home/launcher/CellScreen;

    if-nez v2, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4745
    :cond_0
    move-object v2, v1

    check-cast v2, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v2}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->isUsing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4746
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    const/4 v7, 0x0

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 4747
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/Workspace;->changeChildCellCount(Lcom/miui/home/launcher/CellScreen;IIII[[Landroid/view/View;)V

    goto :goto_1

    .line 4751
    :cond_1
    invoke-virtual {v2}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v1

    .line 4752
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4753
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/LongSparseArray;->delete(J)V

    .line 4754
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->removeScreen(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private resetCellScreenScale(F)V
    .locals 4

    .line 1189
    new-instance v0, Lcom/miui/home/launcher/animate/SpringAnimator;

    const v1, 0x3f666666    # 0.9f

    const v2, 0x3e99999a    # 0.3f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/miui/home/launcher/animate/SpringAnimator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->resetCellScreenScaleAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 1190
    new-instance p1, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/Workspace;)V

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/animate/SpringAnimator;->setUpdateListener(Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;)Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 1191
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->resetCellScreenScaleAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {p0}, Lcom/miui/home/launcher/animate/SpringAnimator;->start()V

    return-void
.end method

.method private resetEditingMode()V
    .locals 2

    .line 1152
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mEditingMode:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x7

    .line 1153
    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mEditingMode:I

    :cond_0
    return-void
.end method

.method private resetLayoutPreviewData()V
    .locals 2

    .line 4861
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/CurrentIndexMediator;->setTmpGadgets(Ljava/util/ArrayList;)V

    .line 4862
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mItemOperation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4863
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenOperation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4864
    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mTemGadgets:Ljava/util/ArrayList;

    .line 4865
    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mWidgetsToUpdate:Ljava/util/HashMap;

    return-void
.end method

.method private resetWidgetsToUpdate()V
    .locals 2

    .line 4715
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mWidgetsToUpdate:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 4718
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mWidgetsToUpdate:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4719
    sget-object v1, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda17;->INSTANCE:Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda17;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private setClip(Z)V
    .locals 0

    .line 3332
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 3333
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    return-void
.end method

.method private setEditModeIfNeeded()V
    .locals 3

    .line 3452
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3453
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mEditingMode:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->setEditMode(IZLcom/miui/home/launcher/EditStateChangeReason;)V

    :cond_0
    return-void
.end method

.method private setIsSnaping(Z)V
    .locals 1

    .line 673
    iget-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mIsSnaping:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 676
    iput-boolean p1, p0, Lcom/miui/home/launcher/Workspace;->mIsSnaping:Z

    return-void

    .line 680
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isScrolling()Z

    move-result v0

    if-nez v0, :cond_2

    .line 681
    iput-boolean p1, p0, Lcom/miui/home/launcher/Workspace;->mIsSnaping:Z

    .line 682
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->onSnapStopped()V

    :cond_2
    return-void
.end method

.method private setWorkspaceProperty(Lcom/miui/home/launcher/Workspace$DirectionProperty;F)V
    .locals 2

    .line 4258
    invoke-static {p1}, Lcom/miui/home/launcher/Workspace$DirectionProperty;->access$1500(Lcom/miui/home/launcher/Workspace$DirectionProperty;)Landroid/util/Property;

    move-result-object p1

    const/4 v0, 0x0

    .line 4260
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4262
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4265
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v0, :cond_1

    .line 4266
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4267
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_1
    return-void
.end method

.method private setupCurrentScreen()V
    .locals 4

    .line 3158
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCurrentDefaultScreenId()J

    move-result-wide v0

    .line 3159
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3160
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3161
    invoke-static {v0, v1}, Lcom/miui/home/launcher/DeviceConfig;->saveCurrentDefaultScreenId(J)Z

    .line 3163
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->setDefaultScreenId(J)V

    .line 3164
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->setCurrentScreenById(J)V

    return-void
.end method

.method private setupEditingScreen(ZZ)V
    .locals 0

    const/4 p2, 0x1

    .line 3440
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mEditingScreenChanging:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 3442
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->setScreenScrollRangeByCurrentScreenType()V

    goto :goto_0

    .line 3444
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->resetScreenScrollRange()V

    .line 3445
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mAutoScrollBack:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3446
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mShowingTransitionEffectDemo:Z

    .line 3448
    :goto_0
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mEditingScreenChanging:Z

    return-void
.end method

.method private shouldShowEditModeAnim(I)Z
    .locals 2

    .line 3570
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3571
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->isIndexInCurrentScreen(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->isIndexInCurrentScreen(I)Z

    move-result v0

    if-nez v0, :cond_1

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->isIndexInCurrentScreen(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    .line 3573
    :cond_2
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->isIndexInCurrentScreen(I)Z

    move-result p0

    return p0
.end method

.method private showPreviewingCellCount(IIII)V
    .locals 6

    .line 4759
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getUsingInfo()Ljava/util/LinkedHashMap;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 4760
    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/Workspace;->showPreviewingScreen(IIIILjava/util/LinkedHashMap;)V

    return-void
.end method

.method private showPreviewingScreen(IIIILjava/util/LinkedHashMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/LinkedHashMap<",
            "Lcom/miui/home/launcher/layout/LayoutScreenInfo;",
            "[[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 4780
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenOperation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4781
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mItemOperation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4782
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLayoutDataProcessor:Lcom/miui/home/launcher/layout/LayoutDataProcessor;

    move-object v2, p5

    move v3, p3

    move v4, p4

    move v5, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/launcher/layout/LayoutDataProcessor;->processWorkspaceData(Ljava/util/LinkedHashMap;IIII)Ljava/util/LinkedHashMap;

    move-result-object p5

    .line 4784
    invoke-virtual {p5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4785
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/layout/LayoutScreenInfo;

    .line 4787
    iget-boolean v2, v1, Lcom/miui/home/launcher/layout/LayoutScreenInfo;->isNewScreen:Z

    if-eqz v2, :cond_0

    .line 4788
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Workspace;->createNewScreen(Lcom/miui/home/launcher/layout/LayoutScreenInfo;)Lcom/miui/home/launcher/CellScreen;

    move-result-object v2

    .line 4789
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    iget v4, v1, Lcom/miui/home/launcher/layout/LayoutScreenInfo;->index:I

    iget-wide v5, v1, Lcom/miui/home/launcher/layout/LayoutScreenInfo;->screenId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 4791
    :cond_0
    iget-object v2, v1, Lcom/miui/home/launcher/layout/LayoutScreenInfo;->tag:Ljava/lang/Object;

    check-cast v2, Lcom/miui/home/launcher/CellScreen;

    :goto_1
    move-object v4, v2

    .line 4793
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    iget-wide v5, v1, Lcom/miui/home/launcher/layout/LayoutScreenInfo;->screenId:J

    iget v1, v1, Lcom/miui/home/launcher/layout/LayoutScreenInfo;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v5, v6, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 4794
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, [[Landroid/view/View;

    move-object v3, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v3 .. v9}, Lcom/miui/home/launcher/Workspace;->changeChildCellCount(Lcom/miui/home/launcher/CellScreen;IIII[[Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 4796
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->initTemGadgets(Z)V

    return-void
.end method

.method private showToastOnWidgetAddedAndCountLimit(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 3

    if-eqz p1, :cond_5

    .line 1656
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez p0, :cond_0

    goto :goto_0

    .line 1657
    :cond_0
    instance-of v0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    if-nez v0, :cond_1

    return-void

    .line 1659
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    .line 1662
    :cond_2
    check-cast p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    .line 1666
    iget-boolean v0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->showWidgetNumberWarningToast:Z

    const-string v1, ""

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 1667
    iget-object v0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->warningToastForWidgetNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1668
    iget-object v0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->warningToastForWidgetNumber:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 1672
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 1675
    :cond_3
    iput-boolean v2, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->showWidgetNumberWarningToast:Z

    .line 1676
    iput-object v1, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->warningToastForWidgetNumber:Ljava/lang/String;

    return-void

    .line 1682
    :cond_4
    iget-boolean v0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->showWidgetAddedToast:Z

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->resultToastForWidgetAdd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1683
    iget-object v0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->resultToastForWidgetAdd:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 1687
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 1688
    iput-boolean v2, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->showWidgetAddedToast:Z

    .line 1689
    iput-object v1, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->resultToastForWidgetAdd:Ljava/lang/String;

    :cond_5
    :goto_0
    return-void
.end method

.method private showUsingCellCount(IIII)V
    .locals 2

    .line 4705
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->resetWidgetsToUpdate()V

    .line 4706
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/Workspace;->removeNewScreenInLayoutPreview(IIII)V

    .line 4707
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 4708
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    invoke-virtual {p2}, Landroid/util/LongSparseArray;->clear()V

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 4710
    iget-object p3, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    iget-object p4, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, v0, v1, p4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private startScrollFailedAnimator()V
    .locals 3

    .line 4055
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScrollFailedTipAnimator:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4058
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScrollFailedTipAnimator:Lmiuix/animation/physics/SpringAnimation;

    new-instance v1, Lmiuix/animation/physics/SpringForce;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmiuix/animation/physics/SpringForce;-><init>(F)V

    const v2, 0x3e99999a    # 0.3f

    .line 4059
    invoke-virtual {v1, v2}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    move-result-object v1

    const v2, 0x3e6b851f    # 0.23f

    .line 4060
    invoke-static {v2}, Lcom/miui/home/launcher/animate/SpringAnimator;->stiffnessConvert(F)F

    move-result v2

    invoke-virtual {v1, v2}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    move-result-object v1

    .line 4058
    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringAnimation;->setSpring(Lmiuix/animation/physics/SpringForce;)Lmiuix/animation/physics/SpringAnimation;

    .line 4061
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScrollFailedTipAnimator:Lmiuix/animation/physics/SpringAnimation;

    .line 4062
    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    if-nez v1, :cond_1

    const/high16 v1, 0x44fa0000    # 2000.0f

    goto :goto_0

    :cond_1
    const/high16 v1, -0x3b060000    # -2000.0f

    .line 4061
    :goto_0
    invoke-virtual {v0, v1}, Lmiuix/animation/physics/DynamicAnimation;->setStartVelocity(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 4063
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mScrollFailedTipAnimator:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    return-void
.end method

.method private stopUnlockAnim(I)V
    .locals 1

    .line 1404
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1405
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->stopUnlockAnimation()V

    :cond_0
    return-void
.end method

.method private transDragObject(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1734
    iget v0, p1, Lcom/miui/home/launcher/DragObject;->y:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p0

    sub-int/2addr v0, p0

    iput v0, p1, Lcom/miui/home/launcher/DragObject;->y:I

    :cond_0
    return-void
.end method

.method private triggerPinchingIn(Lcom/miui/home/launcher/Workspace$PinchingState;)V
    .locals 3

    .line 1128
    sget-object v0, Lcom/miui/home/launcher/Workspace$PinchingState;->FOLLOW:Lcom/miui/home/launcher/Workspace$PinchingState;

    if-ne p1, v0, :cond_0

    .line 1129
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->changeHotseatsToEditingEntryView()V

    const/16 p1, 0xb

    .line 1130
    iput p1, p0, Lcom/miui/home/launcher/Workspace;->mEditingMode:I

    .line 1131
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/EditModeChangedMessage;

    const/4 v2, 0x7

    invoke-direct {v1, p1, v2}, Lcom/miui/home/launcher/common/messages/EditModeChangedMessage;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1132
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/EditStateChangeReason;

    const-string v1, "event_pinch_in"

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/EditStateChangeReason;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performEnterEditMode(Landroid/view/View;Lcom/miui/home/launcher/EditStateChangeReason;)V

    const/4 p1, 0x1

    .line 1133
    iput-boolean p1, p0, Lcom/miui/home/launcher/Workspace;->mHasPerformHapicFeedback:Z

    :cond_0
    return-void
.end method

.method private triggerPinchingOut(Lcom/miui/home/launcher/Workspace$PinchingState;)V
    .locals 2

    .line 1138
    sget-object v0, Lcom/miui/home/launcher/Workspace$PinchingState;->READY_TO_EDIT:Lcom/miui/home/launcher/Workspace$PinchingState;

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/miui/home/launcher/Workspace;->mEditingMode:I

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 1139
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->changeEditingEntryViewToHotseats()V

    const/16 p1, 0xc

    .line 1140
    iput p1, p0, Lcom/miui/home/launcher/Workspace;->mEditingMode:I

    .line 1141
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance v0, Lcom/miui/home/launcher/common/messages/EditModeChangedMessage;

    const/16 v1, 0x8

    invoke-direct {v0, p1, v1}, Lcom/miui/home/launcher/common/messages/EditModeChangedMessage;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private updateDockAndSearchProgress(F)V
    .locals 7

    .line 1214
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1219
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 1220
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getEditModePinchingPivotX()F

    move-result v2

    const/4 v3, 0x1

    aget v4, v1, v3

    int-to-float v4, v4

    .line 1221
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getEditModePinchingPivotY()F

    move-result v0

    add-float/2addr v4, v0

    .line 1224
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 1225
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    aget v5, v1, v3

    int-to-float v5, v5

    sub-float v5, v4, v5

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 1226
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 1227
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1228
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1230
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object v0

    .line 1231
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object p0

    const v5, 0x7f0a0172

    if-eqz v0, :cond_1

    .line 1233
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowSearchBar()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1234
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1235
    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    aget v6, v1, v3

    int-to-float v6, v6

    sub-float v6, v4, v6

    .line 1236
    invoke-virtual {v0, v6}, Landroid/view/View;->setPivotY(F)V

    .line 1237
    invoke-virtual {v0, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 1238
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 1239
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    :cond_1
    if-eqz p0, :cond_2

    .line 1244
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1245
    invoke-virtual {p0, v2}, Landroid/view/View;->setPivotX(F)V

    aget v0, v1, v3

    int-to-float v0, v0

    sub-float/2addr v4, v0

    .line 1246
    invoke-virtual {p0, v4}, Landroid/view/View;->setPivotY(F)V

    .line 1247
    invoke-virtual {p0, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1248
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 1249
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    :cond_2
    return-void
.end method

.method private updateDragViewAnimateTarget(Landroid/view/View;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1641
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1642
    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 1644
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateIndicatorsColor()V
    .locals 2

    .line 2206
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    .line 2207
    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getSeekPointRes(Z)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ScreenView;->setSeekPointResource(I)V

    .line 2208
    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getAssistPointRes(Z)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setAssistPointResource(I)V

    return-void
.end method

.method private updateNewAppWidgetsSizeOption()V
    .locals 5

    .line 4923
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mWidgetsToUpdate:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    .line 4926
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4927
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mWidgetsToUpdate:Ljava/util/HashMap;

    new-instance v2, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda13;

    invoke-direct {v2, v0}, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda13;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 4932
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4933
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 4935
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4937
    :cond_1
    new-instance v0, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, v2}, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda11;-><init>(Lcom/miui/home/launcher/Workspace;[Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method private updateOldAppWidgetsSizeOption()V
    .locals 2

    .line 4946
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWidgetItems()Ljava/util/Set;

    move-result-object v0

    .line 4947
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 4948
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 4949
    new-instance v0, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda12;-><init>(Lcom/miui/home/launcher/Workspace;[Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateScreenLayoutMode(ZZ)V
    .locals 1

    .line 3578
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 3579
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x9

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setScreenLayoutMode(I)V

    :cond_2
    return-void
.end method

.method private updateSeekBarVisibility()V
    .locals 3

    .line 3846
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v0, :cond_2

    .line 3847
    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->getScreenIndicatorPointCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3848
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->showSeekBarWithoutAnim(Z)V

    goto :goto_0

    .line 3849
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->getScreenIndicatorPointCount()I

    move-result v0

    if-gt v0, v2, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInLayoutPreview()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3850
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->showSeekBarWithoutAnim(Z)V

    goto :goto_0

    .line 3852
    :cond_1
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Workspace;->showSeekBarWithoutAnim(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateWallpaperOffset()Z
    .locals 3

    .line 594
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_2

    .line 597
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isLastScreenEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 598
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v2

    sub-int/2addr v2, v0

    :goto_1
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 600
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->updateWallpaperOffset(I)Z

    move-result p0

    return p0

    :cond_3
    :goto_2
    return v1
.end method

.method private updateWallpaperOffset(I)Z
    .locals 5

    .line 612
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 614
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 615
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v4

    if-ne v4, v2, :cond_1

    move p1, v3

    goto :goto_1

    .line 616
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    int-to-float p1, p1

    div-float/2addr v2, p1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 615
    invoke-static {v3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 617
    :goto_1
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, v0, v3, p1, v3}, Lcom/miui/home/launcher/Launcher;->updateWallpaperOffset(FFFF)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public abandonGenericScrollEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 4481
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ScreenView;->abandonGenericScrollEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 4482
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getMinusOneScreenView()Lcom/miui/home/launcher/MinusOneScreenView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 4483
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getMinusOneScreenView()Lcom/miui/home/launcher/MinusOneScreenView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->abandonGenericScrollEvent(Landroid/view/MotionEvent;)Z

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

.method public acceptDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 6

    .line 2083
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2087
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 2091
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    if-nez p1, :cond_2

    return v1

    .line 2096
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isQuickCallScreenShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v2, 0xe

    if-eq v0, v2, :cond_3

    return v1

    .line 2100
    :cond_3
    iget-wide v2, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v4, -0x67

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    return v1

    .line 2104
    :cond_4
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v4, 0xf

    if-ne v0, v4, :cond_5

    return v1

    :cond_5
    const/16 v4, 0xc

    if-eq v0, v4, :cond_9

    const/16 v4, 0x10

    if-eq v0, v4, :cond_9

    const/16 v4, 0x11

    if-ne v0, v4, :cond_6

    goto :goto_0

    :cond_6
    const-wide/16 v4, -0x66

    cmp-long v0, v2, v4

    if-nez v0, :cond_7

    return v1

    .line 2119
    :cond_7
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v2

    if-gt v0, v2, :cond_9

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v0

    if-le p1, v0, :cond_8

    goto :goto_0

    .line 2123
    :cond_8
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isScrolling()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_9
    :goto_0
    return v1
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 773
    iget-object p3, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p3}, Lcom/miui/home/launcher/Launcher;->getCurrentOpenedFolder()Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_2

    .line 774
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreen()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 775
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreen()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    const/4 p3, 0x0

    const/16 v0, 0x11

    if-ne p2, v0, :cond_0

    .line 778
    iget p3, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    .line 780
    iget p3, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object p3

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 783
    invoke-virtual {p3, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    :cond_2
    return-void
.end method

.method addInCurrentScreen(Landroid/view/View;IIIIZ)V
    .locals 11

    move-object v9, p0

    move-object v10, p1

    .line 528
    iget v0, v9, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v2

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    .line 529
    instance-of v0, v10, Landroid/appwidget/AppWidgetHostView;

    if-nez v0, :cond_0

    instance-of v0, v10, Lcom/miui/home/launcher/LauncherWidgetView;

    if-eqz v0, :cond_1

    .line 530
    :cond_0
    iput-object v10, v9, Lcom/miui/home/launcher/Workspace;->mLastWidgetView:Landroid/view/View;

    :cond_1
    return-void
.end method

.method addInScreen(Landroid/view/View;IIIILjava/lang/Long;Z)V
    .locals 10

    move-object v9, p1

    .line 535
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    .line 536
    instance-of v0, v9, Landroid/appwidget/AppWidgetHostView;

    if-nez v0, :cond_0

    instance-of v0, v9, Lcom/miui/home/launcher/LauncherWidgetView;

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, p0

    .line 537
    iput-object v9, v0, Lcom/miui/home/launcher/Workspace;->mLastWidgetView:Landroid/view/View;

    :cond_1
    return-void
.end method

.method addInScreen(Landroid/view/View;JIIII)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 553
    invoke-virtual/range {v0 .. v8}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    return-void
.end method

.method addInScreen(Landroid/view/View;JIIIIZ)V
    .locals 0

    .line 569
    invoke-virtual {p0, p2, p3}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p4

    if-gez p4, :cond_0

    if-gez p4, :cond_0

    const-string p0, "Launcher.Workspace"

    const-string p1, "The screen must be >= 0; skipping child"

    .line 572
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 577
    :cond_0
    invoke-virtual {p0, p4}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object p5

    if-eqz p8, :cond_1

    const/4 p6, 0x0

    goto :goto_0

    :cond_1
    const/4 p6, -0x1

    .line 578
    :goto_0
    new-instance p7, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    invoke-direct {p7}, Lcom/miui/home/launcher/CellLayout$LayoutParams;-><init>()V

    invoke-virtual {p5, p1, p6, p7}, Lcom/miui/home/launcher/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 579
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide p5

    cmp-long p2, p2, p5

    if-nez p2, :cond_3

    .line 580
    instance-of p2, p1, Landroid/appwidget/AppWidgetHostView;

    if-nez p2, :cond_2

    instance-of p2, p1, Lcom/miui/home/launcher/LauncherWidgetView;

    if-eqz p2, :cond_3

    .line 581
    :cond_2
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLastWidgetView:Landroid/view/View;

    .line 584
    :cond_3
    invoke-virtual {p0, p4}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    return-void
.end method

.method public addInScreen(Landroid/view/View;JIIIIZZZ)V
    .locals 6

    .line 589
    invoke-virtual/range {p0 .. p8}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    move-object v0, p0

    .line 590
    iget-object v0, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/16 v2, -0x64

    move-object v1, p1

    move-wide v3, p2

    move v5, p9

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/Launcher;->onViewAddToScreen(Landroid/view/View;IJZ)V

    return-void
.end method

.method public addScrollToNextScreenAnimListener(Lcom/miui/home/launcher/fold/ScrollToNextScreenAnimListener;)V
    .locals 0

    .line 4572
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mScrollToNextScreenAnimListenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0

    .line 3833
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 3834
    instance-of p0, p1, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;

    if-eqz p0, :cond_0

    .line 3835
    check-cast p1, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;

    invoke-interface {p1}, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;->onWallpaperColorChanged()V

    :cond_0
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3841
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/ScreenView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3842
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->updateSeekBarVisibility()V

    return-void
.end method

.method public afterFriction(FF)F
    .locals 3

    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    const/high16 v0, 0x3f800000    # 1.0f

    if-ltz p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    .line 1271
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, p2

    .line 1272
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    mul-float v0, p1, p1

    mul-float v1, v0, p1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    sub-float/2addr v1, v0

    add-float/2addr v1, p1

    mul-float/2addr p0, v1

    mul-float/2addr p0, p2

    return p0
.end method

.method public alignIconsToTopWithSaveDb()V
    .locals 3

    const/4 v0, 0x0

    .line 3666
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3667
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 3669
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/CellLayout;->alignIconsToTopWithSaveDb(Z)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public announceSingleCellLayoutCount()V
    .locals 0

    .line 310
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    if-eqz p0, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/CurrentIndexMediator;->announceForAccessibilityIfNeed()V

    :cond_0
    return-void
.end method

.method public applyPreviewLayout(JZ)V
    .locals 5

    .line 4825
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mItemOperation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenOperation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4826
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCurrentScreenCells()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mItemOperation:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/miui/home/launcher/Workspace;->mScreenOperation:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/home/launcher/LauncherModel;->BatchOperation(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_1
    if-eqz p3, :cond_3

    .line 4830
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 4831
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mWidgetsToUpdate:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 4832
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mWidgetsToUpdate:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 4833
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 4836
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p3}, Lcom/miui/home/launcher/Launcher;->updateWidgetCacheWhenPreviewing(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 4838
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->clearWidgetCache()V

    .line 4840
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->exitPreview(J)V

    return-void
.end method

.method public autoCategoryAllIcons()V
    .locals 3

    const/4 v0, 0x1

    .line 2831
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->collectAllIcons(Z)V

    const/4 v0, 0x0

    .line 2832
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->moveToDefaultScreen(Z)V

    .line 2833
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2835
    new-instance v1, Lcom/miui/home/launcher/Workspace$9;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/Workspace$9;-><init>(Lcom/miui/home/launcher/Workspace;Ljava/util/HashMap;)V

    new-instance v2, Lcom/miui/home/launcher/Workspace$10;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/launcher/Workspace$10;-><init>(Lcom/miui/home/launcher/Workspace;Ljava/util/HashMap;)V

    const/4 p0, 0x0

    invoke-static {v1, v2, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public autoFillAllScreens()V
    .locals 2

    const/4 v0, 0x0

    .line 3002
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->collectAllIcons(Z)V

    .line 3003
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->moveToDefaultScreen(Z)V

    .line 3005
    new-instance v0, Lcom/miui/home/launcher/Workspace$16;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Workspace$16;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mReorganizeFinishConsumer:Ljava/util/function/Consumer;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public autoFillCurrentScreen()V
    .locals 2

    .line 2902
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2904
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->alignIconsToTopWithSaveDb(Z)Z

    .line 2906
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/IconReorganizeMonitor;->onReorganizeFinished(Landroid/content/Context;)V

    return-void
.end method

.method public autoShowTransitionEffectDemo()V
    .locals 4

    .line 1384
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mAutoScrollBack:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 1385
    iput-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mShowingTransitionEffectDemo:Z

    .line 1386
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    .line 1387
    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    sub-int/2addr v1, v0

    const/4 v3, 0x0

    if-ge v2, v1, :cond_0

    add-int/lit8 v1, v2, 0x1

    .line 1390
    invoke-virtual {p0, v1, v3, v0}, Lcom/miui/home/launcher/Workspace;->snapToScreen(IIZ)I

    move-result v0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v2, -0x1

    .line 1392
    invoke-virtual {p0, v1, v3, v0}, Lcom/miui/home/launcher/Workspace;->snapToScreen(IIZ)I

    move-result v0

    .line 1394
    :goto_0
    new-instance v1, Lcom/miui/home/launcher/Workspace$5;

    invoke-direct {v1, p0, v2}, Lcom/miui/home/launcher/Workspace$5;-><init>(Lcom/miui/home/launcher/Workspace;I)V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mAutoScrollBack:Ljava/lang/Runnable;

    add-int/lit16 v0, v0, 0xc8

    int-to-long v2, v0

    .line 1400
    invoke-virtual {p0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected beforeSnapToScreen(I)V
    .locals 0

    .line 447
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->snapWorkspacePreview(I)V

    return-void
.end method

.method public bindScreenAdded(JII)V
    .locals 5

    .line 3731
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p4, v0, :cond_5

    if-gez p4, :cond_0

    goto/16 :goto_1

    .line 3734
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3735
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/Workspace;->generateEmptyCellScreen(JI)Lcom/miui/home/launcher/CellScreen;

    move-result-object p3

    .line 3736
    invoke-virtual {p0, p3, p4}, Lcom/miui/home/launcher/Workspace;->addView(Landroid/view/View;I)V

    .line 3737
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    const/4 v1, 0x0

    if-gt p4, v0, :cond_1

    .line 3738
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    .line 3739
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    invoke-virtual {v2, v0, v1}, Lcom/miui/home/launcher/common/CurrentIndexMediator;->updateIndex(IZ)V

    .line 3741
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isInLayoutPreviewMode()Z

    move-result v2

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    invoke-virtual {p3, v0, v2, v3, v4}, Lcom/miui/home/launcher/CellScreen;->setEditMode(ZZILcom/miui/home/launcher/EditStateChangeReason;)Z

    .line 3742
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isInQuickEditingMode()Z

    move-result v0

    invoke-virtual {p3, v0, v1}, Lcom/miui/home/launcher/CellScreen;->onQuickEditingModeChanged(ZZ)V

    .line 3743
    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/Workspace;->updateChildStaticTransformation(Landroid/view/View;)V

    .line 3744
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3745
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result p3

    if-nez p3, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isInQuickEditingMode()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 3746
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->setScreenScrollRangeByCurrentScreenType()V

    .line 3750
    :cond_3
    new-instance p3, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda6;

    invoke-direct {p3, p0}, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda6;-><init>(Lcom/miui/home/launcher/Workspace;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, p3, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3756
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->reorderScreens()V

    .line 3757
    iget-object p3, p0, Lcom/miui/home/launcher/Workspace;->mCallbacksWhenScreenReady:Ljava/util/ArrayList;

    monitor-enter p3

    .line 3758
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mCallbacksWhenScreenReady:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3759
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mCallbacksWhenScreenReady:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3760
    iput-boolean v1, p0, Lcom/miui/home/launcher/Workspace;->mIsInsertingNewScreen:Z

    const-string p0, "Launcher.Workspace"

    .line 3762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify workspace insert screen id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", index = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3763
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    .line 3764
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 3766
    :cond_4
    sget-object p0, Lcom/miui/home/launcher/Workspace;->sPrepareNewScreenLock:Ljava/lang/Object;

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3767
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 3768
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3769
    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 3768
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p0

    .line 3769
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :cond_5
    :goto_1
    return-void
.end method

.method public bindScreenRemoved(J)V
    .locals 2

    const/4 v0, 0x0

    .line 3640
    iput-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mIsRemovingScreen:Z

    .line 3641
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setNeedToWaitToDeleteEmptyScreen(Z)V

    .line 3643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify workspace delete screen id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.Workspace"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3644
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->isDeleteableScreen(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3645
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "screen id = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " no remove"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-eqz v0, :cond_4

    .line 3649
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3650
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 3652
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->removeScreen(I)V

    .line 3655
    :cond_1
    iget-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mDefaultScreenId:J

    cmp-long p1, v0, p1

    if-nez p1, :cond_2

    .line 3656
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->onDefaultScreenDelete()V

    .line 3658
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isPreviewShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3659
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspacePreview()Lcom/miui/home/launcher/WorkspaceThumbnailView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->loadThumbnails(Z)V

    .line 3661
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->reorderScreens()V

    :cond_4
    return-void
.end method

.method protected calcScrollRightBound(II)I
    .locals 2

    .line 4615
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->getVisualPosition(I)I

    move-result p1

    .line 4616
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    :goto_0
    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    mul-int/2addr p1, p0

    add-int/2addr p1, p2

    return p1
.end method

.method protected calcScrollXByIndex(I)I
    .locals 2

    .line 4621
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->getScreenScrollX(I)I

    move-result p1

    .line 4622
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-float p1, p1

    .line 4623
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mOverScrollRatio:F

    mul-float/2addr v0, v1

    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    add-int/lit8 p0, p0, -0x1

    int-to-float p0, p0

    mul-float/2addr v0, p0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    :cond_0
    return p1
.end method

.method protected calcSnapGap()I
    .locals 3

    .line 4135
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->hasOddScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4136
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isNeedCorrectIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4137
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 4138
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_0

    return v1

    .line 4141
    :cond_0
    invoke-super {p0}, Lcom/miui/home/launcher/ScreenView;->calcSnapGap()I

    move-result p0

    return p0
.end method

.method public calculateFoldScreenSide(I)I
    .locals 3

    .line 4564
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 4565
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result p0

    if-ne p1, p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 4567
    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/miui/home/launcher/Workspace;->calibrateFoldCurrentScreenIndex(IZ)I

    move-result p0

    if-ne p1, p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method protected calibrateCurrentScreenIndex(I)I
    .locals 3

    .line 4515
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4516
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mFoldScreenModeObserver:Lcom/miui/home/launcher/common/FoldScreenModeObserver;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v2, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda24;->INSTANCE:Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda24;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/common/FoldScreenModeObserver;->runWhenScreenModeChange(Lkotlin/jvm/functions/Function0;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    .line 4517
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/Workspace;->calibrateFoldCurrentScreenIndex(IZ)I

    move-result p0

    goto :goto_1

    .line 4519
    :cond_1
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ScreenView;->calibrateCurrentScreenIndex(I)I

    move-result p0

    :goto_1
    return p0
.end method

.method public calibrateFoldCurrentScreenIndex(IZ)I
    .locals 6

    .line 4525
    sget-object v0, Lcom/miui/home/launcher/util/FoldScreenIndexCalculator;->INSTANCE:Lcom/miui/home/launcher/util/FoldScreenIndexCalculator;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v2

    iget v3, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    .line 4526
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isLastCellLayoutEmpty()Z

    move-result v4

    move v1, p1

    move v5, p2

    .line 4525
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/util/FoldScreenIndexCalculator;->obtainValidCurrentScreenIndex(IIIZZ)I

    move-result p1

    .line 4527
    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mScreenScrollLeftIndex:I

    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenScrollRightIndex:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p2, p0}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(III)I

    move-result p0

    return p0
.end method

.method public canAddShortcutToQuickCallCellLayout()Z
    .locals 1

    .line 2560
    sget-object v0, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda22;->INSTANCE:Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda22;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->findQuickCallCellLayout(Ljava/util/function/Function;)Z

    move-result p0

    return p0
.end method

.method public canMakeRomInFullScreen(Lcom/miui/home/launcher/CellLayout;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 3907
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3908
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/home/launcher/ShortcutInfo;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 3909
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 3910
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    .line 3913
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v2, :cond_1

    .line 3914
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderIcon;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/home/launcher/Workspace;->isAllItemsCheckInFolder(Lcom/miui/home/launcher/FolderInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public canScreenMakeRom()Z
    .locals 5

    .line 3922
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3923
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3925
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3927
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isTwoScreen()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 3928
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3930
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v1, 0x0

    move v3, v1

    .line 3933
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 3934
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v4}, Lcom/miui/home/launcher/CellLayout;->isFull()Z

    move-result v4

    if-nez v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move v3, v1

    .line 3938
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 3939
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Workspace;->canMakeRomInFullScreen(Lcom/miui/home/launcher/CellLayout;)Z

    move-result v4

    if-eqz v4, :cond_4

    return v2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return v1
.end method

.method public canShowSearchEffect()Z
    .locals 3

    .line 4343
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getTouchState()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 4344
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getTouchState()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    .line 4345
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getTouchState()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public cancelDragScroll()V
    .locals 3

    .line 4001
    iget-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mIsSnaping:Z

    if-eqz v0, :cond_0

    return-void

    .line 4004
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->cancelScroll()V

    .line 4005
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getDeltaWhenCancelScroll()I

    move-result v0

    if-eqz v0, :cond_1

    .line 4007
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/miui/home/launcher/ScreenView;->startScroll(III)V

    .line 4008
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_1
    return-void
.end method

.method public cancelPreviewLayout(J)V
    .locals 0

    .line 4820
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->clearWidgetCache()V

    .line 4821
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->exitPreview(J)V

    return-void
.end method

.method public cellScreenAnimSkipToEnd()V
    .locals 3

    const/4 v0, 0x0

    .line 1295
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1296
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1298
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->isIndexInCurrentScreen(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/CellScreen;->cellLayoutAnimSkipToEnd(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public changeCellCount(IIIIII)V
    .locals 6

    .line 4652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "start change cell count usingX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", usingY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", newX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", newY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",oldX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oldY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIndexOrderedScreenIds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", screenIdMap = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", cur screen index = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", cur screen id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenId:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Launcher.Workspace"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p5, p1, :cond_0

    if-eq p6, p2, :cond_1

    .line 4658
    :cond_0
    invoke-direct {p0, p1, p2, p1, p2}, Lcom/miui/home/launcher/Workspace;->showUsingCellCount(IIII)V

    :cond_1
    const/4 p5, 0x1

    const/4 p6, 0x0

    if-ne p3, p1, :cond_2

    if-eq p4, p2, :cond_4

    :cond_2
    if-eq p3, p1, :cond_3

    .line 4663
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mWidgetsToUpdate:Ljava/util/HashMap;

    if-nez v0, :cond_3

    .line 4664
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mWidgetsToUpdate:Ljava/util/HashMap;

    move v0, p5

    goto :goto_0

    :cond_3
    move v0, p6

    .line 4668
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/Workspace;->showPreviewingCellCount(IIII)V

    if-eqz v0, :cond_4

    .line 4670
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->updateNewAppWidgetsSizeOption()V

    :cond_4
    if-ne p3, p1, :cond_5

    goto :goto_1

    :cond_5
    move p5, p6

    .line 4673
    :goto_1
    invoke-direct {p0, p5}, Lcom/miui/home/launcher/Workspace;->initTemGadgets(Z)V

    .line 4674
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->checkCurScreenIndex()V

    .line 4675
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "after change cell count screens = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenId:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4678
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->setScreenScrollRangeByCurrentScreenType()V

    .line 4679
    invoke-virtual {p0, p6}, Lcom/miui/home/launcher/Workspace;->updateIndicatorPosition(Z)V

    .line 4680
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->updateWorkspacePaddingTop()V

    return-void
.end method

.method public changeTargetScreenOrder(II)V
    .locals 6

    .line 3117
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v0

    .line 3118
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v1

    .line 3119
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->removeScreen(I)V

    .line 3120
    invoke-virtual {p0, v0, p2}, Lcom/miui/home/launcher/Workspace;->addView(Landroid/view/View;I)V

    const/4 v0, 0x0

    move v3, v0

    .line 3121
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 3122
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-nez v4, :cond_0

    .line 3123
    iput v3, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    .line 3124
    iget-object v4, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    invoke-virtual {v4, v3, v0}, Lcom/miui/home/launcher/common/CurrentIndexMediator;->updateIndex(IZ)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3127
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 3128
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3129
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->setScreenScrollRangeByCurrentScreenType()V

    return-void
.end method

.method public checkAllScreensToSelfDelete()V
    .locals 2

    const/4 v0, 0x0

    .line 4100
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4101
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->checkToDeleteSelf()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public checkAppWidgetResizeFrameWhenDropOnOriginScreen(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/LauncherWidgetView;Z)V
    .locals 2

    .line 1695
    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherWidgetView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1696
    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    if-eqz v0, :cond_0

    .line 1698
    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    .line 1699
    new-instance v1, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda10;-><init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/LauncherWidgetView;Lcom/miui/home/launcher/CellLayout;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mAddResizeFrameRunnable:Ljava/lang/Runnable;

    if-eqz p3, :cond_0

    .line 1705
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->onQuickModeExitEnd()V

    :cond_0
    return-void
.end method

.method public checkInsertNewScreen()V
    .locals 1

    .line 4106
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isNeedInsertNewScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4107
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->insertNewScreen(I)V

    :cond_0
    return-void
.end method

.method public checkMotionEventIsInUnInterceptView(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1437
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1441
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/Workspace;->isMotionEventIsInMaMlView(Lcom/miui/home/launcher/Launcher;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/Workspace;->isMotionEventIsInWidget(Lcom/miui/home/launcher/Launcher;Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public clearAllScreensToast()V
    .locals 2

    const/4 v0, 0x0

    .line 4112
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4113
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    .line 4114
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->clearToasted()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearScreens()V
    .locals 2

    const-string v0, "Launcher.Workspace"

    const-string v1, "clearScreens"

    .line 3133
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3134
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3135
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 3136
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->removeAllScreens()V

    return-void
.end method

.method closeLongClick()V
    .locals 2

    const/4 v0, 0x0

    .line 801
    iput-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mOpenLongClick:Z

    .line 802
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-virtual {v1}, Lcom/miui/home/launcher/OnLongClickAgent;->cancelCustomziedLongPress()V

    const/4 v1, 0x0

    .line 803
    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Workspace;->setTouchState(Landroid/view/MotionEvent;I)V

    const-string p0, "Launcher.Workspace"

    const-string v0, "close LongClick"

    .line 804
    invoke-static {p0, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public computeScroll()V
    .locals 4

    .line 646
    invoke-super {p0}, Lcom/miui/home/launcher/ScreenView;->computeScroll()V

    .line 647
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->updateWallpaperOffset()Z

    .line 648
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->onWorkspaceScroll()V

    :cond_0
    const/4 v0, 0x0

    .line 651
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->setIsSnaping(Z)V

    .line 652
    iget-boolean v1, p0, Lcom/miui/home/launcher/Workspace;->mDragScrollAnimateStarted:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isScrolling()Z

    move-result v1

    if-nez v1, :cond_1

    .line 653
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mDragToNextScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 654
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mDragToNextScreenRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 655
    iput-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mDragScrollAnimateStarted:Z

    :cond_1
    return-void
.end method

.method protected createIndicatorView()Lcom/miui/home/launcher/ScreenView$IndicatorView;
    .locals 1

    .line 4403
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->supportAssistant()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    .line 4404
    new-instance v0, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;

    iget-object p0, p0, Lcom/miui/launcher/views/LauncherViewGroup;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 4406
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    iget-object p0, p0, Lcom/miui/launcher/views/LauncherViewGroup;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createUserFolderWithDragOverlap(Lcom/miui/home/launcher/DragObject;Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 14

    move-object v8, p0

    move-object/from16 v9, p2

    .line 2035
    iget-wide v0, v9, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    const/4 v10, 0x0

    if-nez v0, :cond_1

    .line 2041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "overItem.screenId="

    .line 2042
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v9, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",currScreenId="

    .line 2043
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",mScreenIdMap="

    .line 2044
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2045
    :goto_0
    iget-object v1, v8, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v10, v1, :cond_0

    .line 2046
    iget-object v1, v8, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v10}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    .line 2047
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2048
    iget-object v3, v8, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 2050
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2053
    :cond_1
    iget-object v1, v8, Lcom/miui/home/launcher/Workspace;->mTempCell:[I

    .line 2055
    invoke-virtual {v0, v9, v1}, Lcom/miui/home/launcher/CellLayout;->getChildVisualPosByTag(Ljava/lang/Object;[I)Z

    move-result v2

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v2, :cond_2

    .line 2056
    iget-object v2, v8, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-wide v3, v9, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    aget v5, v1, v10

    aget v6, v1, v12

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/miui/home/launcher/Launcher;->createNewFolder(JII)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v2

    move-object v13, v2

    goto :goto_1

    :cond_2
    move-object v13, v11

    :goto_1
    if-nez v13, :cond_3

    return v10

    .line 2061
    :cond_3
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v13, v2, v9}, Lcom/miui/home/launcher/FolderIcon;->updateFolderTilte(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 2062
    aget v2, v1, v10

    iput v2, v9, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 2063
    aget v2, v1, v12

    iput v2, v9, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 2064
    invoke-virtual {v0, v9}, Lcom/miui/home/launcher/CellLayout;->removeChild(Lcom/miui/home/launcher/ItemInfo;)V

    .line 2065
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->clearBackupLayout()V

    .line 2066
    iget-wide v2, v9, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    aget v4, v1, v10

    aget v5, v1, v12

    invoke-virtual {v13}, Lcom/miui/home/launcher/FolderIcon;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    iget v6, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    invoke-virtual {v13}, Lcom/miui/home/launcher/FolderIcon;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    iget v7, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    move-object v0, p0

    move-object v1, v13

    invoke-virtual/range {v0 .. v7}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIII)V

    .line 2067
    iget-object v0, v8, Lcom/miui/launcher/views/LauncherViewGroup;->mContext:Landroid/content/Context;

    .line 2068
    invoke-virtual {v13}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/FolderInfo;

    iget-object v2, v8, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v2

    move-object v3, p1

    .line 2067
    invoke-static {v0, v9, p1, v1, v2}, Lcom/miui/home/launcher/LauncherModel;->dropDragObjectIntoFolder(Landroid/content/Context;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/DragObject;Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/allapps/LauncherMode;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 2069
    invoke-interface {v13, v11}, Lcom/miui/home/launcher/DropTarget;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    return v12

    :cond_4
    return v10
.end method

.method public deleteLastCellLayout()V
    .locals 1

    .line 2399
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldLargeScreenWithoutSplit(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isInLastScreenIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2400
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(I)I

    .line 2401
    new-instance v0, Lcom/miui/home/launcher/Workspace$8;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Workspace$8;-><init>(Lcom/miui/home/launcher/Workspace;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->addScrollToNextScreenAnimListener(Lcom/miui/home/launcher/fold/ScrollToNextScreenAnimListener;)V

    goto :goto_0

    .line 2409
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getLastCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->checkToDeleteSelf()V

    :goto_0
    return-void
.end method

.method deleteScreen(J)V
    .locals 5

    .line 3615
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    const-string v1, "Launcher.Workspace"

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 3617
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Workspace;->setNeedToWaitToDeleteEmptyScreen(Z)V

    .line 3618
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "already deleted screenId:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3621
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->isDeleteableScreen(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3622
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Workspace;->setNeedToWaitToDeleteEmptyScreen(Z)V

    .line 3623
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "!isDeleteableScreen\uff1a"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3626
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    .line 3627
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    .line 3628
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Workspace;->setNeedToWaitToDeleteEmptyScreen(Z)V

    return-void

    .line 3632
    :cond_2
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/miui/home/launcher/common/messages/DeleteCellScreenMessage;

    sget v4, Lcom/miui/home/launcher/common/messages/DeleteCellScreenMessage;->BEFORE_DELETE:I

    invoke-direct {v2, p1, p2, v4}, Lcom/miui/home/launcher/common/messages/DeleteCellScreenMessage;-><init>(JI)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 3633
    iput-boolean v3, p0, Lcom/miui/home/launcher/Workspace;->mIsRemovingScreen:Z

    .line 3634
    invoke-static {p1, p2}, Lcom/miui/home/launcher/ScreenUtils;->deleteScreen(J)V

    .line 3636
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notify db delete screen id = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 337
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ScreenView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 338
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->drawFoldDivideLine(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 816
    invoke-static {}, Lcom/miui/launcher/utils/BoostHelper;->getInstance()Lcom/miui/launcher/utils/BoostHelper;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Lcom/miui/launcher/utils/BoostHelper;->bindCore(Landroid/view/View;J)V

    .line 817
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLastEvent:Landroid/view/MotionEvent;

    .line 818
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const-string v1, "Launcher.Workspace"

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 819
    iput v2, p0, Lcom/miui/home/launcher/Workspace;->mPredictStepCount:I

    .line 820
    iput v2, p0, Lcom/miui/home/launcher/Workspace;->mFirstVelocity:I

    .line 821
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFirstScreenLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 825
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->preInvalidate()V

    .line 826
    iput-boolean v2, p0, Lcom/miui/home/launcher/Workspace;->mOnlyDrawCurrentScreen:Z

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "ignore touch event workspace is locked"

    .line 822
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 828
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mOpenLongClick:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/OnLongClickAgent;->onDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 829
    invoke-virtual {p0, p1, v2}, Lcom/miui/home/launcher/Workspace;->setTouchState(Landroid/view/MotionEvent;I)V

    const-string/jumbo p0, "setTouchState to TOUCH_STATE_REST, when intercept by LongClickAgent"

    .line 830
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 833
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderOpened()Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    .line 837
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_7

    if-eq v0, v3, :cond_5

    const/4 v4, 0x3

    if-eq v0, v4, :cond_5

    goto :goto_2

    .line 844
    :cond_5
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getTouchState()I

    move-result v0

    if-eq v0, v3, :cond_6

    .line 845
    invoke-static {v2}, Lcom/miui/launcher/utils/MamlUtils;->setGlobalThreadPause(Z)V

    :cond_6
    const-string v0, "Workspace touch up or cancel"

    .line 847
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 839
    :cond_7
    invoke-static {v3}, Lcom/miui/launcher/utils/MamlUtils;->setGlobalThreadPause(Z)V

    const-string v0, "Workspace touch down"

    .line 840
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :goto_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .line 1031
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/Workspace;->checkScreenVisibility(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1034
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isMultiProcessMinusScreenShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1035
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/ScreenView;->superDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0

    .line 1037
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/ScreenView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, " Workspace Items:\n"

    .line 4469
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4470
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4471
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4473
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " cellLayout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4474
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public editPinchingScaleAnimTo(F)V
    .locals 2

    .line 4176
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mEditPinchingScaleAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->cancel()V

    .line 4177
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mEditPinchingScaleAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mEditPinchingScale:F

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/launcher/animate/SpringAnimator;->setStartEnd(FF)Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 4178
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mEditPinchingScaleAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/animate/SpringAnimator;->setDampingResponse(FF)Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 4179
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mEditPinchingScaleAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    new-instance v0, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/Workspace;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->setUpdateListener(Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;)Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 4182
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mEditPinchingScaleAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {p0}, Lcom/miui/home/launcher/animate/SpringAnimator;->start()V

    return-void
.end method

.method public editPinchingScaleSetTo(F)V
    .locals 1

    .line 4186
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mEditPinchingScaleAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->cancel()V

    .line 4187
    iput p1, p0, Lcom/miui/home/launcher/Workspace;->mEditPinchingScale:F

    return-void
.end method

.method public enterNormalEditingByGesture()V
    .locals 1

    .line 1041
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mWorkspaceThumbnailView:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 1042
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isElderlyManMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1043
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->finishCurrentGesture()V

    .line 1044
    new-instance v0, Lcom/miui/home/launcher/Workspace$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Workspace$2;-><init>(Lcom/miui/home/launcher/Workspace;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public fillEmptyCellAuto(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 2

    const-string v0, "Launcher.Workspace"

    const-string v1, "Start filling empty cell auto."

    .line 2290
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2293
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/CellLayout;->fillEmptyCellAuto(II)V

    :cond_0
    return-void
.end method

.method public findEmptyCell(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;)Lcom/miui/home/launcher/Workspace$CellInfo;
    .locals 7

    .line 2617
    new-instance v0, Lcom/miui/home/launcher/Workspace$CellInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/Workspace$CellInfo;-><init>()V

    const-wide/16 v1, -0x1

    .line 2618
    iput-wide v1, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->screenId:J

    const/4 v3, -0x1

    .line 2619
    iput v3, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->screenOrder:I

    const/4 v3, 0x0

    .line 2620
    iput v3, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->cellX:I

    .line 2621
    iput v3, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->cellY:I

    .line 2622
    iget v4, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iput v4, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->spanX:I

    .line 2623
    iget v5, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    iput v5, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->spanY:I

    .line 2624
    invoke-static {v3, v3, v4, v5}, Lcom/miui/home/launcher/DeviceConfig;->isInvalidateCellPosition(IIII)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    return-object v5

    .line 2627
    :cond_0
    iget v4, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v6, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-direct {p0, p1, v0, v4, v6}, Lcom/miui/home/launcher/Workspace;->findEmptyCell(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Workspace$CellInfo;II)Lcom/miui/home/launcher/Workspace$CellInfo;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "Launcher.Workspace"

    const-string p1, "Too many apps installed, not adding to home screen"

    .line 2630
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    .line 2634
    :cond_1
    iget-wide v4, p1, Lcom/miui/home/launcher/Workspace$CellInfo;->screenId:J

    cmp-long v0, v4, v1

    if-nez v0, :cond_4

    .line 2635
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mCallbacksWhenScreenReady:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2636
    :try_start_0
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/Workspace;->checkIsDupTask(Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2637
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mCallbacksWhenScreenReady:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2639
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2640
    iget-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mIsInsertingNewScreen:Z

    if-nez p2, :cond_3

    .line 2641
    iget p2, p1, Lcom/miui/home/launcher/Workspace$CellInfo;->screenOrder:I

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Workspace;->insertNewScreen(I)V

    :cond_3
    const-wide v0, 0x7fffffffffffffffL

    .line 2642
    iput-wide v0, p1, Lcom/miui/home/launcher/Workspace$CellInfo;->screenId:J

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2639
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    :goto_0
    return-object p1
.end method

.method public findScreenFirstVacantArea(IILcom/miui/home/launcher/CellScreen;)[I
    .locals 0

    .line 4145
    invoke-virtual {p3}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4149
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/CellLayout;->findFirstVacantArea(II)[I

    move-result-object p0

    return-object p0
.end method

.method findSingleSlot(IIJZ)Lcom/miui/home/launcher/CellLayout$CellInfo;
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v5, p3

    move v7, p5

    .line 4580
    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/Workspace;->findSlot(IIIIJZ)Lcom/miui/home/launcher/CellLayout$CellInfo;

    move-result-object p0

    return-object p0
.end method

.method findSlot(JIIIIZ)Lcom/miui/home/launcher/CellLayout$CellInfo;
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 4588
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    goto :goto_0

    .line 4589
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    if-nez p1, :cond_1

    return-object p2

    .line 4594
    :cond_1
    invoke-virtual {p1, p3, p4, p5, p6}, Lcom/miui/home/launcher/CellLayout;->findNearestVacantAreaByCellPos(IIII)[I

    move-result-object p1

    if-nez p1, :cond_3

    if-eqz p7, :cond_2

    .line 4597
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const p1, 0x7f1003d6

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->showError(I)V

    :cond_2
    return-object p2

    .line 4602
    :cond_3
    new-instance p2, Lcom/miui/home/launcher/CellLayout$CellInfo;

    invoke-direct {p2}, Lcom/miui/home/launcher/CellLayout$CellInfo;-><init>()V

    const/4 p3, 0x0

    .line 4603
    aget p3, p1, p3

    iput p3, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellX:I

    const/4 p3, 0x1

    .line 4604
    aget p1, p1, p3

    iput p1, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellY:I

    .line 4605
    iput p5, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanX:I

    .line 4606
    iput p6, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanY:I

    const/16 p1, -0x64

    .line 4607
    iput p1, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->container:I

    .line 4608
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide p0

    iput-wide p0, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    return-object p2
.end method

.method public finishCurrentGesture()V
    .locals 0

    .line 856
    invoke-super {p0}, Lcom/miui/home/launcher/ScreenView;->finishCurrentGesture()V

    return-void
.end method

.method public firstLoadScreens(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 3141
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 3145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 3146
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3147
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;

    .line 3148
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    iget-wide v4, v2, Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;->screenId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3149
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    iget-wide v4, v2, Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;->screenId:J

    iget v6, v2, Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;->screenOrder:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3150
    iget v2, v2, Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;->screenType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3152
    :cond_1
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->reloadScreens(Ljava/util/ArrayList;)V

    .line 3153
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->setupCurrentScreen()V

    return-void

    .line 3142
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " screenId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " indexScreen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " allScreen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    .line 3143
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " loading = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;
    .locals 1

    .line 3800
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    instance-of v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    if-eqz v0, :cond_0

    .line 3801
    check-cast p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCellLayout(I)Lcom/miui/home/launcher/CellLayout;
    .locals 0

    .line 3019
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3021
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;
    .locals 0

    .line 2756
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object p0

    return-object p0
.end method

.method public getCellScreen(I)Lcom/miui/home/launcher/CellScreen;
    .locals 0

    .line 2748
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object p0

    .line 2749
    instance-of p1, p0, Lcom/miui/home/launcher/CellScreen;

    if-eqz p1, :cond_0

    .line 2750
    check-cast p0, Lcom/miui/home/launcher/CellScreen;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getContainerId()J
    .locals 2

    const-wide/16 v0, -0x64

    return-wide v0
.end method

.method public getCurrentAllScreenID()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 481
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/CurrentIndexMediator;->getCurrentAllScreenID()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentAllScreenIndex()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 477
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/CurrentIndexMediator;->getCurrentAllScreenIndex()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;
    .locals 0

    .line 3031
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3033
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;
    .locals 0

    .line 3027
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreen()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/CellScreen;

    return-object p0
.end method

.method public getCurrentRightCellLayout()Lcom/miui/home/launcher/CellLayout;
    .locals 1

    .line 3039
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentScreenId()J
    .locals 2

    .line 456
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 459
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getCurrentScreenType()I
    .locals 1

    .line 499
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getScreenType(I)I

    move-result p0

    return p0
.end method

.method public getCurrentShowShortcutIcons()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/IShortcutIcon;",
            ">;"
        }
    .end annotation

    .line 4390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4391
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    invoke-virtual {v1}, Lcom/miui/home/launcher/common/CurrentIndexMediator;->getCurrentAllScreenIndex()Ljava/util/List;

    move-result-object v1

    .line 4392
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4393
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/CellScreen;

    if-eqz v2, :cond_0

    .line 4395
    invoke-virtual {v2}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawableUtils;->getAllShortcutIconsFromParent(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getCurrentValidDropScreen(II)Lcom/miui/home/launcher/CellScreen;
    .locals 1

    .line 1764
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/miui/home/launcher/Workspace;->isScreenHasValidArea(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1765
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object p0

    return-object p0

    .line 1766
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isTwoScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/miui/home/launcher/Workspace;->isScreenHasValidArea(III)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1767
    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDefaultCellLayout()Lcom/miui/home/launcher/CellLayout;
    .locals 0

    .line 2728
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getDefaultCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2730
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultCellScreen()Lcom/miui/home/launcher/CellScreen;
    .locals 1

    .line 2723
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v0

    .line 2724
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultScreenIndex()I
    .locals 2

    .line 2679
    iget-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mDefaultScreenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    .line 2680
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getDistanceToCurrentScreen(J)I
    .locals 0

    .line 472
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p1

    .line 473
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result p0

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method

.method public getDropAnnounceForAccessibility(Lcom/miui/home/launcher/DragObject;)Ljava/lang/String;
    .locals 4

    .line 2378
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 2379
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 2380
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    aput-object p1, v2, v0

    const p1, 0x7f100093

    .line 2379
    invoke-virtual {p0, p1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDropTargetDelegate(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/DropTarget;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEditPinchingScale()F
    .locals 0

    .line 4172
    iget p0, p0, Lcom/miui/home/launcher/Workspace;->mEditPinchingScale:F

    return p0
.end method

.method public getEventBusHandlers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 2433
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mCancelEmptySpaceLongClickHandler:Lcom/miui/home/launcher/Workspace$CancelEmptySpaceLongClickHandler;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLoadingFinishMessageHandler:Lcom/miui/home/launcher/common/messages/LoadingFinishMessageHandler;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mFirstScreenLoadFinishedMessageHandler:Lcom/miui/home/launcher/common/messages/FirstScreenLoadFinishedMessageHandler;

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFirstNotEmptyScreen()Lcom/miui/home/launcher/CellScreen;
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 3106
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_1

    .line 3107
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v2

    .line 3108
    invoke-virtual {v2}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3109
    invoke-virtual {v3}, Lcom/miui/home/launcher/CellLayout;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3113
    :cond_1
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object p0

    return-object p0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 1718
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->getHitRect(Landroid/graphics/Rect;)V

    .line 1719
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorMarginBottom:I

    sub-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public getHitView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getLastCellScreen()Lcom/miui/home/launcher/CellScreen;
    .locals 1

    .line 3048
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object p0

    return-object p0
.end method

.method public getLastNotEmptyScreen()Lcom/miui/home/launcher/CellScreen;
    .locals 3

    const/4 v0, 0x1

    .line 3095
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 3096
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    .line 3097
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3098
    invoke-virtual {v2}, Lcom/miui/home/launcher/CellLayout;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3102
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object p0

    return-object p0
.end method

.method public getOnDropAnnounce()Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;
    .locals 0

    return-object p0
.end method

.method public getPreviousScreenTransitionType()I
    .locals 0

    .line 3402
    iget p0, p0, Lcom/miui/home/launcher/Workspace;->mOldTransitionType:I

    return p0
.end method

.method public getScreenIdByIndex(I)J
    .locals 3

    const-wide/16 v0, -0x1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    return-wide v0

    .line 2741
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    return-wide v0

    .line 2744
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public getScreenIndexById(J)I
    .locals 1

    .line 2734
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getScreenIndicator()Landroid/view/View;
    .locals 1

    .line 3792
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v0, :cond_0

    return-object v0

    .line 3795
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    return-object p0
.end method

.method public getScreenType(I)I
    .locals 0

    .line 491
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 493
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenType()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getScrollZone()I
    .locals 0

    .line 3874
    iget p0, p0, Lcom/miui/home/launcher/Workspace;->mScrollZone:I

    return p0
.end method

.method protected getSnapDuration(II)I
    .locals 0

    const/16 p0, 0xf0

    return p0
.end method

.method protected getSnapOverScroll()I
    .locals 3

    .line 4087
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 4090
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    if-nez v0, :cond_1

    .line 4091
    iget p0, p0, Lcom/miui/home/launcher/Workspace;->mDragScrollAnimationDistance:I

    neg-int p0, p0

    return p0

    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 4094
    iget p0, p0, Lcom/miui/home/launcher/Workspace;->mDragScrollAnimationDistance:I

    return p0

    :cond_2
    return v1
.end method

.method protected getSnapUnitIndex(I)I
    .locals 1

    .line 4079
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isNeedCorrectIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4080
    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    return p0

    .line 4082
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ScreenView;->getSnapUnitIndex(I)I

    move-result p0

    return p0
.end method

.method public getVersionTag()Ljava/lang/Object;
    .locals 0

    .line 2427
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowAttachCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public hasOddScreen()Z
    .locals 0

    .line 4505
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result p0

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasPerformHapticFeedback()Z
    .locals 0

    .line 1067
    iget-boolean p0, p0, Lcom/miui/home/launcher/Workspace;->mHasPerformHapicFeedback:Z

    return p0
.end method

.method public hideAddContactButtonInQuickCallCellLayout()V
    .locals 1

    .line 2553
    sget-object v0, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda19;->INSTANCE:Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda19;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->findQuickCallCellLayout(Ljava/util/function/Function;)Z

    return-void
.end method

.method public hitViewArea(FF)Z
    .locals 1

    .line 885
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/miui/home/launcher/util/DoubleTapViewUtil;->pointInViewArea(Landroid/view/View;FFLandroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public inEditingModeAnimating()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 3458
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3459
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3460
    invoke-virtual {v2}, Lcom/miui/home/launcher/CellScreen;->isAnimating()Z

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

.method insertNewScreen(I)V
    .locals 1

    const/4 v0, 0x0

    .line 3706
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/Workspace;->insertNewScreen(ILcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;)V

    return-void
.end method

.method public insertNewScreen(ILcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 3713
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_0
    const/4 v1, 0x1

    .line 3717
    iput-boolean v1, p0, Lcom/miui/home/launcher/Workspace;->mIsInsertingNewScreen:Z

    const-string v1, "Launcher.Workspace"

    .line 3719
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notify db insert screen id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2

    .line 3721
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mCallbacksWhenScreenReady:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3722
    :try_start_0
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/Workspace;->checkIsDupTask(Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3723
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mCallbacksWhenScreenReady:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3725
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 3727
    :cond_2
    :goto_0
    invoke-static {v0, v0, p1}, Lcom/miui/home/launcher/ScreenUtils;->insertNewScreen(III)V

    return-void
.end method

.method insertNewScreenForEditMode(I)V
    .locals 1

    .line 3695
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getLastCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3697
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3698
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3702
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->insertNewScreen(I)V

    return-void
.end method

.method public isCurrentScreenNeedAlignIconsToTop()Z
    .locals 0

    .line 3043
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3044
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->needAlignIconsToTop()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDefaultScreen(J)Z
    .locals 2

    .line 2684
    iget-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mDefaultScreenId:J

    cmp-long p0, p1, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isDefaultScreenShowing()Z
    .locals 2

    .line 383
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isScrolling()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 386
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getDefaultScreenIndex()I

    move-result p0

    if-ne v0, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method isDeleteableScreen(J)Z
    .locals 4

    .line 3585
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v1

    .line 3588
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3589
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p1

    .line 3590
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getScreenType(I)I

    move-result p2

    move v0, v1

    .line 3591
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    if-eq p1, v0, :cond_1

    .line 3592
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getScreenType(I)I

    move-result v3

    if-ne v3, p2, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    return v2
.end method

.method public isDropEnabled()Z
    .locals 1

    .line 2076
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderOpened()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIdInCurrentScreen(J)Z
    .locals 0

    .line 468
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->isIndexInCurrentScreen(I)Z

    move-result p0

    return p0
.end method

.method public isInCurrentScreenId(Lcom/miui/home/launcher/Launcher;J)Z
    .locals 1

    .line 4957
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 4958
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide p0

    cmp-long p0, p2, p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 4960
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentAllScreenID()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 4961
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 4964
    :cond_2
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public isInDefaultScreenList(J)Z
    .locals 1

    .line 4311
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getDefaultScreenIndexList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4312
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInDragTargetViewFindPos()Z
    .locals 0

    .line 2140
    iget-boolean p0, p0, Lcom/miui/home/launcher/Workspace;->isInDragTargetViewFindPos:Z

    return p0
.end method

.method public isInLastScreenIndex()Z
    .locals 1

    .line 4536
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInLayoutPreviewMode()Z
    .locals 1

    .line 406
    iget p0, p0, Lcom/miui/home/launcher/Workspace;->mEditingMode:I

    const/16 v0, 0x13

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInNormalEditingMode()Z
    .locals 1

    .line 394
    iget p0, p0, Lcom/miui/home/launcher/Workspace;->mEditingMode:I

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInQuickEditingMode()Z
    .locals 1

    .line 410
    iget p0, p0, Lcom/miui/home/launcher/Workspace;->mEditingMode:I

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIndexInCurrentScreen(I)Z
    .locals 0

    .line 464
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/CurrentIndexMediator;->isInCurrentScreen(I)Z

    move-result p0

    return p0
.end method

.method public isNeedToWaitToDeleteEmptyScreen()Z
    .locals 0

    .line 4915
    iget-boolean p0, p0, Lcom/miui/home/launcher/Workspace;->mNeedToWaitToDeleteEmptyScreen:Z

    return p0
.end method

.method public isPinchingState()Z
    .locals 1

    .line 414
    iget p0, p0, Lcom/miui/home/launcher/Workspace;->mEditingMode:I

    const/16 v0, 0xb

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-ne p0, v0, :cond_0

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

.method public isPosValidate(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 5

    .line 2660
    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v2, -0x64

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 2661
    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2663
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v1, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget v2, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/miui/home/launcher/CellLayout;->isCellOccupied(IIII)Z

    move-result p0

    xor-int/2addr p0, v3

    return p0

    :cond_0
    return v4

    .line 2667
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Launcher;->isFolderIdValid(J)Z

    move-result p0

    if-eqz p0, :cond_2

    const-wide/16 v0, -0x1

    .line 2668
    iput-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    return v3

    :cond_2
    return v4
.end method

.method public isQuickCallCellLayoutExist()Z
    .locals 0

    .line 2565
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getQuickCallCellLayout()Lcom/miui/home/launcher/oldman/QuickCallCellLayout;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isQuickCallScreenShowing()Z
    .locals 0

    .line 2577
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2578
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->isQuickCallCellLayout()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isScreenHasValidArea(III)Z
    .locals 0

    .line 1773
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1774
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/miui/home/launcher/CellLayout;->findFirstVacantArea(II)[I

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isScreenReady()Z
    .locals 1

    .line 4907
    iget-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mIsInsertingNewScreen:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/miui/home/launcher/Workspace;->mIsRemovingScreen:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShowScreenSeekBar()Z
    .locals 1

    .line 4385
    iget-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mShowEditingIndicator:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShowingTransitionEffectDemo()Z
    .locals 0

    .line 1380
    iget-boolean p0, p0, Lcom/miui/home/launcher/Workspace;->mShowingTransitionEffectDemo:Z

    return p0
.end method

.method protected isSpringOverScroll()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isTouchStateNotInScroll()Z
    .locals 1

    .line 390
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getTouchState()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getTouchState()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

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

.method public isTwoScreen()Z
    .locals 2

    .line 3903
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result p0

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method moveToDefaultScreen(Z)V
    .locals 1

    .line 2701
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->cancelClosingAnimByLauncherScrolling()V

    .line 2702
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v0

    if-eqz p1, :cond_0

    .line 2704
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(I)I

    goto :goto_0

    .line 2706
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setCurrentScreen(I)V

    .line 2708
    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2710
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    return-void
.end method

.method public needBlurState()Z
    .locals 1

    .line 401
    iget p0, p0, Lcom/miui/home/launcher/Workspace;->mEditingMode:I

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public needDeleteLastEmptyScreen()Z
    .locals 2

    .line 2394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "needDeleteLastEmptyScreen  isEditingModeShowLastEmptyScreen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isEditingModeShowLastEmptyScreen()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.Workspace"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2395
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isEditingModeShowLastEmptyScreen()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public needShowLastEmptyScreen()Z
    .locals 2

    .line 2389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "needShowLastEmptyScreen  isEditingModeShowLastEmptyScreen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isEditingModeShowLastEmptyScreen()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isLastScreenEmpty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isLastScreenEmpty()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.Workspace"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isEditingModeShowLastEmptyScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isLastScreenEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected needTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z
    .locals 1

    .line 891
    instance-of v0, p3, Lcom/miui/home/launcher/CellScreen;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/ScreenView;->getChildIndex(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->isIndexInCurrentScreen(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 894
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/launcher/views/LauncherViewGroup;->needTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result p0

    return p0
.end method

.method public onDefaultScreenDelete()V
    .locals 2

    .line 2692
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2693
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2694
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->setDefaultScreenId(J)V

    .line 2695
    invoke-static {v0, v1}, Lcom/miui/home/launcher/DeviceConfig;->saveCurrentDefaultScreenId(J)Z

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 3238
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 3239
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/CurrentIndexMediator;->onDetachedFromWindow()V

    return-void
.end method

.method public onDragCompleted(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V
    .locals 3

    .line 2149
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    if-eqz v0, :cond_5

    .line 2150
    iget-wide v0, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 2151
    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->isAllDropedSuccess()Z

    move-result p2

    if-eqz p2, :cond_0

    if-eq p1, p0, :cond_1

    .line 2153
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 2157
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-object p2, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/CellLayout;->onDropAborted(Landroid/view/View;)V

    :cond_1
    :goto_0
    if-eqz v0, :cond_5

    .line 2160
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->isNoVacantMode()Z

    move-result p2

    if-eqz p2, :cond_5

    instance-of p2, v0, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;

    if-nez p2, :cond_2

    instance-of p1, p1, Lcom/miui/home/launcher/UninstallDropTarget;

    if-nez p1, :cond_5

    .line 2161
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragController;->getCurrentDragObject()Lcom/miui/home/launcher/DragObject;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    .line 2162
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragController;->getCurrentDragObject()Lcom/miui/home/launcher/DragObject;

    move-result-object p1

    const-string v1, "noNeedCloseFolder"

    const-string/jumbo v2, "setInDragTargetViewFindPos start"

    .line 2163
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .line 2164
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Workspace;->setInDragTargetViewFindPos(Z)V

    .line 2165
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2166
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragView;->isTargetAnimating()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2167
    new-instance p2, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0, v0}, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda7;-><init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/CellLayout;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/DragView;->setOnAnimationEndCallback(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 2173
    :cond_3
    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/CellLayout;->alignIconsToTopWithSaveDb(Z)Z

    .line 2174
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Workspace;->setInDragTargetViewFindPos(Z)V

    const-string/jumbo p1, "setInDragTargetViewFindPos end"

    .line 2175
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2178
    :cond_4
    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/CellLayout;->alignIconsToTopWithSaveDb(Z)Z

    :cond_5
    :goto_1
    const/4 p1, 0x0

    .line 2182
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    return-void
.end method

.method public onDragEnd(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 2312
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, -0x1

    .line 2315
    iput p1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    return-void
.end method

.method public onDragEnter(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onDragExit(Lcom/miui/home/launcher/DragObject;)V
    .locals 6

    const-string v0, "Launcher.Workspace"

    const-string v1, "onDragExit"

    .line 1800
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1801
    iget-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1802
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 1803
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getLastDragScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellScreen;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    .line 1805
    :cond_0
    iput-wide v2, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    .line 1806
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellScreen;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method public onDragOver(Lcom/miui/home/launcher/DragObject;)V
    .locals 6

    .line 1778
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->acceptDrop(Lcom/miui/home/launcher/DragObject;)Z

    move-result v0

    .line 1779
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDragOver in WorkSpace , is acceptDrop ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Launcher.Workspace"

    invoke-static {v2, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    .line 1781
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->transDragObject(Lcom/miui/home/launcher/DragObject;)V

    .line 1782
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->findDragOverCellScreen(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1784
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    .line 1785
    iget-wide v2, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 1786
    iget-wide v2, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 1787
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getLastDragScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1789
    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/CellScreen;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    .line 1792
    :cond_1
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellScreen;->onDragEnter(Lcom/miui/home/launcher/DragObject;)V

    .line 1793
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    .line 1795
    :cond_2
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellScreen;->onDragOver(Lcom/miui/home/launcher/DragObject;)V

    :cond_3
    return-void
.end method

.method public onDragOverThresholdWhenShortcutMenuShowing(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 2325
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->insertNewScreenIfNeed(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method public onDragStart([Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 2299
    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2303
    :cond_0
    invoke-static {p2}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->canShowShortcutMenu(Lcom/miui/home/launcher/DragObject;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 2304
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2307
    :cond_1
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/Workspace;->insertNewScreenIfNeed(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method public onDragStarted(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    .line 1522
    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    .line 1523
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 1524
    iget-wide v0, v0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1526
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->onDragChild(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1548
    iget v2, v1, Lcom/miui/home/launcher/DragObject;->dropAction:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 1549
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->getLastDragScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v2

    if-nez v2, :cond_1

    return v3

    .line 1554
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/miui/home/launcher/Workspace;->getDropScreen(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/CellScreen;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_12

    .line 1556
    invoke-virtual {v2}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/miui/home/launcher/CellLayout;->allowDrop(Lcom/miui/home/launcher/DragObject;)Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_5

    .line 1565
    :cond_2
    invoke-virtual {v2}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    .line 1566
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->isFirstObject()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1567
    invoke-direct/range {p0 .. p1}, Lcom/miui/home/launcher/Workspace;->transDragObject(Lcom/miui/home/launcher/DragObject;)V

    .line 1569
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v5

    if-nez v5, :cond_4

    const/4 v6, 0x0

    goto :goto_0

    .line 1570
    :cond_4
    invoke-virtual {v5}, Lcom/miui/home/launcher/DragView;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v6

    .line 1571
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->isInQuickEditingMode()Z

    move-result v7

    if-eqz v7, :cond_5

    const/high16 v7, 0x3f800000    # 1.0f

    .line 1572
    invoke-virtual {v5, v7}, Lcom/miui/home/launcher/DragView;->setTargetScale(F)V

    .line 1575
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDraggingSize()I

    move-result v5

    const/4 v7, 0x1

    if-gt v5, v7, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v5

    if-eq v5, v0, :cond_6

    goto :goto_1

    .line 1593
    :cond_6
    iget-object v5, v0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-object v5, v5, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1594
    invoke-virtual {v2, v1, v5}, Lcom/miui/home/launcher/CellScreen;->onDrop(Lcom/miui/home/launcher/DragObject;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1596
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v8

    iget-wide v8, v8, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iget-object v10, v0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-wide v10, v10, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_8

    .line 1597
    invoke-virtual {v0, v10, v11}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 1600
    invoke-virtual {v8}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    .line 1602
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v8

    iget-wide v8, v8, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v10, -0x64

    cmp-long v8, v8, v10

    if-nez v8, :cond_8

    .line 1603
    invoke-virtual {v2}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    .line 1604
    instance-of v8, v5, Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v8, :cond_8

    .line 1605
    move-object v8, v5

    check-cast v8, Lcom/miui/home/launcher/gadget/Gadget;

    invoke-virtual {v8}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    .line 1609
    :cond_8
    invoke-virtual {v2}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v8

    .line 1610
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v9

    if-nez v9, :cond_9

    iget-object v9, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 1611
    invoke-virtual {v9}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v9

    if-nez v9, :cond_9

    instance-of v9, v5, Lcom/miui/home/launcher/LauncherWidgetView;

    if-eqz v9, :cond_9

    move-object v9, v5

    check-cast v9, Lcom/miui/home/launcher/LauncherWidgetView;

    .line 1613
    invoke-virtual {v9}, Lcom/miui/home/launcher/LauncherWidgetView;->isMiuiWidget()Z

    move-result v10

    if-nez v10, :cond_9

    iget-object v10, v0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-wide v10, v10, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    .line 1614
    invoke-virtual {v8}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-nez v10, :cond_9

    .line 1615
    invoke-virtual {v0, v8, v9, v3}, Lcom/miui/home/launcher/Workspace;->checkAppWidgetResizeFrameWhenDropOnOriginScreen(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/LauncherWidgetView;Z)V

    .line 1618
    :cond_9
    invoke-direct {v0, v5, v1}, Lcom/miui/home/launcher/Workspace;->updateDragViewAnimateTarget(Landroid/view/View;Lcom/miui/home/launcher/DragObject;)V

    goto :goto_3

    .line 1576
    :cond_a
    :goto_1
    iget v5, v6, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 1577
    iget v8, v6, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 1578
    invoke-direct {v0, v2, v1}, Lcom/miui/home/launcher/Workspace;->onDropFromExternal(Lcom/miui/home/launcher/CellScreen;Lcom/miui/home/launcher/DragObject;)Z

    move-result v9

    .line 1579
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v10

    if-eqz v9, :cond_d

    .line 1580
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v11

    instance-of v11, v11, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    if-eqz v11, :cond_d

    .line 1581
    invoke-interface {v10}, Lcom/miui/home/launcher/DragSource;->getContainerId()J

    move-result-wide v11

    const-wide/16 v13, -0x6e

    cmp-long v11, v11, v13

    if-eqz v11, :cond_b

    .line 1582
    invoke-interface {v10}, Lcom/miui/home/launcher/DragSource;->getContainerId()J

    move-result-wide v11

    const-wide/16 v15, -0x6f

    cmp-long v11, v11, v15

    if-nez v11, :cond_d

    .line 1583
    :cond_b
    iget-object v11, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v12

    check-cast v12, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    const/4 v15, 0x3

    const/16 v16, -0x1

    .line 1585
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v3

    long-to-int v3, v3

    .line 1586
    invoke-interface {v10}, Lcom/miui/home/launcher/DragSource;->getContainerId()J

    move-result-wide v17

    cmp-long v4, v17, v13

    if-nez v4, :cond_c

    goto :goto_2

    :cond_c
    const/4 v7, 0x2

    :goto_2
    const/16 v17, 0x0

    .line 1587
    iget v4, v6, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v10, v6, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    move v13, v15

    move/from16 v14, v16

    move v15, v3

    move/from16 v16, v7

    move/from16 v18, v5

    move/from16 v19, v8

    move/from16 v20, v4

    move/from16 v21, v10

    .line 1583
    invoke-static/range {v11 .. v21}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackDragMiuiWidget(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;IIIIIIIII)V

    :cond_d
    move v7, v9

    :goto_3
    if-nez v7, :cond_e

    .line 1620
    invoke-virtual {v2}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/CellLayout;->hasToastedNoSpace()Z

    move-result v2

    if-nez v2, :cond_e

    .line 1621
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->isQuickCallScreenShowing()Z

    move-result v2

    if-nez v2, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->needShowImprovedToast()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1622
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1003ba

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/miui/home/launcher/common/Utilities;->showImprovedToast(Landroid/content/Context;II)V

    goto :goto_4

    :cond_e
    const/4 v4, 0x0

    .line 1624
    iget-object v2, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isWidgetThumbnailViewShowing()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1625
    iget-object v2, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2, v4}, Lcom/miui/home/launcher/Launcher;->showWidgetsPreviewLayout(Z)V

    :cond_f
    :goto_4
    if-eqz v7, :cond_10

    .line 1627
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v2, :cond_10

    .line 1628
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v1}, Lcom/miui/home/launcher/hybrid/HybridController;->trackMoveOutsideFolder(Lcom/miui/home/launcher/ShortcutInfo;)V

    :cond_10
    if-eqz v7, :cond_11

    .line 1631
    invoke-direct {v0, v6}, Lcom/miui/home/launcher/Workspace;->showToastOnWidgetAddedAndCountLimit(Lcom/miui/home/launcher/ItemInfo;)V

    :cond_11
    return v7

    :cond_12
    :goto_5
    const v3, 0x7f1003ba

    .line 1557
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->needShowImprovedToast()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1558
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1559
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->isAutoDraged()Z

    move-result v1

    if-eqz v1, :cond_13

    const v4, 0x7f1003bc

    goto :goto_6

    :cond_13
    move v4, v3

    :goto_6
    const/4 v1, 0x0

    .line 1558
    invoke-static {v0, v4, v1}, Lcom/miui/home/launcher/common/Utilities;->showImprovedToast(Landroid/content/Context;II)V

    .line 1561
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performNotEnough()V

    goto :goto_7

    :cond_14
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public onDropAnimationFinish()V
    .locals 1

    .line 2345
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-virtual {v0}, Lcom/miui/home/launcher/OnLongClickAgent;->cancelCustomziedLongPress()V

    .line 2346
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->cellLayoutCancelLongPress()V

    .line 2348
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mTrimScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2349
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mTrimScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDropBack(Lcom/miui/home/launcher/DragObject;)V
    .locals 7

    const-string v0, "Launcher.Workspace"

    const-string v1, "onDropBack"

    .line 1815
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1816
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    .line 1817
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v2

    .line 1818
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragView;->getContent()Landroid/view/View;

    move-result-object p1

    .line 1819
    iget-wide v3, v1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0, v3, v4}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v3

    .line 1820
    instance-of v4, v1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v4, :cond_0

    move-object v5, v1

    check-cast v5, Lcom/miui/home/launcher/ShortcutInfo;

    .line 1821
    invoke-virtual {v5}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Landroid/view/View;

    move-result-object v6

    if-eq v6, p1, :cond_0

    instance-of v6, p1, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v6, :cond_0

    .line 1823
    move-object v6, p1

    check-cast v6, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v5, v6, v3}, Lcom/miui/home/launcher/ShortcutInfo;->setBuddyIconView(Lcom/miui/home/launcher/IShortcutIcon;Landroid/view/ViewGroup;)V

    .line 1825
    :cond_0
    instance-of v5, p1, Lcom/miui/home/launcher/IShortcutIcon;

    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    .line 1826
    move-object v4, v1

    check-cast v4, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v4}, Lcom/miui/home/launcher/ShortcutInfo;->restoreCheckedStatus()V

    .line 1827
    move-object v4, p1

    check-cast v4, Lcom/miui/home/launcher/IShortcutIcon;

    .line 1828
    invoke-interface {v4}, Lcom/miui/home/launcher/IShortcutIcon;->resetCheckBox()V

    .line 1829
    invoke-interface {v4}, Lcom/miui/home/launcher/IShortcutIcon;->showTitle()V

    .line 1830
    iget-object v5, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v5}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v5

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lcom/miui/home/launcher/IShortcutIcon;->setEditMode(ZZ)V

    .line 1832
    :cond_1
    iget v4, v1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v5, v1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/miui/home/launcher/Workspace;->findEmptyCellOnCurrentCellLayout(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/CellLayout;II)Z

    move-result v4

    if-nez v4, :cond_2

    const-string p0, "not find empty cell on current cell layout"

    .line 1833
    invoke-static {v0, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, -0x1

    .line 1836
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, p1, v0, v4}, Lcom/miui/home/launcher/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1837
    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    .line 1838
    new-instance v0, Lcom/miui/home/launcher/Workspace$6;

    invoke-direct {v0, p0, p1, v1}, Lcom/miui/home/launcher/Workspace$6;-><init>(Lcom/miui/home/launcher/Workspace;Landroid/view/View;Lcom/miui/home/launcher/ItemInfo;)V

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/DragView;->setOnRemoveCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDropCompleted()V
    .locals 1

    .line 1868
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getLastDragScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1870
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->onDropCompleted()V

    .line 1872
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->exitMultiSelectEditModeIfNeed()V

    return-void
.end method

.method public onDropStart(Lcom/miui/home/launcher/DragObject;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 1532
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1535
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->getDropScreen(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1537
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    .line 1538
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellScreen;->onDropStart(Lcom/miui/home/launcher/DragObject;)V

    .line 1540
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mDragToNextScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p1, -0x1

    .line 1541
    iput p1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    .line 1542
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->cancelDragScroll()V

    :cond_2
    :goto_0
    return-void
.end method

.method onEditingModeEnterEnd()V
    .locals 2

    .line 3355
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v0, :cond_0

    .line 3356
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    const/4 v0, 0x0

    .line 3359
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3360
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3362
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->onEditingAnimationEnterEnd()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method onEditingModeExitEnd()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 3378
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3379
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3380
    invoke-virtual {v2}, Lcom/miui/home/launcher/CellScreen;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3385
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    move v1, v0

    .line 3387
    :goto_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 3388
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3390
    invoke-virtual {v2}, Lcom/miui/home/launcher/CellScreen;->onEditingAnimationExitEnd()V

    .line 3391
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3395
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mEditAnimateFinishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    .line 3396
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 3397
    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mEditAnimateFinishRunnable:Ljava/lang/Runnable;

    :cond_4
    return-void
.end method

.method public onEnterScrollArea(IIILandroid/view/MotionEvent;)Z
    .locals 3

    .line 4019
    iput p3, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    .line 4020
    invoke-virtual {p0, p3, p4}, Lcom/miui/home/launcher/Workspace;->startDragScrollAnimator(ILandroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4022
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScrollFiledTipAnimatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4023
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScrollFiledTipAnimatorRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x15e

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4025
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/DragableScreenView;->onEnterScrollArea(IIILandroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onExitScrollArea()Z
    .locals 1

    const/4 v0, -0x1

    .line 4070
    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    .line 4071
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mDragToNextScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4072
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScrollFiledTipAnimatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4073
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->cancelDragScroll()V

    .line 4074
    invoke-super {p0}, Lcom/miui/home/launcher/DragableScreenView;->onExitScrollArea()Z

    move-result p0

    return p0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 732
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 733
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01003a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mFadeIn:Landroid/view/animation/Animation;

    .line 734
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01003d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mFadeOut:Landroid/view/animation/Animation;

    .line 735
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspacePaddingTop(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingTop(Landroid/view/View;I)V

    return-void
.end method

.method public onGridConfigChanged(Lcom/miui/home/launcher/GridConfig;)V
    .locals 1

    .line 4488
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->loadIndicatorMarginBottom()V

    const/4 p1, 0x0

    .line 4489
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 4490
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4492
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->onScreenOrientationChanged()V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 4495
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4496
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mResetEditingViewsAfterScreenOrientationChanged:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mCallbackAfterNextLayout:Ljava/lang/Runnable;

    .line 4497
    iget-boolean p1, p0, Lcom/miui/home/launcher/Workspace;->mShowEditingIndicator:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz p1, :cond_2

    .line 4498
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorOffsetBottomPortrait:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 4501
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    iget-object p0, p0, Lcom/miui/launcher/views/LauncherViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->onScreenOrientationChanged(Landroid/content/Context;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 915
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isChangingCellCount()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p0, "Launcher.Workspace"

    const-string p1, "onInterceptTouchEvent: true, is changing cell"

    .line 916
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 920
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFirstScreenLoaded()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderOpened()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isSearchEdgeShowing()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 921
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isSearchBarMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 930
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eq v0, v1, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    goto :goto_0

    .line 935
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getTouchState()I

    move-result v0

    if-nez v0, :cond_3

    .line 936
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 937
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->lastDownOnOccupiedCell()Z

    move-result v0

    if-nez v0, :cond_3

    .line 938
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mTempCell:[I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 940
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    move-result-object v0

    .line 942
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/Workspace;->mTempCell:[I

    aget v4, v4, v2

    .line 943
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/miui/home/launcher/Workspace;->mTempCell:[I

    aget v5, v5, v1

    .line 944
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    const-string v6, "android.wallpaper.tap"

    .line 941
    invoke-virtual {v0, v6, v3, v4, v5}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->sendWallPaperCommand(Ljava/lang/String;Landroid/os/IBinder;II)V

    .line 947
    :cond_3
    iget-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mHasPerformLongClick:Z

    if-eqz v0, :cond_5

    .line 949
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/CellLayout$CellInfo;

    if-eqz p1, :cond_4

    .line 950
    iget-object p1, p1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 951
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 953
    :cond_4
    iput-boolean v2, p0, Lcom/miui/home/launcher/Workspace;->mHasPerformLongClick:Z

    return v1

    .line 965
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ScreenView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_6
    :goto_1
    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 3259
    invoke-super/range {p0 .. p5}, Lcom/miui/home/launcher/ScreenView;->onLayout(ZIIII)V

    .line 3260
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mCallbackAfterNextLayout:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 3261
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 3262
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mCallbackAfterNextLayout:Ljava/lang/Runnable;

    .line 3264
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_3

    .line 3265
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLocationOnScreen:[I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 3266
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLocationInWindow:[I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 3267
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mLocationOnScreen:[I

    const/4 p3, 0x0

    aget p4, p2, p3

    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mLocationInWindow:[I

    aget p5, p0, p3

    const/4 v0, 0x1

    if-ne p4, p5, :cond_1

    aget p2, p2, v0

    aget p0, p0, v0

    if-eq p2, p0, :cond_2

    :cond_1
    move p3, v0

    :cond_2
    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/Launcher;->setIsLauncherLayoutInMultiWindowMode(Z)V

    :cond_3
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2

    .line 3309
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->updateWorkspacePaddingTop()V

    const/4 v0, 0x0

    .line 3311
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3312
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3314
    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/CellScreen;->onMultiWindowModeChanged(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onOverlayAnimPause()V
    .locals 0

    .line 4556
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/CurrentIndexMediator;->onPause()V

    return-void
.end method

.method public onOverlayAnimResume()V
    .locals 0

    .line 4552
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/CurrentIndexMediator;->onResume()V

    return-void
.end method

.method public onOverlayOnDragEnd()V
    .locals 1

    const/4 v0, 0x0

    .line 4233
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setDragStartOverlay(Z)V

    return-void
.end method

.method public onOverlayOnDragStart()V
    .locals 1

    const/4 v0, 0x1

    .line 4222
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setDragStartOverlay(Z)V

    .line 4223
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->cancelScroll()V

    .line 4224
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4225
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScrollX(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4227
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScrollX(I)V

    .line 4229
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->resetTransition()V

    return-void
.end method

.method public onOverlayScrollChanged(F)V
    .locals 5

    const/4 v0, 0x0

    .line 4204
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 4205
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    sub-float v2, v1, v2

    .line 4206
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    .line 4207
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result p1

    if-eqz p1, :cond_0

    neg-float v3, v3

    .line 4210
    :cond_0
    sget-object p1, Lcom/miui/home/launcher/Workspace$DirectionProperty;->X:Lcom/miui/home/launcher/Workspace$DirectionProperty;

    invoke-direct {p0, p1, v3}, Lcom/miui/home/launcher/Workspace;->setWorkspaceProperty(Lcom/miui/home/launcher/Workspace$DirectionProperty;F)V

    .line 4211
    sget-object v4, Lcom/miui/home/launcher/Workspace$DirectionProperty;->ALPHA:Lcom/miui/home/launcher/Workspace$DirectionProperty;

    invoke-direct {p0, v4, v2}, Lcom/miui/home/launcher/Workspace;->setWorkspaceProperty(Lcom/miui/home/launcher/Workspace$DirectionProperty;F)V

    .line 4212
    invoke-virtual {p0, p1, v3}, Lcom/miui/home/launcher/Workspace;->setHotseatAndSearchBarProperty(Lcom/miui/home/launcher/Workspace$DirectionProperty;F)V

    .line 4213
    invoke-virtual {p0, v4, v2}, Lcom/miui/home/launcher/Workspace;->setHotseatAndSearchBarProperty(Lcom/miui/home/launcher/Workspace$DirectionProperty;F)V

    cmpl-float p1, v2, v0

    if-nez p1, :cond_1

    .line 4215
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->setLauncherWindowAlpha(F)V

    goto :goto_0

    :cond_1
    if-lez p1, :cond_2

    .line 4217
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->setLauncherWindowAlpha(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    .line 3222
    iput-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mOnlyDrawCurrentScreen:Z

    .line 3223
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentMediatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3224
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/CurrentIndexMediator;->onPause()V

    .line 3225
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mRestoreBlurRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3226
    invoke-super {p0}, Lcom/miui/home/launcher/ScreenView;->onPause()V

    return-void
.end method

.method protected onPinching(F)Z
    .locals 5

    .line 1080
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_7

    .line 1081
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/launcher/sosc/module/SoscEvent;->isSoscSplit()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_7

    .line 1084
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isElderlyManMode()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->inEditingModeAnimating()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->resetCellScreenScaleAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    if-eqz v0, :cond_1

    .line 1085
    invoke-virtual {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 1088
    :cond_1
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    new-instance v2, Lcom/miui/home/recents/event/EnterEditStateEvent;

    invoke-direct {v2}, Lcom/miui/home/recents/event/EnterEditStateEvent;-><init>()V

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    .line 1090
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->getDampingScale(F)F

    move-result p1

    .line 1092
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInDisableEditing()Z

    move-result v0

    const v2, 0x3f8ccccd    # 1.1f

    if-eqz v0, :cond_5

    .line 1093
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->endDragViewContainerBlurAnim()V

    .line 1094
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mState:Lcom/miui/home/launcher/Workspace$PinchingState;

    .line 1095
    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v3

    cmpg-float v3, p1, v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-gtz v3, :cond_2

    .line 1097
    sget-object v1, Lcom/miui/home/launcher/Workspace$PinchingState;->READY_TO_EDIT:Lcom/miui/home/launcher/Workspace$PinchingState;

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mState:Lcom/miui/home/launcher/Workspace$PinchingState;

    .line 1098
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->triggerPinchingIn(Lcom/miui/home/launcher/Workspace$PinchingState;)V

    goto :goto_0

    :cond_2
    cmpl-float v3, p1, v4

    if-ltz v3, :cond_4

    .line 1100
    sget-object v0, Lcom/miui/home/launcher/Workspace$PinchingState;->OVERRIDE:Lcom/miui/home/launcher/Workspace$PinchingState;

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mState:Lcom/miui/home/launcher/Workspace$PinchingState;

    cmpl-float p1, p1, v2

    if-lez p1, :cond_3

    .line 1101
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isPinchingState()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1102
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->startSecurityHide()V

    return v1

    :cond_3
    move p1, v4

    goto :goto_0

    .line 1107
    :cond_4
    sget-object v1, Lcom/miui/home/launcher/Workspace$PinchingState;->FOLLOW:Lcom/miui/home/launcher/Workspace$PinchingState;

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mState:Lcom/miui/home/launcher/Workspace$PinchingState;

    .line 1108
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->triggerPinchingOut(Lcom/miui/home/launcher/Workspace$PinchingState;)V

    .line 1110
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->updateNormalEditProgress(F)V

    goto :goto_1

    .line 1111
    :cond_5
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-eqz v0, :cond_6

    cmpl-float p1, p1, v2

    if-lez p1, :cond_6

    .line 1113
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->finishCurrentGesture()V

    .line 1114
    new-instance p1, Lcom/miui/home/launcher/Workspace$3;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/Workspace$3;-><init>(Lcom/miui/home/launcher/Workspace;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return v1

    :cond_6
    :goto_1
    const/4 p0, 0x0

    return p0

    :cond_7
    :goto_2
    return v1
.end method

.method protected onPinchingEnd(F)V
    .locals 1

    .line 1159
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/launcher/sosc/module/SoscEvent;->isSoscSplit()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1163
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInDisableEditing()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1164
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->getDampingScale(F)F

    move-result p1

    .line 1165
    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    .line 1166
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->enterNormalEditingByGesture()V

    goto :goto_0

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    .line 1169
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->resetCellScreenScale(F)V

    .line 1171
    :cond_3
    iget p1, p0, Lcom/miui/home/launcher/Workspace;->mEditingMode:I

    const/16 v0, 0xb

    if-ne p1, v0, :cond_4

    .line 1172
    sget-object p1, Lcom/miui/home/launcher/Workspace$PinchingState;->READY_TO_EDIT:Lcom/miui/home/launcher/Workspace$PinchingState;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->triggerPinchingOut(Lcom/miui/home/launcher/Workspace$PinchingState;)V

    .line 1175
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->resetEditingMode()V

    return-void
.end method

.method onQuickModeExitEnd()V
    .locals 3

    .line 3368
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mAddResizeFrameRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 3369
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3370
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mAddResizeFrameRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3372
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mAddResizeFrameRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 3

    .line 746
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 754
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getCurrentOpenedFolder()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 756
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0

    .line 759
    :cond_1
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    goto :goto_0

    .line 762
    :cond_2
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    :goto_0
    if-eq v0, v2, :cond_3

    .line 765
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    :cond_3
    return v1
.end method

.method public onResume()V
    .locals 3

    .line 3231
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentMediatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 3232
    iput-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mOnlyDrawCurrentScreen:Z

    .line 3233
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mRestoreBlurRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 739
    invoke-super {p0}, Lcom/miui/home/launcher/ScreenView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ScreenView$SavedState;

    .line 740
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v1

    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    if-eqz v1, :cond_0

    add-int/lit8 p0, p0, -0x1

    :cond_0
    iput p0, v0, Lcom/miui/home/launcher/ScreenView$SavedState;->currentScreen:I

    return-object v0
.end method

.method public onScreenSizeChanged()V
    .locals 2

    .line 3290
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isHasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3291
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07024c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mVerticalFlingInvalidateBottomAreaHeight:F

    const/4 v0, 0x0

    .line 3292
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->updateIndicatorPosition(Z)V

    .line 3293
    :goto_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3294
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3296
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->onScreenSizeChanged()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3299
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v0, :cond_3

    .line 3300
    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->onScreenSizeChanged()V

    .line 3302
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->updateWorkspacePaddingTop()V

    .line 3303
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInHalfSoscSplitMode()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 3304
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->loadSoscLayout(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V

    :cond_4
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 1006
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onScrollChanged(IIII)V

    const/4 p1, 0x0

    .line 1007
    iput-boolean p1, p0, Lcom/miui/home/launcher/Workspace;->mOnlyDrawCurrentScreen:Z

    return-void
.end method

.method protected onScrollXAnimationEnd()V
    .locals 1

    .line 661
    invoke-super {p0}, Lcom/miui/home/launcher/ScreenView;->onScrollXAnimationEnd()V

    const/4 v0, 0x0

    .line 662
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->setIsSnaping(Z)V

    .line 663
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->notifyScrollToNextScreenAnimEnd()V

    return-void
.end method

.method public onSecondaryPointerDown(Landroid/view/MotionEvent;I)V
    .locals 1

    .line 1305
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isSecondaryPointerEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1306
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/DragableScreenView;->onSecondaryPointerDown(Landroid/view/MotionEvent;I)V

    :cond_0
    return-void
.end method

.method public onSecondaryPointerDownWhenShortcutMenuShowing(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 2320
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->onDragOverThresholdWhenShortcutMenuShowing(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method public onSecondaryPointerMove(Landroid/view/MotionEvent;I)V
    .locals 1

    .line 1317
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isSecondaryPointerEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1318
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/DragableScreenView;->onSecondaryPointerMove(Landroid/view/MotionEvent;I)V

    :cond_0
    return-void
.end method

.method public onSecondaryPointerUp(Landroid/view/MotionEvent;I)V
    .locals 1

    .line 1311
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isSecondaryPointerEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1312
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/DragableScreenView;->onSecondaryPointerUp(Landroid/view/MotionEvent;I)V

    :cond_0
    return-void
.end method

.method public onSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 1

    .line 4630
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->loadSoscLayout(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V

    .line 4631
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SoscSplit chanage\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/miui/launcher/sosc/module/SoscEvent;->isSoscSplit()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Launcher.Workspace"

    invoke-static {v0, p1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 4632
    invoke-virtual {p2}, Lcom/miui/launcher/sosc/module/SoscEvent;->isSoscSplit()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4633
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->closeLongClick()V

    goto :goto_0

    .line 4635
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->openLongClick()V

    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 3201
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->clearAllScreensToast()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 4439
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScrollingClickDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4440
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onVerticalFling(IFF)V
    .locals 6

    .line 1339
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mGlobalSearchGestureMonitor:Lcom/miui/home/launcher/GlobalSearchGestureMonitor;

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v5

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/GlobalSearchGestureMonitor;->onVerticalFling(Lcom/miui/home/launcher/Launcher;IFFI)V

    return-void
.end method

.method public onVerticalGesture(ILandroid/view/MotionEvent;)Z
    .locals 1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    .line 1329
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 1330
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getLauncherGestureController()Lcom/miui/home/settings/LauncherGestureController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/settings/LauncherGestureController;->onPullDownAction()V

    :cond_0
    return p2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onWallpaperColorChanged()V
    .locals 1

    .line 2213
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->initFoldLargeScreenLinePaint()V

    .line 2214
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->updateIndicatorsColor()V

    const/4 v0, 0x0

    .line 2215
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->onWallpaperColorChanged(Z)V

    return-void
.end method

.method openLongClick()V
    .locals 1

    const/4 v0, 0x1

    .line 808
    iput-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mOpenLongClick:Z

    const-string p0, "Launcher.Workspace"

    const-string v0, "open LongClick"

    .line 809
    invoke-static {p0, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public performFakeLongClick()V
    .locals 1

    const/4 v0, 0x1

    .line 900
    iput-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mHasPerformLongClick:Z

    return-void
.end method

.method public pointOnChildViewRect(FF)Z
    .locals 2

    .line 861
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 863
    invoke-direct {p0, v0, p1, p2}, Lcom/miui/home/launcher/Workspace;->pointOnCellScreenChild(Lcom/miui/home/launcher/CellScreen;FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 864
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldLargeScreenWithoutSplit(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 865
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Workspace;->getNextScreenIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 867
    invoke-direct {p0, v1, p1, p2}, Lcom/miui/home/launcher/Workspace;->pointOnCellScreenChild(Lcom/miui/home/launcher/CellScreen;FF)Z

    move-result p0

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public removeAllEmptyFoldersInCurrentScreen()V
    .locals 4

    .line 4153
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    .line 4154
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4155
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/home/launcher/FolderIcon;

    if-eqz v2, :cond_0

    .line 4156
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/FolderIcon;

    const/4 v3, 0x1

    .line 4157
    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/FolderIcon;->setFastDelete(Z)V

    .line 4158
    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderIcon;->finishPendingAll()V

    .line 4159
    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/FolderIcon;->setFastDelete(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeCategoryIconsFolderOnlyOneApp(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/home/launcher/FolderInfo;",
            ">;)V"
        }
    .end annotation

    .line 2893
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/FolderInfo;

    if-eqz p1, :cond_0

    .line 2895
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FolderIcon;->removeFolderOnlyOneApp(Lcom/miui/home/launcher/FolderInfo;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;)V
    .locals 3

    .line 2245
    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2247
    iget-wide v1, p1, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/CellLayout;->removeChild(J)Landroid/view/View;

    .line 2248
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-ne v0, v1, :cond_0

    .line 2249
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->fillEmpty(Lcom/miui/home/launcher/ItemInfo;)V

    :cond_0
    return-void
.end method

.method public removeMaMl(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Landroid/view/View;
    .locals 2

    .line 2269
    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2271
    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/CellLayout;->removeChild(J)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public removeScreen(I)V
    .locals 2

    .line 3602
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ScreenView;->removeScreen(I)V

    .line 3603
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 3604
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    .line 3605
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/common/CurrentIndexMediator;->updateIndex(IZ)V

    .line 3607
    :cond_0
    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->setCurrentScreenInner(I)V

    .line 3608
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3609
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->setScreenScrollRangeByCurrentScreenType()V

    .line 3611
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->updateSeekBarVisibility()V

    return-void
.end method

.method public removeScrollToNextScreenAnimListener(Lcom/miui/home/launcher/fold/ScrollToNextScreenAnimListener;)V
    .locals 0

    .line 4576
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mScrollToNextScreenAnimListenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeServiceDelivery(Lcom/miui/home/launcher/ItemInfo;)Landroid/view/View;
    .locals 2

    .line 2278
    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2280
    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/CellLayout;->removeChild(J)Landroid/view/View;

    move-result-object p0

    .line 2281
    instance-of p1, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;

    if-eqz p1, :cond_0

    .line 2282
    move-object p1, p0

    check-cast p1, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->onDelete()V

    :cond_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public removeShortcuts(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 2234
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 2235
    iget-wide v1, v0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2237
    iget-wide v2, v0, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/launcher/CellLayout;->removeChild(J)Landroid/view/View;

    .line 2238
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Launcher;->fillEmpty(Lcom/miui/home/launcher/ItemInfo;)V

    .line 2239
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Launcher;->removeHotSeatsRecentCache(Lcom/miui/home/launcher/ShortcutInfo;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 0

    .line 3868
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ScreenView;->removeViewsInLayout(II)V

    .line 3869
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->updateSeekBarVisibility()V

    return-void
.end method

.method public removeWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 4

    .line 2255
    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 2256
    iget-wide v1, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 2258
    iget-wide v2, p1, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/CellLayout;->removeChild(J)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2259
    instance-of v0, p1, Lcom/miui/home/launcher/LauncherWidgetView;

    if-eqz v0, :cond_0

    .line 2260
    check-cast p1, Lcom/miui/home/launcher/LauncherWidgetView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onDestroy()V

    :cond_0
    if-eqz v1, :cond_1

    .line 2263
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 2264
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    :cond_1
    return-void
.end method

.method reorderScreens()V
    .locals 6

    .line 3185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Screens before reorder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.Workspace"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3187
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3188
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3190
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3193
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/miui/home/launcher/LauncherModel;->updateScreens(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    .line 906
    iget-object v0, p0, Lcom/miui/launcher/views/LauncherViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/compat/AccessibilityManagerCompat;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 907
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/ScreenView;->superRequestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p0

    return p0

    .line 909
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/ScreenView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p0

    return p0
.end method

.method public resetDockAndSearchPivotX()V
    .locals 2

    .line 1195
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    .line 1196
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 1199
    :cond_0
    new-instance v1, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda8;-><init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/CellScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public resetScrollZone()V
    .locals 4

    .line 316
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v1

    mul-int/2addr v0, v1

    .line 318
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceCellPaddingSide()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenScaleRatio()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    mul-float/2addr v0, v3

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mScrollZone:I

    return-void
.end method

.method public resetTransition()V
    .locals 3

    const/4 v0, 0x0

    .line 4237
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4238
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4240
    iget-object v2, p0, Lcom/miui/home/launcher/ScreenView;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    invoke-virtual {v2, v1, p0}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->resetTransformation(Landroid/view/View;Landroid/view/ViewGroup;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected scaleBegin()V
    .locals 0

    .line 1180
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1182
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->preEnterEditNormalState()V

    :cond_0
    return-void
.end method

.method public scaleCellScreen()V
    .locals 3

    const/4 v0, 0x0

    .line 1286
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1287
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1289
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->isIndexInCurrentScreen(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/CellScreen;->setCellLayoutScale(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public scrollDragingLeft()V
    .locals 0

    return-void
.end method

.method public scrollDragingRight()V
    .locals 0

    return-void
.end method

.method public scrollTo(II)V
    .locals 4

    .line 970
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->onWorkspaceScroll()V

    .line 971
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ScreenView;->scrollTo(II)V

    const-string p2, "Launcher_Scrollto"

    const-string v0, "[(rawX,rawY)|scrollX]  "

    .line 972
    invoke-static {p2, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->setHead(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getLastMotionEventLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getLastMotionEventLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->saveRecorded(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->preInvalidateAllMamlDrawables()V

    .line 977
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long p2, v0, v2

    if-nez p2, :cond_1

    if-lez p1, :cond_1

    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 978
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance p1, Lcom/miui/home/launcher/overlay/assistant/AssistantConnectMessage;

    invoke-direct {p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantConnectMessage;-><init>()V

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setAssistPointResource(I)V
    .locals 2

    .line 4413
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    instance-of v1, v0, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mAssistantPointResId:I

    if-eq v1, p1, :cond_0

    .line 4414
    check-cast v0, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;

    .line 4415
    invoke-virtual {v0}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->isAssistantPointExist()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4416
    iput p1, p0, Lcom/miui/home/launcher/Workspace;->mAssistantPointResId:I

    .line 4417
    invoke-virtual {v0}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->getAssistantPoint()Landroid/widget/ImageView;

    move-result-object p1

    iget p0, p0, Lcom/miui/home/launcher/Workspace;->mAssistantPointResId:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4418
    invoke-virtual {v0}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->getAssistantPoint()Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method public setCurrentScreenById(J)V
    .locals 0

    .line 452
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setCurrentScreen(I)V

    return-void
.end method

.method protected setCurrentScreenInner(I)V
    .locals 4

    .line 435
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v0

    .line 436
    iget-wide v2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenId:J

    .line 437
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setCurrentScreenInner(I)V

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 438
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/miui/home/launcher/Workspace;->mEditingScreenChanging:Z

    if-nez p1, :cond_0

    .line 439
    iput-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenId:J

    .line 440
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/miui/home/launcher/common/CurrentIndexMediator;->updateIndex(IZ)V

    :cond_0
    const/4 p0, 0x0

    .line 442
    invoke-static {p0}, Lcom/miui/launcher/utils/MamlUtils;->setGlobalThreadPause(Z)V

    return-void
.end method

.method public setDefaultScreenId(J)V
    .locals 0

    .line 2688
    iput-wide p1, p0, Lcom/miui/home/launcher/Workspace;->mDefaultScreenId:J

    return-void
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0

    .line 2133
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mDragController:Lcom/miui/home/launcher/DragController;

    return-void
.end method

.method public setEditMode(IZLcom/miui/home/launcher/EditStateChangeReason;)V
    .locals 16

    move-object/from16 v10, p0

    move/from16 v0, p1

    .line 3482
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v1

    .line 3483
    iput v0, v10, Lcom/miui/home/launcher/Workspace;->mEditingMode:I

    .line 3484
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setEditMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v10, Lcom/miui/home/launcher/Workspace;->mEditingMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Launcher.Workspace"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3485
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v11

    if-nez v1, :cond_0

    if-eqz v11, :cond_0

    const/4 v14, 0x1

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    if-eqz v1, :cond_1

    if-eqz v11, :cond_1

    const/4 v15, 0x1

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    :goto_1
    if-eq v1, v11, :cond_3

    if-eqz v14, :cond_2

    .line 3491
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, v10, Lcom/miui/home/launcher/Workspace;->mIsCanvasLine:Z

    .line 3492
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->postInvalidate()V

    :cond_3
    if-nez p2, :cond_b

    .line 3495
    invoke-direct {v10, v14, v15}, Lcom/miui/home/launcher/Workspace;->updateScreenLayoutMode(ZZ)V

    .line 3496
    invoke-direct {v10, v11, v14}, Lcom/miui/home/launcher/Workspace;->setupEditingScreen(ZZ)V

    if-nez v15, :cond_e

    .line 3498
    iget-boolean v0, v10, Lcom/miui/home/launcher/Workspace;->mShowEditingIndicator:Z

    if-eqz v0, :cond_5

    iget-object v0, v10, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v0, :cond_5

    .line 3499
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v2

    .line 3500
    iget-object v0, v10, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v4

    .line 3501
    iget-object v0, v10, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result v6

    .line 3502
    iget-object v0, v10, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPivotY()F

    move-result v8

    const/4 v0, 0x0

    if-eqz v11, :cond_4

    .line 3504
    iget v1, v10, Lcom/miui/home/launcher/Workspace;->mIndicatorOffsetBottomPortrait:I

    int-to-float v1, v1

    move v3, v1

    goto :goto_3

    :cond_4
    move v3, v0

    :goto_3
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    .line 3507
    iget-object v1, v10, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v1, v9

    .line 3509
    iget-object v1, v10, Lcom/miui/home/launcher/Workspace;->mScreenSeekBarEditAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {v1}, Lcom/miui/home/launcher/animate/SpringAnimator;->getSpringAnimation()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 3510
    iget-object v1, v10, Lcom/miui/home/launcher/Workspace;->mScreenSeekBarEditAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    const v12, 0x3f666666    # 0.9f

    const v13, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v12, v13}, Lcom/miui/home/launcher/animate/SpringAnimator;->setDampingResponse(FF)Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 3511
    iget-object v1, v10, Lcom/miui/home/launcher/Workspace;->mScreenSeekBarEditAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v12}, Lcom/miui/home/launcher/animate/SpringAnimator;->setStartEnd(FF)Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 3512
    iget-object v12, v10, Lcom/miui/home/launcher/Workspace;->mScreenSeekBarEditAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    new-instance v13, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda3;

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/launcher/Workspace;FFFFFFFF)V

    invoke-virtual {v12, v13}, Lcom/miui/home/launcher/animate/SpringAnimator;->setUpdateListener(Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;)Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 3518
    iget-object v0, v10, Lcom/miui/home/launcher/Workspace;->mScreenSeekBarEditAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->start()V

    goto :goto_7

    :cond_5
    if-eqz v11, :cond_6

    const/4 v0, 0x4

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    .line 3520
    :goto_4
    invoke-virtual {v10, v0}, Lcom/miui/home/launcher/ScreenView;->setIndicatorBarVisibility(I)V

    .line 3521
    iget-object v0, v10, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    if-eqz v0, :cond_8

    if-eqz v11, :cond_7

    .line 3522
    iget-object v1, v10, Lcom/miui/home/launcher/Workspace;->mFadeOut:Landroid/view/animation/Animation;

    goto :goto_5

    :cond_7
    iget-object v1, v10, Lcom/miui/home/launcher/Workspace;->mFadeIn:Landroid/view/animation/Animation;

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3524
    :cond_8
    iget-object v0, v10, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v0, :cond_a

    if-eqz v11, :cond_9

    .line 3525
    iget-object v1, v10, Lcom/miui/home/launcher/Workspace;->mFadeOut:Landroid/view/animation/Animation;

    goto :goto_6

    :cond_9
    iget-object v1, v10, Lcom/miui/home/launcher/Workspace;->mFadeIn:Landroid/view/animation/Animation;

    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_a
    :goto_7
    if-eqz v14, :cond_e

    .line 3530
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->setTransitionEffectEditingMode()V

    goto :goto_9

    :cond_b
    const/16 v1, 0x9

    if-ne v0, v1, :cond_c

    .line 3535
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->setScreenScrollRangeByCurrentScreenType()V

    goto :goto_9

    .line 3537
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/ScreenView;->resetScreenScrollRange()V

    .line 3538
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    :goto_8
    if-ltz v0, :cond_e

    .line 3540
    invoke-virtual {v10, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    if-eqz v1, :cond_d

    const/4 v2, 0x0

    .line 3542
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_e
    :goto_9
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 3549
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v2, v1, :cond_13

    .line 3550
    invoke-virtual {v10, v2}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 3552
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->isInQuickEditingMode()Z

    move-result v3

    invoke-virtual {v10, v2}, Lcom/miui/home/launcher/Workspace;->isIndexInCurrentScreen(I)Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/miui/home/launcher/CellScreen;->onQuickEditingModeChanged(ZZ)V

    .line 3553
    iget-object v3, v10, Lcom/miui/home/launcher/ScreenView;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    invoke-virtual {v3, v1, v10}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->resetTransformation(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 3554
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->isInLayoutPreviewMode()Z

    move-result v3

    if-nez v15, :cond_f

    invoke-direct {v10, v2}, Lcom/miui/home/launcher/Workspace;->shouldShowEditModeAnim(I)Z

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v5, p3

    const/4 v4, 0x0

    goto :goto_b

    :cond_f
    const/high16 v4, -0x80000000

    move-object/from16 v5, p3

    :goto_b
    invoke-virtual {v1, v11, v3, v4, v5}, Lcom/miui/home/launcher/CellScreen;->setEditMode(ZZILcom/miui/home/launcher/EditStateChangeReason;)Z

    move-result v1

    if-nez v1, :cond_11

    if-eqz v0, :cond_10

    goto :goto_c

    :cond_10
    const/4 v0, 0x0

    goto :goto_d

    :cond_11
    :goto_c
    const/4 v0, 0x1

    goto :goto_d

    :cond_12
    move-object/from16 v5, p3

    :goto_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_13
    if-nez v0, :cond_14

    .line 3558
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDeviceOrSpecialDevice()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x0

    .line 3559
    invoke-virtual {v10, v11, v0}, Lcom/miui/home/launcher/Workspace;->showPressBlackReplaceBlur(ZZ)V

    :cond_14
    return-void
.end method

.method public setEditingStateChangeFinishRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 3468
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mEditAnimateFinishRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public setHasPerformHapticFeedback(Z)V
    .locals 0

    .line 1063
    iput-boolean p1, p0, Lcom/miui/home/launcher/Workspace;->mHasPerformHapicFeedback:Z

    return-void
.end method

.method public setHotseatAndSearchBarProperty(Lcom/miui/home/launcher/Workspace$DirectionProperty;F)V
    .locals 2

    .line 4272
    invoke-static {p1}, Lcom/miui/home/launcher/Workspace$DirectionProperty;->access$1500(Lcom/miui/home/launcher/Workspace$DirectionProperty;)Landroid/util/Property;

    move-result-object p1

    .line 4274
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4275
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setInDragTargetViewFindPos(Z)V
    .locals 0

    .line 2144
    iput-boolean p1, p0, Lcom/miui/home/launcher/Workspace;->isInDragTargetViewFindPos:Z

    return-void
.end method

.method setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 2127
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 2128
    new-instance v0, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/Workspace;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/BaseActivity;->addOnGridConfigChangeListener(Lcom/miui/home/launcher/GridConfig$OnGridConfigChangeListener;)V

    .line 2129
    new-instance p1, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p1, v0, p0}, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Workspace;)V

    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mStateTransitionAnimation:Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;

    return-void
.end method

.method public setLauncherOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V
    .locals 0

    .line 4198
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    const/4 p1, 0x0

    .line 4200
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->onOverlayScrollChanged(F)V

    return-void
.end method

.method public setNeedToWaitToDeleteEmptyScreen(Z)V
    .locals 0

    .line 4919
    iput-boolean p1, p0, Lcom/miui/home/launcher/Workspace;->mNeedToWaitToDeleteEmptyScreen:Z

    return-void
.end method

.method public setScreenScrollRangeByCurrentScreenType()V
    .locals 6

    .line 3422
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3424
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenType()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getLastScreenIndexByType(IIZ)I

    move-result v0

    .line 3425
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenType()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {p0, v1, v3, v4}, Lcom/miui/home/launcher/Workspace;->getLastScreenIndexByType(IIZ)I

    move-result v1

    .line 3426
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldLargeScreenWithoutSplit(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3427
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/ScreenView;->setScreenScrollRange(II)V

    .line 3429
    :cond_1
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/ScreenView;->correctCurrentScreen(Z)V

    .line 3430
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v3

    :goto_0
    if-ltz v3, :cond_5

    .line 3432
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v4

    if-eqz v4, :cond_4

    if-lt v3, v0, :cond_3

    if-le v3, v1, :cond_2

    goto :goto_1

    :cond_2
    move v5, v2

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v5, 0x4

    .line 3434
    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public setState(Lcom/miui/home/launcher/LauncherState;)V
    .locals 0

    .line 4358
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mStateTransitionAnimation:Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->setState(Lcom/miui/home/launcher/LauncherState;)V

    return-void
.end method

.method public setStateWithAnimation(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)V
    .locals 2

    .line 4367
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mStateTransitionAnimation:Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->setStateWithAnimation(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)V

    .line 4371
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 4373
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 4374
    iget-wide v0, p3, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4375
    new-instance p3, Lcom/miui/home/launcher/Workspace$25;

    invoke-direct {p3, p0}, Lcom/miui/home/launcher/Workspace$25;-><init>(Lcom/miui/home/launcher/Workspace;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4381
    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->play(Landroid/animation/Animator;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method setThumbnailView(Lcom/miui/home/launcher/WorkspaceThumbnailView;)V
    .locals 0

    .line 3197
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mWorkspaceThumbnailView:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    return-void
.end method

.method protected setTouchState(Landroid/view/MotionEvent;I)V
    .locals 1

    if-eqz p2, :cond_0

    .line 3808
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3809
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    .line 3811
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 3812
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3813
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->refreshAllAppsArrow()V

    :cond_1
    if-eqz p2, :cond_2

    .line 3816
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/SuperDraglayer;->requestSwipeControllerDisallowInterceptTouchEventVertical(Z)V

    :cond_2
    return-void
.end method

.method public setTransitionEffectEditingMode()V
    .locals 1

    .line 3405
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenTransitionType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3406
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenTransitionType()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mOldTransitionType:I

    const/4 v0, 0x0

    .line 3407
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setScreenTransitionType(I)I

    .line 3408
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method public showAddContactButtonInQuickCallCellLayout()V
    .locals 1

    .line 2546
    sget-object v0, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda21;->INSTANCE:Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda21;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->findQuickCallCellLayout(Ljava/util/function/Function;)Z

    return-void
.end method

.method public showPressBlackReplaceBlur(ZZ)V
    .locals 7

    .line 3566
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget-wide v5, Lcom/miui/home/launcher/BackgroundBlackEffectUtils;->DEFAULT_BLACK_EFFECT_ANIM_DURATION:J

    const/4 v1, 0x0

    const/high16 v2, 0x33000000

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/BackgroundBlackEffectUtils;->blackoutEffectAnimation(Landroid/view/View;IIZZJ)V

    return-void
.end method

.method public showQuickCallCellLayoutTitle()V
    .locals 1

    .line 2539
    sget-object v0, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda20;->INSTANCE:Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda20;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->findQuickCallCellLayout(Ljava/util/function/Function;)Z

    return-void
.end method

.method public showSeekBarWithoutAnim(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 3860
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 3862
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected snapByVelocity(II)V
    .locals 1

    const/4 v0, 0x0

    .line 4129
    iput-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mIsSnapCausedByDragScroll:Z

    .line 4130
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ScreenView;->snapByVelocity(II)V

    return-void
.end method

.method protected snapToScreen(IIZ)I
    .locals 4

    .line 1411
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1412
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->stopUnlockAnim(I)V

    .line 1414
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    .line 1416
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1417
    iget v3, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    if-eq p1, v3, :cond_0

    .line 1418
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 1419
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 1421
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getOverLayoutProgress()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    .line 1424
    :goto_0
    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    if-eq v0, p1, :cond_2

    .line 1425
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Workspace;->setIsSnaping(Z)V

    .line 1426
    sget-boolean p1, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-eqz p1, :cond_2

    .line 1427
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackDesktopSwipeLeftOrRight()V

    .line 1430
    :cond_2
    invoke-super {p0, v0, p2, p3}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(IIZ)I

    move-result p0

    return p0
.end method

.method startDrag(Lcom/miui/home/launcher/CellLayout$CellInfo;)V
    .locals 6

    const-string v0, "Launcher.Workspace"

    const-string/jumbo v1, "startDrag in workspace"

    .line 1495
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    iget-object v1, p1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1498
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isFolderOpened()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->inEditingModeAnimating()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isShowingUserPresentAnimation()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1505
    :cond_0
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    .line 1507
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    const/4 p1, 0x0

    .line 1508
    invoke-virtual {v1, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1511
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mDragController:Lcom/miui/home/launcher/DragController;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/miui/home/launcher/DragController;->startDrag(Landroid/view/View;ZLcom/miui/home/launcher/DragSource;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1512
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    .line 1513
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/overlay/assistant/AssistantConnectMessage;

    invoke-direct {v0}, Lcom/miui/home/launcher/overlay/assistant/AssistantConnectMessage;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1515
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    .line 1516
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/CellLayout;->onDragChild(Landroid/view/View;)V

    .line 1518
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void

    .line 1499
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startDrag: return, because isFolderOpened: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isFolderOpened()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", inEditingModeAnimating: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1500
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->inEditingModeAnimating()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isShowingUserPresentAnimation: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 1501
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isShowingUserPresentAnimation()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1499
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startDragScrollAnimator(ILandroid/view/MotionEvent;)Z
    .locals 9

    .line 3962
    iget-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mIsSnaping:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3965
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->cancelDragScroll()V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    move p1, v0

    goto :goto_0

    .line 3972
    :cond_1
    iget p1, p0, Lcom/miui/home/launcher/Workspace;->mDragScrollAnimationDistance:I

    goto :goto_0

    .line 3969
    :cond_2
    iget p1, p0, Lcom/miui/home/launcher/Workspace;->mDragScrollAnimationDistance:I

    neg-int p1, p1

    .line 3976
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getSnapBound()[I

    move-result-object v2

    .line 3977
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    add-int/2addr v3, p1

    aget v4, v2, v0

    if-ge v3, v4, :cond_4

    .line 3978
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v3}, Lcom/miui/home/launcher/DragController;->getCurrentDragObject()Lcom/miui/home/launcher/DragObject;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/miui/home/launcher/widget/MIUIWidgetHelper;->canDragToPa(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/DragObject;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3979
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getLauncherCallbacks()Lcom/miui/home/launcher/LauncherCallbacks;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/miui/home/launcher/LauncherCallbacks;->onDragToAssistantScreen(Landroid/view/MotionEvent;)V

    return v1

    :cond_3
    move p1, v0

    .line 3985
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p2

    add-int/2addr p2, p1

    aget v2, v2, v1

    if-le p2, v2, :cond_5

    move v5, v0

    goto :goto_1

    :cond_5
    move v5, p1

    :goto_1
    if-eqz v5, :cond_6

    .line 3989
    iput-boolean v1, p0, Lcom/miui/home/launcher/Workspace;->mDragScrollAnimateStarted:Z

    .line 3990
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v4

    const/4 v6, 0x0

    const v7, 0x3f666666    # 0.9f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/miui/home/launcher/ScreenView;->startScroll(IIIFF)V

    .line 3991
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mDragToNextScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3992
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mDragToNextScreenRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x15e

    invoke-virtual {p0, p1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3993
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return v1

    :cond_6
    return v0
.end method

.method public startFoldEditDragingAnim()V
    .locals 0

    .line 4546
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mFoldEditSwitchScreenAnim:Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;

    if-eqz p0, :cond_0

    .line 4547
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;->startFoldEditDragingAnim()V

    :cond_0
    return-void
.end method

.method public startFoldSwitchScreenAnim(ILcom/miui/home/launcher/WorkspaceThumbnailView$FoldSwitchScreenAnimListener;)V
    .locals 0

    .line 4540
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mFoldEditSwitchScreenAnim:Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;

    if-eqz p0, :cond_0

    .line 4541
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;->startFoldSwitchScreenAnim(ILcom/miui/home/launcher/WorkspaceThumbnailView$FoldSwitchScreenAnimListener;)V

    :cond_0
    return-void
.end method

.method public startLoading()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 3784
    iput-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mDefaultScreenId:J

    .line 3785
    iput-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenId:J

    .line 3786
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->removeAllScreens()V

    .line 3787
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mTrimScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3788
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->resetScreenScrollRange()V

    return-void
.end method

.method public updateAssistantPoints(Z)V
    .locals 2

    .line 4424
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    instance-of v1, v0, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;

    if-eqz v1, :cond_3

    .line 4425
    check-cast v0, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;

    .line 4426
    invoke-virtual {v0}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->isAssistantPointExist()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    .line 4427
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->isPersonalAssistantOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4428
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->removeAssistantPoint()V

    goto :goto_0

    .line 4429
    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->isAssistantPointExist()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez p1, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->isPersonalAssistantOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4430
    invoke-virtual {v0}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->addAssistantPoint()V

    :cond_2
    :goto_0
    if-nez p1, :cond_3

    .line 4432
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->updateIndicatorsColor()V

    .line 4434
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->updateSeekBarVisibility()V

    return-void
.end method

.method protected updateChildStaticTransformation(Landroid/view/View;)V
    .locals 2

    .line 3774
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getOverLayoutProgress()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    return-void

    .line 3777
    :cond_0
    instance-of v0, p1, Lcom/miui/home/launcher/CellScreen;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/CellScreen;

    iget-boolean v0, v0, Lcom/miui/home/launcher/CellScreen;->autoScrolling:Z

    if-eqz v0, :cond_1

    return-void

    .line 3780
    :cond_1
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ScreenView;->updateChildStaticTransformation(Landroid/view/View;)V

    return-void
.end method

.method public updateCurrentIndex(I)V
    .locals 0

    .line 485
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->setCurrentScreenInner(I)V

    .line 486
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->cancelScroll()V

    .line 487
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->scrollToScreen(I)V

    return-void
.end method

.method updateCurrentScreenWallpaperColor()V
    .locals 1

    const/4 v0, 0x1

    .line 2219
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->onWallpaperColorChanged(Z)V

    return-void
.end method

.method public updateIndicatorPosition(Z)V
    .locals 2

    .line 623
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->loadIndicatorMarginBottom()V

    .line 624
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenIndicator()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 625
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 626
    iget p0, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorOffsetBottomPortrait:I

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    .line 628
    :cond_0
    instance-of p0, v0, Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 629
    check-cast v0, Lcom/miui/home/launcher/ScreenView$SeekBarIndicator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->getScreenIndicator()Lcom/miui/home/launcher/ScreenView;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 630
    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->getScreenIndicator()Lcom/miui/home/launcher/ScreenView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setScaleY(F)V

    :cond_1
    return-void
.end method

.method public updateMamlDownloadVisible(I)V
    .locals 2

    .line 3243
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->needMamlProgressIcon()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3246
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3247
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3249
    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/CellLayout;->updateMamlDownloadVisible(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public updateNormalEditProgress(F)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    .line 1255
    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v1

    sub-float v1, v0, v1

    div-float/2addr p1, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, p1, v1

    .line 1257
    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v2

    sub-float v2, v0, v2

    mul-float/2addr v2, v1

    sub-float/2addr v0, v2

    .line 1258
    new-instance v1, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda14;

    invoke-direct {v1, v0}, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda14;-><init>(F)V

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Workspace;->doForEachCellScreen(Ljava/util/function/Consumer;)V

    .line 1260
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->editPinchingScaleSetTo(F)V

    .line 1261
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->updateDockAndSearchProgress(F)V

    .line 1262
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDeviceOrSpecialDevice()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1263
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const v1, 0x7f060044

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 1264
    invoke-static {v0, p1}, Lcom/miui/home/launcher/BackgroundBlackEffectUtils;->adjustColorPercentage(IF)I

    move-result p1

    .line 1265
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public updateWorkspacePaddingTop()V
    .locals 1

    .line 3285
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspacePaddingTop(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingTop(Landroid/view/View;I)V

    return-void
.end method
