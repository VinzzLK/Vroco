.class public Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;
.super Ljava/lang/Object;
.source "WidgetController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WidgetController"


# instance fields
.field private final appWidgetFactory:Lcom/miui/miuiwidget/servicedelivery/appwidget/AppWidgetFactory;

.field private final appWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private final mamlWidgetFactory:Lcom/miui/miuiwidget/servicedelivery/appwidget/MamlWidgetFactory;

.field private final pendingWidgetFactory:Lcom/miui/miuiwidget/servicedelivery/appwidget/PendingWidgetFactory;


# direct methods
.method public constructor <init>(Landroid/appwidget/AppWidgetHost;Lcom/miui/miuiwidget/servicedelivery/appwidget/AppWidgetFactory;Lcom/miui/miuiwidget/servicedelivery/appwidget/MamlWidgetFactory;Lcom/miui/miuiwidget/servicedelivery/appwidget/PendingWidgetFactory;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;->appWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 29
    iput-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;->appWidgetFactory:Lcom/miui/miuiwidget/servicedelivery/appwidget/AppWidgetFactory;

    .line 30
    iput-object p3, p0, Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;->mamlWidgetFactory:Lcom/miui/miuiwidget/servicedelivery/appwidget/MamlWidgetFactory;

    .line 31
    iput-object p4, p0, Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;->pendingWidgetFactory:Lcom/miui/miuiwidget/servicedelivery/appwidget/PendingWidgetFactory;

    return-void
.end method

.method private checkInstall(Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;)Z
    .locals 2

    .line 66
    iget p0, p1, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->type:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    return v0

    .line 67
    :cond_0
    check-cast p1, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;

    iget-object p0, p1, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;->resPath:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method private createPendingWidget(Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;)Landroid/view/View;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;->pendingWidgetFactory:Lcom/miui/miuiwidget/servicedelivery/appwidget/PendingWidgetFactory;

    invoke-interface {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/appwidget/PendingWidgetFactory;->create(Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;)Lcom/miui/miuiwidget/servicedelivery/appwidget/IPendingWidgetView;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method private createWidget(Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;)Landroid/view/View;
    .locals 2

    .line 75
    iget v0, p1, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 80
    :cond_0
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;->mamlWidgetFactory:Lcom/miui/miuiwidget/servicedelivery/appwidget/MamlWidgetFactory;

    check-cast p1, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;

    invoke-interface {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/appwidget/MamlWidgetFactory;->create(Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;)Lcom/miui/miuiwidget/servicedelivery/appwidget/IMamlWidgetView;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    .line 77
    :cond_1
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;->appWidgetFactory:Lcom/miui/miuiwidget/servicedelivery/appwidget/AppWidgetFactory;

    check-cast p1, Lcom/miui/miuiwidget/servicedelivery/model/AppWidgetItem;

    invoke-interface {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/appwidget/AppWidgetFactory;->create(Lcom/miui/miuiwidget/servicedelivery/model/AppWidgetItem;)Lcom/miui/miuiwidget/servicedelivery/appwidget/IAppWidgetView;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public createWidgetView(Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;)Landroid/view/View;
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createWidgetView"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WidgetController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-direct {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;->checkInstall(Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;->createWidget(Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;->createPendingWidget(Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;)Landroid/view/View;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public isAppWidgetFactoryInitialized()Z
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;->appWidgetFactory:Lcom/miui/miuiwidget/servicedelivery/appwidget/AppWidgetFactory;

    invoke-interface {p0}, Lcom/miui/miuiwidget/servicedelivery/appwidget/AppWidgetFactory;->isInitialized()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public removeWidgetView(Landroid/content/Context;Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;)V
    .locals 3

    const-string v0, "WidgetController"

    if-nez p2, :cond_0

    const-string p0, "removeWidgetView item == null"

    .line 45
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 49
    :cond_0
    iget v1, p2, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 51
    :try_start_0
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;->appWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget p1, p2, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->widgetId:I

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 52
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "removeWidgetView widgetId:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->widgetId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "implUniqueCode:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "removeWidgetView"

    .line 54
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    if-ne v1, p0, :cond_2

    .line 57
    instance-of p0, p2, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;

    if-eqz p0, :cond_3

    .line 58
    check-cast p2, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;

    invoke-static {p1, p2}, Lcom/miui/miuiwidget/servicedelivery/utils/MamlUtil;->deleteFiles(Landroid/content/Context;Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;)V

    goto :goto_0

    .line 61
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "unknown type:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->type:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method
