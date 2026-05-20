.class public final Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;
.super Ljava/lang/Object;
.source "TaskViewClipHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/util/TaskViewClipHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CloseToHomeTaskViewParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;
    }
.end annotation


# instance fields
.field private final alpha:F

.field private final clipRect:Landroid/graphics/RectF;

.field private final isNeedClip:Z

.field private final pivotX:F

.field private final pivotY:F

.field private final radius:I

.field private final scale:F

.field private final tranX:F

.field private final tranY:F


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;)V
    .locals 2

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;->clipRect:Landroid/graphics/RectF;

    .line 146
    invoke-virtual {p1}, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;->getRadius$app_pocoHomeRelease()I

    move-result v1

    iput v1, p0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;->radius:I

    .line 147
    invoke-virtual {p1}, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;->getTranX()F

    move-result v1

    iput v1, p0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;->tranX:F

    .line 148
    invoke-virtual {p1}, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;->getTranY()F

    move-result v1

    iput v1, p0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;->tranY:F

    .line 149
    invoke-virtual {p1}, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;->getPivotX()F

    move-result v1

    iput v1, p0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;->pivotX:F

    .line 150
    invoke-virtual {p1}, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;->getPivotY()F

    move-result v1

    iput v1, p0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;->pivotY:F

    .line 151
    invoke-virtual {p1}, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;->getScale()F

    move-result v1

    iput v1, p0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;->scale:F

    .line 152
    invoke-virtual {p1}, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;->getAlpha()F

    move-result v1

    iput v1, p0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;->alpha:F

    .line 153
    invoke-virtual {p1}, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;->getClipRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 154
    invoke-virtual {p1}, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;->isNeedClip()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;->isNeedClip:Z

    return-void
.end method


# virtual methods
.method public final getAlpha()F
    .locals 0

    .line 142
    iget p0, p0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;->alpha:F

    return p0
.end method

.method public final getClipRect()Landroid/graphics/RectF;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;->clipRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getPivotX()F
    .locals 0

    .line 139
    iget p0, p0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;->pivotX:F

    return p0
.end method

.method public final getPivotY()F
    .locals 0

    .line 140
    iget p0, p0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;->pivotY:F

    return p0
.end method

.method public final getRadius()I
    .locals 0

    .line 136
    iget p0, p0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;->radius:I

    return p0
.end method

.method public final getScale()F
    .locals 0

    .line 141
    iget p0, p0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;->scale:F

    return p0
.end method

.method public final getTranX()F
    .locals 0

    .line 137
    iget p0, p0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;->tranX:F

    return p0
.end method

.method public final getTranY()F
    .locals 0

    .line 138
    iget p0, p0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;->tranY:F

    return p0
.end method

.method public final isNeedClip()Z
    .locals 0

    .line 143
    iget-boolean p0, p0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;->isNeedClip:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransformParams{radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;->radius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tranX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget v1, p0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;->tranX:F

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", tranY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget v1, p0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;->tranY:F

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", pivotX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget v1, p0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;->pivotX:F

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", pivotY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget v1, p0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;->pivotY:F

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget v1, p0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;->scale:F

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget v1, p0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;->alpha:F

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", isNeedClip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget-boolean p0, p0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;->isNeedClip:Z

    .line 158
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
