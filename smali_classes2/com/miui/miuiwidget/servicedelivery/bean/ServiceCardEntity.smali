.class public Lcom/miui/miuiwidget/servicedelivery/bean/ServiceCardEntity;
.super Ljava/lang/Object;
.source "ServiceCardEntity.java"


# instance fields
.field public finishTime:J

.field public intentServiceInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public transient localImgPathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/bean/ServiceCardEntity;->intentServiceInfoList:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/bean/ServiceCardEntity;->localImgPathList:Ljava/util/ArrayList;

    return-void
.end method
