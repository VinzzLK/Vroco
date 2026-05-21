.class Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$2;
.super Ljava/lang/Object;
.source "AppGrid.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final appRoute:Lcom/miui/miuiwidget/servicedelivery/appitem/AppRoute;

.field final synthetic this$0:Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;


# direct methods
.method constructor <init>(Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;)V
    .locals 1

    .line 245
    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$2;->this$0:Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    new-instance p1, Lcom/miui/miuiwidget/servicedelivery/appitem/AppRoute$NativeRoute;

    new-instance v0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppRoute$GeneralRoute;

    invoke-direct {v0}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppRoute$GeneralRoute;-><init>()V

    invoke-direct {p1, v0}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppRoute$NativeRoute;-><init>(Lcom/miui/miuiwidget/servicedelivery/appitem/AppRoute;)V

    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$2;->appRoute:Lcom/miui/miuiwidget/servicedelivery/appitem/AppRoute;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 250
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;

    if-nez v0, :cond_0

    return-void

    .line 253
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;

    .line 254
    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$2;->appRoute:Lcom/miui/miuiwidget/servicedelivery/appitem/AppRoute;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppRoute;->route(Landroid/content/Context;Lcom/miui/miuiwidget/servicedelivery/model/AppItem;)Z

    move-result p1

    .line 255
    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$2;->this$0:Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

    invoke-static {v1}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->access$200(Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;)Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;

    move-result-object v1

    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$2;->this$0:Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

    invoke-static {p0}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->access$100(Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v1, v0, p0, p1}, Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;->trackAppItemClick(Lcom/miui/miuiwidget/servicedelivery/model/AppItem;IZ)V

    return-void
.end method
