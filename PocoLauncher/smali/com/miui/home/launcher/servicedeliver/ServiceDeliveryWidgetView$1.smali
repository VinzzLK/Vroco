.class Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView$1;
.super Landroid/view/ViewOutlineProvider;
.source "ServiceDeliveryWidgetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView$1;->this$0:Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 3

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView$1;->this$0:Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;

    .line 101
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/widget/RoundedCornerEnforcement;->computeEnforcedRadius(Landroid/content/Context;)F

    move-result p0

    .line 100
    invoke-virtual {p2, v0, p0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void
.end method
