.class public interface abstract Lcom/miui/home/launcher/DropTarget;
.super Ljava/lang/Object;
.source "DropTarget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;
    }
.end annotation


# virtual methods
.method public abstract acceptDrop(Lcom/miui/home/launcher/DragObject;)Z
.end method

.method public abstract getDropTargetDelegate(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/DropTarget;
.end method

.method public abstract getHitView()Landroid/view/View;
.end method

.method public abstract getLeft()I
.end method

.method public abstract getOnDropAnnounce()Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;
.end method

.method public abstract getTop()I
.end method

.method public abstract isDropEnabled()Z
.end method

.method public abstract onDragEnter(Lcom/miui/home/launcher/DragObject;)V
.end method

.method public abstract onDragExit(Lcom/miui/home/launcher/DragObject;)V
.end method

.method public abstract onDragOver(Lcom/miui/home/launcher/DragObject;)V
.end method

.method public abstract onDrop(Lcom/miui/home/launcher/DragObject;)Z
.end method

.method public abstract onDropCompleted()V
.end method

.method public abstract onDropStart(Lcom/miui/home/launcher/DragObject;)V
.end method

.method public recalHitRect(Landroid/graphics/Rect;F[I)V
    .locals 4

    const/4 p0, 0x0

    .line 89
    aget v0, p3, p0

    const/4 v1, 0x1

    aget v2, p3, v1

    aget p0, p3, p0

    int-to-float p0, p0

    .line 90
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr p0, v3

    float-to-int p0, p0

    aget p3, p3, v1

    int-to-float p3, p3

    .line 91
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    add-float/2addr p3, v1

    float-to-int p2, p3

    .line 89
    invoke-virtual {p1, v0, v2, p0, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
