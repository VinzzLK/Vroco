.class Lcom/miui/home/recents/NavStubView$PairCounts;
.super Ljava/lang/Object;
.source "NavStubView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/NavStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PairCounts"
.end annotation


# instance fields
.field pairCount:F

.field pairCountLeft:F

.field pairCountRight:F

.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 7191
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$PairCounts;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 7192
    iput p1, p0, Lcom/miui/home/recents/NavStubView$PairCounts;->pairCount:F

    .line 7193
    iput p1, p0, Lcom/miui/home/recents/NavStubView$PairCounts;->pairCountLeft:F

    .line 7194
    iput p1, p0, Lcom/miui/home/recents/NavStubView$PairCounts;->pairCountRight:F

    return-void
.end method


# virtual methods
.method public clearPairCount()V
    .locals 1

    const/4 v0, 0x0

    .line 7198
    iput v0, p0, Lcom/miui/home/recents/NavStubView$PairCounts;->pairCount:F

    .line 7199
    iput v0, p0, Lcom/miui/home/recents/NavStubView$PairCounts;->pairCountLeft:F

    .line 7200
    iput v0, p0, Lcom/miui/home/recents/NavStubView$PairCounts;->pairCountRight:F

    return-void
.end method

.method public setPairCounts(FFF)V
    .locals 0

    .line 7204
    iput p1, p0, Lcom/miui/home/recents/NavStubView$PairCounts;->pairCount:F

    .line 7205
    iput p2, p0, Lcom/miui/home/recents/NavStubView$PairCounts;->pairCountLeft:F

    .line 7206
    iput p3, p0, Lcom/miui/home/recents/NavStubView$PairCounts;->pairCountRight:F

    return-void
.end method
