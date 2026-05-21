.class public Lcom/android/systemui/fsgesture/GesturesBackController;
.super Ljava/lang/Object;
.source "GesturesBackController.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# direct methods
.method static isFinished(FI)Z
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x43b40000    # 360.0f

    div-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x2

    if-le p1, p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
