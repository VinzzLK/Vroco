.class public Lcom/miui/home/launcher/util/DoubleTapViewUtil;
.super Ljava/lang/Object;
.source "DoubleTapViewUtil.java"


# direct methods
.method public static pointInViewArea(Landroid/view/View;FFLandroid/graphics/Rect;)Z
    .locals 0

    .line 50
    invoke-virtual {p0, p3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    float-to-int p0, p1

    float-to-int p1, p2

    .line 51
    invoke-virtual {p3, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method
