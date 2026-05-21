.class public Lcom/miui/miuiwidget/servicedelivery/model/DataSet;
.super Ljava/lang/Object;
.source "DataSet.java"


# instance fields
.field public appItemDataSet:Lcom/miui/miuiwidget/servicedelivery/model/AppItemDataSet;

.field public timestamp:J

.field public widgetItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lcom/miui/miuiwidget/servicedelivery/model/DataSet;->timestamp:J

    .line 11
    new-instance v0, Lcom/miui/miuiwidget/servicedelivery/model/AppItemDataSet;

    invoke-direct {v0}, Lcom/miui/miuiwidget/servicedelivery/model/AppItemDataSet;-><init>()V

    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/model/DataSet;->appItemDataSet:Lcom/miui/miuiwidget/servicedelivery/model/AppItemDataSet;

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/model/DataSet;->widgetItemList:Ljava/util/List;

    return-void
.end method
