.class public Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo;
.super Ljava/lang/Object;
.source "IntentServiceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo$IntentionPeriod;,
        Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo$IntentCard;
    }
.end annotation


# instance fields
.field public extraInfo:Lcom/google/gson/JsonObject;

.field public instanceId:Ljava/lang/String;

.field public intentCardList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "target"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo$IntentCard;",
            ">;"
        }
    .end annotation
.end field

.field public intentExtra:Lcom/google/gson/JsonObject;

.field public intentId:Ljava/lang/String;

.field public intentSource:I

.field public intentionProperty:Lcom/google/gson/JsonObject;

.field public intentionType:I

.field public isFeedbackEnabled:Z

.field public periodList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo$IntentionPeriod;",
            ">;"
        }
    .end annotation
.end field

.field public ranking:Lcom/google/gson/JsonObject;

.field public slots:Lcom/google/gson/JsonObject;

.field public source:Lcom/google/gson/JsonObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo;->intentExtra:Lcom/google/gson/JsonObject;

    .line 14
    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo;->extraInfo:Lcom/google/gson/JsonObject;

    .line 15
    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo;->intentionProperty:Lcom/google/gson/JsonObject;

    .line 16
    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo;->ranking:Lcom/google/gson/JsonObject;

    .line 17
    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo;->slots:Lcom/google/gson/JsonObject;

    .line 18
    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo;->source:Lcom/google/gson/JsonObject;

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo;->isFeedbackEnabled:Z

    return-void
.end method
