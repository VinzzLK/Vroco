.class public final synthetic Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;IILjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver$$ExternalSyntheticLambda3;->f$1:I

    iput p3, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver$$ExternalSyntheticLambda3;->f$2:I

    iput-object p4, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver$$ExternalSyntheticLambda3;->f$3:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iget v1, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver$$ExternalSyntheticLambda3;->f$1:I

    iget v2, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver$$ExternalSyntheticLambda3;->f$2:I

    iget-object p0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver$$ExternalSyntheticLambda3;->f$3:Ljava/util/ArrayList;

    check-cast p1, Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->$r8$lambda$1s0IiXtpkhhtEfXnA7ypYjFn3B0(Ljava/lang/String;IILjava/util/ArrayList;Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;)V

    return-void
.end method
