.class public Lcom/miui/miuiwidget/servicedelivery/model/AppItemDataSet;
.super Ljava/lang/Object;
.source "AppItemDataSet.java"


# instance fields
.field public adMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/miui/miuiwidget/servicedelivery/model/AppItem;",
            ">;>;"
        }
    .end annotation
.end field

.field public appList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/miuiwidget/servicedelivery/model/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field public experiments:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 9
    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/model/AppItemDataSet;->experiments:Ljava/lang/String;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/model/AppItemDataSet;->appList:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/model/AppItemDataSet;->adMap:Ljava/util/Map;

    return-void
.end method
