.class public Lmiuix/bottomsheet/BottomSheetBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "BottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/bottomsheet/BottomSheetBehavior$ReleaseAnimListener;,
        Lmiuix/bottomsheet/BottomSheetBehavior$SavedState;,
        Lmiuix/bottomsheet/BottomSheetBehavior$StateSettlingTracker;,
        Lmiuix/bottomsheet/BottomSheetBehavior$PadFloatingHelper;,
        Lmiuix/bottomsheet/BottomSheetBehavior$FoldFloatingHelper;,
        Lmiuix/bottomsheet/BottomSheetBehavior$RequestLayoutRunnable;,
        Lmiuix/bottomsheet/BottomSheetBehavior$OnExtraPaddingListener;,
        Lmiuix/bottomsheet/BottomSheetBehavior$OnModeChangeListener;,
        Lmiuix/bottomsheet/BottomSheetBehavior$AnimationListener;,
        Lmiuix/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "TV;>;"
    }
.end annotation


# instance fields
.field accessibilityDelegateViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field activePointerId:I

.field private animInterruptible:Z

.field private animRunning:Z

.field private attrs:Landroid/util/AttributeSet;

.field private backgroundTint:Landroid/content/res/ColorStateList;

.field private bottomEnterAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private bottomEnterAnimTransitionListener:Lmiuix/animation/listener/TransitionListener;

.field private bottomExitAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private bottomExitAnimStateStyle:Lmiuix/animation/IStateStyle;

.field private bottomExitAnimTransitionListener:Lmiuix/animation/listener/TransitionListener;

.field private bottomModeMaxWidth:I

.field private final callbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/bottomsheet/BottomSheetBehavior$BottomSheetCallback;",
            ">;"
        }
    .end annotation
.end field

.field private childHeight:I

.field private childYInWindow:I

.field collapsedOffset:I

.field private defaultExpandedOffset:I

.field private defaultHighExpandedOffset:I

.field private density:F

.field private final dragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

.field private draggable:Z

.field elevation:F

.field final expandHalfwayActionIds:Landroid/util/SparseIntArray;

.field expandedOffset:I

.field private extraHeight:I

.field private extraPaddingEnabled:Z

.field private extraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

.field fitToContentsOffset:I

.field private fixedHeightRatio:F

.field private fixedHeightRatioEnabled:Z

.field private floatingEnterAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private floatingEnterAnimTransitionListener:Lmiuix/animation/listener/TransitionListener;

.field private floatingExitAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private floatingExitAnimTransitionListener:Lmiuix/animation/listener/TransitionListener;

.field private floatingExitSateStyle:Lmiuix/animation/IStateStyle;

.field private floatingModeDependsOnWindow:Z

.field private floatingModeHeight:I

.field private floatingModeHeightRatio:F

.field private floatingModeWidth:I

.field private forceFullHeight:Z

.field private fullHeightHighRatio:F

.field private fullHeightLowRatio:F

.field private fullHeightLowRatioThreshold:I

.field private fullHeightMiddleRatio:F

.field private fullHeightMiddleRatioThreshold:I

.field private fullHeightMode:Z

.field private gestureInsetBottom:I

.field private gestureInsetBottomIgnored:Z

.field halfExpandedOffset:I

.field halfExpandedRatio:F

.field halfExpandedRatioWhenFixHeightRatio:F

.field private hideFriction:F

.field hideable:Z

.field private highExpandedOffsetThreshold:I

.field private horizontalExtraPadding:I

.field private ignoreEvents:Z

.field private importantForAccessibilityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private initialY:I

.field private insetBottom:I

.field private insetTop:I

.field private insetTopInMeasureStep:I

.field private internalDraggable:Z

.field private internalFixedHeightRatioEnabled:Z

.field private lastMode:I

.field private lastNestedScrollDy:I

.field lastStableState:I

.field private mDeviceType:I

.field private mRequestLayoutRunnable:Lmiuix/bottomsheet/BottomSheetBehavior$RequestLayoutRunnable;

.field private marginLeftSystemWindowInsets:Z

.field private marginRightSystemWindowInsets:Z

.field private maxHeight:I

.field private maxWidth:I

.field private maximumVelocity:F

.field private minHeight:I

.field private mode:I

.field private modeConfig:I

.field private nestedScrolled:Z

.field nestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private onExtraPaddingListener:Lmiuix/bottomsheet/BottomSheetBehavior$OnExtraPaddingListener;

.field private onModeChangeListener:Lmiuix/bottomsheet/BottomSheetBehavior$OnModeChangeListener;

.field private originalWindowInsetsEnabled:Z

.field private paddingBottomSystemWindowInsets:Z

.field private paddingLeftSystemWindowInsets:Z

.field private paddingRightSystemWindowInsets:Z

.field parentHeight:I

.field parentViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            ">;"
        }
    .end annotation
.end field

.field parentWidth:I

.field private peekHeight:I

.field private peekHeightAuto:Z

.field private peekHeightGestureInsetBuffer:I

.field private peekHeightMin:I

.field private releaseAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private releaseAnimListener:Lmiuix/bottomsheet/BottomSheetBehavior$ReleaseAnimListener;

.field private releaseAnimStateStyle:Lmiuix/animation/IStateStyle;

.field private releaseAnimTransitionListener:Lmiuix/animation/listener/TransitionListener;

.field private final releaseEndAnimState:Lmiuix/animation/controller/AnimState;

.field private final releaseStartAnimState:Lmiuix/animation/controller/AnimState;

.field private saveFlags:I

.field private significantDistanceThreshold:I

.field private significantVelocityThreshold:I

.field private skipCollapsed:Z

.field private skipHalfExpanded:Z

.field private stableStateChildTop:I

.field state:I

.field private final stateSettlingTracker:Lmiuix/bottomsheet/BottomSheetBehavior$StateSettlingTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/bottomsheet/BottomSheetBehavior<",
            "TV;>.StateSettlingTracker;"
        }
    .end annotation
.end field

.field touchingScrollingChild:Z

.field private updateImportantForAccessibilityOnSiblings:Z

.field private velocityTracker:Landroid/view/VelocityTracker;

.field viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

