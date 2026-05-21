.class final Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$PendingWidgetFactoryImpl;
.super Ljava/lang/Object;
.source "LauncherServiceDeliveryWidgetDelegate.java"

# interfaces
.implements Lcom/miui/miuiwidget/servicedelivery/appwidget/PendingWidgetFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingWidgetFactoryImpl"
.end annotation


# instance fields
.field private final launcher:Lcom/miui/home/launcher/Launcher;

.field private final widgetController:Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;Landroid/appwidget/AppWidgetHost;Lcom/miui/miuiwidget/servicedelivery/appwidget/AppWidgetFactory;Lcom/miui/miuiwidget/servicedelivery/appwidget/MamlWidgetFactory;)V
    .locals 1

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$PendingWidgetFactoryImpl;->launcher:Lcom/miui/home/launcher/Launcher;

    .line 239
    new-instance p1, Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;

    const/4 v0, 0x0

    invoke-direct {p1, p2, p3, p4, v0}, Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;-><init>(Landroid/appwidget/AppWidgetHost;Lcom/miui/miuiwidget/servicedelivery/appwidget/AppWidgetFactory;Lcom/miui/miuiwidget/servicedelivery/appwidget/MamlWidgetFactory;Lcom/miui/miuiwidget/servicedelivery/appwidget/PendingWidgetFactory;)V

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$PendingWidgetFactoryImpl;->widgetController:Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;

    return-void
.end method


# virtual methods
.method public create(Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;)Lcom/miui/miuiwidget/servicedelivery/appwidget/IPendingWidgetView;
    .locals 3

    .line 244
    move-object v0, p1

    check-cast v0, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;

    .line 245
    invoke-static {v0}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryBeanUtils;->toMamlWidgetInfo(Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;)Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 247
    :cond_0
    iget v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    if-gtz v1, :cond_1

    .line 248
    invoke-static {}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->allocMaMlWidgetId()I

    move-result v1

    iput v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    .line 250
    :cond_1
    iget v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    iput v1, p1, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->widgetId:I

    .line 251
    new-instance p1, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryPendingHostView;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$PendingWidgetFactoryImpl;->launcher:Lcom/miui/home/launcher/Launcher;

    const-string v2, ""

    invoke-direct {p1, v1, v2}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryPendingHostView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 252
    new-instance v1, Lcom/miui/home/launcher/maml/MaMlWidgetView;

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$PendingWidgetFactoryImpl;->launcher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/maml/MaMlWidgetView;-><init>(Landroid/content/Context;)V

    .line 253
    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->setHostView(Lcom/miui/home/launcher/maml/MaMlHostView;)V

    .line 254
    iput-object v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->hostView:Lcom/miui/home/launcher/maml/MaMlWidgetView;

    .line 255
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->setTag(Ljava/lang/Object;)V

    .line 256
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$PendingWidgetFactoryImpl;->widgetController:Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryPendingHostView;->setWidgetController(Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;)V

    return-object p1
.end method
