.class final Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$AppWidgetFactoryImpl;
.super Ljava/lang/Object;
.source "LauncherServiceDeliveryWidgetDelegate.java"

# interfaces
.implements Lcom/miui/miuiwidget/servicedelivery/appwidget/AppWidgetFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AppWidgetFactoryImpl"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private volatile isInitializer:Z

.field private final widgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherAppWidgetHost;)V
    .locals 0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$AppWidgetFactoryImpl;->context:Landroid/content/Context;

    .line 171
    iput-object p2, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$AppWidgetFactoryImpl;->widgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    return-void
.end method

.method private allocateAndBound(Lcom/miui/home/launcher/LauncherAppWidgetInfo;Ljava/lang/String;)I
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$AppWidgetFactoryImpl;->widgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 205
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$AppWidgetFactoryImpl;->context:Landroid/content/Context;

    iget-object v1, p1, Lcom/miui/home/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    .line 206
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object p1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 205
    invoke-static {p0, v0, v1, p1, v2}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->bindAppWidgetIdIfAllowed(Landroid/content/Context;ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result p0

    .line 207
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AppWidgetId "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bound "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppWidgetFactoryImpl"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public create(Lcom/miui/miuiwidget/servicedelivery/model/AppWidgetItem;)Lcom/miui/miuiwidget/servicedelivery/appwidget/IAppWidgetView;
    .locals 5

    .line 176
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$AppWidgetFactoryImpl;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryBeanUtils;->toAppWidgetInfo(Landroid/content/Context;Lcom/miui/miuiwidget/servicedelivery/model/AppWidgetItem;)Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 178
    :cond_0
    new-instance v2, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$BooleanRef;

    invoke-direct {v2}, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$BooleanRef;-><init>()V

    const/4 v3, 0x1

    .line 179
    iput-boolean v3, v2, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$BooleanRef;->element:Z

    .line 180
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 181
    iget v3, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    if-gtz v3, :cond_1

    .line 182
    invoke-direct {p0, v0, v2}, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$AppWidgetFactoryImpl;->allocateAndBound(Lcom/miui/home/launcher/LauncherAppWidgetInfo;Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    .line 184
    :cond_1
    iget v3, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    const-string v4, "AppWidgetFactoryImpl"

    if-gtz v3, :cond_2

    .line 185
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "appWidgetId create failed "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 189
    :cond_2
    iput v3, p1, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->widgetId:I

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "itemInfo id:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->widgetId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " implUniqueCode:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->implUniqueCode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " providerClass:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$AppWidgetFactoryImpl;->widgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$AppWidgetFactoryImpl;->context:Landroid/content/Context;

    iget v2, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    iget-object p1, p1, Lcom/miui/miuiwidget/servicedelivery/model/AppWidgetItem;->appWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v1, p0, v2, v0, p1}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->createNoTitleWidgetView(Landroid/content/Context;ILcom/miui/home/launcher/LauncherAppWidgetInfo;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/miui/home/launcher/LauncherWidgetView;

    move-result-object p0

    const/4 p1, 0x0

    .line 194
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setLongClickable(Z)V

    return-object p0
.end method

.method public isInitialized()Ljava/lang/Boolean;
    .locals 0

    .line 200
    iget-boolean p0, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$AppWidgetFactoryImpl;->isInitializer:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    .line 166
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$AppWidgetFactoryImpl;->isInitializer:Z

    return-void
.end method
