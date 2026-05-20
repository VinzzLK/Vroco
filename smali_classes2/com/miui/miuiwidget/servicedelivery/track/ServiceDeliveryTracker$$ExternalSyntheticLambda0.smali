.class public final synthetic Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;

.field public final synthetic f$1:Lcom/miui/miuiwidget/servicedelivery/model/AppItem;

.field public final synthetic f$2:I

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;Lcom/miui/miuiwidget/servicedelivery/model/AppItem;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker$$ExternalSyntheticLambda0;->f$0:Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;

    iput-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker$$ExternalSyntheticLambda0;->f$1:Lcom/miui/miuiwidget/servicedelivery/model/AppItem;

    iput p3, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker$$ExternalSyntheticLambda0;->f$2:I

    iput-boolean p4, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker$$ExternalSyntheticLambda0;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker$$ExternalSyntheticLambda0;->f$0:Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker$$ExternalSyntheticLambda0;->f$1:Lcom/miui/miuiwidget/servicedelivery/model/AppItem;

    iget v2, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker$$ExternalSyntheticLambda0;->f$2:I

    iget-boolean p0, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker$$ExternalSyntheticLambda0;->f$3:Z

    invoke-static {v0, v1, v2, p0}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->$r8$lambda$VAhjCk1phCPeX_Y3dir98zdCRk8(Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;Lcom/miui/miuiwidget/servicedelivery/model/AppItem;IZ)V

    return-void
.end method
