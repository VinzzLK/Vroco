.class public Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;
.super Ljava/lang/Object;
.source "WidgetItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem$Type;
    }
.end annotation


# instance fields
.field public darkPreviewUrl:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public implUniqueCode:Ljava/lang/String;

.field public intentExtra:Ljava/lang/String;

.field public isFeedbackEnabled:Z

.field public lightPreviewUrl:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:I

.field public widgetId:I


# direct methods
.method protected constructor <init>(I)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 9
    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->lightPreviewUrl:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->darkPreviewUrl:Ljava/lang/String;

    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->isFeedbackEnabled:Z

    .line 17
    iput p1, p0, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->type:I

    .line 18
    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isDataHasDiff(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 36
    :cond_1
    check-cast p1, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    .line 37
    iget v2, p0, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->type:I

    iget v3, p1, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->type:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->isFeedbackEnabled:Z

    iget-boolean v3, p1, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->isFeedbackEnabled:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->implUniqueCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->implUniqueCode:Ljava/lang/String;

    .line 38
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->lightPreviewUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->lightPreviewUrl:Ljava/lang/String;

    .line 39
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->darkPreviewUrl:Ljava/lang/String;

    iget-object p1, p1, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->darkPreviewUrl:Ljava/lang/String;

    .line 40
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WidgetItem{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", implUniqueCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->implUniqueCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", widgetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->widgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isFeedbackEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->isFeedbackEnabled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
