.class Lcom/miui/miuiwidget/servicedelivery/utils/FeedbackInfo;
.super Ljava/lang/Object;
.source "MiAIMessenger.java"


# instance fields
.field private extra:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private intent:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/utils/FeedbackInfo;->intent:Ljava/lang/String;

    .line 112
    iput p2, p0, Lcom/miui/miuiwidget/servicedelivery/utils/FeedbackInfo;->type:I

    .line 113
    iput-object p3, p0, Lcom/miui/miuiwidget/servicedelivery/utils/FeedbackInfo;->extra:Ljava/util/Map;

    return-void
.end method
