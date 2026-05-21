.class public final Lcom/miui/home/recents/anim/TaskViewsElement;
.super Ljava/lang/Object;
.source "TaskViewsElement.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/anim/TaskViewsElement$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/recents/anim/TaskViewsElement$Companion;

.field private static final instance$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/miui/home/recents/anim/TaskViewsElement<",
            "Lcom/miui/home/recents/anim/TaskViewsParams;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final mPrepareEvent:Lcom/miui/home/recents/messages/FsGestureEnterRecentsPrepareEvent;


# instance fields
.field private currentTaskViewParams:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

.field private isInGestureTopWindowHoldState:Z

.field private isNeedAnim:Z

.field private isShowRecents:Z

.field private final mHideTaskViewRectF:Landroid/graphics/RectF;

.field private final mHomeModeTaskStackViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mPendingResetTaskView:Z

.field private mReLoadTaskFinished:Z

.field private final mRecentsViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mRunningTaskId:I

.field private mRunningTaskIndex:I

.field private final mTaskStackViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private recentView:Lcom/miui/home/recents/views/RecentsView;


# direct methods
.method public static synthetic $r8$lambda$ByOPw0caoRt4_FbPkz0ujK9TVpw(FFLcom/miui/home/recents/anim/TaskViewsElement;Lcom/miui/home/recents/views/TaskView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/home/recents/anim/TaskViewsElement;->resetTaskViewFullscreenProgress$lambda-11(FFLcom/miui/home/recents/anim/TaskViewsElement;Lcom/miui/home/recents/views/TaskView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fy1A29cmTQrd_2X415P9NRmLedM(FLcom/miui/home/recents/views/TaskView;IIFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/miui/home/recents/anim/TaskViewsElement;->resetTaskView$lambda-12(FLcom/miui/home/recents/views/TaskView;IIFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ngna1KyiavlVTi_7RiMto5Nsgng(Lcom/miui/home/recents/anim/TaskViewsElement;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/recents/anim/TaskViewsElement;->hideTaskView$lambda-14(Lcom/miui/home/recents/anim/TaskViewsElement;)V

    return-void
.end method

.method public static synthetic $r8$lambda$suUCSt9V9NfP8yASBmJ61j4VZnA(Lcom/miui/home/recents/views/TaskView;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/recents/anim/TaskViewsElement;->resetTaskView$lambda-13(Lcom/miui/home/recents/views/TaskView;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/recents/anim/TaskViewsElement$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/recents/anim/TaskViewsElement$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/recents/anim/TaskViewsElement;->Companion:Lcom/miui/home/recents/anim/TaskViewsElement$Companion;

    .line 102
    new-instance v0, Lcom/miui/home/recents/messages/FsGestureEnterRecentsPrepareEvent;

    invoke-direct {v0}, Lcom/miui/home/recents/messages/FsGestureEnterRecentsPrepareEvent;-><init>()V

    sput-object v0, Lcom/miui/home/recents/anim/TaskViewsElement;->mPrepareEvent:Lcom/miui/home/recents/messages/FsGestureEnterRecentsPrepareEvent;

    .line 103
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/miui/home/recents/anim/TaskViewsElement$Companion$instance$2;->INSTANCE:Lcom/miui/home/recents/anim/TaskViewsElement$Companion$instance$2;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/miui/home/recents/anim/TaskViewsElement;->instance$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 116
    iput v0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->mRunningTaskIndex:I

    .line 117
    iput v0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->mRunningTaskId:I

    .line 123
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->mHideTaskViewRectF:Landroid/graphics/RectF;

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->isNeedAnim:Z

    .line 128
    new-instance v0, Lcom/miui/home/recents/anim/TaskViewsElement$mRecentsViewLayoutListener$1;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/anim/TaskViewsElement$mRecentsViewLayoutListener$1;-><init>(Lcom/miui/home/recents/anim/TaskViewsElement;)V

    iput-object v0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->mRecentsViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 140
    new-instance v0, Lcom/miui/home/recents/anim/TaskViewsElement$mTaskStackViewLayoutListener$1;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/anim/TaskViewsElement$mTaskStackViewLayoutListener$1;-><init>(Lcom/miui/home/recents/anim/TaskViewsElement;)V

    iput-object v0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->mTaskStackViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 158
    new-instance v0, Lcom/miui/home/recents/anim/TaskViewsElement$mHomeModeTaskStackViewLayoutListener$1;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/anim/TaskViewsElement$mHomeModeTaskStackViewLayoutListener$1;-><init>(Lcom/miui/home/recents/anim/TaskViewsElement;)V

    iput-object v0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->mHomeModeTaskStackViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/anim/TaskViewsElement;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 97
    sget-object v0, Lcom/miui/home/recents/anim/TaskViewsElement;->instance$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getMPendingResetTaskView$p(Lcom/miui/home/recents/anim/TaskViewsElement;)Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->mPendingResetTaskView:Z

    return p0
.end method

.method public static final synthetic access$getMRunningTaskId$p(Lcom/miui/home/recents/anim/TaskViewsElement;)I
    .locals 0

    .line 97
    iget p0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->mRunningTaskId:I

    return p0
.end method

.method public static final synthetic access$getMRunningTaskIndex$p(Lcom/miui/home/recents/anim/TaskViewsElement;)I
    .locals 0

    .line 97
    iget p0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->mRunningTaskIndex:I

    return p0
.end method

.method public static final synthetic access$getRecentView$p(Lcom/miui/home/recents/anim/TaskViewsElement;)Lcom/miui/home/recents/views/RecentsView;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->recentView:Lcom/miui/home/recents/views/RecentsView;

    return-object p0
.end method

.method public static final synthetic access$resetTaskView(Lcom/miui/home/recents/anim/TaskViewsElement;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/miui/home/recents/anim/TaskViewsElement;->resetTaskView()V

    return-void
.end method

.method public static final synthetic access$setMReLoadTaskFinished$p(Lcom/miui/home/recents/anim/TaskViewsElement;Z)V
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->mReLoadTaskFinished:Z

    return-void
.end method

.method public static final synthetic access$setMRunningTaskIndex$p(Lcom/miui/home/recents/anim/TaskViewsElement;I)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->mRunningTaskIndex:I

    return-void
.end method

.method public static final synthetic access$updateTaskTransY(Lcom/miui/home/recents/anim/TaskViewsElement;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/miui/home/recents/anim/TaskViewsElement;->updateTaskTransY()V

    return-void
.end method

.method public static final synthetic access$updateTaskViewToInitPosition(Lcom/miui/home/recents/anim/TaskViewsElement;Landroid/graphics/RectF;IZ)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/recents/anim/TaskViewsElement;->updateTaskViewToInitPosition(Landroid/graphics/RectF;IZ)V

    return-void
.end method

.method private final addHomeModeLayoutListener()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->recentView:Lcom/miui/home/recents/views/RecentsView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->mHomeModeTaskStackViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 179
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->recentView:Lcom/miui/home/recents/views/RecentsView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->requestLayout()V

    :cond_1
    const-string p0, "TaskViewsElement"

    const-string v0, "addOnGlobalLayoutListener mHomeModeTaskStackViewLayoutListener"

    .line 180
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final addRecentsLayoutListener()V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->recentView:Lcom/miui/home/recents/views/RecentsView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->mRecentsViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    const-string p0, "TaskViewsElement"

    const-string v0, "addOnGlobalLayoutListener mRecentsViewLayoutListener"

    .line 185
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final addTaskViewLayoutListener()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->recentView:Lcom/miui/home/recents/views/RecentsView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->mTaskStackViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    const-string p0, "TaskViewsElement"

    const-string v0, "addOnGlobalLayoutListener mTaskStackViewLayoutListener"

    .line 190
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final applyParams(Lcom/miui/home/recents/anim/TaskViewParamsInfo;)V
    .locals 16

    .line 368
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    .line 369
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->getReferenceIndex()I

    move-result v2

    .line 370
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->getGap()F

    move-result v3

    .line 371
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->getInitHorizontalStyle()Z

    move-result v4

    .line 372
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->getUseAnim()Z

    move-result v5

    .line 373
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->getDamping()F

    move-result v6

    .line 374
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->getResponse()F

    move-result v7

    .line 376
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->getEndRunnable()Ljava/lang/Runnable;

    move-result-object v9

    .line 377
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->getCurTaskRadius()F

    move-result v10

    .line 378
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->getCurFullScreenProgress()F

    move-result v11

    .line 379
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->isQuickSwitchMode()Z

    move-result v12

    .line 380
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->getQuickSwitchTaskIndex()I

    move-result v13

    .line 381
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->getMPer()F

    move-result v14

    .line 382
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->getWindowMode()I

    move-result v15

    const/4 v8, 0x0

    move-object/from16 v0, p0

    .line 367
    invoke-direct/range {v0 .. v15}, Lcom/miui/home/recents/anim/TaskViewsElement;->updateTaskViewNew(Landroid/graphics/RectF;IFZZFFZLjava/lang/Runnable;FFZIFI)V

    return-void
.end method

.method private final callUpdateTaskViewMethods(Ljava/util/List;ILcom/miui/home/launcher/common/BooleanValue;Landroid/graphics/RectF;FIFZZFFZLjava/lang/Runnable;FFZIFILandroid/graphics/Rect;Lcom/miui/home/recents/anim/PairCounts;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;I",
            "Lcom/miui/home/launcher/common/BooleanValue;",
            "Landroid/graphics/RectF;",
            "FIFZZFFZ",
            "Ljava/lang/Runnable;",
            "FFZIFI",
            "Landroid/graphics/Rect;",
            "Lcom/miui/home/recents/anim/PairCounts;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p6

    .line 636
    iget-object v1, v0, Lcom/miui/home/recents/anim/TaskViewsElement;->recentView:Lcom/miui/home/recents/views/RecentsView;

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewFromStackIndex(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v5

    :goto_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v6, 0x1

    if-eqz p16, :cond_3

    if-eqz p12, :cond_3

    move/from16 v15, p17

    if-ne v2, v15, :cond_4

    .line 639
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v6, :cond_2

    if-eqz p13, :cond_2

    .line 640
    invoke-interface/range {p13 .. p13}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void

    :cond_3
    move/from16 v15, p17

    :cond_4
    move-object/from16 v7, p1

    .line 644
    invoke-direct {v0, v7, v2, v4}, Lcom/miui/home/recents/anim/TaskViewsElement;->getFgSmallWindowCountBetweenA_B(Ljava/util/List;II)I

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz p8, :cond_6

    if-ge v2, v4, :cond_5

    goto :goto_1

    :cond_5
    const/4 v6, -0x1

    .line 648
    :goto_1
    invoke-virtual/range {p20 .. p20}, Landroid/graphics/Rect;->width()I

    move-result v8

    mul-int/2addr v6, v8

    int-to-float v6, v6

    const v8, 0x3ee66666    # 0.45f

    mul-float/2addr v6, v8

    add-float v6, p5, v6

    .line 649
    iget v8, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v6, v8}, Landroid/graphics/RectF;->offsetTo(FF)V

    const/4 v6, 0x0

    move v8, v6

    .line 652
    :cond_6
    invoke-virtual/range {p3 .. p3}, Lcom/miui/home/launcher/common/BooleanValue;->getValue()Z

    move-result v6

    const/4 v9, 0x0

    if-eqz v6, :cond_7

    move-object/from16 v6, p3

    .line 653
    invoke-virtual {v6, v9}, Lcom/miui/home/launcher/common/BooleanValue;->setValue(Z)V

    move-object/from16 v11, p13

    goto :goto_2

    :cond_7
    move-object v11, v5

    .line 657
    :goto_2
    iget-object v5, v0, Lcom/miui/home/recents/anim/TaskViewsElement;->currentTaskViewParams:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->getTouchRegion()I

    move-result v9

    :cond_8
    invoke-static {v9}, Lcom/miui/home/launcher/util/SoscUtils;->isSoscTouchSingleApp(I)Z

    move-result v5

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    move/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p6

    move v5, v7

    move/from16 v6, p7

    move v7, v8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move-object/from16 v12, p21

    move/from16 v13, p14

    move/from16 v14, p15

    move/from16 v15, p16

    move/from16 v16, p17

    move/from16 v17, p18

    move/from16 v18, p19

    move-object/from16 v19, p20

    .line 658
    invoke-direct/range {v0 .. v19}, Lcom/miui/home/recents/anim/TaskViewsElement;->updateTaskViewTouchSingleApp(Lcom/miui/home/recents/views/TaskView;ILandroid/graphics/RectF;IIFFZFFLjava/lang/Runnable;Lcom/miui/home/recents/anim/PairCounts;FFZIFILandroid/graphics/Rect;)V

    goto :goto_3

    :cond_9
    move-object/from16 v0, p0

    move/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p6

    move v5, v7

    move/from16 v6, p7

    move v7, v8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v12, p14

    move/from16 v13, p15

    move/from16 v14, p16

    move/from16 v15, p17

    move/from16 v16, p18

    move-object/from16 v17, p20

    .line 680
    invoke-direct/range {v0 .. v17}, Lcom/miui/home/recents/anim/TaskViewsElement;->updateTaskView(Lcom/miui/home/recents/views/TaskView;ILandroid/graphics/RectF;IIFFZFFLjava/lang/Runnable;FFZIFLandroid/graphics/Rect;)V

    :goto_3
    return-void
.end method

.method private final checkNeedAnim(FFLcom/miui/home/recents/views/TaskView;)Z
    .locals 0

    .line 1026
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result p0

    sub-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3f666666    # 0.9f

    cmpl-float p0, p0, p1

    if-gtz p0, :cond_1

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p0

    sub-float/2addr p2, p0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_0

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

.method private final enterRecent()V
    .locals 2

    .line 1278
    iget-object p0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->recentView:Lcom/miui/home/recents/views/RecentsView;

    if-eqz p0, :cond_0

    .line 1279
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startToRecentsAnim(Lcom/miui/home/recents/views/RecentsView;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private final exitRecent()V
    .locals 2

    .line 1271
    iget-object p0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->recentView:Lcom/miui/home/recents/views/RecentsView;

    if-eqz p0, :cond_0

    .line 1272
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->stopScroll()V

    .line 1273
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startToHomeAnim(Lcom/miui/home/recents/views/RecentsView;Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private final getCurrentTaskViewRadius(Lcom/miui/home/recents/views/TaskView;FLandroid/graphics/Rect;)F
    .locals 0

    .line 1044
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p2, p1

    invoke-direct {p0, p3}, Lcom/miui/home/recents/anim/TaskViewsElement;->getTaskViewLength(Landroid/graphics/Rect;)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p2, p0

    return p2
.end method

.method private final getFgSmallWindowCountBetweenA_B(Ljava/util/List;II)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;II)I"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    .line 429
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_1

    if-eq p2, p3, :cond_1

    .line 431
    invoke-static {p2, p3}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v0

    .line 432
    invoke-static {p2, p3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p2

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_1

    .line 434
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/shared/recents/model/Task;

    if-eqz p3, :cond_0

    .line 435
    invoke-virtual {p3}, Lcom/android/systemui/shared/recents/model/Task;->isNeedHide()Z

    move-result p3

    if-eqz p3, :cond_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return p0
.end method

.method private final getPercentsValue(FFF)F
    .locals 0

    const/4 p0, 0x0

    .line 420
    invoke-static {p0, p1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1, p0}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result p0

    sub-float/2addr p3, p2

    mul-float/2addr p3, p0

    add-float/2addr p2, p3

    return p2
.end method

.method private final getTaskViewLength(Landroid/graphics/Rect;)I
    .locals 0

    .line 1031
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 1032
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getCalculator()Lcom/miui/home/recents/GestureHomeCalculator;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->isLeftOrRightPositionGesture()Z

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_2

    .line 1033
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    goto :goto_2

    .line 1035
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    :goto_2
    return p0
.end method

.method private final hideEmptyView()V
    .locals 0

    .line 1402
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/home/recents/views/RecentsView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 1403
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->hideEmptyView()V

    :cond_1
    return-void
.end method

.method private final hideTaskView()V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "TaskViewsElement"

    const-string v2, "hideTaskView"

    .line 1215
    invoke-static {v1, v2}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/anim/TaskViewsElement;->isRecentsLoaded()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lcom/miui/home/recents/anim/TaskViewsElement;->isShowRecents:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/miui/home/recents/anim/TaskViewsElement;->currentTaskViewParams:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    if-eqz v2, :cond_1

    .line 1217
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/anim/TaskViewsElement;->updateHideTaskViewRectF()V

    const/4 v2, 0x1

    .line 1218
    invoke-direct {v0, v2}, Lcom/miui/home/recents/anim/TaskViewsElement;->setIsNeedAnim(Z)V

    .line 1219
    iget-object v2, v0, Lcom/miui/home/recents/anim/TaskViewsElement;->currentTaskViewParams:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->isQuickSwitchMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/miui/home/recents/anim/TaskViewsElement$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/miui/home/recents/anim/TaskViewsElement$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/recents/anim/TaskViewsElement;)V

    :goto_0
    move-object v9, v2

    .line 1222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hideTaskView: isQuickSwitchMode= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/miui/home/recents/anim/TaskViewsElement;->currentTaskViewParams:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->isQuickSwitchMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", quickIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1223
    iget-object v3, v0, Lcom/miui/home/recents/anim/TaskViewsElement;->currentTaskViewParams:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->getQuickSwitchTaskIndex()I

    move-result v3

    .line 1222
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mHideTaskViewRectF="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1224
    iget-object v3, v0, Lcom/miui/home/recents/anim/TaskViewsElement;->mHideTaskViewRectF:Landroid/graphics/RectF;

    .line 1222
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    iget-object v1, v0, Lcom/miui/home/recents/anim/TaskViewsElement;->mHideTaskViewRectF:Landroid/graphics/RectF;

    .line 1227
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/anim/TaskViewsElement;->getQuickSwitchOrRunningTaskIndex()I

    move-result v2

    .line 1228
    iget-object v3, v0, Lcom/miui/home/recents/anim/TaskViewsElement;->currentTaskViewParams:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->getGap()F

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1231
    iget-object v6, v0, Lcom/miui/home/recents/anim/TaskViewsElement;->currentTaskViewParams:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->getDamping()F

    move-result v6

    .line 1232
    iget-object v7, v0, Lcom/miui/home/recents/anim/TaskViewsElement;->currentTaskViewParams:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->getResponse()F

    move-result v7

    const/4 v8, 0x1

    .line 1235
    iget-object v10, v0, Lcom/miui/home/recents/anim/TaskViewsElement;->currentTaskViewParams:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v10}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->getCurTaskRadius()F

    move-result v10

    .line 1236
    iget-object v11, v0, Lcom/miui/home/recents/anim/TaskViewsElement;->currentTaskViewParams:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v11}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->getCurFullScreenProgress()F

    move-result v11

    .line 1237
    iget-object v12, v0, Lcom/miui/home/recents/anim/TaskViewsElement;->currentTaskViewParams:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v12}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->isQuickSwitchMode()Z

    move-result v12

    .line 1238
    iget-object v13, v0, Lcom/miui/home/recents/anim/TaskViewsElement;->currentTaskViewParams:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v13}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->getQuickSwitchTaskIndex()I

    move-result v13

    .line 1239
    iget-object v14, v0, Lcom/miui/home/recents/anim/TaskViewsElement;->currentTaskViewParams:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v14}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->getMPer()F

    move-result v14

    .line 1240
    iget-object v15, v0, Lcom/miui/home/recents/anim/TaskViewsElement;->currentTaskViewParams:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v15}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->getWindowMode()I

    move-result v15

    move-object/from16 v0, p0

    .line 1226
    invoke-direct/range {v0 .. v15}, Lcom/miui/home/recents/anim/TaskViewsElement;->updateTaskViewNew(Landroid/graphics/RectF;IFZZFFZLjava/lang/Runnable;FFZIFI)V

    goto :goto_1

    .line 1242
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/anim/TaskViewsElement;->finishHideTaskView()V

    :goto_1
    return-void
.end method

.method private static final hideTaskView$lambda-14(Lcom/miui/home/recents/anim/TaskViewsElement;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1220
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/TaskViewsElement;->finishHideTaskView()V

    return-void
.end method

.method private final isInvalidRectF(Landroid/graphics/RectF;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 445
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

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

.method private final isRecentsLoaded()Z
    .locals 0

    .line 449
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p0

    .line 450
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final isTaskStackLayoutStyleVertical()Z
    .locals 0

    .line 414
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->isTaskStackViewLayoutStyleVertical()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final isTaskStackVerticalLayoutForBottomGesture()Z
    .locals 4

    .line 459
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 460
    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->isDifferentRotation()Z

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    .line 461
    :goto_1
    invoke-direct {p0}, Lcom/miui/home/recents/anim/TaskViewsElement;->isTaskStackLayoutStyleVertical()Z

    move-result p0

    const/4 v3, 0x1

    if-eqz p0, :cond_3

    if-nez v2, :cond_3

    if-eqz v0, :cond_2

    .line 463
    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->getCalculator()Lcom/miui/home/recents/GestureHomeCalculator;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureHomeCalculator;->isBottomPositionGesture()Z

    move-result p0

    goto :goto_2

    :cond_2
    move p0, v3

    :goto_2
    if-eqz p0, :cond_3

    move v1, v3

    :cond_3
    return v1
.end method

.method private final onTaskOpening(Lcom/miui/home/recents/views/TaskView;)V
    .locals 5

    .line 1284
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1285
    iget-object v1, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->recentView:Lcom/miui/home/recents/views/RecentsView;

    if-eqz v1, :cond_5

    .line 1286
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0xb4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/home/recents/views/RecentsContainer;->startRecentsContainerFadeOutAnim(JJ)V

    .line 1288
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->recentView:Lcom/miui/home/recents/views/RecentsView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->recentView:Lcom/miui/home/recents/views/RecentsView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isUseTaskStackLayoutStyleHorizontalAnim(Z)Z

    move-result v0

    xor-int/2addr v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1290
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    .line 1291
    iget-object p0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->recentView:Lcom/miui/home/recents/views/RecentsView;

    if-eqz p1, :cond_2

    .line 1292
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v1

    .line 1290
    :goto_1
    invoke-virtual {v0, p0, p1, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startLaunchTaskSucceededAnim(Lcom/miui/home/recents/views/RecentsView;Lcom/android/systemui/shared/recents/model/Task;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    goto :goto_4

    .line 1297
    :cond_3
    :try_start_0
    iget-object p0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->recentView:Lcom/miui/home/recents/views/RecentsView;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 1298
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/recents/views/TaskView;

    .line 1299
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    if-eqz p1, :cond_4

    .line 1300
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object p1

    goto :goto_3

    :cond_4
    move-object p1, v1

    :goto_3
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->cancelAllSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 1304
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTaskOpening: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TaskViewsElement"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_4
    return-void
.end method

.method private final resetTaskView()V
    .locals 1

    .line 194
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/TaskViewsElement;->getQuickSwitchOrRunningTaskIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/home/recents/anim/TaskViewsElement;->resetTaskView(I)V

    return-void
.end method

.method private final resetTaskView(I)V
    .locals 18

    .line 1095
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "TaskViewsElement"

    const-string v2, "resetTaskView"

    invoke-static {v1, v2, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    .line 1097
    iget-object v0, v0, Lcom/miui/home/recents/anim/TaskViewsElement;->recentView:Lcom/miui/home/recents/views/RecentsView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1098
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v3

    .line 1099
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/miui/home/recents/messages/FsGestureEnterRecentsZoomEvent;

    invoke-direct {v2}, Lcom/miui/home/recents/messages/FsGestureEnterRecentsZoomEvent;-><init>()V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    const-wide/16 v1, 0x320

    const/4 v4, 0x0

    .line 1102
    invoke-static {v3, v4, v1, v2}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->showStatusBar(Lcom/miui/home/launcher/Launcher;ZJ)V

    .line 1104
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 1105
    invoke-static {v3, v2}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurWhenGestureResetTaskView(Lcom/miui/home/launcher/Launcher;Z)V

    :cond_1
    if-eqz v0, :cond_2

    .line 1108
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    if-lez v1, :cond_3

    .line 1110
    sget-object v3, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;->INSTANCE:Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;

    const-wide/16 v5, 0x13c

    invoke-virtual {v3, v5, v6, v2}, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;->setScenarioState(JZ)V

    :cond_3
    :goto_2
    if-ge v4, v1, :cond_5

    .line 1116
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Lcom/miui/home/recents/views/TaskStackView;->getStackIndexFromTaskViewIndex(I)I

    move-result v3

    .line 1117
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "sv.taskViews[i]"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/miui/home/recents/views/TaskView;

    sub-int v3, v3, p1

    .line 1119
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sub-int v6, v1, v6

    int-to-float v6, v6

    .line 1118
    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    .line 1120
    invoke-virtual {v5}, Lcom/miui/home/recents/views/TaskView;->getFullscreenProgress()F

    move-result v8

    .line 1121
    invoke-virtual {v5}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getCornerRadius()I

    move-result v10

    .line 1122
    invoke-virtual {v5}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getTaskRatio()F

    move-result v12

    .line 1123
    invoke-static {}, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->getTaskViewCornerRadius()I

    move-result v11

    .line 1124
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v13, 0xc8

    invoke-virtual {v6, v13, v14}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 1125
    new-instance v13, Lcom/miui/home/recents/anim/TaskViewsElement$$ExternalSyntheticLambda1;

    move-object v7, v13

    move-object v9, v5

    invoke-direct/range {v7 .. v12}, Lcom/miui/home/recents/anim/TaskViewsElement$$ExternalSyntheticLambda1;-><init>(FLcom/miui/home/recents/views/TaskView;IIF)V

    invoke-virtual {v6, v13}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 1135
    new-instance v7, Lcom/miui/home/recents/anim/TaskViewsElement$resetTaskView$2;

    invoke-direct {v7, v4, v5}, Lcom/miui/home/recents/anim/TaskViewsElement$resetTaskView$2;-><init>(ILcom/miui/home/recents/views/TaskView;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 1147
    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    const v6, 0x3e99999a    # 0.3f

    const/4 v7, 0x4

    .line 1149
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v7, v3}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v3

    int-to-float v3, v3

    const v7, 0x3d4ccccd    # 0.05f

    mul-float/2addr v3, v7

    add-float/2addr v3, v6

    .line 1150
    invoke-virtual {v5, v2}, Lcom/miui/home/recents/views/TaskView;->setIgnoreTranslationWhenFindTouchView(Z)V

    .line 1151
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v7

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v14, 0x0

    const v15, 0x3f6147ae    # 0.88f

    new-instance v6, Lcom/miui/home/recents/anim/TaskViewsElement$$ExternalSyntheticLambda3;

    invoke-direct {v6, v5}, Lcom/miui/home/recents/anim/TaskViewsElement$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/recents/views/TaskView;)V

    move-object v8, v5

    move v9, v4

    move/from16 v16, v3

    move-object/from16 v17, v6

    invoke-virtual/range {v7 .. v17}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startTaskViewSpringAnim(Lcom/miui/home/recents/views/TaskView;IFFFFFFFLjava/lang/Runnable;)V

    .line 1157
    invoke-virtual {v5}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/shared/recents/model/Task;->is9_1Task()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1158
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v6

    const v7, 0x3f6147ae    # 0.88f

    invoke-virtual {v6, v5, v7, v3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startTaskViewThumbnailResetSpringAnim(Lcom/miui/home/recents/views/TaskView;FF)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_5
    return-void
.end method

.method private static final resetTaskView$lambda-12(FLcom/miui/home/recents/views/TaskView;IIFLandroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "$tv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1126
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p5

    const/4 v0, 0x0

    int-to-float v0, v0

    sub-float/2addr v0, p0

    mul-float/2addr v0, p5

    add-float/2addr p0, v0

    .line 1129
    invoke-virtual {p1, p0}, Lcom/miui/home/recents/views/TaskView;->setFullscreenProgress(F)V

    int-to-float p0, p2

    sub-int/2addr p3, p2

    int-to-float p2, p3

    mul-float/2addr p2, p5

    add-float/2addr p0, p2

    .line 1131
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object p2

    float-to-int p0, p0

    invoke-virtual {p2, p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setCornerRadius(I)V

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p4

    mul-float/2addr p2, p5

    add-float/2addr p4, p2

    .line 1133
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setTaskRatio(F)V

    .line 1134
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getSecondThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setCornerRadius(I)V

    return-void
.end method

.method private static final resetTaskView$lambda-13(Lcom/miui/home/recents/views/TaskView;)V
    .locals 1

    const-string v0, "$tv"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1154
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    const/4 v0, 0x0

    .line 1155
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->setIgnoreTranslationWhenFindTouchView(Z)V

    return-void
.end method

.method private final resetTaskViewFullscreenProgress()V
    .locals 10

    .line 1064
    iget-object v0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->recentView:Lcom/miui/home/recents/views/RecentsView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1065
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v2

    .line 1067
    :goto_1
    iget-object v4, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->currentTaskViewParams:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    if-nez v4, :cond_2

    .line 1068
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-string v0, "TaskViewsElement"

    const-string v1, "currentTaskViewParams is null"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_2
    :goto_2
    if-ge v2, v3, :cond_4

    .line 1073
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "sv!!.taskViews[i]"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/miui/home/recents/views/TaskView;

    .line 1074
    invoke-virtual {v4}, Lcom/miui/home/recents/views/TaskView;->getFullscreenProgress()F

    move-result v5

    .line 1075
    iget-object v6, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->currentTaskViewParams:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->getMPer()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    goto :goto_3

    :cond_3
    move-object v6, v1

    :goto_3
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 1077
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const-wide/16 v8, 0xc8

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    .line 1078
    new-instance v8, Lcom/miui/home/recents/anim/TaskViewsElement$$ExternalSyntheticLambda0;

    invoke-direct {v8, v5, v6, p0, v4}, Lcom/miui/home/recents/anim/TaskViewsElement$$ExternalSyntheticLambda0;-><init>(FFLcom/miui/home/recents/anim/TaskViewsElement;Lcom/miui/home/recents/views/TaskView;)V

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 1085
    new-instance v6, Lcom/miui/home/recents/anim/TaskViewsElement$resetTaskViewFullscreenProgress$2;

    invoke-direct {v6, v4}, Lcom/miui/home/recents/anim/TaskViewsElement$resetTaskViewFullscreenProgress$2;-><init>(Lcom/miui/home/recents/views/TaskView;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 1090
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private static final resetTaskViewFullscreenProgress$lambda-11(FFLcom/miui/home/recents/anim/TaskViewsElement;Lcom/miui/home/recents/views/TaskView;Landroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$tv"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1079
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p4

    const/4 v0, 0x1

    int-to-float v0, v0

    sub-float v1, v0, p0

    mul-float/2addr v1, p4

    add-float/2addr p0, v1

    const/4 v1, 0x0

    int-to-float v1, v1

    sub-float/2addr v1, p1

    mul-float/2addr v1, p4

    add-float/2addr p1, v1

    .line 1082
    iget-object p4, p2, Lcom/miui/home/recents/anim/TaskViewsElement;->currentTaskViewParams:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    sub-float/2addr v0, p0

    invoke-virtual {p4, v0}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->setCurFullScreenProgress(F)V

    .line 1083
    :goto_0
    iget-object p2, p2, Lcom/miui/home/recents/anim/TaskViewsElement;->currentTaskViewParams:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2, p1}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->setMPer(F)V

    .line 1084
    :goto_1
    invoke-virtual {p3, p0}, Lcom/miui/home/recents/views/TaskView;->setFullscreenProgress(F)V

    return-void
.end method

.method private final resetTaskViewThumbnailScaleX(Lcom/miui/home/recents/views/TaskView;)V
    .locals 1

    .line 409
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 410
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getSecondThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    return-void
.end method

.method private final setIsNeedAnim(Z)V
    .locals 0

    .line 355
    iput-boolean p1, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->isNeedAnim:Z

    return-void
.end method

.method private final setMRunningTaskId(I)V
    .locals 1

    .line 119
    iput p1, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->mRunningTaskId:I

    .line 120
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set mRunningTaskId="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TaskViewsElement"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final stopTaskStackScroll()V
    .locals 0

    .line 1267
    iget-object p0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->recentView:Lcom/miui/home/recents/views/RecentsView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->stopScroll()V

    :cond_0
    return-void
.end method

.method private final updateHideTaskViewRectF()V
    .locals 4

    .line 1203
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsContainer;->isLandscapeVisually()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1204
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateHideTaskViewRectF, isLandscape="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TaskViewsElement"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceMinSize()I

    move-result v1

    int-to-float v1, v1

    .line 1207
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceMaxSize()I

    move-result v2

    int-to-float v2, v2

    .line 1208
    iget-object p0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->mHideTaskViewRectF:Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private final updateTaskTransY()V
    .locals 7

    .line 1048
    iget-object v0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->recentView:Lcom/miui/home/recents/views/RecentsView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 1049
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getStackAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1051
    iget-object v4, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->currentTaskViewParams:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->isQuickSwitchMode()Z

    move-result v4

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    move v5, v2

    .line 1052
    :goto_1
    iget-object v4, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->currentTaskViewParams:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->getReferenceIndex()I

    move-result v4

    goto :goto_2

    :cond_2
    const/4 v4, -0x1

    .line 1053
    :goto_2
    iget v6, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->mRunningTaskIndex:I

    .line 1050
    invoke-virtual {v3, v5, v4, v6}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTargetTaskViewIndex(ZII)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_3

    :cond_3
    move-object v3, v1

    :goto_3
    if-eqz v0, :cond_5

    if-eqz v3, :cond_4

    .line 1055
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_4
    invoke-virtual {v0, v2}, Lcom/miui/home/recents/views/TaskStackView;->getScrollForTaskView(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 1056
    :cond_5
    invoke-direct {p0}, Lcom/miui/home/recents/anim/TaskViewsElement;->isRecentsLoaded()Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    .line 1057
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/views/TaskStackView;->changeTaskStackViewScrollAndTaskViewTranslation(F)V

    return-void

    .line 1058
    :cond_6
    invoke-direct {p0}, Lcom/miui/home/recents/anim/TaskViewsElement;->isRecentsLoaded()Z

    return-void
.end method

.method private final updateTaskView(Lcom/miui/home/recents/views/TaskView;ILandroid/graphics/RectF;IIFFZFFLjava/lang/Runnable;FFZIFLandroid/graphics/Rect;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p16

    .line 718
    iget-object v5, v0, Lcom/miui/home/recents/anim/TaskViewsElement;->recentView:Lcom/miui/home/recents/views/RecentsView;

    if-nez v5, :cond_0

    return-void

    .line 721
    :cond_0
    new-instance v5, Landroid/graphics/RectF;

    move-object/from16 v6, p3

    invoke-direct {v5, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 722
    iget-object v6, v0, Lcom/miui/home/recents/anim/TaskViewsElement;->recentView:Lcom/miui/home/recents/views/RecentsView;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/home/recents/views/TaskStackView;->getStackAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v6

    .line 723
    invoke-virtual {v6}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getRecentsTaskViewHeaderHeight()I

    move-result v6

    int-to-float v6, v6

    move/from16 v7, p12

    move-object/from16 v8, p17

    .line 725
    invoke-direct {v0, v1, v7, v8}, Lcom/miui/home/recents/anim/TaskViewsElement;->getCurrentTaskViewRadius(Lcom/miui/home/recents/views/TaskView;FLandroid/graphics/Rect;)F

    move-result v7

    float-to-int v7, v7

    .line 726
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setCornerRadius(I)V

    .line 727
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getSecondThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setCornerRadius(I)V

    const/4 v7, 0x1

    int-to-float v8, v7

    sub-float v8, v8, p13

    .line 729
    invoke-virtual {v1, v8}, Lcom/miui/home/recents/views/TaskView;->setFullscreenProgress(F)V

    .line 734
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 735
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v9

    .line 736
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v10

    const/high16 v13, 0x40000000    # 2.0f

    const/4 v14, 0x0

    if-eqz v10, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v10

    if-eqz v10, :cond_9

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-nez v10, :cond_9

    .line 737
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    .line 738
    invoke-virtual {v8, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 739
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getInsets()Landroid/graphics/Rect;

    move-result-object v5

    .line 740
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v15, v6

    mul-float/2addr v10, v15

    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v10, v15

    .line 741
    iget v15, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v15, v10

    iput v15, v8, Landroid/graphics/RectF;->bottom:F

    .line 742
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v10

    .line 743
    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v15

    sub-int v11, v2, v3

    .line 745
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-le v12, v7, :cond_2

    if-le v2, v3, :cond_1

    add-float v10, v10, p6

    neg-float v3, v10

    sub-int v7, v11, p5

    goto :goto_0

    :cond_1
    add-float v10, v10, p6

    neg-float v3, v10

    add-int v7, v11, p5

    :goto_0
    int-to-float v7, v7

    goto :goto_1

    :cond_2
    add-float v10, v10, p6

    neg-float v3, v10

    int-to-float v7, v11

    :goto_1
    mul-float/2addr v3, v7

    add-float/2addr v3, v14

    .line 754
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getRight()I

    move-result v10

    add-int/2addr v7, v10

    int-to-float v7, v7

    div-float/2addr v7, v13

    sub-float/2addr v15, v7

    add-float/2addr v15, v3

    const v3, 0x47c35000    # 100000.0f

    cmpl-float v7, v15, v3

    if-lez v7, :cond_3

    const v15, 0x47c35000    # 100000.0f

    .line 758
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/miui/home/recents/anim/TaskViewsElement;->resetTaskViewThumbnailScaleX(Lcom/miui/home/recents/views/TaskView;)V

    .line 759
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v3, v7

    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v3, v10

    if-eqz p14, :cond_4

    move/from16 v10, p15

    if-eq v2, v10, :cond_5

    .line 762
    :cond_4
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 763
    :cond_5
    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    move v4, v14

    goto :goto_2

    .line 766
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/anim/TaskViewsElement;->isTaskStackVerticalLayoutForBottomGesture()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 769
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v10

    int-to-float v10, v10

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    sub-float/2addr v10, v5

    div-float/2addr v10, v13

    .line 770
    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    .line 767
    invoke-direct {v0, v4, v10, v3}, Lcom/miui/home/recents/anim/TaskViewsElement;->getPercentsValue(FFF)F

    move-result v3

    .line 775
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x32

    add-int/lit8 v5, v5, 0x19

    int-to-float v5, v5

    .line 772
    invoke-direct {v0, v4, v14, v5}, Lcom/miui/home/recents/anim/TaskViewsElement;->getPercentsValue(FFF)F

    move-result v4

    goto :goto_2

    .line 778
    :cond_7
    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    const/16 v5, 0x12c

    int-to-float v5, v5

    mul-float/2addr v5, v4

    mul-float/2addr v5, v4

    mul-float/2addr v4, v5

    :goto_2
    mul-float/2addr v6, v9

    div-float/2addr v6, v13

    sub-float/2addr v3, v6

    .line 782
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v13

    sub-float/2addr v3, v5

    add-float/2addr v3, v4

    const v4, 0x47c35000    # 100000.0f

    cmpl-float v5, v3, v4

    if-lez v5, :cond_8

    move v8, v4

    goto :goto_3

    :cond_8
    move v8, v3

    :goto_3
    move v5, v9

    move v6, v15

    goto :goto_4

    :cond_9
    const/high16 v7, 0x3f800000    # 1.0f

    move v5, v7

    move v6, v14

    move v8, v6

    :goto_4
    if-eqz p8, :cond_b

    .line 787
    iget-boolean v3, v0, Lcom/miui/home/recents/anim/TaskViewsElement;->isNeedAnim:Z

    if-eqz v3, :cond_b

    .line 788
    invoke-direct {v0, v6, v8, v1}, Lcom/miui/home/recents/anim/TaskViewsElement;->checkNeedAnim(FFLcom/miui/home/recents/views/TaskView;)Z

    move-result v3

    invoke-direct {v0, v3}, Lcom/miui/home/recents/anim/TaskViewsElement;->setIsNeedAnim(Z)V

    const/high16 v0, 0x40800000    # 4.0f

    int-to-float v3, v2

    sub-float/2addr v3, v5

    .line 790
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v0, v3}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v0

    const v3, 0x3d4ccccd    # 0.05f

    mul-float/2addr v0, v3

    add-float v9, p10, v0

    .line 791
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    .line 792
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task;->isNeedHide()Z

    move-result v3

    if-eqz v3, :cond_a

    move v3, v14

    goto :goto_5

    :cond_a
    move v3, v7

    :goto_5
    move-object/from16 v1, p1

    move/from16 v2, p2

    move v4, v5

    move v7, v8

    move/from16 v8, p9

    move-object/from16 v10, p11

    .line 791
    invoke-virtual/range {v0 .. v10}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startTaskViewSpringAnim(Lcom/miui/home/recents/views/TaskView;IFFFFFFFLjava/lang/Runnable;)V

    goto :goto_7

    .line 796
    :cond_b
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->setSyncTransactionApplier()V

    .line 797
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->cancelAllSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;)V

    .line 798
    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 799
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 800
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v13

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 801
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v13

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 802
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 803
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 804
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->isNeedHide()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_6

    :cond_c
    move/from16 v14, p7

    :goto_6
    invoke-virtual {v1, v14}, Landroid/widget/FrameLayout;->setAlpha(F)V

    if-eqz p11, :cond_d

    .line 805
    invoke-interface/range {p11 .. p11}, Ljava/lang/Runnable;->run()V

    :cond_d
    :goto_7
    return-void
.end method

.method private final updateTaskViewNew(Landroid/graphics/RectF;IFZZFFZLjava/lang/Runnable;FFZIFI)V
    .locals 35

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTaskViewNew mReLoadTaskFinished = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v15, Lcom/miui/home/recents/anim/TaskViewsElement;->mReLoadTaskFinished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " rectF = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskViewsElement"

    invoke-static {v1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iget-boolean v0, v15, Lcom/miui/home/recents/anim/TaskViewsElement;->mReLoadTaskFinished:Z

    if-nez v0, :cond_0

    return-void

    .line 511
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    move-object/from16 v22, v0

    goto :goto_0

    :cond_1
    move-object/from16 v22, v2

    .line 512
    :goto_0
    invoke-direct/range {p0 .. p1}, Lcom/miui/home/recents/anim/TaskViewsElement;->isInvalidRectF(Landroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_c

    if-nez v22, :cond_2

    goto/16 :goto_4

    :cond_2
    if-eqz p4, :cond_3

    .line 519
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const v3, 0x3ee66666    # 0.45f

    mul-float/2addr v0, v3

    const/4 v4, 0x2

    int-to-float v4, v4

    div-float/2addr v0, v4

    .line 520
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    div-float/2addr v5, v4

    .line 521
    invoke-virtual {v14, v0, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 523
    :cond_3
    iget-object v0, v15, Lcom/miui/home/recents/anim/TaskViewsElement;->recentView:Lcom/miui/home/recents/views/RecentsView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v2

    :cond_4
    if-nez v2, :cond_5

    const-string v0, "updateTaskViewNew error: taskStackView is null"

    .line 525
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 528
    :cond_5
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v0, "updateTaskViewNew error: stack is null"

    .line 530
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 534
    :cond_6
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    .line 536
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v23, v1

    goto :goto_1

    :cond_7
    move/from16 v23, v3

    .line 539
    :goto_1
    new-instance v13, Lcom/miui/home/launcher/common/BooleanValue;

    const/16 v24, 0x1

    if-eqz p9, :cond_8

    move/from16 v3, v24

    :cond_8
    invoke-direct {v13, v3}, Lcom/miui/home/launcher/common/BooleanValue;-><init>(Z)V

    .line 540
    iget v12, v14, Landroid/graphics/RectF;->left:F

    move v5, v12

    .line 541
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v11

    move-object v1, v11

    const-string v0, "stack.getStackTasks()"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v0, v23, -0x1

    .line 542
    invoke-virtual {v2, v0}, Lcom/miui/home/recents/views/TaskStackView;->getStackIndexFromTaskViewIndex(I)I

    move-result v10

    .line 543
    new-instance v25, Lcom/miui/home/recents/anim/PairCounts;

    move-object/from16 v21, v25

    invoke-direct/range {v25 .. v25}, Lcom/miui/home/recents/anim/PairCounts;-><init>()V

    move-object/from16 v0, p0

    move/from16 v2, p2

    move-object v3, v13

    move-object/from16 v4, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v26, v10

    move/from16 v10, p6

    move-object/from16 v27, v11

    move/from16 v11, p7

    move/from16 v28, v12

    move/from16 v12, p8

    move-object/from16 v29, v13

    move-object/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    move/from16 v16, p12

    move/from16 v17, p13

    move/from16 v18, p14

    move/from16 v19, p15

    move-object/from16 v20, v22

    .line 544
    invoke-direct/range {v0 .. v21}, Lcom/miui/home/recents/anim/TaskViewsElement;->callUpdateTaskViewMethods(Ljava/util/List;ILcom/miui/home/launcher/common/BooleanValue;Landroid/graphics/RectF;FIFZZFFZLjava/lang/Runnable;FFZIFILandroid/graphics/Rect;Lcom/miui/home/recents/anim/PairCounts;)V

    add-int/lit8 v0, p2, -0x1

    move/from16 v15, v26

    sub-int v10, v15, v23

    add-int/lit8 v14, v10, 0x1

    if-gt v14, v0, :cond_9

    move v13, v0

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move v2, v13

    move-object/from16 v3, v29

    move-object/from16 v4, p1

    move/from16 v5, v28

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v30, v13

    move-object/from16 v13, p9

    move/from16 v31, v14

    move/from16 v14, p10

    move/from16 v32, v15

    move/from16 v15, p11

    move/from16 v16, p12

    move/from16 v17, p13

    move/from16 v18, p14

    move/from16 v19, p15

    move-object/from16 v20, v22

    move-object/from16 v21, v25

    .line 560
    invoke-direct/range {v0 .. v21}, Lcom/miui/home/recents/anim/TaskViewsElement;->callUpdateTaskViewMethods(Ljava/util/List;ILcom/miui/home/launcher/common/BooleanValue;Landroid/graphics/RectF;FIFZZFFZLjava/lang/Runnable;FFZIFILandroid/graphics/Rect;Lcom/miui/home/recents/anim/PairCounts;)V

    move/from16 v0, v30

    move/from16 v10, v31

    if-eq v0, v10, :cond_a

    add-int/lit8 v13, v0, -0x1

    move v14, v10

    move/from16 v15, v32

    goto :goto_2

    :cond_9
    move/from16 v32, v15

    :cond_a
    add-int/lit8 v0, p2, 0x1

    move/from16 v15, v32

    if-gt v0, v15, :cond_b

    move v14, v0

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move v2, v14

    move-object/from16 v3, v29

    move-object/from16 v4, p1

    move/from16 v5, v28

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v13, p9

    move/from16 v33, v14

    move/from16 v14, p10

    move/from16 v34, v15

    move/from16 v15, p11

    move/from16 v16, p12

    move/from16 v17, p13

    move/from16 v18, p14

    move/from16 v19, p15

    move-object/from16 v20, v22

    move-object/from16 v21, v25

    .line 585
    invoke-direct/range {v0 .. v21}, Lcom/miui/home/recents/anim/TaskViewsElement;->callUpdateTaskViewMethods(Ljava/util/List;ILcom/miui/home/launcher/common/BooleanValue;Landroid/graphics/RectF;FIFZZFFZLjava/lang/Runnable;FFZIFILandroid/graphics/Rect;Lcom/miui/home/recents/anim/PairCounts;)V

    move/from16 v1, v33

    move/from16 v0, v34

    if-eq v1, v0, :cond_b

    add-int/lit8 v14, v1, 0x1

    move v15, v0

    goto :goto_3

    :cond_b
    return-void

    :cond_c
    :goto_4
    if-eqz p9, :cond_d

    .line 513
    invoke-interface/range {p9 .. p9}, Ljava/lang/Runnable;->run()V

    .line 514
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTaskViewNew error: rectF="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final updateTaskViewToInitPosition(Landroid/graphics/RectF;IZ)V
    .locals 2

    const-string v0, "TaskViewsElement"

    const-string v1, "updateTaskViewToInitPosition"

    .line 1247
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    iget-object v0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->currentTaskViewParams:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    if-eqz v0, :cond_0

    .line 1249
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->setRectF(Landroid/graphics/RectF;)V

    .line 1250
    invoke-virtual {v0, p2}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->setReferenceIndex(I)V

    .line 1251
    invoke-virtual {v0, p3}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->setUseAnim(Z)V

    .line 1252
    invoke-direct {p0, v0}, Lcom/miui/home/recents/anim/TaskViewsElement;->applyParams(Lcom/miui/home/recents/anim/TaskViewParamsInfo;)V

    :cond_0
    return-void
.end method

.method private final updateTaskViewTouchSingleApp(Lcom/miui/home/recents/views/TaskView;ILandroid/graphics/RectF;IIFFZFFLjava/lang/Runnable;Lcom/miui/home/recents/anim/PairCounts;FFZIFILandroid/graphics/Rect;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move/from16 v2, p2

    move/from16 v1, p4

    move/from16 v3, p13

    move/from16 v4, p17

    move-object/from16 v5, p19

    const-string v6, " scaleX: "

    const-string v7, "attr error:  width = "

    .line 830
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v8

    .line 831
    new-instance v12, Landroid/graphics/RectF;

    move-object/from16 v9, p3

    invoke-direct {v12, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    if-eqz v8, :cond_0

    .line 833
    invoke-virtual {v8}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/miui/home/recents/views/TaskStackView;->getStackAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getRecentsTaskViewHeaderHeight()I

    move-result v8

    int-to-float v8, v8

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 837
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v10

    .line 838
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getSecondThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v13

    .line 840
    invoke-direct {v0, v11, v3, v5}, Lcom/miui/home/recents/anim/TaskViewsElement;->getCurrentTaskViewRadius(Lcom/miui/home/recents/views/TaskView;FLandroid/graphics/Rect;)F

    move-result v14

    float-to-int v14, v14

    invoke-virtual {v10, v14}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setCornerRadius(I)V

    if-eqz v13, :cond_1

    .line 842
    invoke-direct {v0, v11, v3, v5}, Lcom/miui/home/recents/anim/TaskViewsElement;->getCurrentTaskViewRadius(Lcom/miui/home/recents/views/TaskView;FLandroid/graphics/Rect;)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v13, v3}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setCornerRadius(I)V

    :cond_1
    const/4 v3, 0x1

    int-to-float v5, v3

    sub-float v5, v5, p14

    .line 846
    invoke-virtual {v11, v5}, Lcom/miui/home/recents/views/TaskView;->setFullscreenProgress(F)V

    .line 855
    invoke-virtual/range {p12 .. p12}, Lcom/miui/home/recents/anim/PairCounts;->getPairCount()F

    .line 856
    invoke-virtual/range {p12 .. p12}, Lcom/miui/home/recents/anim/PairCounts;->getPairCountLeft()F

    move-result v5

    .line 857
    invoke-virtual/range {p12 .. p12}, Lcom/miui/home/recents/anim/PairCounts;->getPairCountRight()F

    move-result v14

    .line 858
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v15

    const-string v3, "TaskViewsElement"

    if-lez v15, :cond_1e

    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v15

    if-lez v15, :cond_1e

    .line 859
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v15, v9

    .line 860
    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v15

    move-object/from16 p13, v3

    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v8

    div-float/2addr v15, v3

    const/4 v3, 0x2

    int-to-float v3, v3

    mul-float/2addr v3, v9

    move-object/from16 p16, v6

    .line 861
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v6, p6, v6

    add-float/2addr v6, v3

    .line 862
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v12}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 863
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v16

    move-object/from16 p18, v7

    invoke-virtual/range {v16 .. v16}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getInsets()Landroid/graphics/Rect;

    move-result-object v7

    .line 865
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v16

    .line 866
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v17

    sub-int v11, v2, v1

    const/high16 v18, 0x3f000000    # 0.5f

    move/from16 p14, v6

    const/high16 v6, 0x3f800000    # 1.0f

    if-lez v11, :cond_3

    .line 870
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v19

    move/from16 p19, v9

    if-eqz v19, :cond_2

    iget v9, v0, Lcom/miui/home/recents/anim/TaskViewsElement;->mRunningTaskIndex:I

    if-eq v2, v9, :cond_2

    add-float/2addr v5, v6

    sub-float v9, v5, v18

    :goto_1
    move v6, v5

    move v5, v9

    goto/16 :goto_5

    :cond_2
    move v6, v5

    goto :goto_5

    :cond_3
    move/from16 p19, v9

    if-gez v11, :cond_5

    .line 877
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v9

    if-eqz v9, :cond_4

    iget v9, v0, Lcom/miui/home/recents/anim/TaskViewsElement;->mRunningTaskIndex:I

    if-eq v2, v9, :cond_4

    :goto_2
    add-float/2addr v14, v6

    sub-float v9, v14, v18

    goto :goto_1

    :cond_4
    move v6, v5

    move v5, v14

    goto :goto_5

    .line 884
    :cond_5
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Lcom/miui/home/recents/NavStubView;->getStartSingleAppBounds()Landroid/graphics/Rect;

    move-result-object v9

    goto :goto_3

    :cond_6
    const/4 v9, 0x0

    .line 885
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v19

    if-eqz v19, :cond_9

    if-eqz v9, :cond_9

    .line 886
    iget v6, v9, Landroid/graphics/Rect;->left:I

    if-nez v6, :cond_8

    iget v6, v9, Landroid/graphics/Rect;->top:I

    if-eqz v6, :cond_7

    goto :goto_4

    :cond_7
    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_8
    :goto_4
    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    sub-float v6, v5, v18

    move/from16 v22, v6

    move v6, v5

    move/from16 v5, v22

    goto :goto_5

    :cond_9
    move v6, v5

    const/4 v5, 0x0

    .line 897
    :goto_5
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v9

    const/16 v18, 0x0

    if-eqz v9, :cond_a

    invoke-virtual {v9}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v9

    if-eqz v9, :cond_a

    invoke-virtual {v9}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v9

    if-eqz v9, :cond_a

    invoke-virtual {v9}, Lcom/miui/home/recents/NavStubView;->getScreenWidth()I

    move-result v9

    goto :goto_6

    :cond_a
    move/from16 v9, v18

    .line 898
    :goto_6
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v20

    if-eqz v20, :cond_b

    invoke-virtual/range {v20 .. v20}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v20

    if-eqz v20, :cond_b

    invoke-virtual/range {v20 .. v20}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v20

    if-eqz v20, :cond_b

    invoke-virtual/range {v20 .. v20}, Lcom/miui/home/recents/NavStubView;->getScreenHeight()I

    move-result v20

    move-object/from16 v21, v10

    move-object/from16 v10, p12

    move/from16 v22, v20

    move-object/from16 v20, v13

    move/from16 v13, v22

    goto :goto_7

    :cond_b
    move-object/from16 v21, v10

    move-object/from16 v20, v13

    move/from16 v13, v18

    move-object/from16 v10, p12

    .line 900
    :goto_7
    invoke-virtual {v10, v5, v6, v14}, Lcom/miui/home/recents/anim/PairCounts;->setPairCounts(FFF)V

    if-le v2, v1, :cond_c

    add-float v1, v16, p6

    neg-float v1, v1

    sub-int v6, v11, p5

    int-to-float v6, v6

    add-float/2addr v6, v5

    mul-float/2addr v1, v6

    const/4 v10, 0x0

    :goto_8
    add-float/2addr v1, v10

    goto :goto_b

    :cond_c
    const/4 v10, 0x0

    if-ge v2, v1, :cond_d

    add-float v1, v16, p6

    neg-float v1, v1

    add-int v6, v11, p5

    int-to-float v6, v6

    sub-float/2addr v6, v5

    mul-float/2addr v1, v6

    goto :goto_8

    :cond_d
    cmpg-float v1, v14, v10

    if-nez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_9

    :cond_e
    move/from16 v1, v18

    :goto_9
    if-nez v1, :cond_f

    add-float v1, v16, p6

    neg-float v1, v1

    neg-float v5, v5

    :goto_a
    mul-float/2addr v1, v5

    goto :goto_8

    :cond_f
    cmpg-float v1, v6, v10

    if-nez v1, :cond_10

    const/16 v18, 0x1

    :cond_10
    if-nez v18, :cond_11

    add-float v1, v16, p6

    neg-float v1, v1

    goto :goto_a

    :cond_11
    const/4 v1, 0x0

    .line 913
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getRight()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float v17, v17, v5

    add-float v17, v17, v1

    const v1, 0x47c35000    # 100000.0f

    cmpl-float v5, v17, v1

    if-lez v5, :cond_12

    move v10, v1

    goto :goto_c

    :cond_12
    move/from16 v10, v17

    :goto_c
    int-to-float v5, v9

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v5, v9

    .line 918
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v5, v9

    .line 922
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/anim/TaskViewsElement;->isTaskStackLayoutStyleVertical()Z

    move-result v9

    if-eqz v9, :cond_13

    int-to-float v9, v13

    .line 925
    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    mul-float/2addr v7, v5

    sub-float/2addr v9, v7

    div-float/2addr v9, v6

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    .line 923
    invoke-direct {v0, v4, v9, v3}, Lcom/miui/home/recents/anim/TaskViewsElement;->getPercentsValue(FFF)F

    move-result v3

    const/16 v5, 0x19

    int-to-double v13, v5

    int-to-double v1, v11

    .line 930
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const/16 v5, 0x32

    int-to-double v6, v5

    mul-double/2addr v1, v6

    add-double/2addr v13, v1

    double-to-float v1, v13

    const/4 v2, 0x0

    .line 927
    invoke-direct {v0, v4, v2, v1}, Lcom/miui/home/recents/anim/TaskViewsElement;->getPercentsValue(FFF)F

    move-result v0

    goto :goto_d

    .line 933
    :cond_13
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    const/16 v0, 0x12c

    int-to-float v0, v0

    mul-float/2addr v0, v4

    mul-float/2addr v0, v4

    mul-float/2addr v0, v4

    :goto_d
    mul-float/2addr v8, v15

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v8, v1

    sub-float/2addr v3, v8

    .line 936
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    div-float/2addr v2, v1

    sub-float/2addr v3, v2

    add-float/2addr v3, v0

    const v0, 0x47c35000    # 100000.0f

    cmpl-float v1, v3, v0

    if-lez v1, :cond_14

    move v7, v0

    goto :goto_e

    :cond_14
    move v7, v3

    :goto_e
    move-object/from16 v0, v21

    .line 947
    invoke-virtual {v0, v15, v12}, Lcom/miui/home/recents/views/TaskViewThumbnail;->calculateInsets(FLandroid/graphics/RectF;)V

    move-object/from16 v1, v20

    if-eqz v20, :cond_15

    .line 948
    invoke-virtual {v1, v15, v12}, Lcom/miui/home/recents/views/TaskViewThumbnail;->calculateInsets(FLandroid/graphics/RectF;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_15
    if-eqz p8, :cond_19

    move/from16 v2, p10

    float-to-double v0, v2

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    move/from16 v4, p2

    int-to-float v5, v4

    sub-float v5, v5, p19

    float-to-double v5, v5

    .line 951
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    const v5, 0x3d4ccccd    # 0.05f

    float-to-double v5, v5

    mul-double/2addr v2, v5

    add-double/2addr v0, v2

    double-to-float v11, v0

    .line 952
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 953
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    .line 956
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task;->isNeedHide()Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v3, 0x0

    goto :goto_f

    :cond_16
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_f
    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p14

    move v5, v15

    move/from16 v13, p14

    move v6, v10

    move/from16 v8, p9

    move v9, v11

    move-object/from16 v10, p11

    .line 953
    invoke-virtual/range {v0 .. v10}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startTaskViewSpringAnim(Lcom/miui/home/recents/views/TaskView;IFFFFFFFLjava/lang/Runnable;)V

    .line 965
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    .line 972
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v12}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    move-object/from16 p12, v0

    move-object/from16 p13, p1

    move/from16 p15, v15

    move/from16 p16, p9

    move/from16 p17, v11

    move-object/from16 p18, p11

    move-object/from16 p19, v1

    .line 965
    invoke-virtual/range {p12 .. p19}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startTaskViewThumbnailSpringAnim(Lcom/miui/home/recents/views/TaskView;FFFFLjava/lang/Runnable;Landroid/graphics/RectF;)V

    goto/16 :goto_15

    .line 975
    :cond_17
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    .line 976
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task;->isNeedHide()Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v3, 0x0

    goto :goto_10

    :cond_18
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_10
    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p19

    move v5, v15

    move v6, v10

    move/from16 v8, p9

    move v9, v11

    move-object/from16 v10, p11

    .line 975
    invoke-virtual/range {v0 .. v10}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startTaskViewSpringAnim(Lcom/miui/home/recents/views/TaskView;IFFFFFFFLjava/lang/Runnable;)V

    goto/16 :goto_15

    :cond_19
    move/from16 v13, p14

    .line 981
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->cancelAllSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;)V

    .line 982
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v2

    if-eqz v2, :cond_1b

    move-object/from16 v2, p1

    .line 983
    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 984
    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 985
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 986
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 987
    invoke-virtual {v2, v13}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 988
    invoke-virtual {v2, v15}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 989
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task;->isNeedHide()Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v3, 0x0

    goto :goto_11

    :cond_1a
    move/from16 v3, p7

    :goto_11
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const/4 v3, 0x0

    .line 991
    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotX(F)V

    .line 992
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getRealWidth()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotY(F)V

    .line 996
    :try_start_0
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getRealWidth()F

    move-result v3

    mul-float/2addr v3, v13

    div-float v3, v16, v3

    .line 995
    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v5, p13

    move-object/from16 v0, p16

    move-object/from16 v4, p18

    goto :goto_12

    :catch_0
    const/high16 v3, 0x3f800000    # 1.0f

    .line 998
    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 999
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, p18

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getRealWidth()F

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-object/from16 v0, p16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v5, p13

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :goto_12
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 1003
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 1007
    :try_start_1
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getRealWidth()F

    move-result v2

    mul-float/2addr v2, v13

    div-float v2, v16, v2

    .line 1006
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_14

    :catch_1
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1009
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 1010
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getRealWidth()F

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_1b
    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 1013
    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1014
    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1015
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 1016
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setPivotY(F)V

    move/from16 v0, p19

    .line 1017
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1018
    invoke-virtual {v2, v15}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1019
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->isNeedHide()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_13

    :cond_1c
    move/from16 v3, p7

    :goto_13
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_14
    if-eqz p11, :cond_1d

    .line 1021
    invoke-interface/range {p11 .. p11}, Ljava/lang/Runnable;->run()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_1d
    :goto_15
    return-void

    :cond_1e
    move-object v5, v3

    move-object v2, v11

    .line 941
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTaskViewTouchSingleApp: taskView width = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", height = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public animTo(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "null cannot be cast to non-null type com.miui.home.recents.anim.TaskViewsParams"

    .line 205
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/miui/home/recents/anim/TaskViewsParams;

    .line 206
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/TaskViewsParams;->getMode()I

    move-result v0

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animTo,mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TaskViewsElement"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 341
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/miui/home/recents/anim/TaskViewsElement;->setIsNeedAnim(Z)V

    .line 342
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/TaskViewsParams;->getTaskViewParamsInfo()Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 344
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/TaskViewsElement;->showRecents()V

    .line 345
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/anim/TaskViewsElement;->setIsInGestureTopWindowHoldState(Z)V

    .line 346
    iget v0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->mRunningTaskIndex:I

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->setReferenceIndex(I)V

    .line 347
    iput-object p1, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->currentTaskViewParams:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    .line 348
    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/TaskViewsElement;->applyParams(Lcom/miui/home/recents/anim/TaskViewParamsInfo;)V

    goto/16 :goto_1

    .line 331
    :pswitch_1
    iget-object p0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->recentView:Lcom/miui/home/recents/views/RecentsView;

    if-eqz p0, :cond_6

    .line 332
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    .line 334
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/TaskViewsParams;->getTargetView()Lcom/miui/home/recents/views/TaskView;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/TaskViewsParams;->getTargetView()Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    .line 332
    :goto_0
    invoke-virtual {v0, p0, p1, v2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startClosingWindowToRecentsAnim(Lcom/miui/home/recents/views/RecentsView;Lcom/android/systemui/shared/recents/model/Task;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    goto/16 :goto_1

    .line 299
    :pswitch_2
    invoke-direct {p0}, Lcom/miui/home/recents/anim/TaskViewsElement;->enterRecent()V

    goto/16 :goto_1

    .line 304
    :pswitch_3
    invoke-direct {p0}, Lcom/miui/home/recents/anim/TaskViewsElement;->enterRecent()V

    goto/16 :goto_1

    .line 294
    :pswitch_4
    invoke-direct {p0}, Lcom/miui/home/recents/anim/TaskViewsElement;->exitRecent()V

    goto/16 :goto_1

    .line 323
    :pswitch_5
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/TaskViewsParams;->getTaskViewParamsInfo()Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 325
    iput-object p1, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->currentTaskViewParams:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    .line 326
    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/TaskViewsElement;->applyParams(Lcom/miui/home/recents/anim/TaskViewParamsInfo;)V

    goto/16 :goto_1

    .line 316
    :pswitch_6
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/TaskViewsParams;->getTargetView()Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 317
    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/TaskViewsElement;->onTaskOpening(Lcom/miui/home/recents/views/TaskView;)V

    goto/16 :goto_1

    .line 309
    :pswitch_7
    iget-object p0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->recentView:Lcom/miui/home/recents/views/RecentsView;

    if-eqz p0, :cond_6

    .line 310
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startFsRecentsResetAnim(Lcom/miui/home/recents/views/RecentsView;)V

    goto/16 :goto_1

    .line 287
    :pswitch_8
    iget-object p0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->recentView:Lcom/miui/home/recents/views/RecentsView;

    if-eqz p0, :cond_6

    .line 288
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startFsRecentsMoveAnim(Lcom/miui/home/recents/views/RecentsView;)V

    goto/16 :goto_1

    .line 233
    :pswitch_9
    invoke-direct {p0, v1}, Lcom/miui/home/recents/anim/TaskViewsElement;->setIsNeedAnim(Z)V

    .line 234
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/TaskViewsParams;->getTaskViewParamsInfo()Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 236
    iput-object p1, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->currentTaskViewParams:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    .line 237
    new-instance p1, Landroid/graphics/RectF;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {p1, v3, v3, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v0, -0x1

    .line 238
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/recents/anim/TaskViewsElement;->updateTaskViewToInitPosition(Landroid/graphics/RectF;IZ)V

    .line 241
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/anim/TaskViewsElement;->stopTaskStackScroll()V

    goto :goto_1

    .line 211
    :pswitch_a
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/TaskViewsParams;->getTaskViewParamsInfo()Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 213
    iput-object p1, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->currentTaskViewParams:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    .line 214
    iget-boolean p1, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->isShowRecents:Z

    if-nez p1, :cond_2

    .line 215
    invoke-direct {p0}, Lcom/miui/home/recents/anim/TaskViewsElement;->addHomeModeLayoutListener()V

    .line 217
    :cond_2
    iput-boolean v1, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->isShowRecents:Z

    goto :goto_1

    .line 282
    :pswitch_b
    invoke-direct {p0}, Lcom/miui/home/recents/anim/TaskViewsElement;->hideTaskView()V

    goto :goto_1

    .line 258
    :pswitch_c
    iget-boolean p1, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->mReLoadTaskFinished:Z

    if-eqz p1, :cond_3

    .line 259
    invoke-direct {p0}, Lcom/miui/home/recents/anim/TaskViewsElement;->resetTaskView()V

    goto :goto_1

    .line 261
    :cond_3
    iput-boolean v1, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->mPendingResetTaskView:Z

    goto :goto_1

    .line 272
    :pswitch_d
    invoke-direct {p0}, Lcom/miui/home/recents/anim/TaskViewsElement;->updateTaskTransY()V

    .line 273
    iget-boolean p1, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->mReLoadTaskFinished:Z

    if-eqz p1, :cond_4

    .line 274
    invoke-direct {p0}, Lcom/miui/home/recents/anim/TaskViewsElement;->resetTaskView()V

    goto :goto_1

    .line 276
    :cond_4
    iput-boolean v1, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->mPendingResetTaskView:Z

    goto :goto_1

    .line 267
    :pswitch_e
    invoke-direct {p0}, Lcom/miui/home/recents/anim/TaskViewsElement;->resetTaskViewFullscreenProgress()V

    goto :goto_1

    .line 223
    :pswitch_f
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/TaskViewsParams;->getTaskViewParamsInfo()Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 225
    iput-object p1, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->currentTaskViewParams:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyParams isShowRecents = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->isShowRecents:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/TaskViewsElement;->applyParams(Lcom/miui/home/recents/anim/TaskViewParamsInfo;)V

    goto :goto_1

    .line 246
    :pswitch_10
    invoke-direct {p0, v1}, Lcom/miui/home/recents/anim/TaskViewsElement;->setIsNeedAnim(Z)V

    .line 247
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/TaskViewsParams;->getTaskViewParamsInfo()Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 249
    iput-object p1, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->currentTaskViewParams:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    .line 250
    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/TaskViewsElement;->applyParams(Lcom/miui/home/recents/anim/TaskViewParamsInfo;)V

    .line 253
    :cond_5
    invoke-direct {p0}, Lcom/miui/home/recents/anim/TaskViewsElement;->hideEmptyView()V

    :cond_6
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bindRecentsView(Lcom/miui/home/recents/views/RecentsView;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->recentView:Lcom/miui/home/recents/views/RecentsView;

    return-void
.end method

.method public final finishHideTaskView()V
    .locals 3

    const-string v0, "TaskViewsElement"

    const-string v1, "finishHideTaskView"

    .line 1193
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1195
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1196
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setVisibility(I)V

    .line 1197
    iget-object v0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->recentView:Lcom/miui/home/recents/views/RecentsView;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->mRunningTaskId:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/views/RecentsView;->setRunningTaskHidden(IZ)V

    .line 1199
    :cond_1
    iput-boolean v2, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->isShowRecents:Z

    return-void
.end method

.method public final getQuickModeTaskView()Lcom/miui/home/recents/views/TaskView;
    .locals 1

    .line 1334
    iget-object v0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->currentTaskViewParams:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->getQuickSwitchTaskIndex()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1335
    :goto_0
    iget-object p0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->recentView:Lcom/miui/home/recents/views/RecentsView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1336
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewFromStackIndex(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public final getQuickSwitchOrRunningTaskIndex()I
    .locals 1

    .line 1262
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/TaskViewsElement;->isQuickSwitchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->currentTaskViewParams:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->getQuickSwitchTaskIndex()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    .line 1263
    :cond_1
    iget p0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->mRunningTaskIndex:I

    :goto_0
    return p0
.end method

.method public final isQuickSwitchMode()Z
    .locals 2

    .line 1257
    iget-object p0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->currentTaskViewParams:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->getWindowMode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x5

    if-nez p0, :cond_1

    goto :goto_1

    .line 1258
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_4

    :goto_1
    const/16 v0, 0xf

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v0, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p0, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 p0, 0x1

    :goto_4
    return p0
.end method

.method public final notUpdateTaskElement()Z
    .locals 3

    .line 363
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSmallWindow()Lcom/miui/home/recents/views/SmallWindowCrop;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/SmallWindowCrop;->isInHoldState()Z

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->isInGestureTopWindowHoldState:Z

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public final onGestureAppDown(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1381
    iput-boolean v0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->isShowRecents:Z

    .line 1382
    iput-boolean v0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->mPendingResetTaskView:Z

    .line 1383
    iput-boolean v0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->mReLoadTaskFinished:Z

    .line 1384
    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/TaskViewsElement;->setMRunningTaskId(I)V

    const/4 p1, 0x1

    .line 1385
    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/TaskViewsElement;->setIsNeedAnim(Z)V

    .line 1386
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/anim/TaskViewsElement;->setIsInGestureTopWindowHoldState(Z)V

    .line 1387
    iget-object p0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->recentView:Lcom/miui/home/recents/views/RecentsView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackView;->setAllThumbnailViewHardware(Z)V

    :cond_0
    return-void
.end method

.method public final onGestureHomeDown()V
    .locals 2

    const/4 v0, 0x0

    .line 1391
    iput-boolean v0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->isShowRecents:Z

    .line 1392
    iput-boolean v0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->mPendingResetTaskView:Z

    .line 1393
    iput-boolean v0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->mReLoadTaskFinished:Z

    const/4 v1, 0x1

    .line 1394
    invoke-direct {p0, v1}, Lcom/miui/home/recents/anim/TaskViewsElement;->setIsNeedAnim(Z)V

    .line 1395
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/anim/TaskViewsElement;->setIsInGestureTopWindowHoldState(Z)V

    const/4 v1, -0x1

    .line 1396
    iput v1, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->mRunningTaskIndex:I

    .line 1397
    invoke-direct {p0, v1}, Lcom/miui/home/recents/anim/TaskViewsElement;->setMRunningTaskId(I)V

    .line 1398
    iget-object p0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->recentView:Lcom/miui/home/recents/views/RecentsView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackView;->setAllThumbnailViewHardware(Z)V

    :cond_0
    return-void
.end method

.method public final onTaskCloseToRecentUpdateTaskView(Lcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;FFIF)V
    .locals 6

    const-string v0, "currentRect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1314
    iget-object v0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->recentView:Lcom/miui/home/recents/views/RecentsView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1315
    invoke-virtual {v0, p5}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewWithoutHeaderRectF(I)Landroid/graphics/RectF;

    move-result-object p5

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    move-object v3, p5

    if-nez v3, :cond_1

    return-void

    .line 1317
    :cond_1
    iget-object p5, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->recentView:Lcom/miui/home/recents/views/RecentsView;

    const/4 v0, 0x0

    if-eqz p5, :cond_2

    invoke-virtual {p5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p5

    goto :goto_1

    :cond_2
    move p5, v0

    :goto_1
    iget-object v1, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->recentView:Lcom/miui/home/recents/views/RecentsView;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    const/4 v2, 0x1

    if-ge p5, v1, :cond_4

    move v0, v2

    :cond_4
    invoke-static {v0}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isUseTaskStackLayoutStyleHorizontalAnim(Z)Z

    move-result p5

    if-nez p5, :cond_5

    .line 1319
    invoke-virtual {p0, p2, p6, v2}, Lcom/miui/home/recents/anim/TaskViewsElement;->updateTaskViewNew(Landroid/graphics/RectF;FZ)V

    goto :goto_3

    .line 1321
    :cond_5
    iget-object v0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->recentView:Lcom/miui/home/recents/views/RecentsView;

    if-eqz v0, :cond_6

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    .line 1322
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/recents/views/RecentsView;->alignTaskViewWhenAppToRecent(Lcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;Landroid/graphics/RectF;FF)V

    :cond_6
    :goto_3
    return-void
.end method

.method public final onTaskOpeningUpdateTaskView(Lcom/miui/home/recents/views/TaskView;FLandroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 9

    const-string v0, "startRectF"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentRect"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1346
    iget-object v0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->recentView:Lcom/miui/home/recents/views/RecentsView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1347
    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskView;->setChildrenViewAlpha(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ecccccd    # 0.4f

    sub-float v3, v2, p2

    div-float/2addr v3, v2

    .line 1348
    invoke-static {v0, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v2

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v8

    .line 1349
    invoke-virtual {p1, v0, v0, v8}, Lcom/miui/home/recents/views/TaskView;->setHeaderTranslationAndAlpha(FFF)V

    .line 1351
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result v0

    invoke-static {v0}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isUseTaskStackLayoutStyleHorizontalAnim(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1352
    iget-object v3, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->recentView:Lcom/miui/home/recents/views/RecentsView;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/miui/home/recents/views/RecentsView;->alignTaskViewWhenTaskLaunch(Lcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;Landroid/graphics/RectF;FF)V

    :cond_0
    return-void
.end method

.method public final resetRecentsContentView()V
    .locals 6

    .line 1364
    iget-object p0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->recentView:Lcom/miui/home/recents/views/RecentsView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1365
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1366
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/recents/views/TaskView;

    .line 1367
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v4

    .line 1368
    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/home/recents/util/SpringAnimationUtils;->cancelAllSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;)V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1369
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1370
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setScaleY(F)V

    const/4 v5, 0x0

    .line 1371
    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1372
    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1373
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1374
    invoke-virtual {v3, v4}, Lcom/miui/home/recents/views/TaskView;->setChildrenViewAlpha(F)V

    .line 1375
    invoke-static {v3, v1}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->setTaskViewLayerType(Lcom/miui/home/recents/views/TaskView;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setIsInGestureTopWindowHoldState(Z)V
    .locals 0

    .line 359
    iput-boolean p1, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->isInGestureTopWindowHoldState:Z

    return-void
.end method

.method public final setTaskViewParamsInfo(Lcom/miui/home/recents/anim/TaskViewParamsInfo;)V
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 454
    iput-object p1, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->currentTaskViewParams:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    return-void
.end method

.method public final showRecents()V
    .locals 5

    .line 1164
    iget-boolean v0, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->isShowRecents:Z

    if-nez v0, :cond_6

    const-string v0, "TaskViewsElement"

    const-string v1, "showRecents"

    .line 1165
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    invoke-direct {p0}, Lcom/miui/home/recents/anim/TaskViewsElement;->addRecentsLayoutListener()V

    .line 1168
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1169
    :cond_0
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    sget-object v2, Lcom/miui/home/recents/anim/TaskViewsElement;->mPrepareEvent:Lcom/miui/home/recents/messages/FsGestureEnterRecentsPrepareEvent;

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1170
    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/miui/home/launcher/LauncherState;->mIsFromFsGesture:Z

    .line 1171
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 1172
    invoke-virtual {v1, v0}, Lcom/miui/home/recents/OverviewState;->onStateEnabled(Lcom/miui/home/launcher/Launcher;)V

    .line 1173
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/miui/home/recents/views/RecentsContainer;->setVisibility(I)V

    goto :goto_0

    .line 1175
    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v3

    invoke-virtual {v3, v1, v4}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    .line 1177
    :goto_0
    iput-boolean v4, v1, Lcom/miui/home/launcher/LauncherState;->mIsFromFsGesture:Z

    .line 1179
    invoke-direct {p0}, Lcom/miui/home/recents/anim/TaskViewsElement;->addTaskViewLayoutListener()V

    .line 1180
    iget-object v1, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->recentView:Lcom/miui/home/recents/views/RecentsView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskStackView;->requestLayout()V

    .line 1181
    :cond_2
    iget-object v1, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->recentView:Lcom/miui/home/recents/views/RecentsView;

    if-eqz v1, :cond_3

    iget v3, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->mRunningTaskId:I

    invoke-virtual {v1, v3, v2}, Lcom/miui/home/recents/views/RecentsView;->setRunningTaskHidden(IZ)V

    .line 1182
    :cond_3
    iget-object v1, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->recentView:Lcom/miui/home/recents/views/RecentsView;

    if-eqz v1, :cond_4

    iget v3, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->mRunningTaskId:I

    invoke-virtual {v1, v3}, Lcom/miui/home/recents/views/RecentsView;->setCurrentTaskId(I)V

    .line 1183
    :cond_4
    iget-object v1, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->recentView:Lcom/miui/home/recents/views/RecentsView;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1184
    iget v3, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->mRunningTaskId:I

    .line 1183
    invoke-virtual {v1, v3}, Lcom/miui/home/recents/views/TaskStackView;->getStackIndexFromTaskId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->mRunningTaskIndex:I

    .line 1187
    iput-boolean v2, p0, Lcom/miui/home/recents/anim/TaskViewsElement;->isShowRecents:Z

    .line 1188
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/LauncherStateManager;->setUserControlled(Z)V

    :cond_6
    return-void
.end method

.method public final updateTaskViewNew(Landroid/graphics/RectF;FZ)V
    .locals 17

    const-string v0, "currentRect"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    .line 468
    iget-object v1, v0, Lcom/miui/home/recents/anim/TaskViewsElement;->currentTaskViewParams:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    if-eqz v1, :cond_0

    .line 471
    invoke-virtual {v1}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->getReferenceIndex()I

    move-result v3

    .line 472
    invoke-virtual {v1}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->getGap()F

    move-result v4

    .line 473
    invoke-virtual {v1}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->getInitHorizontalStyle()Z

    move-result v5

    .line 475
    invoke-virtual {v1}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->getDamping()F

    move-result v7

    .line 476
    invoke-virtual {v1}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->getResponse()F

    move-result v8

    .line 477
    invoke-virtual {v1}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->getIgnoreQuickSwitchingTask()Z

    move-result v9

    .line 478
    invoke-virtual {v1}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->getEndRunnable()Ljava/lang/Runnable;

    move-result-object v10

    .line 480
    invoke-virtual {v1}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->getCurFullScreenProgress()F

    move-result v12

    .line 481
    invoke-virtual {v1}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->isQuickSwitchMode()Z

    move-result v13

    .line 482
    invoke-virtual {v1}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->getQuickSwitchTaskIndex()I

    move-result v14

    .line 483
    invoke-virtual {v1}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->getMPer()F

    move-result v15

    .line 484
    invoke-virtual {v1}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->getWindowMode()I

    move-result v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p3

    move/from16 v11, p2

    .line 469
    invoke-direct/range {v1 .. v16}, Lcom/miui/home/recents/anim/TaskViewsElement;->updateTaskViewNew(Landroid/graphics/RectF;IFZZFFZLjava/lang/Runnable;FFZIFI)V

    :cond_0
    return-void
.end method
