.class public abstract Lmiuix/spring/view/SpringHelper;
.super Ljava/lang/Object;
.source "SpringHelper.java"

# interfaces
.implements Lmiuix/spring/view/SpringStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/spring/view/SpringHelper$AxisHandler;
    }
.end annotation


# instance fields
.field private mHorizontal:Lmiuix/spring/view/SpringHelper$AxisHandler;

.field private mVertical:Lmiuix/spring/view/SpringHelper$AxisHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lmiuix/spring/view/SpringHelper$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiuix/spring/view/SpringHelper$1;-><init>(Lmiuix/spring/view/SpringHelper;I)V

    iput-object v0, p0, Lmiuix/spring/view/SpringHelper;->mHorizontal:Lmiuix/spring/view/SpringHelper$AxisHandler;

    .line 27
    new-instance v0, Lmiuix/spring/view/SpringHelper$2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lmiuix/spring/view/SpringHelper$2;-><init>(Lmiuix/spring/view/SpringHelper;I)V

    iput-object v0, p0, Lmiuix/spring/view/SpringHelper;->mVertical:Lmiuix/spring/view/SpringHelper$AxisHandler;

    return-void
.end method


# virtual methods
.method protected abstract canScrollHorizontally()Z
.end method

.method protected abstract canScrollVertically()Z
.end method

