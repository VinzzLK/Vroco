.class public final Lcom/miui/home/recents/views/FloatingIconView2$LayoutWidthAndHeight;
.super Ljava/lang/Object;
.source "FloatingIconView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/views/FloatingIconView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LayoutWidthAndHeight"
.end annotation


# instance fields
.field private height:F

.field private width:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/home/recents/views/FloatingIconView2$LayoutWidthAndHeight;->width:F

    iput p2, p0, Lcom/miui/home/recents/views/FloatingIconView2$LayoutWidthAndHeight;->height:F

    return-void
.end method


# virtual methods
.method public final getHeight()F
    .locals 0

    .line 200
    iget p0, p0, Lcom/miui/home/recents/views/FloatingIconView2$LayoutWidthAndHeight;->height:F

    return p0
.end method

.method public final getWidth()F
    .locals 0

    .line 200
    iget p0, p0, Lcom/miui/home/recents/views/FloatingIconView2$LayoutWidthAndHeight;->width:F

    return p0
.end method

.method public final setHeight(F)V
    .locals 0

    .line 200
    iput p1, p0, Lcom/miui/home/recents/views/FloatingIconView2$LayoutWidthAndHeight;->height:F

    return-void
.end method
