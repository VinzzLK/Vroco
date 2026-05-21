.class public final Lcom/miui/home/recents/anim/PairCounts;
.super Ljava/lang/Object;
.source "PairCounts.kt"


# instance fields
.field private pairCount:F

.field private pairCountLeft:F

.field private pairCountRight:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPairCount()F
    .locals 0

    .line 4
    iget p0, p0, Lcom/miui/home/recents/anim/PairCounts;->pairCount:F

    return p0
.end method

.method public final getPairCountLeft()F
    .locals 0

    .line 5
    iget p0, p0, Lcom/miui/home/recents/anim/PairCounts;->pairCountLeft:F

    return p0
.end method

.method public final getPairCountRight()F
    .locals 0

    .line 6
    iget p0, p0, Lcom/miui/home/recents/anim/PairCounts;->pairCountRight:F

    return p0
.end method

.method public final setPairCounts(FFF)V
    .locals 0

    .line 21
    iput p1, p0, Lcom/miui/home/recents/anim/PairCounts;->pairCount:F

    .line 22
    iput p2, p0, Lcom/miui/home/recents/anim/PairCounts;->pairCountLeft:F

    .line 23
    iput p3, p0, Lcom/miui/home/recents/anim/PairCounts;->pairCountRight:F

    return-void
.end method
