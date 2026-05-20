.class public final Lcom/miui/home/recents/anim/RectFParams;
.super Ljava/lang/Object;
.source "ElementParams.kt"


# instance fields
.field private animListener:Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;

.field private final animType:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

.field private final clearLastListener:Z

.field private final clipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

.field private currentDisplayRotation:I

.field private final currentTaskIndex:I

.field private final endAlpha:F

.field private final endRadius:F

.field private gestureHomeCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

.field private final homeRotation:I

.field private final ignoreIcon:Z

.field private final isCloseAppToDefaultCenter:Z

.field private final isQuickSwitchMode:Z

.field private final isSplitModeBack:Z

.field private final isUseTranslucentAnim:Z

.field private final needFinishOnAnimEnd:Z

.field private final runningTaskId:I

.field private final showTask:Z

.field private final startAlpha:F

.field private final startRadius:F

.field private final startRect:Landroid/graphics/RectF;

.field private final targetApps:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

.field private final targetRect:Landroid/graphics/RectF;

.field private targetView:Landroid/view/View;

.field private final touchRange:I


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;ZZZLandroid/view/View;Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;Lcom/miui/home/recents/util/ClipAnimationHelper;ZIILcom/miui/home/recents/GestureHomeCalculator;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v18, p18

    const-string v0, "targetRect"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animType"

    move-object/from16 v1, p8

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/high16 v26, 0x1fc0000

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v27}, Lcom/miui/home/recents/anim/RectFParams;-><init>(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;ZZZLandroid/view/View;Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;Lcom/miui/home/recents/util/ClipAnimationHelper;ZIILcom/miui/home/recents/GestureHomeCalculator;ZIZZIIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;ZZZLandroid/view/View;Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;Lcom/miui/home/recents/util/ClipAnimationHelper;ZIILcom/miui/home/recents/GestureHomeCalculator;Z)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v18, p18

    move/from16 v19, p19

    const-string v0, "targetRect"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animType"

    move-object/from16 v1, p8

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/high16 v26, 0x1f80000

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v27}, Lcom/miui/home/recents/anim/RectFParams;-><init>(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;ZZZLandroid/view/View;Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;Lcom/miui/home/recents/util/ClipAnimationHelper;ZIILcom/miui/home/recents/GestureHomeCalculator;ZIZZIIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;ZZZLandroid/view/View;Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;Lcom/miui/home/recents/util/ClipAnimationHelper;ZIILcom/miui/home/recents/GestureHomeCalculator;ZIZZI)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    move/from16 v23, p23

    const-string v0, "targetRect"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animType"

    move-object/from16 v1, p8

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/high16 v26, 0x1800000

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v27}, Lcom/miui/home/recents/anim/RectFParams;-><init>(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;ZZZLandroid/view/View;Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;Lcom/miui/home/recents/util/ClipAnimationHelper;ZIILcom/miui/home/recents/GestureHomeCalculator;ZIZZIIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;ZZZLandroid/view/View;Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;Lcom/miui/home/recents/util/ClipAnimationHelper;ZIILcom/miui/home/recents/GestureHomeCalculator;ZIZZII)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    move/from16 v23, p23

    move/from16 v24, p24

    const-string v0, "targetRect"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animType"

    move-object/from16 v1, p8

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v25, 0x0

    const/high16 v26, 0x1000000

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v27}, Lcom/miui/home/recents/anim/RectFParams;-><init>(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;ZZZLandroid/view/View;Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;Lcom/miui/home/recents/util/ClipAnimationHelper;ZIILcom/miui/home/recents/GestureHomeCalculator;ZIZZIIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;ZZZLandroid/view/View;Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;Lcom/miui/home/recents/util/ClipAnimationHelper;ZIILcom/miui/home/recents/GestureHomeCalculator;ZIZZIIZ)V
    .locals 4

    move-object v0, p0

    move-object v1, p3

    move-object v2, p8

    const-string v3, "targetRect"

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "animType"

    invoke-static {p8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v3, p1

    .line 34
    iput-object v3, v0, Lcom/miui/home/recents/anim/RectFParams;->targetApps:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    move-object v3, p2

    iput-object v3, v0, Lcom/miui/home/recents/anim/RectFParams;->startRect:Landroid/graphics/RectF;

    iput-object v1, v0, Lcom/miui/home/recents/anim/RectFParams;->targetRect:Landroid/graphics/RectF;

    move v1, p4

    .line 35
    iput v1, v0, Lcom/miui/home/recents/anim/RectFParams;->startRadius:F

    move v1, p5

    iput v1, v0, Lcom/miui/home/recents/anim/RectFParams;->endRadius:F

    move v1, p6

    iput v1, v0, Lcom/miui/home/recents/anim/RectFParams;->startAlpha:F

    move v1, p7

    iput v1, v0, Lcom/miui/home/recents/anim/RectFParams;->endAlpha:F

    .line 36
    iput-object v2, v0, Lcom/miui/home/recents/anim/RectFParams;->animType:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move v1, p9

    iput-boolean v1, v0, Lcom/miui/home/recents/anim/RectFParams;->ignoreIcon:Z

    move v1, p10

    iput-boolean v1, v0, Lcom/miui/home/recents/anim/RectFParams;->showTask:Z

    move v1, p11

    .line 37
    iput-boolean v1, v0, Lcom/miui/home/recents/anim/RectFParams;->isQuickSwitchMode:Z

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/miui/home/recents/anim/RectFParams;->targetView:Landroid/view/View;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/miui/home/recents/anim/RectFParams;->animListener:Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;

    move-object/from16 v1, p14

    .line 38
    iput-object v1, v0, Lcom/miui/home/recents/anim/RectFParams;->clipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/miui/home/recents/anim/RectFParams;->clearLastListener:Z

    move/from16 v1, p16

    .line 39
    iput v1, v0, Lcom/miui/home/recents/anim/RectFParams;->currentDisplayRotation:I

    move/from16 v1, p17

    iput v1, v0, Lcom/miui/home/recents/anim/RectFParams;->homeRotation:I

    move-object/from16 v1, p18

    .line 40
    iput-object v1, v0, Lcom/miui/home/recents/anim/RectFParams;->gestureHomeCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    move/from16 v1, p19

    iput-boolean v1, v0, Lcom/miui/home/recents/anim/RectFParams;->needFinishOnAnimEnd:Z

    move/from16 v1, p20

    iput v1, v0, Lcom/miui/home/recents/anim/RectFParams;->currentTaskIndex:I

    move/from16 v1, p21

    .line 41
    iput-boolean v1, v0, Lcom/miui/home/recents/anim/RectFParams;->isSplitModeBack:Z

    move/from16 v1, p22

    iput-boolean v1, v0, Lcom/miui/home/recents/anim/RectFParams;->isUseTranslucentAnim:Z

    move/from16 v1, p23

    iput v1, v0, Lcom/miui/home/recents/anim/RectFParams;->runningTaskId:I

    move/from16 v1, p24

    .line 42
    iput v1, v0, Lcom/miui/home/recents/anim/RectFParams;->touchRange:I

    move/from16 v1, p25

    .line 43
    iput-boolean v1, v0, Lcom/miui/home/recents/anim/RectFParams;->isCloseAppToDefaultCenter:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;ZZZLandroid/view/View;Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;Lcom/miui/home/recents/util/ClipAnimationHelper;ZIILcom/miui/home/recents/GestureHomeCalculator;ZIZZIIZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 29

    move/from16 v0, p26

    and-int/lit16 v1, v0, 0x100

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v12, v2

    goto :goto_0

    :cond_0
    move/from16 v12, p9

    :goto_0
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_1

    move v13, v2

    goto :goto_1

    :cond_1
    move/from16 v13, p10

    :goto_1
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_2

    move v14, v2

    goto :goto_2

    :cond_2
    move/from16 v14, p11

    :goto_2
    and-int/lit16 v1, v0, 0x800

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    move-object v15, v3

    goto :goto_3

    :cond_3
    move-object/from16 v15, p12

    :goto_3
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_4

    move-object/from16 v16, v3

    goto :goto_4

    :cond_4
    move-object/from16 v16, p13

    :goto_4
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_5

    move-object/from16 v17, v3

    goto :goto_5

    :cond_5
    move-object/from16 v17, p14

    :goto_5
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_6

    move/from16 v18, v2

    goto :goto_6

    :cond_6
    move/from16 v18, p15

    :goto_6
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_7

    move/from16 v19, v2

    goto :goto_7

    :cond_7
    move/from16 v19, p16

    :goto_7
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_8

    move/from16 v20, v2

    goto :goto_8

    :cond_8
    move/from16 v20, p17

    :goto_8
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_9

    move-object/from16 v21, v3

    goto :goto_9

    :cond_9
    move-object/from16 v21, p18

    :goto_9
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    move/from16 v22, v1

    goto :goto_a

    :cond_a
    move/from16 v22, p19

    :goto_a
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_b

    move/from16 v23, v2

    goto :goto_b

    :cond_b
    move/from16 v23, p20

    :goto_b
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_c

    move/from16 v24, v2

    goto :goto_c

    :cond_c
    move/from16 v24, p21

    :goto_c
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    move/from16 v25, v2

    goto :goto_d

    :cond_d
    move/from16 v25, p22

    :goto_d
    const/high16 v1, 0x400000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    move/from16 v26, v2

    goto :goto_e

    :cond_e
    move/from16 v26, p23

    :goto_e
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    const/4 v1, 0x2

    move/from16 v27, v1

    goto :goto_f

    :cond_f
    move/from16 v27, p24

    :goto_f
    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    move/from16 v28, v2

    goto :goto_10

    :cond_10
    move/from16 v28, p25

    :goto_10
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    .line 33
    invoke-direct/range {v3 .. v28}, Lcom/miui/home/recents/anim/RectFParams;-><init>(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;ZZZLandroid/view/View;Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;Lcom/miui/home/recents/util/ClipAnimationHelper;ZIILcom/miui/home/recents/GestureHomeCalculator;ZIZZIIZ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miui/home/recents/anim/RectFParams;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miui/home/recents/anim/RectFParams;

    iget-object v1, p0, Lcom/miui/home/recents/anim/RectFParams;->targetApps:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    iget-object v3, p1, Lcom/miui/home/recents/anim/RectFParams;->targetApps:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/miui/home/recents/anim/RectFParams;->startRect:Landroid/graphics/RectF;

    iget-object v3, p1, Lcom/miui/home/recents/anim/RectFParams;->startRect:Landroid/graphics/RectF;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/miui/home/recents/anim/RectFParams;->targetRect:Landroid/graphics/RectF;

    iget-object v3, p1, Lcom/miui/home/recents/anim/RectFParams;->targetRect:Landroid/graphics/RectF;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/miui/home/recents/anim/RectFParams;->startRadius:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/miui/home/recents/anim/RectFParams;->startRadius:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/miui/home/recents/anim/RectFParams;->endRadius:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/miui/home/recents/anim/RectFParams;->endRadius:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/miui/home/recents/anim/RectFParams;->startAlpha:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/miui/home/recents/anim/RectFParams;->startAlpha:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/miui/home/recents/anim/RectFParams;->endAlpha:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/miui/home/recents/anim/RectFParams;->endAlpha:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/miui/home/recents/anim/RectFParams;->animType:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    iget-object v3, p1, Lcom/miui/home/recents/anim/RectFParams;->animType:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/miui/home/recents/anim/RectFParams;->ignoreIcon:Z

    iget-boolean v3, p1, Lcom/miui/home/recents/anim/RectFParams;->ignoreIcon:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/miui/home/recents/anim/RectFParams;->showTask:Z

    iget-boolean v3, p1, Lcom/miui/home/recents/anim/RectFParams;->showTask:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Lcom/miui/home/recents/anim/RectFParams;->isQuickSwitchMode:Z

    iget-boolean v3, p1, Lcom/miui/home/recents/anim/RectFParams;->isQuickSwitchMode:Z

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/miui/home/recents/anim/RectFParams;->targetView:Landroid/view/View;

    iget-object v3, p1, Lcom/miui/home/recents/anim/RectFParams;->targetView:Landroid/view/View;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/miui/home/recents/anim/RectFParams;->animListener:Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;

    iget-object v3, p1, Lcom/miui/home/recents/anim/RectFParams;->animListener:Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/miui/home/recents/anim/RectFParams;->clipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iget-object v3, p1, Lcom/miui/home/recents/anim/RectFParams;->clipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-boolean v1, p0, Lcom/miui/home/recents/anim/RectFParams;->clearLastListener:Z

    iget-boolean v3, p1, Lcom/miui/home/recents/anim/RectFParams;->clearLastListener:Z

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    iget v1, p0, Lcom/miui/home/recents/anim/RectFParams;->currentDisplayRotation:I

    iget v3, p1, Lcom/miui/home/recents/anim/RectFParams;->currentDisplayRotation:I

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget v1, p0, Lcom/miui/home/recents/anim/RectFParams;->homeRotation:I

    iget v3, p1, Lcom/miui/home/recents/anim/RectFParams;->homeRotation:I

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/miui/home/recents/anim/RectFParams;->gestureHomeCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    iget-object v3, p1, Lcom/miui/home/recents/anim/RectFParams;->gestureHomeCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-boolean v1, p0, Lcom/miui/home/recents/anim/RectFParams;->needFinishOnAnimEnd:Z

    iget-boolean v3, p1, Lcom/miui/home/recents/anim/RectFParams;->needFinishOnAnimEnd:Z

    if-eq v1, v3, :cond_14

    return v2

    :cond_14
    iget v1, p0, Lcom/miui/home/recents/anim/RectFParams;->currentTaskIndex:I

    iget v3, p1, Lcom/miui/home/recents/anim/RectFParams;->currentTaskIndex:I

    if-eq v1, v3, :cond_15

    return v2

    :cond_15
    iget-boolean v1, p0, Lcom/miui/home/recents/anim/RectFParams;->isSplitModeBack:Z

    iget-boolean v3, p1, Lcom/miui/home/recents/anim/RectFParams;->isSplitModeBack:Z

    if-eq v1, v3, :cond_16

    return v2

    :cond_16
    iget-boolean v1, p0, Lcom/miui/home/recents/anim/RectFParams;->isUseTranslucentAnim:Z

    iget-boolean v3, p1, Lcom/miui/home/recents/anim/RectFParams;->isUseTranslucentAnim:Z

    if-eq v1, v3, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lcom/miui/home/recents/anim/RectFParams;->runningTaskId:I

    iget v3, p1, Lcom/miui/home/recents/anim/RectFParams;->runningTaskId:I

    if-eq v1, v3, :cond_18

    return v2

    :cond_18
    iget v1, p0, Lcom/miui/home/recents/anim/RectFParams;->touchRange:I

    iget v3, p1, Lcom/miui/home/recents/anim/RectFParams;->touchRange:I

    if-eq v1, v3, :cond_19

    return v2

    :cond_19
    iget-boolean p0, p0, Lcom/miui/home/recents/anim/RectFParams;->isCloseAppToDefaultCenter:Z

    iget-boolean p1, p1, Lcom/miui/home/recents/anim/RectFParams;->isCloseAppToDefaultCenter:Z

    if-eq p0, p1, :cond_1a

    return v2

    :cond_1a
    return v0
.end method

.method public final getAnimListener()Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/miui/home/recents/anim/RectFParams;->animListener:Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;

    return-object p0
.end method

.method public final getAnimType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/miui/home/recents/anim/RectFParams;->animType:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    return-object p0
.end method

.method public final getClearLastListener()Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/miui/home/recents/anim/RectFParams;->clearLastListener:Z

    return p0
.end method

.method public final getClipAnimationHelper()Lcom/miui/home/recents/util/ClipAnimationHelper;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/miui/home/recents/anim/RectFParams;->clipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    return-object p0
.end method

.method public final getCurrentDisplayRotation()I
    .locals 0

    .line 39
    iget p0, p0, Lcom/miui/home/recents/anim/RectFParams;->currentDisplayRotation:I

    return p0
.end method

.method public final getCurrentTaskIndex()I
    .locals 0

    .line 40
    iget p0, p0, Lcom/miui/home/recents/anim/RectFParams;->currentTaskIndex:I

    return p0
.end method

.method public final getEndAlpha()F
    .locals 0

    .line 35
    iget p0, p0, Lcom/miui/home/recents/anim/RectFParams;->endAlpha:F

    return p0
.end method

.method public final getEndRadius()F
    .locals 0

    .line 35
    iget p0, p0, Lcom/miui/home/recents/anim/RectFParams;->endRadius:F

    return p0
.end method

.method public final getGestureHomeCalculator()Lcom/miui/home/recents/GestureHomeCalculator;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/miui/home/recents/anim/RectFParams;->gestureHomeCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    return-object p0
.end method

.method public final getHomeRotation()I
    .locals 0

    .line 39
    iget p0, p0, Lcom/miui/home/recents/anim/RectFParams;->homeRotation:I

    return p0
.end method

.method public final getIgnoreIcon()Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/miui/home/recents/anim/RectFParams;->ignoreIcon:Z

    return p0
.end method

.method public final getNeedFinishOnAnimEnd()Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/miui/home/recents/anim/RectFParams;->needFinishOnAnimEnd:Z

    return p0
.end method

.method public final getRunningTaskId()I
    .locals 0

    .line 41
    iget p0, p0, Lcom/miui/home/recents/anim/RectFParams;->runningTaskId:I

    return p0
.end method

.method public final getShowTask()Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/miui/home/recents/anim/RectFParams;->showTask:Z

    return p0
.end method

.method public final getStartAlpha()F
    .locals 0

    .line 35
    iget p0, p0, Lcom/miui/home/recents/anim/RectFParams;->startAlpha:F

    return p0
.end method

.method public final getStartRadius()F
    .locals 0

    .line 35
    iget p0, p0, Lcom/miui/home/recents/anim/RectFParams;->startRadius:F

    return p0
.end method

.method public final getStartRect()Landroid/graphics/RectF;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/miui/home/recents/anim/RectFParams;->startRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getTargetApps()Lcom/miui/home/recents/util/RemoteAnimationTargetSet;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/miui/home/recents/anim/RectFParams;->targetApps:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    return-object p0
.end method

.method public final getTargetRect()Landroid/graphics/RectF;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/miui/home/recents/anim/RectFParams;->targetRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getTargetView()Landroid/view/View;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/miui/home/recents/anim/RectFParams;->targetView:Landroid/view/View;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/miui/home/recents/anim/RectFParams;->targetApps:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/home/recents/anim/RectFParams;->startRect:Landroid/graphics/RectF;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/graphics/RectF;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/home/recents/anim/RectFParams;->targetRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/miui/home/recents/anim/RectFParams;->startRadius:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/miui/home/recents/anim/RectFParams;->endRadius:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/miui/home/recents/anim/RectFParams;->startAlpha:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/miui/home/recents/anim/RectFParams;->endAlpha:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/home/recents/anim/RectFParams;->animType:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/miui/home/recents/anim/RectFParams;->ignoreIcon:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    move v2, v3

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/miui/home/recents/anim/RectFParams;->showTask:Z

    if-eqz v2, :cond_3

    move v2, v3

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/miui/home/recents/anim/RectFParams;->isQuickSwitchMode:Z

    if-eqz v2, :cond_4

    move v2, v3

    :cond_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/home/recents/anim/RectFParams;->targetView:Landroid/view/View;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/home/recents/anim/RectFParams;->animListener:Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/home/recents/anim/RectFParams;->clipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    if-nez v2, :cond_7

    move v2, v1

    goto :goto_4

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/miui/home/recents/anim/RectFParams;->clearLastListener:Z

    if-eqz v2, :cond_8

    move v2, v3

    :cond_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/miui/home/recents/anim/RectFParams;->currentDisplayRotation:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/miui/home/recents/anim/RectFParams;->homeRotation:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/home/recents/anim/RectFParams;->gestureHomeCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    if-nez v2, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/miui/home/recents/anim/RectFParams;->needFinishOnAnimEnd:Z

    if-eqz v1, :cond_a

    move v1, v3

    :cond_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/home/recents/anim/RectFParams;->currentTaskIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/miui/home/recents/anim/RectFParams;->isSplitModeBack:Z

    if-eqz v1, :cond_b

    move v1, v3

    :cond_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/miui/home/recents/anim/RectFParams;->isUseTranslucentAnim:Z

    if-eqz v1, :cond_c

    move v1, v3

    :cond_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/home/recents/anim/RectFParams;->runningTaskId:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/home/recents/anim/RectFParams;->touchRange:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/miui/home/recents/anim/RectFParams;->isCloseAppToDefaultCenter:Z

    if-eqz p0, :cond_d

    goto :goto_6

    :cond_d
    move v3, p0

    :goto_6
    add-int/2addr v0, v3

    return v0
.end method

.method public final isCloseAppToDefaultCenter()Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/miui/home/recents/anim/RectFParams;->isCloseAppToDefaultCenter:Z

    return p0
.end method

.method public final isQuickSwitchMode()Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/miui/home/recents/anim/RectFParams;->isQuickSwitchMode:Z

    return p0
.end method

.method public final isSplitModeBack()Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/miui/home/recents/anim/RectFParams;->isSplitModeBack:Z

    return p0
.end method

.method public final setAnimListener(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/miui/home/recents/anim/RectFParams;->animListener:Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;

    return-void
.end method

.method public final setCurrentDisplayRotation(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/miui/home/recents/anim/RectFParams;->currentDisplayRotation:I

    return-void
.end method

.method public final setTargetView(Landroid/view/View;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/miui/home/recents/anim/RectFParams;->targetView:Landroid/view/View;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RectFParams(targetApps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/anim/RectFParams;->targetApps:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/anim/RectFParams;->startRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", targetRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/anim/RectFParams;->targetRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/anim/RectFParams;->startRadius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", endRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/anim/RectFParams;->endRadius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", startAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/anim/RectFParams;->startAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", endAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/anim/RectFParams;->endAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", animType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/anim/RectFParams;->animType:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ignoreIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/anim/RectFParams;->ignoreIcon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showTask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/anim/RectFParams;->showTask:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isQuickSwitchMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/anim/RectFParams;->isQuickSwitchMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", targetView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/anim/RectFParams;->targetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", animListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/anim/RectFParams;->animListener:Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clipAnimationHelper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/anim/RectFParams;->clipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clearLastListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/anim/RectFParams;->clearLastListener:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", currentDisplayRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/anim/RectFParams;->currentDisplayRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", homeRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/anim/RectFParams;->homeRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gestureHomeCalculator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/anim/RectFParams;->gestureHomeCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", needFinishOnAnimEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/anim/RectFParams;->needFinishOnAnimEnd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", currentTaskIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/anim/RectFParams;->currentTaskIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isSplitModeBack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/anim/RectFParams;->isSplitModeBack:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isUseTranslucentAnim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/anim/RectFParams;->isUseTranslucentAnim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", runningTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/anim/RectFParams;->runningTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", touchRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/anim/RectFParams;->touchRange:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isCloseAppToDefaultCenter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/miui/home/recents/anim/RectFParams;->isCloseAppToDefaultCenter:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
