.class public final synthetic Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

.field public final synthetic f$1:Lcom/miui/miuiwidget/servicedelivery/model/DataSet;

.field public final synthetic f$2:Lcom/miui/miuiwidget/servicedelivery/model/DataSet;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$$ExternalSyntheticLambda2;->f$0:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    iput-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$$ExternalSyntheticLambda2;->f$1:Lcom/miui/miuiwidget/servicedelivery/model/DataSet;

    iput-object p3, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$$ExternalSyntheticLambda2;->f$2:Lcom/miui/miuiwidget/servicedelivery/model/DataSet;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$$ExternalSyntheticLambda2;->f$0:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$$ExternalSyntheticLambda2;->f$1:Lcom/miui/miuiwidget/servicedelivery/model/DataSet;

    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$$ExternalSyntheticLambda2;->f$2:Lcom/miui/miuiwidget/servicedelivery/model/DataSet;

    invoke-static {v0, v1, p0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->$r8$lambda$m81KuLNAguZCLID2ytRP74ozaII(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;Lcom/miui/miuiwidget/servicedelivery/model/DataSet;)V

    return-void
.end method