.method protected abstract dispatchNestedPreScroll(II[I[II)Z
.end method

.method protected abstract dispatchNestedScroll(IIII[II[I)V
.end method

.method protected abstract getHeight()I
.end method

.method public getHorizontalDistance()I
    .locals 0

    .line 48
    iget-object p0, p0, Lmiuix/spring/view/SpringHelper;->mHorizontal:Lmiuix/spring/view/SpringHelper$AxisHandler;

    iget p0, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    float-to-int p0, p0

    return p0
.end method

.method public getVerticalDistance()I
    .locals 0

    .line 56
    iget-object p0, p0, Lmiuix/spring/view/SpringHelper;->mVertical:Lmiuix/spring/view/SpringHelper$AxisHandler;

    iget p0, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    float-to-int p0, p0

    return p0
.end method

.method protected abstract getWidth()I
.end method

.method public handleNestedPreScroll(II[I[II)Z
    .locals 10

    const/4 v1, 0x2

    new-array v6, v1, [I

    .line 75
    fill-array-data v6, :array_0

    .line 78
    invoke-virtual {p0}, Lmiuix/spring/view/SpringHelper;->springAvailable()Z

    move-result v2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_2

    if-nez p5, :cond_0

    move v2, v7

    goto :goto_0

    :cond_0
    move v2, v8

    :goto_0
    new-array v1, v1, [I

    aput p1, v1, v8

    aput p2, v1, v7

    .line 81
    iget-object v3, p0, Lmiuix/spring/view/SpringHelper;->mHorizontal:Lmiuix/spring/view/SpringHelper$AxisHandler;

    invoke-virtual {v3, v1, v6, v2}, Lmiuix/spring/view/SpringHelper$AxisHandler;->handleNestedPreScroll([I[IZ)Z

    move-result v3

    .line 82
    iget-object v4, p0, Lmiuix/spring/view/SpringHelper;->mVertical:Lmiuix/spring/view/SpringHelper$AxisHandler;

    invoke-virtual {v4, v1, v6, v2}, Lmiuix/spring/view/SpringHelper$AxisHandler;->handleNestedPreScroll([I[IZ)Z

    move-result v2

    or-int/2addr v2, v3

    aget v3, v1, v8

    aget v1, v1, v7

    if-eqz v2, :cond_1

    .line 86
    iget-object v4, p0, Lmiuix/spring/view/SpringHelper;->mHorizontal:Lmiuix/spring/view/SpringHelper$AxisHandler;

    iget v4, v4, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    iget-object v5, p0, Lmiuix/spring/view/SpringHelper;->mVertical:Lmiuix/spring/view/SpringHelper$AxisHandler;

    iget v5, v5, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    invoke-interface {p0, v4, v5}, Lmiuix/spring/view/SpringStateListener;->onSpringDistanceChanged(FF)V

    :cond_1
    move v9, v2

    goto :goto_1

    :cond_2
    move v3, p1

    move v1, p2

    move v9, v8

    :goto_1
    if-eqz v9, :cond_3

    aget v2, v6, v8

    sub-int/2addr v3, v2

    aget v2, v6, v7

    sub-int/2addr v1, v2

    :cond_3
    move v2, v1

    move v1, v3

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 97
    invoke-virtual/range {v0 .. v5}, Lmiuix/spring/view/SpringHelper;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    or-int/2addr v0, v9

    if-eqz p3, :cond_4

    .line 101
    aget v1, p3, v8

    aget v2, v6, v8

    add-int/2addr v1, v2

    aput v1, p3, v8

    .line 102
    aget v1, p3, v7

    aget v2, v6, v7

    add-int/2addr v1, v2

    aput v1, p3, v7

    :cond_4
    return v0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public handleNestedScroll(IIII[II[I)V
    .locals 8

    if-nez p7, :cond_0

    const/4 p7, 0x2

    new-array p7, p7, [I

    .line 110
    fill-array-data p7, :array_0

    :cond_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    .line 113
    invoke-virtual/range {v0 .. v7}, Lmiuix/spring/view/SpringHelper;->dispatchNestedScroll(IIII[II[I)V

    const/4 p1, 0x0

    .line 115
    aget p1, p7, p1

    sub-int/2addr p3, p1

    const/4 p1, 0x1

    .line 116
    aget p1, p7, p1

    sub-int/2addr p4, p1

    if-nez p3, :cond_1

    if-eqz p4, :cond_3

    .line 118
    :cond_1
    iget-object p1, p0, Lmiuix/spring/view/SpringHelper;->mHorizontal:Lmiuix/spring/view/SpringHelper$AxisHandler;

    invoke-virtual {p1, p3, p5, p6, p7}, Lmiuix/spring/view/SpringHelper$AxisHandler;->handleNestedScroll(I[II[I)Z

    move-result p1

    .line 119
    iget-object p2, p0, Lmiuix/spring/view/SpringHelper;->mVertical:Lmiuix/spring/view/SpringHelper$AxisHandler;

    invoke-virtual {p2, p4, p5, p6, p7}, Lmiuix/spring/view/SpringHelper$AxisHandler;->handleNestedScroll(I[II[I)Z

    move-result p2

    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    .line 121
    :cond_2
    iget-object p1, p0, Lmiuix/spring/view/SpringHelper;->mHorizontal:Lmiuix/spring/view/SpringHelper$AxisHandler;

    iget p1, p1, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    iget-object p2, p0, Lmiuix/spring/view/SpringHelper;->mVertical:Lmiuix/spring/view/SpringHelper$AxisHandler;

    iget p2, p2, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    invoke-interface {p0, p1, p2}, Lmiuix/spring/view/SpringStateListener;->onSpringDistanceChanged(FF)V

    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public resetDistance()V
    .locals 4

    .line 64
    iget-object v0, p0, Lmiuix/spring/view/SpringHelper;->mHorizontal:Lmiuix/spring/view/SpringHelper$AxisHandler;

    iget v1, v0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget-object v1, p0, Lmiuix/spring/view/SpringHelper;->mVertical:Lmiuix/spring/view/SpringHelper$AxisHandler;

    iget v1, v1, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 65
    :goto_1
    iget-object v3, p0, Lmiuix/spring/view/SpringHelper;->mVertical:Lmiuix/spring/view/SpringHelper$AxisHandler;

    iput v2, v3, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    .line 66
    iput v2, v3, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    .line 67
    iput v2, v0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    .line 68
    iput v2, v0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    if-eqz v1, :cond_2

    .line 70
    iget v0, v3, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    invoke-interface {p0, v2, v0}, Lmiuix/spring/view/SpringStateListener;->onSpringDistanceChanged(FF)V

    :cond_2
    return-void
.end method

.method protected abstract springAvailable()Z
.end method

.method protected abstract vibrate()V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method
