.class public final Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;
.super Ljava/lang/Object;
.source "LayoutPreviewView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/LayoutPreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CellCountXY"
.end annotation


# instance fields
.field public drawableId:I

.field public index:I

.field public type:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equal(Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 534
    :cond_0
    iget v1, p0, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->index:I

    iget v2, p1, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->index:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->x:I

    iget v2, p1, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->x:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->y:I

    iget v2, p1, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->y:I

    if-ne v1, v2, :cond_1

    iget p0, p0, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->type:I

    iget p1, p1, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->type:I

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public getContentDescription()Ljava/lang/String;
    .locals 1

    .line 519
    iget v0, p0, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->x:I

    iget p0, p0, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->y:I

    invoke-static {v0, p0}, Lcom/miui/home/launcher/LayoutPreviewView;->getScreenCellConfigString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLayoutName()Ljava/lang/String;
    .locals 2

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u00d7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->y:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, -0x1

    .line 523
    iput v0, p0, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->index:I

    .line 524
    iput v0, p0, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->x:I

    .line 525
    iput v0, p0, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->y:I

    .line 526
    iput v0, p0, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->type:I

    .line 527
    iput v0, p0, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->drawableId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;->type:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
