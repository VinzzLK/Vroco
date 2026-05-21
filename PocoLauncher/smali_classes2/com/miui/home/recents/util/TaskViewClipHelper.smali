.class public final Lcom/miui/home/recents/util/TaskViewClipHelper;
.super Ljava/lang/Object;
.source "TaskViewClipHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/util/TaskViewClipHelper$Companion;,
        Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/recents/util/TaskViewClipHelper$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/recents/util/TaskViewClipHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/recents/util/TaskViewClipHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/recents/util/TaskViewClipHelper;->Companion:Lcom/miui/home/recents/util/TaskViewClipHelper$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final calculateTargetRectAndScale(Landroid/graphics/RectF;FFZ)F
    .locals 0

    if-eqz p4, :cond_0

    .line 107
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p0

    div-float/2addr p0, p2

    .line 108
    iget p2, p1, Landroid/graphics/RectF;->top:F

    mul-float/2addr p3, p0

    add-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p0

    div-float/2addr p0, p3

    .line 111
    iget p3, p1, Landroid/graphics/RectF;->left:F

    mul-float/2addr p2, p0

    add-float/2addr p3, p2

    iput p3, p1, Landroid/graphics/RectF;->right:F

    :goto_0
    return p0
.end method

.method private final calculateTaskViewTranslation(FF)F
    .locals 0

    sub-float/2addr p1, p2

    const p0, 0x47c35000    # 100000.0f

    cmpl-float p2, p1, p0

    if-lez p2, :cond_0

    move p1, p0

    :cond_0
    return p1
.end method

.method private final setTaskViewTransformParams(Landroid/graphics/RectF;IFFFFFFZ)Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;
    .locals 0

    .line 121
    new-instance p0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;

    invoke-direct {p0}, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;-><init>()V

    .line 122
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;->setClipRect(Landroid/graphics/RectF;)Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;

    move-result-object p0

    .line 123
    invoke-virtual {p0, p8}, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;->setAlpha(F)Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;

    move-result-object p0

    .line 124
    invoke-virtual {p0, p2}, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;->setRadius(I)Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;

    move-result-object p0

    .line 125
    invoke-virtual {p0, p3}, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;->setTranX(F)Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;

    move-result-object p0

    .line 126
    invoke-virtual {p0, p4}, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;->setTranY(F)Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;

    move-result-object p0

    .line 127
    invoke-virtual {p0, p5}, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;->setPivotX(F)Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;

    move-result-object p0

    .line 128
    invoke-virtual {p0, p6}, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;->setPivotY(F)Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;

    move-result-object p0

    .line 129
    invoke-virtual {p0, p7}, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;->setScale(F)Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;

    move-result-object p0

    .line 130
    invoke-virtual {p0, p9}, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;->setNeedClip(Z)Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;

    move-result-object p0

    .line 131
    invoke-virtual {p0}, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;->build()Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final updateTaskViewFromQuickSwitchCloseToHome(Lcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;FFZ)Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;
    .locals 13

    move-object v0, p0

    move-object v1, p2

    const-string v2, "targetRectF"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 45
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    .line 46
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 48
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/miui/home/recents/views/TaskStackView;->getStackAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getRecentsTaskViewHeaderHeight()I

    move-result v4

    int-to-float v4, v4

    goto :goto_0

    :cond_1
    move v4, v5

    .line 50
    :goto_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v4

    .line 51
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    const/high16 v10, 0x40000000    # 2.0f

    if-lez v7, :cond_2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    if-lez v7, :cond_2

    cmpl-float v7, v6, v5

    if-lez v7, :cond_2

    .line 53
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 55
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 56
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v8

    .line 52
    invoke-static {v2, v6, v7, v8}, Lcom/miui/home/recents/util/Utilities;->isVerticalClip(FFFF)Z

    move-result v7

    .line 60
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 58
    invoke-direct {p0, v3, v2, v6, v7}, Lcom/miui/home/recents/util/TaskViewClipHelper;->calculateTargetRectAndScale(Landroid/graphics/RectF;FFZ)F

    move-result v2

    .line 65
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    .line 66
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v8

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getRight()I

    move-result v11

    add-int/2addr v8, v11

    int-to-float v8, v8

    div-float/2addr v8, v10

    .line 64
    invoke-direct {p0, v6, v8}, Lcom/miui/home/recents/util/TaskViewClipHelper;->calculateTaskViewTranslation(FF)F

    move-result v11

    .line 69
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    mul-float v6, v4, v2

    .line 70
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v8

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v12

    add-int/2addr v8, v12

    int-to-float v8, v8

    add-float/2addr v6, v8

    div-float/2addr v6, v10

    .line 68
    invoke-direct {p0, v3, v6}, Lcom/miui/home/recents/util/TaskViewClipHelper;->calculateTaskViewTranslation(FF)F

    move-result v12

    .line 72
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float v8, v3, v1

    .line 73
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v9, v5, v4, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 75
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v5

    const/4 v6, 0x1

    move-object v3, v9

    .line 74
    invoke-static/range {v3 .. v8}, Lcom/miui/home/recents/util/Utilities;->handleClipRect(Landroid/graphics/RectF;FFZZF)V

    move v7, v2

    move v3, v11

    move v4, v12

    goto :goto_1

    :cond_2
    move v7, v2

    move v3, v5

    move v4, v3

    :goto_1
    div-float v1, p4, v7

    float-to-int v2, v1

    .line 81
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v5, v1, v10

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v6, v1, v10

    xor-int/lit8 v10, p5, 0x1

    move-object v0, p0

    move-object v1, v9

    move/from16 v8, p3

    move v9, v10

    .line 79
    invoke-direct/range {v0 .. v9}, Lcom/miui/home/recents/util/TaskViewClipHelper;->setTaskViewTransformParams(Landroid/graphics/RectF;IFFFFFFZ)Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;

    move-result-object v0

    return-object v0
.end method
