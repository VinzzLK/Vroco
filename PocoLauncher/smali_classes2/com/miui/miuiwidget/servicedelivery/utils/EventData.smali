.class Lcom/miui/miuiwidget/servicedelivery/utils/EventData;
.super Ljava/lang/Object;
.source "MiAIMessenger.java"


# instance fields
.field private eventType:Ljava/lang/String;

.field private exposeDuration:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/utils/EventData;->eventType:Ljava/lang/String;

    .line 122
    iput-wide p2, p0, Lcom/miui/miuiwidget/servicedelivery/utils/EventData;->exposeDuration:J

    return-void
.end method
