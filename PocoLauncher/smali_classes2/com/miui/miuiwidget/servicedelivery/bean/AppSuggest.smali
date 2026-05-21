.class public Lcom/miui/miuiwidget/servicedelivery/bean/AppSuggest;
.super Ljava/lang/Object;
.source "AppSuggest.java"


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
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
