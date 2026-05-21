.class public final Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;
.super Ljava/lang/Object;
.source "TaskViewClipHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskViewParamsBuilder"
.end annotation


# instance fields
.field private alpha:F

.field private final clipRect:Landroid/graphics/RectF;

.field private isNeedClip:Z

.field private pivotX:F

.field private pivotY:F

.field private radius:I

.field private scale:F

.field private tranX:F

.field private tranY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;->clipRect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final build()Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;
    .locals 1

    .line 220
    new-instance v0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams;-><init>(Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;)V

    return-object v0
.end method

.method public final getAlpha()F
    .locals 0

    .line 171
    iget p0, p0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;->alpha:F

    return p0
.end method

.method public final getClipRect()Landroid/graphics/RectF;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;->clipRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getPivotX()F
    .locals 0

    .line 168
    iget p0, p0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;->pivotX:F

    return p0
.end method

.method public final getPivotY()F
    .locals 0

    .line 169
    iget p0, p0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;->pivotY:F

    return p0
.end method

.method public final getRadius$app_pocoHomeRelease()I
    .locals 0

    .line 165
    iget p0, p0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;->radius:I

    return p0
.end method

.method public final getScale()F
    .locals 0

    .line 170
    iget p0, p0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;->scale:F

    return p0
.end method

.method public final getTranX()F
    .locals 0

    .line 166
    iget p0, p0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;->tranX:F

    return p0
.end method

.method public final getTranY()F
    .locals 0

    .line 167
    iget p0, p0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;->tranY:F

    return p0
.end method

.method public final isNeedClip()Z
    .locals 0

    .line 172
    iget-boolean p0, p0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;->isNeedClip:Z

    return p0
.end method

.method public final setAlpha(F)Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;
    .locals 0

    .line 210
    iput p1, p0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;->alpha:F

    return-object p0
.end method

.method public final setClipRect(Landroid/graphics/RectF;)Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;
    .locals 1

    const-string v0, "clipRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;->clipRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-object p0
.end method

.method public final setNeedClip(Z)Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;
    .locals 0

    .line 215
    iput-boolean p1, p0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;->isNeedClip:Z

    return-object p0
.end method

.method public final setPivotX(F)Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;
    .locals 0

    .line 195
    iput p1, p0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;->pivotX:F

    return-object p0
.end method

.method public final setPivotY(F)Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;
    .locals 0

    .line 200
    iput p1, p0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;->pivotY:F

    return-object p0
.end method

.method public final setRadius(I)Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;
    .locals 0

    .line 180
    iput p1, p0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;->radius:I

    return-object p0
.end method

.method public final setScale(F)Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;
    .locals 0

    .line 205
    iput p1, p0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;->scale:F

    return-object p0
.end method

.method public final setTranX(F)Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;
    .locals 0

    .line 185
    iput p1, p0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;->tranX:F

    return-object p0
.end method

.method public final setTranY(F)Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;
    .locals 0

    .line 190
    iput p1, p0, Lcom/miui/home/recents/util/TaskViewClipHelper$CloseToHomeTaskViewParams$TaskViewParamsBuilder;->tranY:F

    return-object p0
.end method
