.class public final synthetic Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker$$ExternalSyntheticLambda2;->f$0:Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;

    iput-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker$$ExternalSyntheticLambda2;->f$0:Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget p0, p0, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker$$ExternalSyntheticLambda2;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->$r8$lambda$p_MMSHeNaI6lRkLu6mxHRyPzlJw(Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;Ljava/lang/String;I)V

    return-void
.end method