.field viewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$2lfj7OP3gUScwOG5mpCaql_N-kw(Lmiuix/bottomsheet/BottomSheetBehavior;Landroid/view/View;ZLandroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lmiuix/internal/util/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lmiuix/bottomsheet/BottomSheetBehavior;->lambda$setWindowInsetsListener$1(Landroid/view/View;ZLandroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lmiuix/internal/util/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jfEhuAx9aSQ4IPOLvyBcU5IxAWc(Lmiuix/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiuix/bottomsheet/BottomSheetBehavior;->lambda$setState$0(Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 470
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    const/4 v0, 0x0

    .line 264
    iput v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->saveFlags:I

    .line 286
    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    const/4 v1, -0x1

    .line 315
    iput v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->maxWidth:I

    .line 317
    iput v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->maxHeight:I

    .line 329
    iput v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->insetTop:I

    .line 332
    new-instance v2, Lmiuix/bottomsheet/BottomSheetBehavior$StateSettlingTracker;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lmiuix/bottomsheet/BottomSheetBehavior$StateSettlingTracker;-><init>(Lmiuix/bottomsheet/BottomSheetBehavior;Lmiuix/bottomsheet/BottomSheetBehavior$1;)V

    iput-object v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->stateSettlingTracker:Lmiuix/bottomsheet/BottomSheetBehavior$StateSettlingTracker;

    const/high16 v2, 0x3f000000    # 0.5f

    .line 339
    iput v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->halfExpandedRatio:F

    const v2, 0x3f333333    # 0.7f

    .line 340
    iput v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->halfExpandedRatioWhenFixHeightRatio:F

    const/high16 v3, -0x40800000    # -1.0f

    .line 344
    iput v3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->elevation:F

    const/4 v3, 0x1

    .line 350
    iput-boolean v3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->draggable:Z

    const/4 v4, 0x4

    .line 352
    iput v4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->state:I

    .line 355
    iput v4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->lastStableState:I

    const v4, 0x3dcccccd    # 0.1f

    .line 367
    iput v4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->hideFriction:F

    .line 383
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    .line 391
    iput v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->initialY:I

    .line 398
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->expandHalfwayActionIds:Landroid/util/SparseIntArray;

    .line 401
    iput v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->modeConfig:I

    .line 404
    iput v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->mode:I

    .line 406
    iput v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->lastMode:I

    .line 412
    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fullHeightMode:Z

    const v1, 0x3f4ccccd    # 0.8f

    .line 414
    iput v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fullHeightHighRatio:F

    .line 415
    iput v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fullHeightMiddleRatio:F

    const/4 v1, 0x0

    .line 416
    iput v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fullHeightLowRatio:F

    .line 417
    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->skipHalfExpanded:Z

    .line 419
    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->forceFullHeight:Z

    .line 420
    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fixedHeightRatioEnabled:Z

    .line 421
    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->internalFixedHeightRatioEnabled:Z

    .line 422
    iput v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fixedHeightRatio:F

    .line 434
    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->originalWindowInsetsEnabled:Z

    .line 435
    iput-boolean v3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->internalDraggable:Z

    .line 454
    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animRunning:Z

    .line 455
    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animInterruptible:Z

    .line 466
    iput v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->horizontalExtraPadding:I

    .line 467
    iput-boolean v3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->extraPaddingEnabled:Z

    .line 2499
    new-instance v0, Lmiuix/animation/controller/AnimState;

    invoke-direct {v0}, Lmiuix/animation/controller/AnimState;-><init>()V

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->releaseStartAnimState:Lmiuix/animation/controller/AnimState;

    .line 2500
    new-instance v0, Lmiuix/animation/controller/AnimState;

    invoke-direct {v0}, Lmiuix/animation/controller/AnimState;-><init>()V

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->releaseEndAnimState:Lmiuix/animation/controller/AnimState;

    .line 2592
    new-instance v0, Lmiuix/bottomsheet/BottomSheetBehavior$6;

    invoke-direct {v0, p0}, Lmiuix/bottomsheet/BottomSheetBehavior$6;-><init>(Lmiuix/bottomsheet/BottomSheetBehavior;)V

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->dragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .line 474
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 264
    iput v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->saveFlags:I

    .line 286
    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    const/4 v1, -0x1

    .line 315
    iput v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->maxWidth:I

    .line 317
    iput v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->maxHeight:I

    .line 329
    iput v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->insetTop:I

    .line 332
    new-instance v2, Lmiuix/bottomsheet/BottomSheetBehavior$StateSettlingTracker;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lmiuix/bottomsheet/BottomSheetBehavior$StateSettlingTracker;-><init>(Lmiuix/bottomsheet/BottomSheetBehavior;Lmiuix/bottomsheet/BottomSheetBehavior$1;)V

    iput-object v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->stateSettlingTracker:Lmiuix/bottomsheet/BottomSheetBehavior$StateSettlingTracker;

    const/high16 v2, 0x3f000000    # 0.5f

    .line 339
    iput v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->halfExpandedRatio:F

    const v3, 0x3f333333    # 0.7f

    .line 340
    iput v3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->halfExpandedRatioWhenFixHeightRatio:F

    const/high16 v4, -0x40800000    # -1.0f

    .line 344
    iput v4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->elevation:F

    const/4 v4, 0x1

    .line 350
    iput-boolean v4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->draggable:Z

    const/4 v5, 0x4

    .line 352
    iput v5, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->state:I

    .line 355
    iput v5, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->lastStableState:I

    const v5, 0x3dcccccd    # 0.1f

    .line 367
    iput v5, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->hideFriction:F

    .line 383
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    .line 391
    iput v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->initialY:I

    .line 398
    new-instance v5, Landroid/util/SparseIntArray;

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v5, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->expandHalfwayActionIds:Landroid/util/SparseIntArray;

    .line 401
    iput v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->modeConfig:I

    .line 404
    iput v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->mode:I

    .line 406
    iput v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->lastMode:I

    .line 412
    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fullHeightMode:Z

    const v1, 0x3f4ccccd    # 0.8f

    .line 414
    iput v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fullHeightHighRatio:F

    .line 415
    iput v3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fullHeightMiddleRatio:F

    const/4 v5, 0x0

    .line 416
    iput v5, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fullHeightLowRatio:F

    .line 417
    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->skipHalfExpanded:Z

    .line 419
    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->forceFullHeight:Z

    .line 420
    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fixedHeightRatioEnabled:Z

    .line 421
    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->internalFixedHeightRatioEnabled:Z

    .line 422
    iput v3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fixedHeightRatio:F

    .line 434
    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->originalWindowInsetsEnabled:Z

    .line 435
    iput-boolean v4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->internalDraggable:Z

    .line 454
    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animRunning:Z

    .line 455
    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animInterruptible:Z

    .line 466
    iput v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->horizontalExtraPadding:I

    .line 467
    iput-boolean v4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->extraPaddingEnabled:Z

    .line 2499
    new-instance v6, Lmiuix/animation/controller/AnimState;

    invoke-direct {v6}, Lmiuix/animation/controller/AnimState;-><init>()V

    iput-object v6, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->releaseStartAnimState:Lmiuix/animation/controller/AnimState;

    .line 2500
    new-instance v6, Lmiuix/animation/controller/AnimState;

    invoke-direct {v6}, Lmiuix/animation/controller/AnimState;-><init>()V

    iput-object v6, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->releaseEndAnimState:Lmiuix/animation/controller/AnimState;

    .line 2592
    new-instance v6, Lmiuix/bottomsheet/BottomSheetBehavior$6;

    invoke-direct {v6, p0}, Lmiuix/bottomsheet/BottomSheetBehavior$6;-><init>(Lmiuix/bottomsheet/BottomSheetBehavior;)V

    iput-object v6, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->dragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 475
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    iput v6, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->density:F

    .line 476
    iput-object p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->attrs:Landroid/util/AttributeSet;

    .line 477
    sget-object v6, Lmiuix/bottomsheet/R$styleable;->MiuixBottomSheetBehavior_Layout:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 478
    sget v7, Lmiuix/bottomsheet/R$styleable;->MiuixBottomSheetBehavior_Layout_miuix_backgroundTint:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 479
    invoke-static {p1, v6, v7}, Lmiuix/bottomsheet/BottomSheetBehavior;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v7

    iput-object v7, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->backgroundTint:Landroid/content/res/ColorStateList;

    .line 482
    :cond_0
    sget v7, Lmiuix/bottomsheet/R$styleable;->MiuixBottomSheetBehavior_Layout_miuix_behavior_hideable:I

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-virtual {p0, v7}, Lmiuix/bottomsheet/BottomSheetBehavior;->setHideable(Z)V

    .line 483
    sget v7, Lmiuix/bottomsheet/R$styleable;->MiuixBottomSheetBehavior_Layout_miuixGestureInsetBottomIgnored:I

    .line 484
    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 483
    invoke-virtual {p0, v7}, Lmiuix/bottomsheet/BottomSheetBehavior;->setGestureInsetBottomIgnored(Z)V

    .line 485
    sget v7, Lmiuix/bottomsheet/R$styleable;->MiuixBottomSheetBehavior_Layout_miuix_behavior_force_full_height:I

    .line 486
    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 485
    invoke-virtual {p0, v7}, Lmiuix/bottomsheet/BottomSheetBehavior;->setForceFullHeight(Z)V

    .line 487
    sget v7, Lmiuix/bottomsheet/R$styleable;->MiuixBottomSheetBehavior_Layout_miuix_behavior_skipCollapsed:I

    .line 488
    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 487
    invoke-virtual {p0, v7}, Lmiuix/bottomsheet/BottomSheetBehavior;->setSkipCollapsed(Z)V

    .line 489
    sget v7, Lmiuix/bottomsheet/R$styleable;->MiuixBottomSheetBehavior_Layout_miuix_behavior_draggable:I

    invoke-virtual {v6, v7, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-virtual {p0, v7}, Lmiuix/bottomsheet/BottomSheetBehavior;->setDraggable(Z)V

    .line 490
    sget v7, Lmiuix/bottomsheet/R$styleable;->MiuixBottomSheetBehavior_Layout_miuix_behavior_saveFlags:I

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lmiuix/bottomsheet/BottomSheetBehavior;->setSaveFlags(I)V

    .line 491
    sget v7, Lmiuix/bottomsheet/R$styleable;->MiuixBottomSheetBehavior_Layout_miuix_behavior_halfExpandedRatio:I

    .line 492
    invoke-virtual {v6, v7, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 491
    invoke-virtual {p0, v2}, Lmiuix/bottomsheet/BottomSheetBehavior;->setHalfExpandedRatio(F)V

    .line 495
    sget v2, Lmiuix/bottomsheet/R$styleable;->MiuixBottomSheetBehavior_Layout_miuix_behavior_significantVelocityThreshold:I

    const/16 v7, 0x3e8

    .line 496
    invoke-virtual {v6, v2, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 495
    invoke-virtual {p0, v2}, Lmiuix/bottomsheet/BottomSheetBehavior;->setSignificantVelocityThreshold(I)V

    .line 499
    sget v2, Lmiuix/bottomsheet/R$styleable;->MiuixBottomSheetBehavior_Layout_miuix_behavior_significantDistanceThreshold:I

    const/high16 v7, 0x42700000    # 60.0f

    invoke-static {p1, v7}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v6, v2, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lmiuix/bottomsheet/BottomSheetBehavior;->setSignificantDistanceThreshold(I)V

    .line 502
    sget v2, Lmiuix/bottomsheet/R$styleable;->MiuixBottomSheetBehavior_Layout_miuixPaddingBottomSystemWindowInsets:I

    .line 503
    invoke-virtual {v6, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->paddingBottomSystemWindowInsets:Z

    .line 504
    sget v2, Lmiuix/bottomsheet/R$styleable;->MiuixBottomSheetBehavior_Layout_miuixPaddingLeftSystemWindowInsets:I

    .line 505
    invoke-virtual {v6, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->paddingLeftSystemWindowInsets:Z

    .line 506
    sget v2, Lmiuix/bottomsheet/R$styleable;->MiuixBottomSheetBehavior_Layout_miuixPaddingRightSystemWindowInsets:I

    .line 507
    invoke-virtual {v6, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->paddingRightSystemWindowInsets:Z

    .line 510
    sget v2, Lmiuix/bottomsheet/R$styleable;->MiuixBottomSheetBehavior_Layout_miuixMarginLeftSystemWindowInsets:I

    .line 511
    invoke-virtual {v6, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->marginLeftSystemWindowInsets:Z

    .line 512
    sget v2, Lmiuix/bottomsheet/R$styleable;->MiuixBottomSheetBehavior_Layout_miuixMarginRightSystemWindowInsets:I

    .line 513
    invoke-virtual {v6, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->marginRightSystemWindowInsets:Z

    .line 514
    sget v2, Lmiuix/bottomsheet/R$styleable;->MiuixBottomSheetBehavior_Layout_modeConfig:I

    invoke-virtual {v6, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->modeConfig:I

    .line 516
    sget v0, Lmiuix/bottomsheet/R$styleable;->MiuixBottomSheetBehavior_Layout_floatingModeHeightRatio:I

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingModeHeightRatio:F

    .line 517
    sget v0, Lmiuix/bottomsheet/R$styleable;->MiuixBottomSheetBehavior_Layout_miuix_behavior_full_height_high_ratio:I

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fullHeightHighRatio:F

    .line 518
    sget v0, Lmiuix/bottomsheet/R$styleable;->MiuixBottomSheetBehavior_Layout_miuix_behavior_full_height_middle_ratio:I

    invoke-virtual {v6, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fullHeightMiddleRatio:F

    .line 519
    sget v0, Lmiuix/bottomsheet/R$styleable;->MiuixBottomSheetBehavior_Layout_miuix_behavior_full_height_low_ratio:I

    invoke-virtual {v6, v0, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fullHeightLowRatio:F

    .line 520
    sget v0, Lmiuix/bottomsheet/R$styleable;->MiuixBottomSheetBehavior_Layout_miuix_behavior_fixed_height_ratio:I

    invoke-virtual {v6, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fixedHeightRatio:F

    .line 521
    iput v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->halfExpandedRatioWhenFixHeightRatio:F

    .line 522
    sget v0, Lmiuix/bottomsheet/R$styleable;->MiuixBottomSheetBehavior_Layout_floatingModeDependsOnWindow:I

    invoke-virtual {v6, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->setFloatingModeDependsOnWindow(Z)V

    .line 523
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 524
    invoke-direct {p0, p1, p2}, Lmiuix/bottomsheet/BottomSheetBehavior;->updateSizeConfig(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 526
    invoke-static {p1}, Lmiuix/os/DeviceHelper;->detectType(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->mDeviceType:I

    .line 527
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 528
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->maximumVelocity:F

    return-void
.end method

.method static synthetic access$100(Lmiuix/bottomsheet/BottomSheetBehavior;)Z
    .locals 0

    .line 113
    iget-boolean p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animRunning:Z

    return p0
.end method

.method static synthetic access$1000(Lmiuix/bottomsheet/BottomSheetBehavior;Landroid/view/View;IZ)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2, p3}, Lmiuix/bottomsheet/BottomSheetBehavior;->startSettling(Landroid/view/View;IZ)V

    return-void
.end method

.method static synthetic access$102(Lmiuix/bottomsheet/BottomSheetBehavior;Z)Z
    .locals 0

    .line 113
    iput-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animRunning:Z

    return p1
.end method

.method static synthetic access$1100(Lmiuix/bottomsheet/BottomSheetBehavior;)Z
    .locals 0

    .line 113
    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->canBeHiddenByDragging()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lmiuix/bottomsheet/BottomSheetBehavior;)I
    .locals 0

    .line 113
    iget p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->peekHeight:I

    return p0
.end method

.method static synthetic access$1500(Lmiuix/bottomsheet/BottomSheetBehavior;)Z
    .locals 0

    .line 113
    iget-boolean p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->skipCollapsed:Z

    return p0
.end method

.method static synthetic access$200(Lmiuix/bottomsheet/BottomSheetBehavior;)Lmiuix/animation/IStateStyle;
    .locals 0

    .line 113
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->bottomExitAnimStateStyle:Lmiuix/animation/IStateStyle;

    return-object p0
.end method

.method static synthetic access$300(Lmiuix/bottomsheet/BottomSheetBehavior;)Z
    .locals 0

    .line 113
    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->shouldBottomExitAnimEnd()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lmiuix/bottomsheet/BottomSheetBehavior;)Lmiuix/animation/IStateStyle;
    .locals 0

    .line 113
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingExitSateStyle:Lmiuix/animation/IStateStyle;

    return-object p0
.end method

.method static synthetic access$500(Lmiuix/bottomsheet/BottomSheetBehavior;)Z
    .locals 0

    .line 113
    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->shouldFloatingExitAnimEnd()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lmiuix/bottomsheet/BottomSheetBehavior;)Lmiuix/bottomsheet/BottomSheetBehavior$ReleaseAnimListener;
    .locals 0

    .line 113
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->releaseAnimListener:Lmiuix/bottomsheet/BottomSheetBehavior$ReleaseAnimListener;

    return-object p0
.end method

.method static synthetic access$700(Lmiuix/bottomsheet/BottomSheetBehavior;)Lmiuix/animation/IStateStyle;
    .locals 0

    .line 113
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->releaseAnimStateStyle:Lmiuix/animation/IStateStyle;

    return-object p0
.end method

.method static synthetic access$800(Lmiuix/bottomsheet/BottomSheetBehavior;)Z
    .locals 0

    .line 113
    iget-boolean p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->draggable:Z

    return p0
.end method

.method static synthetic access$900(Lmiuix/bottomsheet/BottomSheetBehavior;)I
    .locals 0

    .line 113
    iget p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->significantVelocityThreshold:I

    return p0
.end method

.method private addAccessibilityActionForState(Landroid/view/View;II)I
    .locals 1

    .line 3148
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 3149
    invoke-direct {p0, p3}, Lmiuix/bottomsheet/BottomSheetBehavior;->createAccessibilityViewCommandForState(I)Landroidx/core/view/accessibility/AccessibilityViewCommand;

    move-result-object p0

    .line 3146
    invoke-static {p1, p2, p0}, Landroidx/core/view/ViewCompat;->addAccessibilityAction(Landroid/view/View;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)I

    move-result p0

    return p0
.end method

.method private applyWindowInsets(Landroid/view/View;ZZZZZ)V
    .locals 9

    if-eqz p1, :cond_1

    .line 858
    instance-of v0, p1, Lmiuix/view/WindowInsetsController;

    if-eqz v0, :cond_0

    .line 859
    move-object v1, p1

    check-cast v1, Lmiuix/view/WindowInsetsController;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 860
    invoke-interface/range {v1 .. v6}, Lmiuix/view/WindowInsetsController;->applyWindowInsets(ZZZZZ)V

    .line 862
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 863
    check-cast p1, Landroid/view/ViewGroup;

    .line 864
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 866
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v2, p0

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    .line 867
    invoke-direct/range {v2 .. v8}, Lmiuix/bottomsheet/BottomSheetBehavior;->applyWindowInsets(Landroid/view/View;ZZZZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private calculateCollapsedOffset()V
    .locals 2

    .line 2240
    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->calculatePeekHeight()I

    move-result v0

    .line 2241
    iget v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->parentHeight:I

    sub-int/2addr v1, v0

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    return-void
.end method

.method private calculateExpandedOffset(II)I
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    .line 897
    :cond_0
    iget p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->highExpandedOffsetThreshold:I

    if-lt p1, p2, :cond_1

    .line 898
    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->defaultHighExpandedOffset:I

    goto :goto_0

    .line 900
    :cond_1
    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->defaultExpandedOffset:I

    .line 902
    :goto_0
    iget p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->insetTop:I

    if-le p0, p1, :cond_2

    goto :goto_1

    :cond_2
    move p0, p1

    :goto_1
    return p0
.end method

.method private calculateHalfExpandedOffset()V
    .locals 3

    .line 2246
    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->internalFixedHeightRatioEnabled:Z

    if-eqz v0, :cond_0

    .line 2247
    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->halfExpandedRatioWhenFixHeightRatio:F

    goto :goto_0

    .line 2249
    :cond_0
    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->halfExpandedRatio:F

    .line 2251
    :goto_0
    iget v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->parentHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    mul-float/2addr v1, v2

    float-to-int v0, v1

    iput v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    return-void
.end method

.method private calculatePeekHeight()I
    .locals 3

    .line 2227
    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    if-eqz v0, :cond_0

    .line 2228
    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->peekHeightMin:I

    iget v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->parentHeight:I

    iget v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->parentWidth:I

    mul-int/lit8 v2, v2, 0x9

    div-int/lit8 v2, v2, 0x10

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2229
    iget v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->childHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->insetBottom:I

    :goto_0
    add-int/2addr v0, p0

    return v0

    .line 2233
    :cond_0
    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->gestureInsetBottomIgnored:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->paddingBottomSystemWindowInsets:Z

    if-nez v0, :cond_1

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->gestureInsetBottom:I

    if-lez v0, :cond_1

    .line 2234
    iget v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->peekHeight:I

    iget p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->peekHeightGestureInsetBuffer:I

    add-int/2addr v0, p0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 2236
    :cond_1
    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->peekHeight:I

    iget p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->insetBottom:I

    goto :goto_0
.end method

.method private calculateSlideOffsetWithTop(I)F
    .locals 2

    .line 2257
    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    if-gt p1, v0, :cond_1

    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2259
    :cond_0
    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    sub-int p1, v0, p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result p0

    sub-int/2addr v0, p0

    int-to-float p0, v0

    goto :goto_1

    .line 2258
    :cond_1
    :goto_0
    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    sub-int p1, v0, p1

    int-to-float p1, p1

    iget p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->parentHeight:I

    sub-int/2addr p0, v0

    int-to-float p0, p0

    :goto_1
    div-float/2addr p1, p0

    return p1
.end method

.method private canBeHiddenByDragging()Z
    .locals 1

    .line 2815
    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->isHideable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->isHideableWhenDragging()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private clearAccessibilityAction(Landroid/view/View;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x80000

    .line 3127
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    const/high16 v0, 0x40000

    .line 3128
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    const/high16 v0, 0x100000

    .line 3129
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    .line 3131
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->expandHalfwayActionIds:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 3133
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    .line 3134
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->expandHalfwayActionIds:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseIntArray;->delete(I)V

    :cond_1
    return-void
.end method

.method private createAccessibilityViewCommandForState(I)Landroidx/core/view/accessibility/AccessibilityViewCommand;
    .locals 1

    .line 3153
    new-instance v0, Lmiuix/bottomsheet/BottomSheetBehavior$7;

    invoke-direct {v0, p0, p1}, Lmiuix/bottomsheet/BottomSheetBehavior$7;-><init>(Lmiuix/bottomsheet/BottomSheetBehavior;I)V

    return-object v0
.end method

.method private fixStateInFloatingMode(I)I
    .locals 1

    .line 2121
    iget p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->mode:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const/4 p0, 0x6

    if-ne p1, p0, :cond_1

    :cond_0
    const/4 p0, 0x3

    return p0

    :cond_1
    return p1
.end method

.method public static from(Landroid/view/View;)Lmiuix/bottomsheet/BottomSheetBehavior;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(TV;)",
            "Lmiuix/bottomsheet/BottomSheetBehavior<",
            "TV;>;"
        }
    .end annotation

    .line 2978
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 2979
    instance-of v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz v0, :cond_1

    .line 2982
    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 2983
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object p0

    .line 2984
    instance-of v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;

    if-eqz v0, :cond_0

    .line 2987
    check-cast p0, Lmiuix/bottomsheet/BottomSheetBehavior;

    return-object p0

    .line 2985
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The view is not associated with BottomSheetBehavior"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2980
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The view is not a child of CoordinatorLayout"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getChildMeasureSpec(IIII)I
    .locals 0

    .line 911
    invoke-static {p1, p2, p4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    const/4 p1, -0x1

    if-ne p3, p1, :cond_0

    return p0

    .line 915
    :cond_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 916
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    const/high16 p2, 0x40000000    # 2.0f

    if-eq p1, p2, :cond_2

    if-nez p0, :cond_1

    goto :goto_0

    .line 924
    :cond_1
    invoke-static {p0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    :goto_0
    const/high16 p0, -0x80000000

    .line 923
    invoke-static {p3, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    .line 919
    :cond_2
    invoke-static {p0, p3}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private static getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;
    .locals 1

    .line 589
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 590
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    invoke-static {p0, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 608
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method private getFullHeightRatio(I)F
    .locals 1

    .line 875
    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fullHeightLowRatioThreshold:I

    if-gt p1, v0, :cond_0

    .line 876
    iget p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fullHeightLowRatio:F

    return p0

    .line 878
    :cond_0
    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fullHeightMiddleRatioThreshold:I

    if-gt p1, v0, :cond_1

    .line 879
    iget p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fullHeightMiddleRatio:F

    return p0

    .line 881
    :cond_1
    iget p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fullHeightHighRatio:F

    return p0
.end method

.method private getMaxHeight(I)I
    .locals 2

    .line 885
    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->expandedOffset:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 886
    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->insetTop:I

    invoke-direct {p0, p1, v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->calculateExpandedOffset(II)I

    move-result p0

    sub-int/2addr p1, p0

    return p1

    :cond_0
    sub-int/2addr p1, v0

    return p1
.end method

.method private getTopOffsetForState(I)I
    .locals 2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 2583
    iget p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    return p0

    .line 2589
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid state to get top offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2585
    :cond_1
    iget p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->parentHeight:I

    return p0

    .line 2579
    :cond_2
    iget p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    return p0

    .line 2581
    :cond_3
    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result p0

    return p0
.end method

.method private getYVelocity()F
    .locals 3

    .line 2492
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v1, 0x3e8

    .line 2495
    iget v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->maximumVelocity:F

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2496
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    iget p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->activePointerId:I

    invoke-virtual {v0, p0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result p0

    return p0
.end method

.method private isInternalDraggable()Z
    .locals 1

    .line 1895
    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->draggable:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->internalDraggable:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isLayouting(Landroid/view/View;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 2136
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2137
    invoke-interface {p0}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$setState$0(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    .line 2113
    invoke-direct {p0, p1, p2, v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->startSettling(Landroid/view/View;IZ)V

    return-void
.end method

.method private synthetic lambda$setWindowInsetsListener$1(Landroid/view/View;ZLandroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lmiuix/internal/util/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;
    .locals 8

    .line 2349
    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->originalWindowInsetsEnabled:Z

    if-eqz v0, :cond_0

    .line 2350
    invoke-virtual {p3}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p4

    invoke-static {p4}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p4

    .line 2352
    :cond_0
    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->mode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 2354
    iget-boolean p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->paddingBottomSystemWindowInsets:Z

    if-eqz p2, :cond_1

    .line 2355
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result p2

    invoke-virtual {p4, p2}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p2

    iget p2, p2, Landroidx/core/graphics/Insets;->bottom:I

    if-lez p2, :cond_1

    .line 2357
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object p1

    iget-object p1, p1, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->childYInWindow:I

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr p0, v0

    sub-int/2addr p1, p0

    sub-int/2addr p2, p1

    .line 2358
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2361
    :cond_1
    iget p0, p5, Lmiuix/internal/util/ViewUtils$RelativePadding;->start:I

    iget p1, p5, Lmiuix/internal/util/ViewUtils$RelativePadding;->top:I

    iget p2, p5, Lmiuix/internal/util/ViewUtils$RelativePadding;->end:I

    iget p5, p5, Lmiuix/internal/util/ViewUtils$RelativePadding;->bottom:I

    add-int/2addr p5, v2

    invoke-virtual {p3, p0, p1, p2, p5}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-object p4

    .line 2364
    :cond_2
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v3

    or-int/2addr v0, v3

    invoke-virtual {p4, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    .line 2365
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->mandatorySystemGestures()I

    move-result v3

    invoke-virtual {p4, v3}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v3

    .line 2367
    iget v4, v0, Landroidx/core/graphics/Insets;->top:I

    iput v4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->insetTop:I

    .line 2368
    iget v5, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->insetTopInMeasureStep:I

    if-eq v4, v5, :cond_4

    .line 2369
    iget-object v4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->mRequestLayoutRunnable:Lmiuix/bottomsheet/BottomSheetBehavior$RequestLayoutRunnable;

    if-nez v4, :cond_3

    .line 2370
    new-instance v4, Lmiuix/bottomsheet/BottomSheetBehavior$RequestLayoutRunnable;

    invoke-direct {v4, p1}, Lmiuix/bottomsheet/BottomSheetBehavior$RequestLayoutRunnable;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->mRequestLayoutRunnable:Lmiuix/bottomsheet/BottomSheetBehavior$RequestLayoutRunnable;

    .line 2372
    :cond_3
    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->mRequestLayoutRunnable:Lmiuix/bottomsheet/BottomSheetBehavior$RequestLayoutRunnable;

    invoke-virtual {p3, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2373
    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->mRequestLayoutRunnable:Lmiuix/bottomsheet/BottomSheetBehavior$RequestLayoutRunnable;

    iget v4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->insetTop:I

    iput v4, p1, Lmiuix/bottomsheet/BottomSheetBehavior$RequestLayoutRunnable;->mInsetTop:I

    .line 2375
    invoke-virtual {p3, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 2378
    :cond_4
    invoke-static {p3}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p1

    .line 2380
    invoke-virtual {p3}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 2381
    invoke-virtual {p3}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    .line 2382
    invoke-virtual {p3}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    .line 2384
    iget-boolean v7, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->paddingBottomSystemWindowInsets:Z

    if-eqz v7, :cond_5

    .line 2387
    invoke-virtual {p4}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v4

    iput v4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->insetBottom:I

    .line 2388
    iget v7, p5, Lmiuix/internal/util/ViewUtils$RelativePadding;->bottom:I

    add-int/2addr v4, v7

    .line 2391
    :cond_5
    iget-boolean v7, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->paddingLeftSystemWindowInsets:Z

    if-eqz v7, :cond_7

    if-eqz p1, :cond_6

    .line 2392
    iget v5, p5, Lmiuix/internal/util/ViewUtils$RelativePadding;->end:I

    goto :goto_0

    :cond_6
    iget v5, p5, Lmiuix/internal/util/ViewUtils$RelativePadding;->start:I

    .line 2393
    :goto_0
    iget v7, v0, Landroidx/core/graphics/Insets;->left:I

    add-int/2addr v5, v7

    .line 2396
    :cond_7
    iget-boolean v7, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->paddingRightSystemWindowInsets:Z

    if-eqz v7, :cond_9

    if-eqz p1, :cond_8

    .line 2397
    iget p1, p5, Lmiuix/internal/util/ViewUtils$RelativePadding;->start:I

    goto :goto_1

    :cond_8
    iget p1, p5, Lmiuix/internal/util/ViewUtils$RelativePadding;->end:I

    .line 2398
    :goto_1
    iget p5, v0, Landroidx/core/graphics/Insets;->right:I

    add-int v6, p1, p5

    .line 2401
    :cond_9
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2404
    iget-boolean p5, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->marginLeftSystemWindowInsets:Z

    if-eqz p5, :cond_a

    iget p5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v7, v0, Landroidx/core/graphics/Insets;->left:I

    if-eq p5, v7, :cond_a

    .line 2405
    iput v7, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move p5, v1

    goto :goto_2

    :cond_a
    move p5, v2

    .line 2409
    :goto_2
    iget-boolean v7, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->marginRightSystemWindowInsets:Z

    if-eqz v7, :cond_b

    iget v7, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v0, v0, Landroidx/core/graphics/Insets;->right:I

    if-eq v7, v0, :cond_b

    .line 2410
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_3

    :cond_b
    move v1, p5

    :goto_3
    if-eqz v1, :cond_c

    .line 2415
    invoke-virtual {p3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2417
    :cond_c
    invoke-virtual {p3}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    invoke-virtual {p3, v5, p1, v6, v4}, Landroid/view/View;->setPadding(IIII)V

    if-eqz p2, :cond_d

    .line 2420
    iget p1, v3, Landroidx/core/graphics/Insets;->bottom:I

    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->gestureInsetBottom:I

    .line 2425
    :cond_d
    iget-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->paddingBottomSystemWindowInsets:Z

    if-nez p1, :cond_e

    if-eqz p2, :cond_f

    .line 2426
    :cond_e
    invoke-direct {p0, v2}, Lmiuix/bottomsheet/BottomSheetBehavior;->updatePeekHeight(Z)V

    :cond_f
    return-object p4
.end method

.method private replaceAccessibilityActionForState(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;I)V
    .locals 0

    .line 3141
    invoke-direct {p0, p3}, Lmiuix/bottomsheet/BottomSheetBehavior;->createAccessibilityViewCommandForState(I)Landroidx/core/view/accessibility/AccessibilityViewCommand;

    move-result-object p0

    const/4 p3, 0x0

    .line 3140
    invoke-static {p1, p2, p3, p0}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, -0x1

    .line 2263
    iput v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->activePointerId:I

    .line 2264
    iput v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->initialY:I

    .line 2265
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2266
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 2267
    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private restoreOptionalState(Lmiuix/bottomsheet/BottomSheetBehavior$SavedState;)V
    .locals 4

    .line 2272
    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->saveFlags:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 2276
    :cond_1
    iget v2, p1, Lmiuix/bottomsheet/BottomSheetBehavior$SavedState;->peekHeight:I

    iput v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->peekHeight:I

    :cond_2
    if-eq v0, v1, :cond_3

    and-int/lit8 v2, v0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 2279
    :cond_3
    iget-boolean v2, p1, Lmiuix/bottomsheet/BottomSheetBehavior$SavedState;->hideable:Z

    iput-boolean v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->hideable:Z

    :cond_4
    if-eq v0, v1, :cond_5

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    .line 2283
    :cond_5
    iget-boolean p1, p1, Lmiuix/bottomsheet/BottomSheetBehavior$SavedState;->skipCollapsed:Z

    iput-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->skipCollapsed:Z

    :cond_6
    return-void
.end method

.method private runAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 2128
    invoke-direct {p0, p1}, Lmiuix/bottomsheet/BottomSheetBehavior;->isLayouting(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2129
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2131
    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private setInternalDraggable(Z)V
    .locals 0

    .line 1891
    iput-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->internalDraggable:Z

    return-void
.end method

.method private setWindowInsetsListener(Landroid/view/View;)V
    .locals 2

    .line 2335
    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->isGestureInsetBottomIgnored()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2338
    :goto_0
    iget-boolean v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->paddingBottomSystemWindowInsets:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->paddingLeftSystemWindowInsets:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->paddingRightSystemWindowInsets:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->marginLeftSystemWindowInsets:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->marginRightSystemWindowInsets:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    return-void

    .line 2346
    :cond_1
    new-instance v1, Lmiuix/bottomsheet/BottomSheetBehavior$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, v0}, Lmiuix/bottomsheet/BottomSheetBehavior$$ExternalSyntheticLambda1;-><init>(Lmiuix/bottomsheet/BottomSheetBehavior;Landroid/view/View;Z)V

    invoke-static {p1, v1}, Lmiuix/internal/util/ViewUtils;->doOnApplyWindowInsets(Landroid/view/View;Lmiuix/internal/util/ViewUtils$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private shouldBottomExitAnimEnd()Z
    .locals 3

    .line 2565
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->parentViewRef:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_0

    goto :goto_0

    .line 2568
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2569
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    .line 2571
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v2, p0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/lit8 p0, p0, -0xa

    int-to-float p0, p0

    cmpl-float p0, v2, p0

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private shouldFloatingExitAnimEnd()Z
    .locals 3

    .line 1602
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1603
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1605
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    add-float/2addr v2, v0

    iget p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->parentHeight:I

    add-int/lit8 p0, p0, -0xa

    int-to-float p0, p0

    cmpl-float p0, v2, p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private shouldHandleDraggingWithHelper()Z
    .locals 2

    .line 2327
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->isInternalDraggable()Z

    move-result v0

    if-nez v0, :cond_1

    iget p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->state:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private startBottomEnterAnim(Lmiuix/bottomsheet/BottomSheetBehavior$AnimationListener;Landroid/view/View;Landroid/view/View;Z)V
    .locals 7

    .line 1363
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->bottomEnterAnimConfig:Lmiuix/animation/base/AnimConfig;

    if-nez v0, :cond_0

    .line 1364
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->bottomEnterAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 1366
    :cond_0
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->bottomEnterAnimTransitionListener:Lmiuix/animation/listener/TransitionListener;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1367
    iget-object v3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->bottomEnterAnimConfig:Lmiuix/animation/base/AnimConfig;

    new-array v4, v2, [Lmiuix/animation/listener/TransitionListener;

    aput-object v0, v4, v1

    invoke-virtual {v3, v4}, Lmiuix/animation/base/AnimConfig;->removeListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 1369
    :cond_1
    new-instance v0, Lmiuix/bottomsheet/BottomSheetBehavior$1;

    invoke-direct {v0, p0, p2, p1}, Lmiuix/bottomsheet/BottomSheetBehavior$1;-><init>(Lmiuix/bottomsheet/BottomSheetBehavior;Landroid/view/View;Lmiuix/bottomsheet/BottomSheetBehavior$AnimationListener;)V

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->bottomEnterAnimTransitionListener:Lmiuix/animation/listener/TransitionListener;

    .line 1384
    iget-object v3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->bottomEnterAnimConfig:Lmiuix/animation/base/AnimConfig;

    new-array v4, v2, [Lmiuix/animation/listener/TransitionListener;

    aput-object v0, v4, v1

    invoke-virtual {v3, v4}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    const/4 v0, 0x0

    .line 1386
    invoke-virtual {p3, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1387
    new-instance v3, Lmiuix/animation/controller/AnimState;

    invoke-direct {v3}, Lmiuix/animation/controller/AnimState;-><init>()V

    sget-object v4, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v3

    if-eqz p4, :cond_2

    .line 1389
    iput-boolean v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animRunning:Z

    .line 1390
    invoke-interface {p1}, Lmiuix/bottomsheet/BottomSheetBehavior$AnimationListener;->onAnimationStart()V

    .line 1391
    invoke-virtual {p3, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1392
    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1393
    invoke-interface {p1}, Lmiuix/bottomsheet/BottomSheetBehavior$AnimationListener;->onAnimationEnd()V

    .line 1394
    iput-boolean v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animRunning:Z

    goto :goto_0

    .line 1396
    :cond_2
    iget-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animInterruptible:Z

    if-eqz p1, :cond_4

    .line 1397
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_3

    .line 1398
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    new-array p1, v2, [Landroid/view/View;

    aput-object p2, p1, v1

    .line 1400
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array p2, v2, [Lmiuix/animation/base/AnimConfig;

    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->bottomEnterAnimConfig:Lmiuix/animation/base/AnimConfig;

    aput-object p0, p2, v1

    invoke-interface {p1, v3, p2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    :cond_4
    new-array p1, v2, [Landroid/view/View;

    aput-object p2, p1, v1

    .line 1402
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    aput-object v4, p3, v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v2

    invoke-interface {p1, p3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array p2, v2, [Lmiuix/animation/base/AnimConfig;

    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->bottomEnterAnimConfig:Lmiuix/animation/base/AnimConfig;

    aput-object p0, p2, v1

    invoke-interface {p1, v3, p2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :goto_0
    return-void
.end method

.method private startBottomExitAnimation(Lmiuix/bottomsheet/BottomSheetBehavior$AnimationListener;Landroid/view/View;Landroid/view/View;Z)V
    .locals 5

    .line 1503
    iget-object p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->bottomExitAnimConfig:Lmiuix/animation/base/AnimConfig;

    if-nez p3, :cond_0

    .line 1504
    new-instance p3, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    iput-object p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->bottomExitAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 1506
    :cond_0
    iget-object p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->bottomExitAnimTransitionListener:Lmiuix/animation/listener/TransitionListener;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 1507
    iget-object v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->bottomExitAnimConfig:Lmiuix/animation/base/AnimConfig;

    new-array v3, v0, [Lmiuix/animation/listener/TransitionListener;

    aput-object p3, v3, v1

    invoke-virtual {v2, v3}, Lmiuix/animation/base/AnimConfig;->removeListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 1509
    :cond_1
    new-instance p3, Lmiuix/bottomsheet/BottomSheetBehavior$3;

    invoke-direct {p3, p0, p2, p1}, Lmiuix/bottomsheet/BottomSheetBehavior$3;-><init>(Lmiuix/bottomsheet/BottomSheetBehavior;Landroid/view/View;Lmiuix/bottomsheet/BottomSheetBehavior$AnimationListener;)V

    iput-object p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->bottomExitAnimTransitionListener:Lmiuix/animation/listener/TransitionListener;

    .line 1531
    iget-object v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->bottomExitAnimConfig:Lmiuix/animation/base/AnimConfig;

    new-array v3, v0, [Lmiuix/animation/listener/TransitionListener;

    aput-object p3, v3, v1

    invoke-virtual {v2, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 1532
    new-instance p3, Lmiuix/animation/controller/AnimState;

    invoke-direct {p3}, Lmiuix/animation/controller/AnimState;-><init>()V

    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {p3, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p3

    if-eqz p4, :cond_2

    .line 1534
    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animRunning:Z

    .line 1535
    invoke-interface {p1}, Lmiuix/bottomsheet/BottomSheetBehavior$AnimationListener;->onAnimationStart()V

    .line 1536
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 1537
    invoke-interface {p1}, Lmiuix/bottomsheet/BottomSheetBehavior$AnimationListener;->onAnimationEnd()V

    .line 1538
    iput-boolean v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animRunning:Z

    goto :goto_0

    .line 1540
    :cond_2
    iget-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animInterruptible:Z

    if-eqz p1, :cond_3

    new-array p1, v0, [Landroid/view/View;

    aput-object p2, p1, v1

    .line 1541
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->bottomExitAnimStateStyle:Lmiuix/animation/IStateStyle;

    new-array p2, v0, [Lmiuix/animation/base/AnimConfig;

    .line 1542
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->bottomExitAnimConfig:Lmiuix/animation/base/AnimConfig;

    aput-object p0, p2, v1

    invoke-interface {p1, p3, p2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    :cond_3
    new-array p1, v0, [Landroid/view/View;

    aput-object p2, p1, v1

    .line 1544
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->bottomExitAnimStateStyle:Lmiuix/animation/IStateStyle;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v2, p2, v1

    .line 1545
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, v0

    invoke-interface {p1, p2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array p2, v0, [Lmiuix/animation/base/AnimConfig;

    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->bottomExitAnimConfig:Lmiuix/animation/base/AnimConfig;

    aput-object p0, p2, v1

    .line 1546
    invoke-interface {p1, p3, p2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :goto_0
    return-void
.end method

.method private startFloatingEnterAnim(Lmiuix/bottomsheet/BottomSheetBehavior$AnimationListener;Landroid/view/View;Landroid/view/View;Z)V
    .locals 8

    .line 1408
    invoke-direct {p0, p3}, Lmiuix/bottomsheet/BottomSheetBehavior;->updateChildY(Landroid/view/View;)V

    .line 1409
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingEnterAnimConfig:Lmiuix/animation/base/AnimConfig;

    if-nez v0, :cond_0

    .line 1410
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const v1, 0x3f6147ae    # 0.88f

    const v2, 0x3ec28f5c    # 0.38f

    invoke-static {v1, v2}, Lmiuix/animation/FolmeEase;->spring(FF)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingEnterAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 1412
    :cond_0
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingEnterAnimTransitionListener:Lmiuix/animation/listener/TransitionListener;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1413
    iget-object v3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingEnterAnimConfig:Lmiuix/animation/base/AnimConfig;

    new-array v4, v2, [Lmiuix/animation/listener/TransitionListener;

    aput-object v0, v4, v1

    invoke-virtual {v3, v4}, Lmiuix/animation/base/AnimConfig;->removeListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 1415
    :cond_1
    new-instance v0, Lmiuix/bottomsheet/BottomSheetBehavior$2;

    invoke-direct {v0, p0, p2, p1}, Lmiuix/bottomsheet/BottomSheetBehavior$2;-><init>(Lmiuix/bottomsheet/BottomSheetBehavior;Landroid/view/View;Lmiuix/bottomsheet/BottomSheetBehavior$AnimationListener;)V

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingEnterAnimTransitionListener:Lmiuix/animation/listener/TransitionListener;

    .line 1430
    iget-object v3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingEnterAnimConfig:Lmiuix/animation/base/AnimConfig;

    new-array v4, v2, [Lmiuix/animation/listener/TransitionListener;

    aput-object v0, v4, v1

    invoke-virtual {v3, v4}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 1431
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr v0, v4

    float-to-int v0, v0

    const/4 v3, 0x0

    .line 1433
    invoke-virtual {p2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 1434
    new-instance v4, Lmiuix/animation/controller/AnimState;

    invoke-direct {v4}, Lmiuix/animation/controller/AnimState;-><init>()V

    sget-object v5, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v4

    if-eqz p4, :cond_2

    .line 1436
    iput-boolean v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animRunning:Z

    .line 1437
    invoke-interface {p1}, Lmiuix/bottomsheet/BottomSheetBehavior$AnimationListener;->onAnimationStart()V

    .line 1438
    invoke-virtual {p3, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 1439
    invoke-virtual {p2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 1440
    invoke-interface {p1}, Lmiuix/bottomsheet/BottomSheetBehavior$AnimationListener;->onAnimationEnd()V

    .line 1441
    iput-boolean v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animRunning:Z

    goto :goto_0

    .line 1443
    :cond_2
    iget-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animInterruptible:Z

    if-eqz p1, :cond_4

    .line 1444
    invoke-virtual {p3}, Landroid/view/View;->getTranslationY()F

    move-result p1

    cmpl-float p1, p1, v3

    if-nez p1, :cond_3

    int-to-float p1, v0

    .line 1445
    invoke-virtual {p3, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    new-array p1, v2, [Landroid/view/View;

    aput-object p3, p1, v1

    .line 1447
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array p2, v2, [Lmiuix/animation/base/AnimConfig;

    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingEnterAnimConfig:Lmiuix/animation/base/AnimConfig;

    aput-object p0, p2, v1

    .line 1448
    invoke-interface {p1, v4, p2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    :cond_4
    new-array p1, v2, [Landroid/view/View;

    aput-object p3, p1, v1

    .line 1450
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v5, p2, v1

    .line 1451
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v2

    invoke-interface {p1, p2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array p2, v2, [Lmiuix/animation/base/AnimConfig;

    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingEnterAnimConfig:Lmiuix/animation/base/AnimConfig;

    aput-object p0, p2, v1

    .line 1452
    invoke-interface {p1, v4, p2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :goto_0
    return-void
.end method

.method private startFloatingExitAnim(Lmiuix/bottomsheet/BottomSheetBehavior$AnimationListener;Landroid/view/View;Landroid/view/View;Z)V
    .locals 6

    .line 1552
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingExitAnimConfig:Lmiuix/animation/base/AnimConfig;

    if-nez v0, :cond_0

    .line 1553
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const v1, 0x3f733333    # 0.95f

    const v2, 0x3e99999a    # 0.3f

    invoke-static {v1, v2}, Lmiuix/animation/FolmeEase;->spring(FF)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingExitAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 1555
    :cond_0
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingExitAnimTransitionListener:Lmiuix/animation/listener/TransitionListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1556
    iget-object v3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingExitAnimConfig:Lmiuix/animation/base/AnimConfig;

    new-array v4, v1, [Lmiuix/animation/listener/TransitionListener;

    aput-object v0, v4, v2

    invoke-virtual {v3, v4}, Lmiuix/animation/base/AnimConfig;->removeListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 1558
    :cond_1
    new-instance v0, Lmiuix/bottomsheet/BottomSheetBehavior$4;

    invoke-direct {v0, p0, p2, p1}, Lmiuix/bottomsheet/BottomSheetBehavior$4;-><init>(Lmiuix/bottomsheet/BottomSheetBehavior;Landroid/view/View;Lmiuix/bottomsheet/BottomSheetBehavior$AnimationListener;)V

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingExitAnimTransitionListener:Lmiuix/animation/listener/TransitionListener;

    .line 1580
    iget-object v3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingExitAnimConfig:Lmiuix/animation/base/AnimConfig;

    new-array v4, v1, [Lmiuix/animation/listener/TransitionListener;

    aput-object v0, v4, v2

    invoke-virtual {v3, v4}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 1581
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    add-float/2addr p2, v3

    float-to-int p2, p2

    .line 1582
    new-instance v0, Lmiuix/animation/controller/AnimState;

    invoke-direct {v0}, Lmiuix/animation/controller/AnimState;-><init>()V

    sget-object v3, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    int-to-double v4, p2

    invoke-virtual {v0, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    if-eqz p4, :cond_2

    .line 1584
    iput-boolean v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animRunning:Z

    .line 1585
    invoke-interface {p1}, Lmiuix/bottomsheet/BottomSheetBehavior$AnimationListener;->onAnimationStart()V

    int-to-float p2, p2

    .line 1586
    invoke-virtual {p3, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 1587
    invoke-interface {p1}, Lmiuix/bottomsheet/BottomSheetBehavior$AnimationListener;->onAnimationEnd()V

    .line 1588
    iput-boolean v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animRunning:Z

    goto :goto_0

    .line 1590
    :cond_2
    iget-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animInterruptible:Z

    if-eqz p1, :cond_3

    new-array p1, v1, [Landroid/view/View;

    aput-object p3, p1, v2

    .line 1591
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingExitSateStyle:Lmiuix/animation/IStateStyle;

    new-array p2, v1, [Lmiuix/animation/base/AnimConfig;

    .line 1592
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingExitAnimConfig:Lmiuix/animation/base/AnimConfig;

    aput-object p0, p2, v2

    invoke-interface {p1, v0, p2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    :cond_3
    new-array p1, v1, [Landroid/view/View;

    aput-object p3, p1, v2

    .line 1594
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingExitSateStyle:Lmiuix/animation/IStateStyle;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v3, p2, v2

    .line 1595
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v1

    invoke-interface {p1, p2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array p2, v1, [Lmiuix/animation/base/AnimConfig;

    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingExitAnimConfig:Lmiuix/animation/base/AnimConfig;

    aput-object p0, p2, v2

    .line 1596
    invoke-interface {p1, v0, p2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :goto_0
    return-void
.end method

.method private startSettling(Landroid/view/View;IZ)V
    .locals 4

    .line 2507
    invoke-direct {p0, p2}, Lmiuix/bottomsheet/BottomSheetBehavior;->getTopOffsetForState(I)I

    move-result p3

    .line 2508
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->releaseStartAnimState:Lmiuix/animation/controller/AnimState;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    const-string v2, "folme_key"

    invoke-virtual {v0, v2, v1}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/String;I)Lmiuix/animation/controller/AnimState;

    .line 2509
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->releaseEndAnimState:Lmiuix/animation/controller/AnimState;

    invoke-virtual {v0, v2, p3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/String;I)Lmiuix/animation/controller/AnimState;

    .line 2510
    iget-object p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    if-eqz p3, :cond_3

    const/4 p3, 0x2

    .line 2512
    invoke-virtual {p0, p3}, Lmiuix/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    .line 2513
    iget-object p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->releaseAnimConfig:Lmiuix/animation/base/AnimConfig;

    if-nez p3, :cond_1

    .line 2514
    new-instance p3, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    iput-object p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->releaseAnimConfig:Lmiuix/animation/base/AnimConfig;

    const v2, 0x3f59999a    # 0.85f

    const v3, 0x3ecccccd    # 0.4f

    .line 2515
    invoke-static {v2, v3}, Lmiuix/animation/FolmeEase;->spring(FF)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v2

    invoke-virtual {p3, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 2517
    :cond_1
    iget-object p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->releaseAnimTransitionListener:Lmiuix/animation/listener/TransitionListener;

    if-eqz p3, :cond_2

    .line 2518
    iget-object v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->releaseAnimConfig:Lmiuix/animation/base/AnimConfig;

    new-array v3, v0, [Lmiuix/animation/listener/TransitionListener;

    aput-object p3, v3, v1

    invoke-virtual {v2, v3}, Lmiuix/animation/base/AnimConfig;->removeListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 2520
    :cond_2
    new-instance p3, Lmiuix/bottomsheet/BottomSheetBehavior$5;

    invoke-direct {p3, p0, p2, p1}, Lmiuix/bottomsheet/BottomSheetBehavior$5;-><init>(Lmiuix/bottomsheet/BottomSheetBehavior;ILandroid/view/View;)V

    iput-object p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->releaseAnimTransitionListener:Lmiuix/animation/listener/TransitionListener;

    .line 2552
    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->releaseAnimConfig:Lmiuix/animation/base/AnimConfig;

    new-array p2, v0, [Lmiuix/animation/listener/TransitionListener;

    aput-object p3, p2, v1

    invoke-virtual {p1, p2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    const p1, 0x461c4000    # 10000.0f

    const p2, -0x39e3c000    # -10000.0f

    .line 2553
    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->getYVelocity()F

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 2554
    iget-object p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->releaseAnimConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p2, p1}, Lmiuix/animation/base/AnimConfig;->setFromSpeed(F)Lmiuix/animation/base/AnimConfig;

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "bottom_sheet_release"

    aput-object p2, p1, v1

    .line 2555
    invoke-static {p1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->releaseAnimStateStyle:Lmiuix/animation/IStateStyle;

    if-eqz p1, :cond_4

    const-wide/16 p2, 0x1

    .line 2557
    invoke-interface {p1, p2, p3}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object p1

    iget-object p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->releaseStartAnimState:Lmiuix/animation/controller/AnimState;

    invoke-interface {p1, p2}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    iget-object p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->releaseEndAnimState:Lmiuix/animation/controller/AnimState;

    new-array p3, v0, [Lmiuix/animation/base/AnimConfig;

    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->releaseAnimConfig:Lmiuix/animation/base/AnimConfig;

    aput-object p0, p3, v1

    invoke-interface {p1, p2, p3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_1

    .line 2560
    :cond_3
    invoke-virtual {p0, p2}, Lmiuix/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method private supportFloatingMode(FII)Z
    .locals 2

    .line 849
    iget p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->mDeviceType:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    int-to-float p0, p2

    .line 852
    invoke-static {p1, p0}, Lmiuix/core/util/MiuixUIUtils;->px2dp(FF)I

    move-result p0

    const/16 p2, 0x29e

    if-le p0, p2, :cond_1

    int-to-float p0, p3

    .line 853
    invoke-static {p1, p0}, Lmiuix/core/util/MiuixUIUtils;->px2dp(FF)I

    move-result p0

    const/16 p1, 0x294

    if-le p0, p1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method private supportFloatingMode(Landroid/content/Context;)Z
    .locals 4

    .line 819
    instance-of v0, p1, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 820
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    .line 821
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lmiuix/core/util/IntentUtils;->isIntentFromSettingsSplit(Landroid/content/Intent;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 824
    instance-of v2, p1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_1

    .line 825
    move-object v2, p1

    check-cast v2, Landroid/content/ContextWrapper;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .line 826
    instance-of v3, v2, Landroid/app/Activity;

    if-eqz v3, :cond_1

    .line 827
    check-cast v2, Landroid/app/Activity;

    .line 828
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lmiuix/core/util/IntentUtils;->isIntentFromSettingsSplit(Landroid/content/Intent;)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    return v1

    .line 836
    :cond_2
    iget p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->mDeviceType:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_5

    const/4 v0, 0x5

    if-ne p0, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    if-ne p0, v0, :cond_4

    .line 841
    invoke-static {p1}, Lmiuix/bottomsheet/BottomSheetBehavior$PadFloatingHelper;->isFloatingModeSupport(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_4
    return v1

    .line 837
    :cond_5
    :goto_1
    invoke-static {p1}, Lmiuix/bottomsheet/BottomSheetBehavior$FoldFloatingHelper;->isFloatingModeSupport(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private supportFloatingMode(ZLandroid/content/Context;FII)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 812
    invoke-direct {p0, p2}, Lmiuix/bottomsheet/BottomSheetBehavior;->supportFloatingMode(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 814
    :cond_0
    invoke-direct {p0, p3, p4, p5}, Lmiuix/bottomsheet/BottomSheetBehavior;->supportFloatingMode(FII)Z

    move-result p0

    return p0
.end method

.method private updateAccessibilityActions()V
    .locals 2

    .line 3069
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 3070
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lmiuix/bottomsheet/BottomSheetBehavior;->updateAccessibilityActions(Landroid/view/View;I)V

    .line 3072
    :cond_0
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->accessibilityDelegateViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 3074
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    .line 3073
    invoke-direct {p0, v0, v1}, Lmiuix/bottomsheet/BottomSheetBehavior;->updateAccessibilityActions(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method private updateAccessibilityActions(Landroid/view/View;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 3082
    :cond_0
    invoke-direct {p0, p1, p2}, Lmiuix/bottomsheet/BottomSheetBehavior;->clearAccessibilityAction(Landroid/view/View;I)V

    .line 3084
    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->shouldSkipHalfExpanded()Z

    move-result v0

    const/4 v1, 0x6

    if-nez v0, :cond_1

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->state:I

    if-eq v0, v1, :cond_1

    .line 3085
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->expandHalfwayActionIds:Landroid/util/SparseIntArray;

    sget v2, Lmiuix/bottomsheet/R$string;->bottomsheet_action_expand_halfway:I

    .line 3087
    invoke-direct {p0, p1, v2, v1}, Lmiuix/bottomsheet/BottomSheetBehavior;->addAccessibilityActionForState(Landroid/view/View;II)I

    move-result v2

    .line 3085
    invoke-virtual {v0, p2, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3091
    :cond_1
    iget-boolean p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->isHideableWhenDragging()Z

    move-result p2

    if-eqz p2, :cond_2

    iget p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v0, 0x5

    if-eq p2, v0, :cond_2

    .line 3092
    sget-object p2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_DISMISS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {p0, p1, p2, v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->replaceAccessibilityActionForState(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;I)V

    .line 3096
    :cond_2
    iget p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v0, 0x4

    const/4 v2, 0x3

    if-eq p2, v2, :cond_6

    if-eq p2, v0, :cond_4

    if-eq p2, v1, :cond_3

    goto :goto_0

    .line 3104
    :cond_3
    sget-object p2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_COLLAPSE:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {p0, p1, p2, v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->replaceAccessibilityActionForState(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;I)V

    .line 3106
    sget-object p2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_EXPAND:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {p0, p1, p2, v2}, Lmiuix/bottomsheet/BottomSheetBehavior;->replaceAccessibilityActionForState(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;I)V

    goto :goto_0

    .line 3111
    :cond_4
    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->shouldSkipHalfExpanded()Z

    move-result p2

    if-eqz p2, :cond_5

    move v1, v2

    .line 3112
    :cond_5
    sget-object p2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_EXPAND:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {p0, p1, p2, v1}, Lmiuix/bottomsheet/BottomSheetBehavior;->replaceAccessibilityActionForState(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;I)V

    goto :goto_0

    .line 3098
    :cond_6
    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->shouldSkipHalfExpanded()Z

    move-result p2

    if-eqz p2, :cond_7

    move v1, v0

    .line 3099
    :cond_7
    sget-object p2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_COLLAPSE:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {p0, p1, p2, v1}, Lmiuix/bottomsheet/BottomSheetBehavior;->replaceAccessibilityActionForState(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;I)V

    :goto_0
    return-void
.end method

.method private updateChildY(Landroid/view/View;)V
    .locals 2

    .line 1458
    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingModeDependsOnWindow:Z

    if-eqz v0, :cond_0

    .line 1459
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->childYInWindow:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1462
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x1

    aget v0, v0, v1

    .line 1463
    iput v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->childYInWindow:I

    .line 1465
    :goto_0
    iget p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->childYInWindow:I

    if-gtz p0, :cond_1

    .line 1466
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "==\u300bchildYInWindow <= 0 ! It\'s probably a bad time to get the location."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BottomSheetBehavior"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private updateImportantForAccessibility(Z)V
    .locals 6

    .line 3003
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    .line 3007
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3008
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-nez v1, :cond_1

    return-void

    .line 3012
    :cond_1
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 3013
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-eqz p1, :cond_3

    .line 3015
    iget-object v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    if-nez v2, :cond_2

    .line 3016
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_7

    .line 3024
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3025
    iget-object v4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_4

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_5

    .line 3032
    iget-object v4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3034
    iget-boolean v4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    if-eqz v4, :cond_6

    const/4 v4, 0x4

    .line 3035
    invoke-static {v3, v4}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_2

    .line 3039
    :cond_5
    iget-boolean v4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    if-eqz v4, :cond_6

    .line 3041
    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3043
    iget-object v4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    if-nez p1, :cond_8

    const/4 p1, 0x0

    .line 3049
    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    goto :goto_3

    .line 3050
    :cond_8
    iget-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    if-eqz p1, :cond_9

    .line 3053
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_9
    :goto_3
    return-void
.end method

.method private updatePeekHeight(Z)V
    .locals 2

    .line 1725
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 1726
    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->calculateCollapsedOffset()V

    .line 1727
    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1728
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1731
    invoke-virtual {p0, v1}, Lmiuix/bottomsheet/BottomSheetBehavior;->setState(I)V

    goto :goto_0

    .line 1733
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateSizeConfig(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 535
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 536
    sget v1, Lmiuix/bottomsheet/R$dimen;->miuix_min_touch_target_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->peekHeightGestureInsetBuffer:I

    .line 537
    sget v1, Lmiuix/bottomsheet/R$dimen;->miuix_bottom_sheet_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->minHeight:I

    .line 538
    sget v1, Lmiuix/bottomsheet/R$dimen;->miuix_bottom_sheet_default_expanded_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->defaultExpandedOffset:I

    .line 539
    sget v1, Lmiuix/bottomsheet/R$dimen;->miuix_bottom_sheet_default_high_expanded_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->defaultHighExpandedOffset:I

    .line 540
    sget v1, Lmiuix/bottomsheet/R$dimen;->miuix_bottom_sheet_high_expanded_offset_threshold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->highExpandedOffsetThreshold:I

    .line 541
    sget v1, Lmiuix/bottomsheet/R$dimen;->miuix_bottom_sheet_full_height_low_ratio_threshold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fullHeightLowRatioThreshold:I

    .line 542
    sget v1, Lmiuix/bottomsheet/R$dimen;->miuix_bottom_sheet_full_height_middle_ratio_threshold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fullHeightMiddleRatioThreshold:I

    .line 543
    sget v1, Lmiuix/bottomsheet/R$dimen;->miuix_bottom_sheet_extra_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->extraHeight:I

    if-nez p2, :cond_1

    return-void

    .line 547
    :cond_1
    sget-object v1, Lmiuix/bottomsheet/R$styleable;->MiuixBottomSheetBehavior_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 549
    sget v1, Lmiuix/bottomsheet/R$styleable;->MiuixBottomSheetBehavior_Layout_android_elevation:I

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->elevation:F

    .line 551
    sget v1, Lmiuix/bottomsheet/R$styleable;->MiuixBottomSheetBehavior_Layout_android_maxWidth:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    .line 553
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 552
    invoke-virtual {p0, v1}, Lmiuix/bottomsheet/BottomSheetBehavior;->setMaxWidth(I)V

    .line 557
    :cond_2
    sget v1, Lmiuix/bottomsheet/R$styleable;->MiuixBottomSheetBehavior_Layout_android_maxHeight:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 559
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 558
    invoke-virtual {p0, v1}, Lmiuix/bottomsheet/BottomSheetBehavior;->setMaxHeight(I)V

    .line 563
    :cond_3
    sget v1, Lmiuix/bottomsheet/R$styleable;->MiuixBottomSheetBehavior_Layout_miuix_behavior_peekHeight:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 564
    iget v2, v2, Landroid/util/TypedValue;->data:I

    if-ne v2, v3, :cond_4

    .line 565
    invoke-virtual {p0, v2}, Lmiuix/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    goto :goto_0

    .line 568
    :cond_4
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 567
    invoke-virtual {p0, v1}, Lmiuix/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    .line 571
    :goto_0
    sget v1, Lmiuix/bottomsheet/R$styleable;->MiuixBottomSheetBehavior_Layout_miuix_behavior_expandedOffset:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 572
    iget v4, v2, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x10

    if-ne v4, v5, :cond_5

    .line 573
    iget v1, v2, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, v1}, Lmiuix/bottomsheet/BottomSheetBehavior;->setExpandedOffset(I)V

    goto :goto_1

    .line 576
    :cond_5
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 575
    invoke-virtual {p0, v1}, Lmiuix/bottomsheet/BottomSheetBehavior;->setExpandedOffset(I)V

    .line 580
    :goto_1
    sget v1, Lmiuix/bottomsheet/R$styleable;->MiuixBottomSheetBehavior_Layout_floatingModeWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiuix/bottomsheet/R$dimen;->miuix_bottom_sheet_floating_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingModeWidth:I

    .line 581
    sget v1, Lmiuix/bottomsheet/R$styleable;->MiuixBottomSheetBehavior_Layout_floatingModeHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lmiuix/bottomsheet/R$dimen;->miuix_bottom_sheet_floating_height:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingModeHeight:I

    .line 582
    sget p1, Lmiuix/bottomsheet/R$styleable;->MiuixBottomSheetBehavior_Layout_bottomModeMaxWidth:I

    sget v1, Lmiuix/bottomsheet/R$dimen;->miuix_bottom_sheet_default_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/bottomsheet/BottomSheetBehavior;->setBottomModeMaxWidth(I)V

    .line 583
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public addBottomSheetCallback(Lmiuix/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V
    .locals 1

    .line 2063
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2064
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method dispatchOnSlide(I)V
    .locals 3

    .line 2757
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2758
    iget-object v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2759
    invoke-direct {p0, p1}, Lmiuix/bottomsheet/BottomSheetBehavior;->calculateSlideOffsetWithTop(I)F

    move-result p1

    const/4 v1, 0x0

    .line 2760
    :goto_0
    iget-object v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2761
    iget-object v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v2, v0, p1}, Lmiuix/bottomsheet/BottomSheetBehavior$BottomSheetCallback;->onSlide(Landroid/view/View;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method findScrollingChild(Landroid/view/View;)Landroid/view/View;
    .locals 4

    .line 2306
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2309
    :cond_0
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 2312
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 2313
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 2314
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_3

    .line 2315
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmiuix/bottomsheet/BottomSheetBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public getExpandedOffset()I
    .locals 0

    .line 1800
    iget p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    return p0
.end method

.method public getSkipCollapsed()Z
    .locals 0

    .line 1875
    iget-boolean p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->skipCollapsed:Z

    return p0
.end method

.method public getState()I
    .locals 0

    .line 2168
    iget p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->state:I

    return p0
.end method

.method isAnimationInterruptible()Z
    .locals 0

    .line 1968
    iget-boolean p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animInterruptible:Z

    return p0
.end method

.method public isDraggable()Z
    .locals 0

    .line 1899
    iget-boolean p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->draggable:Z

    return p0
.end method

.method public isGestureInsetBottomIgnored()Z
    .locals 0

    .line 2157
    iget-boolean p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->gestureInsetBottomIgnored:Z

    return p0
.end method

.method public isHideable()Z
    .locals 0

    .line 1851
    iget-boolean p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->hideable:Z

    return p0
.end method

.method public isHideableWhenDragging()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isNestedScrollingCheckEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V
    .locals 0

    .line 636
    invoke-super {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V

    const/4 p1, 0x0

    .line 639
    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 640
    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 641
    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->parentViewRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public onDetachedFromLayoutParams()V
    .locals 1

    .line 646
    invoke-super {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onDetachedFromLayoutParams()V

    const/4 v0, 0x0

    .line 648
    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 649
    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 650
    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->parentViewRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 1039
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->isInternalDraggable()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 1043
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    .line 1046
    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->reset()V

    .line 1048
    :cond_1
    iget-object v3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_2

    .line 1049
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 1051
    :cond_2
    iget-object v3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, -0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    const/4 p2, 0x3

    if-eq v0, p2, :cond_3

    goto :goto_2

    .line 1055
    :cond_3
    iput-boolean v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->touchingScrollingChild:Z

    .line 1056
    iput v5, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->activePointerId:I

    .line 1058
    iget-boolean p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    if-eqz p2, :cond_8

    .line 1059
    iput-boolean v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    return v1

    .line 1064
    :cond_4
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    .line 1065
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->initialY:I

    .line 1068
    iget v7, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->state:I

    if-eq v7, v4, :cond_6

    .line 1069
    iget-object v7, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    goto :goto_0

    :cond_5
    move-object v7, v3

    :goto_0
    if-eqz v7, :cond_6

    .line 1070
    iget v8, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->initialY:I

    invoke-virtual {p1, v7, v6, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1071
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    invoke-virtual {p3, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->activePointerId:I

    .line 1072
    iput-boolean v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->touchingScrollingChild:Z

    .line 1075
    :cond_6
    iget v7, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->activePointerId:I

    if-ne v7, v5, :cond_7

    iget v7, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->initialY:I

    .line 1077
    invoke-virtual {p1, p2, v6, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result p2

    if-nez p2, :cond_7

    move p2, v2

    goto :goto_1

    :cond_7
    move p2, v1

    :goto_1
    iput-boolean p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    .line 1081
    :cond_8
    :goto_2
    iget-boolean p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    if-nez p2, :cond_9

    iget-object p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-eqz p2, :cond_9

    .line 1083
    invoke-virtual {p2, p3}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_9

    return v2

    .line 1089
    :cond_9
    iget-object p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/view/View;

    :cond_a
    if-ne v0, v4, :cond_b

    if-eqz v3, :cond_b

    .line 1090
    iget-boolean p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    if-nez p2, :cond_b

    iget p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->state:I

    if-eq p2, v2, :cond_b

    .line 1094
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v3, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-eqz p1, :cond_b

    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->initialY:I

    if-eq p1, v5, :cond_b

    int-to-float p1, p1

    .line 1097
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroidx/customview/widget/ViewDragHelper;->getTouchSlop()I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_b

    move v1, v2

    :cond_b
    return v1

    .line 1040
    :cond_c
    :goto_3
    iput-boolean v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    return v1
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 932
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 933
    invoke-virtual {p2, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 936
    :cond_0
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_2

    .line 939
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lmiuix/bottomsheet/R$dimen;->miuix_bottom_sheet_peek_height_min:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->peekHeightMin:I

    .line 940
    invoke-direct {p0, p2}, Lmiuix/bottomsheet/BottomSheetBehavior;->setWindowInsetsListener(Landroid/view/View;)V

    .line 941
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 942
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->backgroundTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 943
    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 945
    :cond_1
    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->updateAccessibilityActions()V

    .line 946
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_2

    .line 948
    invoke-static {p2, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 951
    :cond_2
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->parentViewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_3

    .line 952
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->parentViewRef:Ljava/lang/ref/WeakReference;

    .line 954
    :cond_3
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-nez v0, :cond_4

    .line 955
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->dragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-static {p1, v0}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object v0

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 957
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 959
    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 961
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    iput p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->parentWidth:I

    .line 962
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->parentHeight:I

    .line 963
    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->mode:I

    if-ne p1, v1, :cond_5

    .line 964
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->childHeight:I

    goto :goto_0

    .line 966
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    iget p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->extraHeight:I

    sub-int/2addr p1, p3

    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->childHeight:I

    .line 968
    :goto_0
    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->parentHeight:I

    iget p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->childHeight:I

    sub-int p3, p1, p3

    iget v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->insetTop:I

    if-ge p3, v2, :cond_6

    sub-int/2addr p1, v2

    .line 970
    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->childHeight:I

    .line 972
    :cond_6
    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->mode:I

    const/4 p3, 0x2

    const/4 v2, 0x0

    if-ne p1, v1, :cond_7

    .line 973
    invoke-direct {p0, v2}, Lmiuix/bottomsheet/BottomSheetBehavior;->setInternalDraggable(Z)V

    .line 974
    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->parentHeight:I

    iget v3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->childHeight:I

    sub-int/2addr p1, v3

    div-int/2addr p1, p3

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    .line 975
    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->state:I

    invoke-direct {p0, p1}, Lmiuix/bottomsheet/BottomSheetBehavior;->fixStateInFloatingMode(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_1

    .line 977
    :cond_7
    invoke-direct {p0, v1}, Lmiuix/bottomsheet/BottomSheetBehavior;->setInternalDraggable(Z)V

    .line 978
    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->parentHeight:I

    iget v3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->childHeight:I

    sub-int/2addr p1, v3

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    .line 980
    :goto_1
    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->calculateHalfExpandedOffset()V

    .line 981
    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->calculateCollapsedOffset()V

    .line 982
    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v3, 0x3

    if-ne p1, v3, :cond_8

    .line 983
    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result p1

    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 984
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->stableStateChildTop:I

    goto :goto_2

    :cond_8
    const/4 v3, 0x6

    if-ne p1, v3, :cond_9

    .line 986
    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 987
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->stableStateChildTop:I

    goto :goto_2

    .line 988
    :cond_9
    iget-boolean v3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-eqz v3, :cond_a

    const/4 v3, 0x5

    if-ne p1, v3, :cond_a

    .line 989
    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->parentHeight:I

    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_2

    :cond_a
    const/4 v3, 0x4

    if-ne p1, v3, :cond_b

    .line 991
    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 992
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->stableStateChildTop:I

    goto :goto_2

    :cond_b
    if-eq p1, v1, :cond_c

    if-ne p1, p3, :cond_d

    .line 994
    :cond_c
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 997
    :cond_d
    :goto_2
    invoke-direct {p0, p2}, Lmiuix/bottomsheet/BottomSheetBehavior;->updateChildY(Landroid/view/View;)V

    .line 998
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p2}, Lmiuix/bottomsheet/BottomSheetBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    move p1, v2

    .line 1000
    :goto_3
    iget-object p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p1, p3, :cond_e

    .line 1001
    iget-object p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lmiuix/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {p3, p2}, Lmiuix/bottomsheet/BottomSheetBehavior$BottomSheetCallback;->onLayout(Landroid/view/View;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 1004
    :cond_e
    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->onModeChangeListener:Lmiuix/bottomsheet/BottomSheetBehavior$OnModeChangeListener;

    if-eqz p1, :cond_f

    iget p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->mode:I

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->lastMode:I

    if-eq p3, v0, :cond_f

    .line 1005
    invoke-interface {p1, p3, p2}, Lmiuix/bottomsheet/BottomSheetBehavior$OnModeChangeListener;->onModeChange(ILandroid/view/View;)V

    .line 1007
    :cond_f
    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->mode:I

    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->lastMode:I

    .line 1008
    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->onExtraPaddingListener:Lmiuix/bottomsheet/BottomSheetBehavior$OnExtraPaddingListener;

    if-eqz p1, :cond_10

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->extraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    if-nez p1, :cond_10

    .line 1009
    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->mDeviceType:I

    sget p3, Lmiuix/theme/token/ContainerToken;->PADDING_BASE_DP:I

    sget v0, Lmiuix/theme/token/ContainerToken;->PADDING_HORIZONTAL_COMMON:I

    .line 1010
    invoke-static {p1, p3, v0}, Lmiuix/container/ExtraPaddingPolicy$Builder;->createDefault(III)Lmiuix/container/ExtraPaddingPolicy;

    move-result-object p1

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->extraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    if-eqz p1, :cond_10

    .line 1015
    iget-boolean p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->extraPaddingEnabled:Z

    invoke-virtual {p1, p3}, Lmiuix/container/ExtraPaddingPolicy;->setEnable(Z)V

    .line 1018
    :cond_10
    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->onExtraPaddingListener:Lmiuix/bottomsheet/BottomSheetBehavior$OnExtraPaddingListener;

    if-eqz p1, :cond_13

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->extraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    if-eqz p1, :cond_13

    .line 1019
    iget-boolean p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->extraPaddingEnabled:Z

    invoke-virtual {p1, p3}, Lmiuix/container/ExtraPaddingPolicy;->setEnable(Z)V

    .line 1021
    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->extraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    invoke-virtual {p1}, Lmiuix/container/ExtraPaddingPolicy;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 1022
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 1023
    invoke-static {p1}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object p3

    iget-object p3, p3, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    .line 1024
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 1025
    iget-object v3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->extraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    iget v4, p3, Landroid/graphics/Point;->x:I

    iget v5, p3, Landroid/graphics/Point;->y:I

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v7

    iget p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->mode:I

    if-ne p2, v1, :cond_11

    move v9, v1

    goto :goto_4

    :cond_11
    move v9, v2

    :goto_4
    move v8, p1

    invoke-virtual/range {v3 .. v9}, Lmiuix/container/ExtraPaddingPolicy;->onContainerSizeChanged(IIIIFZ)V

    .line 1026
    iget-object p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->extraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;

    invoke-virtual {p2}, Lmiuix/container/ExtraPaddingPolicy;->getExtraPaddingDp()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int v2, p2

    .line 1028
    :cond_12
    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->horizontalExtraPadding:I

    if-eq v2, p1, :cond_13

    .line 1029
    iput v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->horizontalExtraPadding:I

    .line 1030
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->onExtraPaddingListener:Lmiuix/bottomsheet/BottomSheetBehavior$OnExtraPaddingListener;

    invoke-interface {p0, v2}, Lmiuix/bottomsheet/BottomSheetBehavior$OnExtraPaddingListener;->onExtraPaddingChanged(I)V

    :cond_13
    return v1
.end method

.method public onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;IIII)Z"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    const/4 v9, 0x0

    .line 661
    iput-boolean v9, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->fullHeightMode:Z

    .line 662
    iput v9, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->extraHeight:I

    .line 663
    invoke-static/range {p5 .. p5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 664
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 665
    invoke-static/range {p5 .. p5}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const-string v12, "BottomSheetBehavior"

    const/high16 v13, 0x40000000    # 2.0f

    if-eq v0, v13, :cond_0

    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v14, p1

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " measure spec mode is not MeasureSpec.EXACTLY! Usually layout_height should be match_parent."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object/from16 v14, p1

    .line 668
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v15

    .line 669
    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    .line 670
    iget v0, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->density:F

    cmpl-float v0, v6, v0

    if-eqz v0, :cond_1

    .line 671
    iput v6, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->density:F

    .line 672
    iget-object v0, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->attrs:Landroid/util/AttributeSet;

    invoke-direct {v7, v15, v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->updateSizeConfig(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 675
    :cond_1
    iget v0, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->modeConfig:I

    const/4 v5, 0x1

    if-nez v0, :cond_3

    .line 676
    iget-boolean v1, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingModeDependsOnWindow:Z

    move-object/from16 v0, p0

    move-object v2, v15

    move v3, v6

    move v4, v11

    move v13, v5

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lmiuix/bottomsheet/BottomSheetBehavior;->supportFloatingMode(ZLandroid/content/Context;FII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 677
    iput v13, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->mode:I

    goto :goto_1

    .line 679
    :cond_2
    iput v9, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->mode:I

    goto :goto_1

    :cond_3
    move v13, v5

    if-ne v0, v13, :cond_4

    .line 682
    iput v9, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->mode:I

    goto :goto_1

    :cond_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    .line 684
    iput v13, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->mode:I

    .line 689
    :goto_1
    iget v0, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->mode:I

    if-ne v0, v13, :cond_b

    .line 690
    instance-of v0, v8, Lmiuix/bottomsheet/BottomSheetView;

    if-eqz v0, :cond_5

    .line 691
    move-object v14, v8

    check-cast v14, Lmiuix/bottomsheet/BottomSheetView;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object v1, v14

    move v13, v6

    move/from16 v6, v16

    .line 692
    invoke-direct/range {v0 .. v6}, Lmiuix/bottomsheet/BottomSheetBehavior;->applyWindowInsets(Landroid/view/View;ZZZZZ)V

    .line 693
    iget v0, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->mode:I

    invoke-virtual {v14, v0}, Lmiuix/bottomsheet/BottomSheetView;->setBottomSheetMode(I)V

    .line 694
    invoke-virtual {v14}, Lmiuix/bottomsheet/BottomSheetView;->hideDragHandleView()V

    .line 695
    invoke-virtual {v14, v9}, Lmiuix/bottomsheet/BottomSheetView;->setExtraHeightEnabled(Z)V

    goto :goto_2

    :cond_5
    move v13, v6

    .line 697
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/core/util/WindowUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    .line 698
    iget v1, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingModeWidth:I

    const-string v2, ", window height: "

    const-string v3, ", window width: "

    const-string v4, ", isPortrait: "

    const-string v5, ", currentDensity: "

    if-lt v1, v11, :cond_6

    .line 700
    invoke-static {v15}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object v6

    .line 701
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Width in the floating mode bigger than parent width, fix it to be same with parent width! finalFloatingModeWidth: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", parentSizeWidth: "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    move v11, v1

    :goto_3
    if-eqz v0, :cond_7

    .line 710
    iget v1, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingModeHeight:I

    goto :goto_4

    .line 712
    :cond_7
    iget-boolean v1, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingModeDependsOnWindow:Z

    if-eqz v1, :cond_8

    .line 713
    invoke-static {v15}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object v1

    .line 714
    iget v6, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingModeHeightRatio:F

    iget-object v1, v1, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float/2addr v6, v1

    float-to-int v1, v6

    goto :goto_4

    .line 716
    :cond_8
    iget v1, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingModeHeightRatio:F

    int-to-float v6, v10

    mul-float/2addr v1, v6

    float-to-int v1, v1

    :goto_4
    if-lt v1, v10, :cond_9

    .line 720
    invoke-static {v15}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object v6

    .line 721
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Height in the floating mode bigger than parent height, fix it to be same with parent height! finalFloatingModeHeight: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", parentSizeHeight: "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v6, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v6, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_9
    move v10, v1

    :goto_5
    const/high16 v0, 0x40000000    # 2.0f

    .line 727
    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 728
    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 726
    invoke-virtual {v8, v1, v0}, Landroid/view/View;->measure(II)V

    :cond_a
    :goto_6
    const/4 v0, 0x1

    goto/16 :goto_9

    .line 731
    :cond_b
    instance-of v0, v8, Lmiuix/bottomsheet/BottomSheetView;

    if-eqz v0, :cond_d

    .line 732
    move-object v11, v8

    check-cast v11, Lmiuix/bottomsheet/BottomSheetView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 733
    iget-boolean v6, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->paddingBottomSystemWindowInsets:Z

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct/range {v0 .. v6}, Lmiuix/bottomsheet/BottomSheetBehavior;->applyWindowInsets(Landroid/view/View;ZZZZZ)V

    .line 741
    iget v0, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->mode:I

    invoke-virtual {v11, v0}, Lmiuix/bottomsheet/BottomSheetView;->setBottomSheetMode(I)V

    .line 742
    invoke-virtual {v11}, Lmiuix/bottomsheet/BottomSheetView;->isDragHandleViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 743
    invoke-virtual {v11}, Lmiuix/bottomsheet/BottomSheetView;->showDragHandleView()V

    goto :goto_7

    .line 745
    :cond_c
    invoke-virtual {v11}, Lmiuix/bottomsheet/BottomSheetView;->hideDragHandleView()V

    :goto_7
    const/4 v0, 0x1

    .line 747
    invoke-virtual {v11, v0}, Lmiuix/bottomsheet/BottomSheetView;->setExtraHeightEnabled(Z)V

    .line 749
    :cond_d
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 753
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    .line 754
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int v1, v1, p4

    iget v2, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->maxWidth:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v4, p3

    .line 751
    invoke-direct {v7, v4, v1, v2, v3}, Lmiuix/bottomsheet/BottomSheetBehavior;->getChildMeasureSpec(IIII)I

    move-result v1

    .line 763
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    .line 764
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    add-int v2, v2, p6

    iget v3, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->maxHeight:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 v4, p5

    .line 761
    invoke-direct {v7, v4, v2, v3, v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->getChildMeasureSpec(IIII)I

    move-result v0

    .line 770
    invoke-virtual {v8, v1, v0}, Landroid/view/View;->measure(II)V

    .line 771
    instance-of v2, v8, Lmiuix/bottomsheet/BottomSheetView;

    if-eqz v2, :cond_e

    .line 772
    move-object v2, v8

    check-cast v2, Lmiuix/bottomsheet/BottomSheetView;

    .line 773
    invoke-virtual {v2}, Lmiuix/bottomsheet/BottomSheetView;->getExtraHeight()I

    move-result v2

    iput v2, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->extraHeight:I

    .line 775
    :cond_e
    iget-boolean v2, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->fixedHeightRatioEnabled:Z

    if-eqz v2, :cond_f

    iget v2, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->fullHeightLowRatioThreshold:I

    if-le v10, v2, :cond_f

    const/4 v5, 0x1

    goto :goto_8

    :cond_f
    move v5, v9

    :goto_8
    iput-boolean v5, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->internalFixedHeightRatioEnabled:Z

    if-eqz v5, :cond_10

    int-to-float v0, v10

    .line 777
    iget v2, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->fixedHeightRatio:F

    mul-float/2addr v0, v2

    iget v2, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->extraHeight:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 778
    invoke-virtual {v8, v1, v0}, Landroid/view/View;->measure(II)V

    .line 781
    :cond_10
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->extraHeight:I

    sub-int/2addr v2, v3

    .line 782
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 784
    iget-boolean v4, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->forceFullHeight:Z

    if-nez v4, :cond_11

    int-to-float v4, v2

    int-to-float v5, v10

    invoke-direct {v7, v10}, Lmiuix/bottomsheet/BottomSheetBehavior;->getFullHeightRatio(I)F

    move-result v6

    mul-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_12

    :cond_11
    const/4 v4, 0x1

    .line 785
    iput-boolean v4, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->fullHeightMode:Z

    .line 789
    :cond_12
    iget v4, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->bottomModeMaxWidth:I

    if-le v3, v4, :cond_13

    const/high16 v3, 0x40000000    # 2.0f

    .line 790
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/4 v9, 0x1

    .line 793
    :cond_13
    iget v3, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->insetTop:I

    iput v3, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->insetTopInMeasureStep:I

    .line 794
    iget-object v4, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->mRequestLayoutRunnable:Lmiuix/bottomsheet/BottomSheetBehavior$RequestLayoutRunnable;

    if-eqz v4, :cond_14

    .line 795
    iput v3, v4, Lmiuix/bottomsheet/BottomSheetBehavior$RequestLayoutRunnable;->mInsetTopInMeasuredStep:I

    .line 797
    :cond_14
    iget-boolean v3, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->fullHeightMode:Z

    if-eqz v3, :cond_15

    .line 798
    invoke-direct {v7, v10}, Lmiuix/bottomsheet/BottomSheetBehavior;->getMaxHeight(I)I

    move-result v0

    iget v2, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->extraHeight:I

    add-int/2addr v0, v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v8, v1, v0}, Landroid/view/View;->measure(II)V

    goto/16 :goto_6

    :cond_15
    const/high16 v3, 0x40000000    # 2.0f

    .line 799
    iget v4, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->minHeight:I

    if-gt v2, v4, :cond_16

    .line 800
    iget v0, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->extraHeight:I

    add-int/2addr v4, v0

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v8, v1, v0}, Landroid/view/View;->measure(II)V

    goto/16 :goto_6

    :cond_16
    if-eqz v9, :cond_a

    .line 803
    invoke-virtual {v8, v1, v0}, Landroid/view/View;->measure(II)V

    goto/16 :goto_6

    :goto_9
    return v0

    .line 686
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected mode config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lmiuix/bottomsheet/BottomSheetBehavior;->modeConfig:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onNestedPreFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FF)Z"
        }
    .end annotation

    .line 1315
    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->isNestedScrollingCheckEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 1316
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p3, v0, :cond_1

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 1318
    invoke-super/range {p0 .. p5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedPreFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "II[II)V"
        }
    .end annotation

    const/4 p1, 0x1

    if-ne p7, p1, :cond_0

    return-void

    .line 1160
    :cond_0
    iget-object p4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    .line 1161
    :goto_0
    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->isNestedScrollingCheckEnabled()Z

    move-result p7

    if-eqz p7, :cond_2

    if-eq p3, p4, :cond_2

    return-void

    .line 1164
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p4

    sub-int p7, p4, p5

    if-lez p5, :cond_5

    .line 1167
    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result p3

    if-ge p7, p3, :cond_3

    .line 1168
    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result p3

    sub-int/2addr p4, p3

    aput p4, p6, p1

    .line 1169
    aget p3, p6, p1

    neg-int p3, p3

    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    const/4 p3, 0x3

    .line 1170
    invoke-virtual {p0, p3}, Lmiuix/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_2

    .line 1172
    :cond_3
    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->isInternalDraggable()Z

    move-result p3

    if-nez p3, :cond_4

    return-void

    .line 1177
    :cond_4
    aput p5, p6, p1

    neg-int p3, p5

    .line 1178
    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1179
    invoke-virtual {p0, p1}, Lmiuix/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_2

    :cond_5
    if-gez p5, :cond_9

    const/4 v0, -0x1

    .line 1182
    invoke-virtual {p3, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p3

    if-nez p3, :cond_9

    .line 1183
    iget p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    if-le p7, p3, :cond_7

    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->canBeHiddenByDragging()Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_1

    .line 1193
    :cond_6
    iget p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    sub-int/2addr p4, p3

    aput p4, p6, p1

    .line 1194
    aget p3, p6, p1

    neg-int p3, p3

    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    const/4 p3, 0x4

    .line 1195
    invoke-virtual {p0, p3}, Lmiuix/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_2

    .line 1184
    :cond_7
    :goto_1
    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->isInternalDraggable()Z

    move-result p3

    if-nez p3, :cond_8

    return-void

    .line 1189
    :cond_8
    aput p5, p6, p1

    neg-int p3, p5

    .line 1190
    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1191
    invoke-virtual {p0, p1}, Lmiuix/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    .line 1199
    :cond_9
    :goto_2
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p0, p2}, Lmiuix/bottomsheet/BottomSheetBehavior;->dispatchOnSlide(I)V

    .line 1200
    iput p5, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->lastNestedScrollDy:I

    .line 1201
    iput-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->nestedScrolled:Z

    return-void
.end method

.method public onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "IIIII[I)V"
        }
    .end annotation

    return-void
.end method

.method public onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .line 620
    check-cast p3, Lmiuix/bottomsheet/BottomSheetBehavior$SavedState;

    .line 621
    invoke-virtual {p3}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 623
    invoke-direct {p0, p3}, Lmiuix/bottomsheet/BottomSheetBehavior;->restoreOptionalState(Lmiuix/bottomsheet/BottomSheetBehavior$SavedState;)V

    .line 625
    iget p1, p3, Lmiuix/bottomsheet/BottomSheetBehavior$SavedState;->state:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 629
    :cond_0
    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->state:I

    .line 630
    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->lastStableState:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x4

    .line 626
    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->state:I

    .line 627
    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->lastStableState:I

    :goto_1
    return-void
.end method

.method public onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .line 614
    new-instance v0, Lmiuix/bottomsheet/BottomSheetBehavior$SavedState;

    invoke-super {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lmiuix/bottomsheet/BottomSheetBehavior$SavedState;-><init>(Landroid/os/Parcelable;Lmiuix/bottomsheet/BottomSheetBehavior;)V

    return-object v0
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "II)Z"
        }
    .end annotation

    const/4 p1, 0x0

    .line 1139
    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->lastNestedScrollDy:I

    .line 1140
    iput-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->nestedScrolled:Z

    .line 1141
    iget-boolean p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animRunning:Z

    if-eqz p0, :cond_0

    return p1

    :cond_0
    and-int/lit8 p0, p5, 0x2

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    :cond_1
    return p1
.end method

.method public onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 1210
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result p4

    const/4 v0, 0x3

    if-ne p1, p4, :cond_0

    .line 1211
    invoke-virtual {p0, v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    return-void

    .line 1214
    :cond_0
    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->isNestedScrollingCheckEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    .line 1216
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne p3, p1, :cond_1

    iget-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->nestedScrolled:Z

    if-nez p1, :cond_2

    :cond_1
    return-void

    .line 1221
    :cond_2
    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->lastNestedScrollDy:I

    const/4 p3, 0x6

    const/4 p4, 0x4

    if-lez p1, :cond_4

    .line 1222
    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->shouldSkipHalfExpanded()Z

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_3

    .line 1225
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    .line 1226
    iget p4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    if-le p1, p4, :cond_f

    goto/16 :goto_2

    .line 1232
    :cond_4
    iget-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->getYVelocity()F

    move-result p1

    invoke-virtual {p0, p2, p1}, Lmiuix/bottomsheet/BottomSheetBehavior;->shouldHide(Landroid/view/View;F)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1233
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    iget p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->stableStateChildTop:I

    sub-int/2addr p1, p3

    iget p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->significantDistanceThreshold:I

    if-gt p1, p3, :cond_6

    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->getYVelocity()F

    move-result p1

    iget p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->significantVelocityThreshold:I

    int-to-float p3, p3

    cmpl-float p1, p1, p3

    if-lez p1, :cond_5

    goto :goto_0

    .line 1236
    :cond_5
    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->lastStableState:I

    goto/16 :goto_3

    :cond_6
    :goto_0
    const/4 v0, 0x5

    goto :goto_3

    .line 1238
    :cond_7
    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->lastNestedScrollDy:I

    if-nez p1, :cond_b

    .line 1239
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    .line 1240
    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->shouldSkipHalfExpanded()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1241
    iget p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    sub-int p3, p1, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge p3, p1, :cond_c

    goto :goto_3

    .line 1247
    :cond_8
    iget v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    if-ge p1, v1, :cond_a

    .line 1248
    iget v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge p1, v1, :cond_9

    goto :goto_3

    .line 1251
    :cond_9
    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->shouldSkipHalfExpandedStateWhenDragging()Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_1

    :cond_a
    sub-int v0, p1, v1

    .line 1258
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge v0, p1, :cond_c

    goto :goto_2

    .line 1266
    :cond_b
    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->shouldSkipHalfExpanded()Z

    move-result p1

    if-eqz p1, :cond_d

    :cond_c
    :goto_1
    move v0, p4

    goto :goto_3

    .line 1270
    :cond_d
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    .line 1271
    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge v0, p1, :cond_c

    :cond_e
    :goto_2
    move v0, p3

    :cond_f
    :goto_3
    const/4 p1, 0x0

    .line 1278
    invoke-direct {p0, p2, v0, p1}, Lmiuix/bottomsheet/BottomSheetBehavior;->startSettling(Landroid/view/View;IZ)V

    .line 1279
    iput-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->nestedScrolled:Z

    return-void
.end method

.method public onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 1103
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1106
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    .line 1107
    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_1

    return v1

    .line 1110
    :cond_1
    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->shouldHandleDraggingWithHelper()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1111
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p3}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    :cond_2
    if-nez p1, :cond_3

    .line 1115
    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->reset()V

    .line 1117
    :cond_3
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_4

    .line 1118
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 1120
    :cond_4
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1123
    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->shouldHandleDraggingWithHelper()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    iget-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    if-nez p1, :cond_5

    .line 1124
    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->initialY:I

    int-to-float p1, p1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->getTouchSlop()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    .line 1125
    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroidx/customview/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    .line 1128
    :cond_5
    iget-boolean p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    xor-int/2addr p0, v1

    return p0
.end method

.method public removeBottomSheetCallback(Lmiuix/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V
    .locals 0

    .line 2074
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method setAccessibilityDelegateView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 3058
    iget-object v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->accessibilityDelegateViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 3060
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 3059
    invoke-direct {p0, p1, v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->clearAccessibilityAction(Landroid/view/View;I)V

    const/4 p1, 0x0

    .line 3061
    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->accessibilityDelegateViewRef:Ljava/lang/ref/WeakReference;

    return-void

    .line 3064
    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->accessibilityDelegateViewRef:Ljava/lang/ref/WeakReference;

    .line 3065
    invoke-direct {p0, p1, v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->updateAccessibilityActions(Landroid/view/View;I)V

    return-void
.end method

.method public setBottomModeMaxWidth(I)V
    .locals 0

    .line 1937
    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->bottomModeMaxWidth:I

    return-void
.end method

.method public setDraggable(Z)V
    .locals 0

    .line 1886
    iput-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->draggable:Z

    return-void
.end method

.method public setExpandedOffset(I)V
    .locals 1

    if-gez p1, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1793
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "offset must be greater than or equal to 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1795
    :cond_1
    :goto_0
    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->expandedOffset:I

    return-void
.end method

.method public setFixedHeightRatioEnabled(Z)V
    .locals 0

    .line 1629
    iput-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fixedHeightRatioEnabled:Z

    return-void
.end method

.method public setFloatingModeDependsOnWindow(Z)V
    .locals 0

    .line 1947
    iput-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->floatingModeDependsOnWindow:Z

    return-void
.end method

.method public setForceFullHeight(Z)V
    .locals 0

    .line 1618
    iput-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->forceFullHeight:Z

    return-void
.end method

.method public setGestureInsetBottomIgnored(Z)V
    .locals 0

    .line 2150
    iput-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->gestureInsetBottomIgnored:Z

    return-void
.end method

.method public setHalfExpandedRatio(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gez v0, :cond_1

    .line 1768
    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->halfExpandedRatio:F

    .line 1771
    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    .line 1772
    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->calculateHalfExpandedOffset()V

    :cond_0
    return-void

    .line 1766
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ratio must be a float value between 0 and 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setHideable(Z)V
    .locals 1

    .line 1834
    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-eq v0, p1, :cond_1

    .line 1835
    iput-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-nez p1, :cond_0

    .line 1836
    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const/4 p1, 0x4

    .line 1838
    invoke-virtual {p0, p1}, Lmiuix/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 1840
    :cond_0
    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->updateAccessibilityActions()V

    :cond_1
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0

    .line 1669
    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->maxHeight:I

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    .line 1646
    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->maxWidth:I

    return-void
.end method

.method public setModeConfig(I)V
    .locals 1

    .line 1822
    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->modeConfig:I

    if-eq v0, p1, :cond_0

    .line 1823
    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->modeConfig:I

    :cond_0
    return-void
.end method

.method setOriginalWindowInsetsEnabled(Z)V
    .locals 0

    .line 2846
    iput-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->originalWindowInsetsEnabled:Z

    return-void
.end method

.method public setPeekHeight(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1692
    invoke-virtual {p0, p1, v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->setPeekHeight(IZ)V

    return-void
.end method

.method public final setPeekHeight(IZ)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 1708
    iget-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    if-nez p1, :cond_1

    .line 1709
    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    goto :goto_1

    .line 1712
    :cond_0
    iget-boolean v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    if-nez v2, :cond_2

    iget v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->peekHeight:I

    if-eq v2, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 1713
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    .line 1714
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->peekHeight:I

    :goto_1
    if-eqz v0, :cond_3

    .line 1720
    invoke-direct {p0, p2}, Lmiuix/bottomsheet/BottomSheetBehavior;->updatePeekHeight(Z)V

    :cond_3
    return-void
.end method

.method setReleaseAnimListener(Lmiuix/bottomsheet/BottomSheetBehavior$ReleaseAnimListener;)V
    .locals 0

    .line 3169
    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->releaseAnimListener:Lmiuix/bottomsheet/BottomSheetBehavior$ReleaseAnimListener;

    return-void
.end method

.method public setSaveFlags(I)V
    .locals 0

    .line 1999
    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->saveFlags:I

    return-void
.end method

.method public setSignificantDistanceThreshold(I)V
    .locals 0

    .line 1926
    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->significantDistanceThreshold:I

    return-void
.end method

.method public setSignificantVelocityThreshold(I)V
    .locals 0

    .line 1911
    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->significantVelocityThreshold:I

    return-void
.end method

.method public setSkipCollapsed(Z)V
    .locals 0

    .line 1863
    iput-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->skipCollapsed:Z

    return-void
.end method

.method public setState(I)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_3

    .line 2091
    :cond_0
    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-nez v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 2092
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot set state: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BottomSheetBehavior"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2095
    :cond_1
    invoke-direct {p0, p1}, Lmiuix/bottomsheet/BottomSheetBehavior;->fixStateInFloatingMode(I)I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    .line 2098
    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->shouldSkipHalfExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2099
    invoke-direct {p0, p1}, Lmiuix/bottomsheet/BottomSheetBehavior;->getTopOffsetForState(I)I

    move-result v0

    iget v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    if-gt v0, v1, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    move v0, p1

    .line 2105
    :goto_0
    iget-object v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 2109
    :cond_3
    iget-object v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2110
    invoke-virtual {v1}, Landroid/view/View;->isLaidOut()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2111
    new-instance p1, Lmiuix/bottomsheet/BottomSheetBehavior$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v1, v0}, Lmiuix/bottomsheet/BottomSheetBehavior$$ExternalSyntheticLambda0;-><init>(Lmiuix/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V

    invoke-direct {p0, v1, p1}, Lmiuix/bottomsheet/BottomSheetBehavior;->runAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 2115
    :cond_4
    invoke-virtual {p0, p1}, Lmiuix/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_2

    .line 2107
    :cond_5
    :goto_1
    invoke-virtual {p0, p1}, Lmiuix/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    :goto_2
    return-void

    .line 2086
    :cond_6
    :goto_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STATE_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v0, :cond_7

    const-string p1, "DRAGGING"

    goto :goto_4

    :cond_7
    const-string p1, "SETTLING"

    .line 2088
    :goto_4
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " should not be set externally."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method setStateInternal(I)V
    .locals 6

    .line 2172
    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->state:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2175
    :cond_0
    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v0, 0x5

    const/4 v1, 0x6

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_1

    .line 2176
    iget-boolean v4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-eqz v4, :cond_2

    if-ne p1, v0, :cond_2

    .line 2180
    :cond_1
    iput p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->lastStableState:I

    .line 2183
    :cond_2
    iget-object v4, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-nez v4, :cond_3

    return-void

    .line 2187
    :cond_3
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-nez v4, :cond_4

    return-void

    :cond_4
    const/4 v5, 0x0

    if-ne p1, v2, :cond_5

    const/4 v0, 0x1

    .line 2193
    invoke-direct {p0, v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibility(Z)V

    goto :goto_0

    :cond_5
    if-eq p1, v1, :cond_6

    if-eq p1, v0, :cond_6

    if-ne p1, v3, :cond_7

    .line 2195
    :cond_6
    invoke-direct {p0, v5}, Lmiuix/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibility(Z)V

    .line 2198
    :cond_7
    :goto_0
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_8

    .line 2199
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v0, v4, p1}, Lmiuix/bottomsheet/BottomSheetBehavior$BottomSheetCallback;->onStateChanged(Landroid/view/View;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2201
    :cond_8
    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->updateAccessibilityActions()V

    return-void
.end method

.method public shouldExpandOnUpwardDrag(JF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method shouldHide(Landroid/view/View;F)Z
    .locals 4

    .line 2288
    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->skipCollapsed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2291
    :cond_0
    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->isHideableWhenDragging()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 2294
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    if-ge v0, v3, :cond_2

    return v2

    .line 2298
    :cond_2
    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->calculatePeekHeight()I

    move-result v0

    .line 2299
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    iget v3, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->hideFriction:F

    mul-float/2addr p2, v3

    add-float/2addr p1, p2

    .line 2300
    iget p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    int-to-float p0, p0

    sub-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    int-to-float p1, v0

    div-float/2addr p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    return v1
.end method

.method public shouldSkipHalfExpanded()Z
    .locals 2

    .line 1287
    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->skipHalfExpanded:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1290
    :cond_0
    iget-boolean p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->fullHeightMode:Z

    xor-int/2addr p0, v1

    return p0
.end method

.method public shouldSkipHalfExpandedStateWhenDragging()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public shouldSkipSmoothAnimation()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method startEnterAnimation(Lmiuix/bottomsheet/BottomSheetBehavior$AnimationListener;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1331
    invoke-virtual {p0, p1, v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->startEnterAnimation(Lmiuix/bottomsheet/BottomSheetBehavior$AnimationListener;Z)Z

    move-result p0

    return p0
.end method

.method startEnterAnimation(Lmiuix/bottomsheet/BottomSheetBehavior$AnimationListener;Z)Z
    .locals 3

    .line 1335
    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animInterruptible:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animRunning:Z

    if-eqz v0, :cond_0

    return v1

    .line 1339
    :cond_0
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->parentViewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    return v1

    .line 1342
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-nez v0, :cond_2

    return v1

    .line 1346
    :cond_2
    iget-object v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_3

    return v1

    .line 1349
    :cond_3
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-nez v2, :cond_4

    return v1

    .line 1354
    :cond_4
    iget v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->mode:I

    if-nez v1, :cond_5

    .line 1355
    invoke-direct {p0, p1, v0, v2, p2}, Lmiuix/bottomsheet/BottomSheetBehavior;->startBottomEnterAnim(Lmiuix/bottomsheet/BottomSheetBehavior$AnimationListener;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_0

    .line 1357
    :cond_5
    invoke-direct {p0, p1, v0, v2, p2}, Lmiuix/bottomsheet/BottomSheetBehavior;->startFloatingEnterAnim(Lmiuix/bottomsheet/BottomSheetBehavior$AnimationListener;Landroid/view/View;Landroid/view/View;Z)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method startExitAnimation(Lmiuix/bottomsheet/BottomSheetBehavior$AnimationListener;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1471
    invoke-virtual {p0, p1, v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->startExitAnimation(Lmiuix/bottomsheet/BottomSheetBehavior$AnimationListener;Z)Z

    move-result p0

    return p0
.end method

.method startExitAnimation(Lmiuix/bottomsheet/BottomSheetBehavior$AnimationListener;Z)Z
    .locals 3

    .line 1475
    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animInterruptible:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->animRunning:Z

    if-eqz v0, :cond_0

    return v1

    .line 1478
    :cond_0
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->parentViewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    return v1

    .line 1481
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    return v1

    .line 1485
    :cond_2
    iget-object v2, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_3

    return v1

    .line 1488
    :cond_3
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-nez v2, :cond_4

    return v1

    .line 1493
    :cond_4
    iget v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior;->mode:I

    if-nez v1, :cond_5

    .line 1494
    invoke-direct {p0, p1, v0, v2, p2}, Lmiuix/bottomsheet/BottomSheetBehavior;->startBottomExitAnimation(Lmiuix/bottomsheet/BottomSheetBehavior$AnimationListener;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_0

    .line 1496
    :cond_5
    invoke-direct {p0, p1, v0, v2, p2}, Lmiuix/bottomsheet/BottomSheetBehavior;->startFloatingExitAnim(Lmiuix/bottomsheet/BottomSheetBehavior$AnimationListener;Landroid/view/View;Landroid/view/View;Z)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
