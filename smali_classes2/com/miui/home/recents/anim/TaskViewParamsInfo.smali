.class public final Lcom/miui/home/recents/anim/TaskViewParamsInfo;
.super Ljava/lang/Object;
.source "TaskViewsElement.kt"


# instance fields
.field private curFullScreenProgress:F

.field private final curTaskRadius:F

.field private final damping:F

.field private endRunnable:Ljava/lang/Runnable;

.field private final gap:F

.field private final ignoreQuickSwitchingTask:Z

.field private final initHorizontalStyle:Z

.field private final isQuickSwitchMode:Z

.field private mPer:F

.field private final quickSwitchTaskIndex:I

.field private rectF:Landroid/graphics/RectF;

.field private referenceIndex:I

.field private final response:F

.field private final runningTaskId:I

.field private final touchRegion:I

.field private useAnim:Z

.field private final windowMode:I


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;IFZZFFZLjava/lang/Runnable;FFZIFIII)V
    .locals 3

    move-object v0, p0

    move-object v1, p1

    const-string v2, "rectF"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object v1, v0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->rectF:Landroid/graphics/RectF;

    move v1, p2

    .line 79
    iput v1, v0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->referenceIndex:I

    move v1, p3

    .line 80
    iput v1, v0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->gap:F

    move v1, p4

    .line 81
    iput-boolean v1, v0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->initHorizontalStyle:Z

    move v1, p5

    .line 82
    iput-boolean v1, v0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->useAnim:Z

    move v1, p6

    .line 83
    iput v1, v0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->damping:F

    move v1, p7

    .line 84
    iput v1, v0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->response:F

    move v1, p8

    .line 85
    iput-boolean v1, v0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->ignoreQuickSwitchingTask:Z

    move-object v1, p9

    .line 86
    iput-object v1, v0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->endRunnable:Ljava/lang/Runnable;

    move v1, p10

    .line 87
    iput v1, v0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->curTaskRadius:F

    move v1, p11

    .line 88
    iput v1, v0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->curFullScreenProgress:F

    move v1, p12

    .line 89
    iput-boolean v1, v0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->isQuickSwitchMode:Z

    move/from16 v1, p13

    .line 90
    iput v1, v0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->quickSwitchTaskIndex:I

    move/from16 v1, p14

    .line 91
    iput v1, v0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->mPer:F

    move/from16 v1, p15

    .line 92
    iput v1, v0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->windowMode:I

    move/from16 v1, p16

    .line 93
    iput v1, v0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->runningTaskId:I

    move/from16 v1, p17

    .line 94
    iput v1, v0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->touchRegion:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    iget-object v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->rectF:Landroid/graphics/RectF;

    iget-object v3, p1, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->rectF:Landroid/graphics/RectF;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->referenceIndex:I

    iget v3, p1, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->referenceIndex:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->gap:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->gap:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->initHorizontalStyle:Z

    iget-boolean v3, p1, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->initHorizontalStyle:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->useAnim:Z

    iget-boolean v3, p1, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->useAnim:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->damping:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->damping:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->response:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->response:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->ignoreQuickSwitchingTask:Z

    iget-boolean v3, p1, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->ignoreQuickSwitchingTask:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->endRunnable:Ljava/lang/Runnable;

    iget-object v3, p1, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->endRunnable:Ljava/lang/Runnable;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->curTaskRadius:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->curTaskRadius:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->curFullScreenProgress:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->curFullScreenProgress:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-boolean v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->isQuickSwitchMode:Z

    iget-boolean v3, p1, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->isQuickSwitchMode:Z

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->quickSwitchTaskIndex:I

    iget v3, p1, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->quickSwitchTaskIndex:I

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->mPer:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->mPer:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->windowMode:I

    iget v3, p1, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->windowMode:I

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    iget v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->runningTaskId:I

    iget v3, p1, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->runningTaskId:I

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget p0, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->touchRegion:I

    iget p1, p1, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->touchRegion:I

    if-eq p0, p1, :cond_12

    return v2

    :cond_12
    return v0
.end method

.method public final getCurFullScreenProgress()F
    .locals 0

    .line 88
    iget p0, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->curFullScreenProgress:F

    return p0
.end method

.method public final getCurTaskRadius()F
    .locals 0

    .line 87
    iget p0, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->curTaskRadius:F

    return p0
.end method

.method public final getDamping()F
    .locals 0

    .line 83
    iget p0, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->damping:F

    return p0
.end method

.method public final getEndRunnable()Ljava/lang/Runnable;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->endRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public final getGap()F
    .locals 0

    .line 80
    iget p0, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->gap:F

    return p0
.end method

.method public final getIgnoreQuickSwitchingTask()Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->ignoreQuickSwitchingTask:Z

    return p0
.end method

.method public final getInitHorizontalStyle()Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->initHorizontalStyle:Z

    return p0
.end method

.method public final getMPer()F
    .locals 0

    .line 91
    iget p0, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->mPer:F

    return p0
.end method

.method public final getQuickSwitchTaskIndex()I
    .locals 0

    .line 90
    iget p0, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->quickSwitchTaskIndex:I

    return p0
.end method

.method public final getRectF()Landroid/graphics/RectF;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->rectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getReferenceIndex()I
    .locals 0

    .line 79
    iget p0, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->referenceIndex:I

    return p0
.end method

.method public final getResponse()F
    .locals 0

    .line 84
    iget p0, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->response:F

    return p0
.end method

.method public final getRunningTaskId()I
    .locals 0

    .line 93
    iget p0, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->runningTaskId:I

    return p0
.end method

.method public final getTouchRegion()I
    .locals 0

    .line 94
    iget p0, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->touchRegion:I

    return p0
.end method

.method public final getUseAnim()Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->useAnim:Z

    return p0
.end method

.method public final getWindowMode()I
    .locals 0

    .line 92
    iget p0, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->windowMode:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->referenceIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->gap:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->initHorizontalStyle:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->useAnim:Z

    if-eqz v1, :cond_1

    move v1, v2

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->damping:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->response:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->ignoreQuickSwitchingTask:Z

    if-eqz v1, :cond_2

    move v1, v2

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->endRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->curTaskRadius:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->curFullScreenProgress:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->isQuickSwitchMode:Z

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->quickSwitchTaskIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->mPer:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->windowMode:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->runningTaskId:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->touchRegion:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isQuickSwitchMode()Z
    .locals 0

    .line 89
    iget-boolean p0, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->isQuickSwitchMode:Z

    return p0
.end method

.method public final setCurFullScreenProgress(F)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->curFullScreenProgress:F

    return-void
.end method

.method public final setMPer(F)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->mPer:F

    return-void
.end method

.method public final setRectF(Landroid/graphics/RectF;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->rectF:Landroid/graphics/RectF;

    return-void
.end method

.method public final setReferenceIndex(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->referenceIndex:I

    return-void
.end method

.method public final setUseAnim(Z)V
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->useAnim:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskViewParamsInfo(rectF="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", referenceIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->referenceIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->gap:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", initHorizontalStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->initHorizontalStyle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", useAnim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->useAnim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", damping="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->damping:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->response:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", ignoreQuickSwitchingTask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->ignoreQuickSwitchingTask:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", endRunnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->endRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", curTaskRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->curTaskRadius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", curFullScreenProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->curFullScreenProgress:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", isQuickSwitchMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->isQuickSwitchMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", quickSwitchTaskIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->quickSwitchTaskIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->mPer:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", windowMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->windowMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", runningTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->runningTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", touchRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->touchRegion:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
