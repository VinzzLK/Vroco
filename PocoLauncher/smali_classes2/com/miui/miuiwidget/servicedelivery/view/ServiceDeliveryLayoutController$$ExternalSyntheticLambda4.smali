.class public final synthetic Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController$$ExternalSyntheticLambda4;->f$0:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;

    iput-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController$$ExternalSyntheticLambda4;->f$0:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;

    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    check-cast p1, Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo;

    invoke-static {v0, p0, p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;->$r8$lambda$fIjaK8XadKiFayC2D4TqZgTC5Nk(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutController;Ljava/util/List;Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo;)Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;

    move-result-object p0

    return-object p0
.end method
