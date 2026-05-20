.class public Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;
.super Ljava/lang/Object;
.source "ClipAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/util/ClipAnimationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransformParams"
.end annotation


# instance fields
.field public clipProgress:F

.field public isClipFromLeftOrTop:Z

.field public isElementHidden:Z

.field public isVerticalClip:Z

.field public launcherStateNormal:Z

.field public radius:F

.field public ratio:F

.field public scale:F

.field syncTransactionApplier:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

.field public targetAlpha:F

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 793
    iput-boolean v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->launcherStateNormal:Z

    .line 795
    iput-boolean v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->isElementHidden:Z

    const/4 v0, 0x0

    .line 800
    iput v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->x:F

    .line 801
    iput v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->y:F

    .line 802
    iput v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->width:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 803
    iput v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->ratio:F

    .line 804
    iput v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->clipProgress:F

    .line 805
    iput v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->radius:F

    .line 806
    iput v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->targetAlpha:F

    const/4 v0, 0x1

    .line 807
    iput-boolean v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->isVerticalClip:Z

    .line 808
    iput-boolean v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->isClipFromLeftOrTop:Z

    .line 809
    iput v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->scale:F

    return-void
.end method


# virtual methods
.method public getSyncTransactionApplier()Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;
    .locals 0

    .line 901
    iget-object p0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->syncTransactionApplier:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    return-object p0
.end method

.method public setClipFromLeftOrTop(Z)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;
    .locals 0

    .line 842
    iput-boolean p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->isClipFromLeftOrTop:Z

    return-object p0
.end method

.method public setClipProgress(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;
    .locals 0

    .line 880
    iput p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->clipProgress:F

    return-object p0
.end method

.method public setElementHidden(Z)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;
    .locals 0

    .line 832
    iput-boolean p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->isElementHidden:Z

    return-object p0
.end method

.method public setRadius(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;
    .locals 0

    .line 885
    iput p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->radius:F

    return-object p0
.end method

.method public setRect(Landroid/graphics/RectF;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;
    .locals 1

    .line 847
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->x:F

    .line 848
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iput v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->y:F

    .line 849
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->width:F

    .line 850
    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float p1, v0, p1

    :goto_0
    iput p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->ratio:F

    return-object p0
.end method

.method public setScale(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;
    .locals 0

    .line 827
    iput p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->scale:F

    return-object p0
.end method

.method public setSyncTransactionApplier(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;
    .locals 0

    .line 896
    iput-object p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->syncTransactionApplier:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    return-object p0
.end method

.method public setTargetAlpha(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;
    .locals 0

    .line 890
    iput p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->targetAlpha:F

    return-object p0
.end method

.method public setVerticalClip(Ljava/lang/Boolean;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;
    .locals 0

    .line 837
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->isVerticalClip:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransformParams{x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->width:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", ratio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->ratio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", targetAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->targetAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", isVerticalClip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->isVerticalClip:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isClipFromLeftOrTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->isClipFromLeftOrTop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->scale:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
