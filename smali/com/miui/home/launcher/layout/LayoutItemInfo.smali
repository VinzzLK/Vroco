.class public Lcom/miui/home/launcher/layout/LayoutItemInfo;
.super Ljava/lang/Object;
.source "LayoutItemInfo.java"


# instance fields
.field public accessTag:J

.field public categoryId:I

.field public cellX:I

.field public cellY:I

.field public configSpanX:I

.field public configSpanY:I

.field public id:J

.field public productId:Ljava/lang/String;

.field public providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field public screenId:J

.field public spanX:I

.field public spanY:I

.field public tag:Ljava/lang/Object;


# direct methods
.method public constructor <init>(JIIIIJLjava/lang/Object;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/miui/home/launcher/layout/LayoutItemInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/miui/home/launcher/layout/LayoutItemInfo;->configSpanX:I

    .line 19
    iput v0, p0, Lcom/miui/home/launcher/layout/LayoutItemInfo;->configSpanY:I

    const-string v1, ""

    .line 20
    iput-object v1, p0, Lcom/miui/home/launcher/layout/LayoutItemInfo;->productId:Ljava/lang/String;

    .line 21
    iput v0, p0, Lcom/miui/home/launcher/layout/LayoutItemInfo;->categoryId:I

    .line 25
    iput-wide p1, p0, Lcom/miui/home/launcher/layout/LayoutItemInfo;->id:J

    .line 26
    iput p3, p0, Lcom/miui/home/launcher/layout/LayoutItemInfo;->cellX:I

    .line 27
    iput p4, p0, Lcom/miui/home/launcher/layout/LayoutItemInfo;->cellY:I

    .line 28
    iput p5, p0, Lcom/miui/home/launcher/layout/LayoutItemInfo;->spanX:I

    .line 29
    iput p6, p0, Lcom/miui/home/launcher/layout/LayoutItemInfo;->spanY:I

    .line 30
    iput-object p9, p0, Lcom/miui/home/launcher/layout/LayoutItemInfo;->tag:Ljava/lang/Object;

    .line 31
    iput-wide p7, p0, Lcom/miui/home/launcher/layout/LayoutItemInfo;->screenId:J

    return-void
.end method


# virtual methods
.method public initWidgetInfo(Landroid/appwidget/AppWidgetProviderInfo;IILjava/lang/String;I)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/miui/home/launcher/layout/LayoutItemInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 37
    iput p2, p0, Lcom/miui/home/launcher/layout/LayoutItemInfo;->configSpanX:I

    .line 38
    iput p3, p0, Lcom/miui/home/launcher/layout/LayoutItemInfo;->configSpanY:I

    .line 39
    iput-object p4, p0, Lcom/miui/home/launcher/layout/LayoutItemInfo;->productId:Ljava/lang/String;

    .line 40
    iput p5, p0, Lcom/miui/home/launcher/layout/LayoutItemInfo;->categoryId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/home/launcher/layout/LayoutItemInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",screenId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/home/launcher/layout/LayoutItemInfo;->screenId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",cellX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/layout/LayoutItemInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",cellY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/layout/LayoutItemInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",spanX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/layout/LayoutItemInfo;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",spanY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/layout/LayoutItemInfo;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",providerInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/layout/LayoutItemInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",configSpanX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/layout/LayoutItemInfo;->configSpanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",configSpanY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/layout/LayoutItemInfo;->configSpanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",productId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/layout/LayoutItemInfo;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",categoryId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/layout/LayoutItemInfo;->categoryId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/launcher/layout/LayoutItemInfo;->tag:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
