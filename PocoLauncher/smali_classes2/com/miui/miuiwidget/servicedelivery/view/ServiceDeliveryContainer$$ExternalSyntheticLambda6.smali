.class public final synthetic Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

.field public final synthetic f$1:Ljava/util/Map;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;Ljava/util/Map;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$$ExternalSyntheticLambda6;->f$0:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    iput-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$$ExternalSyntheticLambda6;->f$1:Ljava/util/Map;

    iput-boolean p3, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$$ExternalSyntheticLambda6;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$$ExternalSyntheticLambda6;->f$0:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$$ExternalSyntheticLambda6;->f$1:Ljava/util/Map;

    iget-boolean p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer$$ExternalSyntheticLambda6;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;->$r8$lambda$ZU1D2YN34CDfCcO8JNJ0f6HRkxc(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryContainer;Ljava/util/Map;Z)V

    return-void
.end method
