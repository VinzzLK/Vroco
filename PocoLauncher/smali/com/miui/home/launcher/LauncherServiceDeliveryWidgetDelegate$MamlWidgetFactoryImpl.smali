.class final Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$MamlWidgetFactoryImpl;
.super Ljava/lang/Object;
.source "LauncherServiceDeliveryWidgetDelegate.java"

# interfaces
.implements Lcom/miui/miuiwidget/servicedelivery/appwidget/MamlWidgetFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MamlWidgetFactoryImpl"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$MamlWidgetFactoryImpl;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public create(Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;)Lcom/miui/miuiwidget/servicedelivery/appwidget/IMamlWidgetView;
    .locals 1

    .line 221
    invoke-static {p1}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryBeanUtils;->toMamlWidgetInfo(Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;)Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 223
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    if-gtz v0, :cond_1

    .line 224
    invoke-static {}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->allocMaMlWidgetId()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    .line 226
    :cond_1
    iget v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    iput v0, p1, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->widgetId:I

    const/4 p1, 0x0

    .line 227
    invoke-static {p0, p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->from(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;Z)Lcom/miui/home/launcher/maml/MaMlWidgetView;

    move-result-object p0

    return-object p0
.end method
